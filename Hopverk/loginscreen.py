# IMPORT Libraries
import pygame
import MySQLdb

# INFO TO CONNECT TO DB
host = "tsuts.tskoli.is"
user = "3006962289"
passwd = "mypassword"
db = "3006962289_FreshAir"

# CONNECT TO DATABASE
db = MySQLdb.connect(host=host,
                     user=user,
                     passwd=passwd,
                     db=db)
# CREATE A CURSOR
cur = db.cursor()

# RUN AN SQL COMMAND
cur.execute("SELECT * FROM aircrafts")


pygame.init()  # INIT PYGAME

# CREATE WINDOW
WINDOW_SIZE = WINDOW_WIDTH, WINDOW_HEIGHT = 500, 500
WINDOW = pygame.display.set_mode(WINDOW_SIZE)

# DEFINE FONT
FONT = pygame.font.SysFont("Comic Sans MS", 20)

# DEFINE COLORS
BLACK = (0, 0, 0)
WHITE_dark = (200, 200, 200)

WHITE = (255, 255, 255)


# Write text on screen function
def message(msg, col, xy):
    text = FONT.render(msg, True, col)
    WINDOW.blit(text, (xy[0], xy[1]))


x = (WINDOW_WIDTH / 2) - 175
y = (WINDOW_HEIGHT / 2) - 80


# ------------------- TEXT FIELDS ------------------
def login_field(selected):
    if selected == 1:
        pygame.draw.rect(WINDOW, WHITE, pygame.Rect((WINDOW_WIDTH / 2) - 65, (WINDOW_HEIGHT / 2) - 80, 250, 30), 2)
        pygame.draw.rect(WINDOW, WHITE_dark, pygame.Rect((WINDOW_WIDTH / 2) - 65, (WINDOW_HEIGHT / 2) - 20, 250, 30), 2)
    elif selected == -1:
        pygame.draw.rect(WINDOW, WHITE_dark, pygame.Rect((WINDOW_WIDTH / 2) - 65, (WINDOW_HEIGHT / 2) - 80, 250, 30), 2)
        pygame.draw.rect(WINDOW, WHITE, pygame.Rect((WINDOW_WIDTH / 2) - 65, (WINDOW_HEIGHT / 2) - 20, 250, 30), 2)
    else:
        pygame.draw.rect(WINDOW, WHITE_dark, pygame.Rect((WINDOW_WIDTH / 2) - 65, (WINDOW_HEIGHT / 2) - 80, 250, 30), 2)
        pygame.draw.rect(WINDOW, WHITE_dark, pygame.Rect((WINDOW_WIDTH / 2) - 65, (WINDOW_HEIGHT / 2) - 20, 250, 30), 2)
    message("Username:", WHITE, (x, y))
    message("Password:", WHITE, (x, y + 60))


def button(text, xy, wh, col_list):
    m = pygame.mouse.get_pos()
    if xy[0] + wh[0] > mouse[0] > xy[0] and xy[1] + wh[1] > mouse[1] > xy[1]:
        pygame.draw.rect(WINDOW, col_list[1], pygame.Rect(xy[0], xy[1], wh[0], wh[1]))
        button_text = FONT.render(text, True, BLACK, col_list[1])
        button_r = button_text.get_rect()
        button_r.center = (xy[0] + (wh[0] / 2), xy[1] + (wh[1] / 2))
        WINDOW.blit(button_text, button_r)
    else:
        pygame.draw.rect(WINDOW, col_list[0], pygame.Rect(xy[0], xy[1], wh[0], wh[1]))
        button_text = FONT.render(text, True, BLACK, col_list[0])
        button_r = button_text.get_rect()
        button_r.center = (xy[0] + (wh[0] / 2), xy[1] + (wh[1] / 2))
        WINDOW.blit(button_text, button_r)

# Username and Password variables
username = ""
password = ""
password_display = ""

# Variable holds which text field is selected
typing_user = 0

running = True
while running:
    # --------- FILL SCREEN BLACK
    WINDOW.fill(BLACK)
    # --------- EVENT HANDLER -------------------
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        if event.type == pygame.KEYDOWN:
            if typing_user == 1:
                if pygame.key.name(event.key) == "backspace":
                    if len(username) > 0:
                        l = list(username)
                        l[-1:] = ""
                        username = "".join(l)
                elif pygame.key.name(event.key) == "escape":
                    username = ""
                elif pygame.key.name(event.key) == "space":
                    username += " "
                else:
                    username += pygame.key.name(event.key)
            elif typing_user == -1:
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
                else:
                    password += pygame.key.name(event.key)
                    password_display += "*"

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

    # ------------- DRAWING ---------------------
    login_field(typing_user)
    message(username, WHITE, (x + 120, y))
    message(password_display, WHITE, (x + 120, y + 60))

    button("Login", (140, 320), (100, 40), (WHITE_dark, WHITE))
    button("Quit", (260, 320), (100, 40), (WHITE_dark, WHITE))

    pygame.display.update()
pygame.quit()
