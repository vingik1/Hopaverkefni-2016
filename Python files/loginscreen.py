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
def login_screen_exit_program():  # Close the program
    global login_screen_loop
    login_screen_loop = False


# User logs in
def login():
    global username, password, password_display, logged_in, error, login_screen_loop

    if username == sql.user and password == sql.passwd:  # If username and password match
        username, password, password_display = "", "", ""
        logged_in = 1  # User is now logged in
        login_screen_loop = False  # Stop the login screen loop
    else:  # If username and password are not correct
        # Error handling
        if not username == sql.user:
            error[0] = 1
        if not password == sql.passwd:
            error[1] = 1
        # Reset some variables
        username, password, password_display = "", "", ""

        error[2] = 5000  # How long the error message shows

# Username and Password variables
username = ""
password = ""
password_display = ""  # This is the password that the user will see typed in, it will only contain '*'

# Error variable
# Username is wrong | Password is wrong | How long to show error message
error = [0, 0, 0]

# Variable holds which text field is selected
typing_user = 0

mouse_pressed = 0

logged_in = 0  # Is the user logged in ? | 0 = not logged in , 1 = logged in | Default 0

# Loop Variables
login_screen_loop = True
logged_in_loop = False


# Login screen loop function
def login_screen():
    # Get some global variables
    global username, password_display, password, typing_user, mouse_pressed, error, login_screen_loop

    # While login screen loop = true
    while login_screen_loop:
        # --------- FILL SCREEN BLACK
        WINDOW.fill(BLACK)
        # --------- EVENT HANDLER -------------------
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                login_screen_loop = False  # EXIT
            if event.type == pygame.KEYDOWN:  # Get keypresses
                # If the username form is selected
                if typing_user == 1:
                    if pygame.key.name(event.key) == "tab":  # TAB
                        typing_user = -1  # Go to the password field
                    if pygame.key.name(event.key) == "backspace":  # BACKSPACE
                        if len(username) > 0:  # If there is a character in username
                            l = list(username)  # Put username to list
                            l[-1:] = ""  # Remove the last item
                            username = "".join(l)  # Clear username and set it to the list
                    elif pygame.key.name(event.key) == "escape":  # ESCAPE
                        username = ""  # Clear username
                    elif pygame.key.name(event.key) == "space":  # # SPACE
                        username += " "  # Add space to username
                    elif 48 <= event.key <= 57 or 97 <= event.key <= 122:  # Any letter or number
                        username += pygame.key.name(event.key)  # Add letter/number to username
                elif typing_user == -1:  # Password field is selected
                    if pygame.key.name(event.key) == "tab":  # TAB
                        typing_user = 1 # Go to the username field
                    if pygame.key.name(event.key) == "backspace":  # BACKSPACE
                        # Same as the username backspace
                        # but do with both password AND password_display
                        if len(password) > 0:
                            a = list(password)
                            b = list(password_display)
                            a[-1:] = ""
                            b[-1:] = ""
                            password = "".join(a)
                            password_display = "".join(b)
                    elif pygame.key.name(event.key) == "escape":  # ESCAPE
                        # Clear both password and password_display
                        password = ""
                        password_display = ""
                    elif pygame.key.name(event.key) == "space":  # SPACE
                        password += " "  # Add space to password
                        password_display += "*"  # Add * to password_display
                    elif 48 <= event.key <= 57 or 97 <= event.key <= 122:  # Any letter or number
                        password += pygame.key.name(event.key)  # Add letter/number to password
                        password_display += "*"  # Add * to password_display
                    elif pygame.key.name(event.key) == "return":  # ENTER
                        login()  # Try to login

        # ----------- LOGIC ------------------
        mouse = pygame.mouse.get_pos()  # Get mouse position
        mouse_clicked = pygame.mouse.get_pressed()  # Get mouse presses

        # Check if mouse is inside the username field
        if (WINDOW_WIDTH / 2) - 65 + 250 > mouse[0] > (WINDOW_WIDTH / 2) - 65 and \
                (WINDOW_HEIGHT / 2) - 80 + 30 > mouse[1] > (WINDOW_HEIGHT / 2) - 80:
            if mouse_clicked[0] == 1:  # If mouse is inside username field and mouse is clicked
                typing_user = 1  # Username field is now selected
        # Check if mouse is inside password field
        elif (WINDOW_WIDTH / 2) - 65 + 250 > mouse[0] > (WINDOW_WIDTH / 2) - 65 and \
                (WINDOW_HEIGHT / 2) - 20 + 30 > mouse[1] > (WINDOW_HEIGHT / 2) - 20:
            if mouse_clicked[0] == 1:  # If mouse is inside password field and mouse is clicked
                typing_user = -1  # Password field is now selected
        else:  # If mouse is not inside any field
            if mouse_clicked[0] == 1:  # if mouse is clicked
                typing_user = 0  # No field is selected

        # If username OR password was wrong on login
        if (error[0] == 1 or error[1] == 1) and error[2] > 0:  # And error timer > 0
            if error[2] > 0:  # If error timer > 0
                error[2] -= 1  # Remove 1 from error timer
        if error[2] == 0:  # If Error timer == 0
            # Reset errors / Error message is no longer on the screen
            error[0] = 0
            error[1] = 0

        # If username OR password was wrong on login And error timer > 0
        if (error[0] == 1 or error[1] == 1) and error[2] > 0:
            # Display error message
            func.message("Username or Password Incorrect", RED, (100, 100), FONT, WINDOW)

        # ------------- DRAWING ---------------------
        func.draw_login_field(typing_user, WINDOW, FONT)  # Draws the login fields
        func.message(username, WHITE, (x + 120, y), FONT, WINDOW)  # Writes the username in the username field
        func.message(password_display, WHITE, (x + 120, y + 60), FONT, WINDOW)   # Writes the password in the password field

        func.button("Login", (140, 320), (100, 40), (WHITE_dark, WHITE), FONT, WINDOW, 0, login)  # Creates a login button
        func.button("Quit", (260, 320), (100, 40), (WHITE_dark, WHITE), FONT, WINDOW, 0, login_screen_exit_program)  # Creates a quit button

        pygame.display.update()  # Update screen


login_screen()  # Calls the login screen function
# Runs once the login screen loop is finished
# Sends the logged_in variable and the window/screen
logged.user_logged(logged_in, WINDOW)


pygame.quit()
