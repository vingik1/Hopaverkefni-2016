# encoding=UTF-8

# Imports
import pygame
import connectdb as sql
import generalfunctions as func

# Declare a font
FONT = pygame.font.SysFont("Comic Sans MS", 20)

# Declare some colors
BLACK = (0, 0, 0)
WHITE = (255, 255, 255)

WHITE_G = (200, 200, 200)
WHITE_DARK = (150, 150, 150)


# Some variables
adding = False
b_pressed = 0
remove_button = 0
selected_person = ""
selected_person_pos = 0

# Some positions
Y = []
yy = 50
for i in range(0, 12):
    Y.append(yy)
    yy += 29
k = 0

page_index = 0
mp = 0


# FUNCTIONS

# Draw a straight line
def draw_straight_line(y, t, window):  # Y pos, thickness, window/screen
    pygame.draw.line(window, WHITE, (0, y), (500, y), t)


# Create a new employee
def create_employee(info):
    global b_pressed
    enumber = info[0]  # EmployeeNumber
    fname = info[1]    # FirstName
    lname = info[2]    # LastName
    bdate = info[3]    # BirthDate
    ctry = info[4]     # Country
    jtitle = info[5]   # JobTitle

    # Check if the info is set
    if len(enumber) == 9 and len(bdate) == 10 and len(fname) > 0 and len(lname) > 0 and len(ctry) > 0 and len(jtitle) > 0:
        if b_pressed == 0:  # If statement so I only create one employee
            sql.create_employee(enumber, fname, lname, bdate, ctry, jtitle)  # Create an employee
            b_pressed = 1

        if b_pressed == 1:
            cancel()


# Cancel
def cancel():
    global adding
    adding = False  # Stop running the adding loop


# Add new employee fields
def add_employee(window):
    global adding
    e_number = ""
    f_name = ""
    l_name = ""
    b_date = ""
    country = ""
    j_title = ""
    field_selected = 0
    f_x = 500 - (200 + 50)
    space = 0
    while adding:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                adding = False
            if event.type == pygame.KEYDOWN:
                # Just like the login form but here we have more fields
                if field_selected == 1:
                    if pygame.key.name(event.key) == "tab":
                        field_selected = 2
                    elif pygame.key.name(event.key) == "backspace":
                        if len(e_number) > 0:
                            a = list(e_number)
                            a[-1:] = ""
                            e_number = "".join(a)
                    elif pygame.key.name(event.key) == "escape":
                        e_number = ""
                    elif 48 <= event.key <= 57 or 97 <= event.key <= 122:
                        if len(e_number) < 9:
                            e_number += pygame.key.name(event.key).capitalize()
                elif field_selected == 2:
                    if pygame.key.name(event.key) == "tab":
                        field_selected += 1
                    elif pygame.key.name(event.key) == "backspace":
                        if len(f_name) > 0:
                            a = list(f_name)
                            a[-1:] = ""
                            f_name = "".join(a)
                    elif pygame.key.name(event.key) == "escape":
                        f_name = ""
                    elif 48 <= event.key <= 57 or 97 <= event.key <= 122:
                        if len(f_name) == 0:
                            f_name += pygame.key.name(event.key).capitalize()
                        elif 17 > len(f_name) > 0:
                            f_name += pygame.key.name(event.key)
                elif field_selected == 3:
                    if pygame.key.name(event.key) == "tab":
                        field_selected += 1
                    elif pygame.key.name(event.key) == "backspace":
                        if len(l_name) > 0:
                            a = list(l_name)
                            a[-1:] = ""
                            l_name = "".join(a)
                    elif pygame.key.name(event.key) == "escape":
                        l_name = ""
                    elif 48 <= event.key <= 57 or 97 <= event.key <= 122:
                        if len(l_name) == 0:
                            l_name += pygame.key.name(event.key).capitalize()
                        elif 17 > len(l_name) > 0:
                            l_name += pygame.key.name(event.key)
                elif field_selected == 4:
                    if pygame.key.name(event.key) == "tab":
                        field_selected += 1
                    elif pygame.key.name(event.key) == "backspace":
                        if len(b_date) > 0:
                            a = list(b_date)
                            a[-1:] = ""
                            b_date = "".join(a)
                    elif pygame.key.name(event.key) == "escape":
                        b_date = ""
                    elif 48 <= event.key <= 57:
                        if 10 > len(b_date) >= 0:
                            if len(b_date) == 4 or len(b_date) == 7:
                                b_date += "-"
                            b_date += pygame.key.name(event.key)
                elif field_selected == 5:
                    if pygame.key.name(event.key) == "tab":
                        field_selected += 1
                    elif pygame.key.name(event.key) == "backspace":
                        if len(country) > 0:
                            a = list(country)
                            a[-1:] = ""
                            country = "".join(a)
                    elif pygame.key.name(event.key) == "escape":
                        country = ""
                    elif 97 <= event.key <= 122:
                        if len(country) == 0:
                            country += pygame.key.name(event.key).capitalize()
                        elif 17 > len(country) > 0:
                            country += pygame.key.name(event.key)
                elif field_selected == 6:
                    if pygame.key.name(event.key) == "tab":
                        field_selected = 1
                    elif pygame.key.name(event.key) == "backspace":
                        if len(j_title) > 0:
                            a = list(j_title)
                            a[-1:] = ""
                            j_title = "".join(a)
                    elif pygame.key.name(event.key) == "escape":
                        j_title = ""
                    elif pygame.key.name(event.key) == "space":
                        j_title += " "
                        space += 1
                    elif 48 <= event.key <= 57 or 97 <= event.key <= 122:
                        if len(j_title) == 0 or space >= 1:
                            j_title += pygame.key.name(event.key).capitalize()
                            space = 0
                        elif 30 > len(j_title) > 0:
                            j_title += pygame.key.name(event.key)
# ---------------------------------------------------------------------------------------------

        mouse = pygame.mouse.get_pos()  # Get mouse pos
        m_click = pygame.mouse.get_pressed()  # Get mouse click

        # Check if the mouse is inside any of the fields
        # And if mouse is inside a field and mouse is clicked, that field gets selected
        if f_x + 200 > mouse[0] > f_x and 100 + 30 > mouse[1] > 100:
            if m_click[0] == 1:
                field_selected = 1
        elif f_x + 200 > mouse[0] > f_x and 150 + 30 > mouse[1] > 150:
            if m_click[0] == 1:
                field_selected = 2
        elif f_x + 200 > mouse[0] > f_x and 200 + 30 > mouse[1] > 200:
            if m_click[0] == 1:
                field_selected = 3
        elif f_x + 200 > mouse[0] > f_x and 250 + 30 > mouse[1] > 250:
            if m_click[0] == 1:
                field_selected = 4
        elif f_x + 200 > mouse[0] > f_x and 300 + 30 > mouse[1] > 300:
            if m_click[0] == 1:
                field_selected = 5
        elif f_x + 200 > mouse[0] > f_x and 350 + 30 > mouse[1] > 350:
            if m_click[0] == 1:
                field_selected = 6
        else:  # If no field is selected
            if m_click[0] == 1:
                field_selected = 0  # No field is selected

        window.fill((0, 0, 0))  # Fill widow with black

        #  Write the typed info inside each form
        func.message(e_number, (255, 255, 255), (f_x + 5, 100), FONT, window)
        func.message(f_name, (255, 255, 255), (f_x + 5, 150), FONT, window)
        func.message(l_name, (255, 255, 255), (f_x + 5, 200), FONT, window)
        func.message(b_date, (255, 255, 255), (f_x + 5, 250), FONT, window)
        func.message(country, (255, 255, 255), (f_x + 5, 300), FONT, window)
        func.message(j_title, (255, 255, 255), (f_x + 5, 350), FONT, window)

        # Text so user knows what each form is
        func.message("Employee Number:", (255, 255, 255), (50, 100), FONT, window)
        func.message("First Name:", (255, 255, 255), (50, 150), FONT, window)
        func.message("Last Name:", (255, 255, 255), (50, 200), FONT, window)
        func.message("Birth-Date:", (255, 255, 255), (50, 250), FONT, window)
        func.message("Country:", (255, 255, 255), (50, 300), FONT, window)
        func.message("Job Title:", (255, 255, 255), (50, 350), FONT, window)

        # Draw the forms
        if field_selected == 1:
            pygame.draw.rect(window, WHITE, pygame.Rect(500 - (200 + 50), 100, 200, 30), 2)
        else:
            pygame.draw.rect(window, WHITE_DARK, pygame.Rect(500 - (200 + 50), 100, 200, 30), 2)
        if field_selected == 2:
            pygame.draw.rect(window, WHITE, pygame.Rect(500 - (200 + 50), 150, 200, 30), 2)
        else:
            pygame.draw.rect(window, WHITE_DARK, pygame.Rect(500 - (200 + 50), 150, 200, 30), 2)
        if field_selected == 3:
            pygame.draw.rect(window, WHITE, pygame.Rect(500 - (200 + 50), 200, 200, 30), 2)
        else:
            pygame.draw.rect(window, WHITE_DARK, pygame.Rect(500 - (200 + 50), 200, 200, 30), 2)
        if field_selected == 4:
            pygame.draw.rect(window, WHITE, pygame.Rect(500 - (200 + 50), 250, 200, 30), 2)
        else:
            pygame.draw.rect(window, WHITE_DARK, pygame.Rect(500 - (200 + 50), 250, 200, 30), 2)
        if field_selected == 5:
            pygame.draw.rect(window, WHITE, pygame.Rect(500 - (200 + 50), 300, 200, 30), 2)
        else:
            pygame.draw.rect(window, WHITE_DARK, pygame.Rect(500 - (200 + 50), 300, 200, 30), 2)
        if field_selected == 6:
            pygame.draw.rect(window, WHITE, pygame.Rect(500 - (200 + 50), 350, 200, 30), 2)
        else:
            pygame.draw.rect(window, WHITE_DARK, pygame.Rect(500 - (200 + 50), 350, 200, 30), 2)

        # Create the employee button
        func.button("Add Employee", (100, 450), (150, 40), ((200, 200, 200), (255, 255, 255)), FONT, window, 0, create_employee, (e_number, f_name, l_name, b_date, country, j_title))
        # Cancel employee creation button
        func.button("Cancel", (300, 450), (150, 40), ((200, 200, 200), (255, 255, 255)), FONT, window, 0, cancel)
        pygame.display.update()  # Display update


# Next and previous page buttons
def page_button(window, next_back=True):
    global page_index, mp

    # Mouse pos and mouse click
    mouse = pygame.mouse.get_pos()
    mouse_click = pygame.mouse.get_pressed()
    # Check what to create
    if next_back:
        # Next page button
        x = 490
        m = ">"
        pg = 12
    else:
        # Previous page button
        x = 0
        m = "<"
        pg = -12
    y = 405

    # If mouse is inside the button
    if x + 10 > mouse[0] > x and y + 20 > mouse[1] > y:
        pygame.draw.rect(window, WHITE, pygame.Rect(x, y, 10, 20))
        t = FONT.render(m, True, BLACK)
        # If mouse is clicked
        if mouse_click[0] == 1 and mp <= 0:
            # For previous page button
            if pg == -12:
                if page_index - 12 >= 0:
                    page_index += pg  # Previous page
            # For next page button
            if pg == 12:
                if page_index + 12 <= sql.count_employees()[0]:
                    page_index += pg  # Next Page
            mp += 1

        if mouse_click[0] == 0:
            mp = 0
    else:  # If mouse is not inside button
        pygame.draw.rect(window, BLACK, pygame.Rect(x, y, 10, 20))
        t = FONT.render(m, True, WHITE)
    t_r = t.get_rect()
    t_r.center = (x + (10 / 2), y + (15 / 2))
    window.blit(t, t_r)


# Display more info for selected employee
def selected_employee(e_num, window):
    # Get info for selected employee
    for info in sql.get_single_employee(e_num):
        number = info[0]
        fname = info[1]
        lname = info[2]
        bdate = info[3]
        country = info[4]
        jtitle = info[5]
    # Display info
    func.message(str(number), WHITE, (5, 420), FONT, window)
    func.message(str(fname), WHITE, (130, 420), FONT, window)
    func.message(str(lname), WHITE, (250, 420), FONT, window)
    func.message(str(bdate), WHITE, (360, 420), FONT, window)
    func.message(str(country), WHITE, (100, 450), FONT, window)
    func.message(str(jtitle), WHITE, (250, 450), FONT, window)


# Create add new employee button
def add_button(window, x, y, b_p, action=None):
    mouse = pygame.mouse.get_pos()
    m_p = pygame.mouse.get_pressed()
    if x + 20 > mouse[0] > x and y + 20 > mouse[1] > y:
        pygame.draw.rect(window, WHITE, pygame.Rect(x, y, 20, 20))
        t = FONT.render("+", True, BLACK)
        if m_p[0] == 1 and b_p == 0:
            action(window)
            b_p == 1
    else:
        pygame.draw.rect(window, BLACK, pygame.Rect(x, y, 20, 20))
        t = FONT.render("+", True, WHITE)

    t_r = t.get_rect()
    t_r.center = (x + (20 / 2), y + (15 / 2))
    window.blit(t, t_r)


#  This runs after the login screen
def user_logged(logged_in, window):
    global k, page_index, adding, b_pressed, remove_button, selected_person, selected_person_pos
    # Checks if logged_in == 1
    if logged_in == 1:
        logged_in_loop = True
        while logged_in_loop:
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    logged_in_loop = False
            adding = True
            b_pressed = 0

            # Mouse pos and mouse click
            mouse = pygame.mouse.get_pos()
            m_c = pygame.mouse.get_pressed()

            # Window fill black
            window.fill(BLACK)

            # Draw 2x straight lines
            draw_straight_line(50, 2, window)
            draw_straight_line(400, 2, window)

            # If mouse is above line 1 or below line 2
            if mouse[1] < 50 or mouse[1] > 400:
                if m_c[0] == 1:  # If mouse clicked
                    # No employee is selected
                    selected_person = ""
                    selected_person_pos = 0

            # Selecting an employee
            for person, pos in zip(sql.get_employees(page_index), Y):
                if pos + 25 > mouse[1] > pos:  # Mouse is on an employee
                    if m_c[0] == 1:  # Mouse clicked
                        # Employee is selected
                        selected_person = str(person[2])
                        selected_person_pos = pos + 5

                # If employee is selected
                if selected_person_pos > 0:
                    # Draw rect where the selected employee is
                    pygame.draw.rect(window, (100, 100, 100), pygame.Rect(0, selected_person_pos, 500, 25))

            # Display all employees
            for person, pos in zip(sql.get_employees(page_index), Y):
                if pos + 25 > mouse[1] > pos:  # Mouse is on an employee
                    # Draw rect where that employee is
                    pygame.draw.rect(window, (100, 100, 100), pygame.Rect(0, pos + 5, 500, 25))
                    if mouse[0] > 480:  # If mouse is on the X/remove button
                        if m_c[0] == 1 and remove_button == 0:  # If mouse clicks on the X
                            sql.remove_employee(person[2])  # Remove that employee
                            remove_button = 1
                # Display employee number, first name nad job title
                func.message(str(person[2]), WHITE, (5, pos), FONT, window)
                func.message(str(person[0]), WHITE, (130, pos), FONT, window)
                func.message(str(person[1]), WHITE, (250, pos), FONT, window)
                # Display the remove employee "button"
                func.message("X", (255, 0, 0), (480, pos), FONT, window)
            if m_c[0] == 0:
                remove_button = 0

            # Next page, Previous page buttons
            page_button(window, True)
            page_button(window, False)

            # Add new employee button
            add_button(window, 230, 405, 0, add_employee)

            # If an employee is selected
            if selected_person_pos > 0:
                # Display his/her info
                selected_employee(selected_person, window)
            pygame.display.update()  # Update display
