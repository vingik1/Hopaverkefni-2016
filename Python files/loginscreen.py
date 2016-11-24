# IMPORT Libraries
import pygame
import connectdb as sql
import generalfunctions as func  # I Call pygame.init() inside this file
import mainscreen as logged

# CREATE WINDOW
WINDOW_SIZE = WINDOW_WIDTH, WINDOW_HEIGHT = 500, 500
WINDOW = pygame.display.set_mode(WINDOW_SIZE)

# DEFINE FONT
FONT = pygame.font.SysFont("Comic Sans MS", 20)

# DEFINE COLORS
BLACK = (0, 0, 0)
WHITE_dark = (200, 200, 200)

WHITE = (255, 255, 255)
RED = (255, 0, 0)

x = (WINDOW_WIDTH / 2) - 175
y = (WINDOW_HEIGHT / 2) - 80


# ------------------- FUNCTIONS ------------------
def login_screen_exit_program():
    global login_screen_loop
    login_screen_loop = False


def login():
    global username, password, password_display, logged_in, error, login_screen_loop

    if username == sql.user and password == sql.passwd:
        username, password, password_display = "", "", ""
        logged_in = 1
        login_screen_loop = False
    else:
        if not username == sql.user:
            error[0] = 1
        if not password == sql.passwd:
            error[1] = 1

        username, password, password_display = "", "", ""
        error[2] = 5000

# Username and Password variables
username = ""
password = ""
password_display = ""

error = [0, 0, 0]

# Variable holds which text field is selected
typing_user = 0

mouse_pressed = 0

logged_in = 0
login_screen_loop = True
logged_in_loop = False


def login_screen():
    global username, password_display, password, typing_user, mouse_pressed, error, login_screen_loop

    while login_screen_loop:
        # --------- FILL SCREEN BLACK
        WINDOW.fill(BLACK)
        # --------- EVENT HANDLER -------------------
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                login_screen_loop = False
            if event.type == pygame.KEYDOWN:
                if typing_user == 1:
                    if pygame.key.name(event.key) == "tab":
                        typing_user = -1
                    if pygame.key.name(event.key) == "backspace":
                        if len(username) > 0:
                            l = list(username)
                            l[-1:] = ""
                            username = "".join(l)
                    elif pygame.key.name(event.key) == "escape":
                        username = ""
                    elif pygame.key.name(event.key) == "space":
                        username += " "
                    elif 48 <= event.key <= 57 or 97 <= event.key <= 122:
                        username += pygame.key.name(event.key)
                elif typing_user == -1:
                    if pygame.key.name(event.key) == "tab":
                        typing_user = 1
                    if pygame.key.name(event.key) == "backspace":
                        if len(password) > 0:
                            a = list(password)
                            b = list(password_display)
                            a[-1:] = ""
                            b[-1:] = ""
                            password = "".join(a)
                            password_display = "".join(b)
                    elif pygame.key.name(event.key) == "escape":
                        password = ""
                        password_display = ""
                    elif pygame.key.name(event.key) == "space":
                        password += " "
                        password_display += "*"
                    elif 48 <= event.key <= 57 or 97 <= event.key <= 122:
                        password += pygame.key.name(event.key)
                        password_display += "*"
                    elif pygame.key.name(event.key) == "return":
                        login()

        # ----------- LOGIC ------------------
        mouse = pygame.mouse.get_pos()
        mouse_clicked = pygame.mouse.get_pressed()
        if (WINDOW_WIDTH / 2) - 65 + 250 > mouse[0] > (WINDOW_WIDTH / 2) - 65 and \
                (WINDOW_HEIGHT / 2) - 80 + 30 > mouse[1] > (WINDOW_HEIGHT / 2) - 80:
            if mouse_clicked[0] == 1:
                typing_user = 1
        elif (WINDOW_WIDTH / 2) - 65 + 250 > mouse[0] > (WINDOW_WIDTH / 2) - 65 and \
                (WINDOW_HEIGHT / 2) - 20 + 30 > mouse[1] > (WINDOW_HEIGHT / 2) - 20:
            if mouse_clicked[0] == 1:
                typing_user = -1
        else:
            if mouse_clicked[0] == 1:
                typing_user = 0

        if (error[0] == 1 or error[1] == 1) and error[2] > 0:
            if error[2] > 0:
                error[2] -= 1
        if error[2] == 0:
            error[0] = 0
            error[1] = 0

        if (error[0] == 1 or error[1] == 1) and error[2] > 0:
            func.message("Username or Password Incorrect", RED, (100, 100), FONT, WINDOW)

        # ------------- DRAWING ---------------------
        func.draw_login_field(typing_user, WINDOW, FONT)
        func.message(username, WHITE, (x + 120, y), FONT, WINDOW)
        func.message(password_display, WHITE, (x + 120, y + 60), FONT, WINDOW)

        func.button("Login", (140, 320), (100, 40), (WHITE_dark, WHITE), FONT, WINDOW, 0, login)
        func.button("Quit", (260, 320), (100, 40), (WHITE_dark, WHITE), FONT, WINDOW, 0, login_screen_exit_program)

        pygame.display.update()


login_screen()
logged.user_logged(logged_in, WINDOW)

pygame.quit()
