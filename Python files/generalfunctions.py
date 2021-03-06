# This file has only functions that I can re-use wherever I want

import pygame  # Import pygame

pygame.init()  # Pygame init


# Write text on screen function
def message(msg, col, xy, font, screen):  # Get text, color, x and y, font, window/screen
    text = font.render(msg, True, col)  # Text I want to write, antialias, Text Color
    screen.blit(text, (xy[0], xy[1]))  # blit text on screen at x and y pos


# Create a button function
# Button text, x/y, width/height, colors, font, window/screen, mouse_pressed, action, parameter for action
def button(text, xy, wh, col_list, font, window, mouse_pressed, action=None, para=None):
    mouse = pygame.mouse.get_pos()  # Get mouse pos
    mouse_clicked = pygame.mouse.get_pressed()  # Get mouse click

    # If mouse is inside the button
    if xy[0] + wh[0] > mouse[0] > xy[0] and xy[1] + wh[1] > mouse[1] > xy[1]:
        # Draw rect with the active color === col_list[1]
        pygame.draw.rect(window, col_list[1], (xy[0], xy[1], wh[0], wh[1]))

        # Display button text
        button_text = font.render(text, True, (0, 0, 0))
        button_r = button_text.get_rect()
        button_r.center = (xy[0] + (wh[0] / 2), xy[1] + (wh[1] / 2))
        window.blit(button_text, button_r)

        # If mouse was clicked and action != None
        if mouse_clicked[0] == 1 and mouse_pressed == 0 and action is not None:
            if para is not None:  # If para is not None
                action(para)  # Run action with parameter
            else:  # Else
                action()  # Only run action
            mouse_pressed = 1
            return mouse_pressed
        if mouse_clicked[0] == 0:
            mouse_pressed = 0
            return mouse_pressed
    else:
        pygame.draw.rect(window, col_list[0], (xy[0], xy[1], wh[0], wh[1]))
        button_text = font.render(text, True, (0, 0, 0))

    button_r = button_text.get_rect()
    button_r.center = (xy[0] + (wh[0] / 2), xy[1] + (wh[1] / 2))
    window.blit(button_text, button_r)


# Login fields
def draw_login_field(selected, window, font):
    white = (255, 255, 255)
    white_dark = (150, 150, 150)
    window_width = 500
    window_height = 500

    x = (window_width / 2) - 175
    y = (window_height / 2) - 80

    if selected == 1:
        pygame.draw.rect(window, white, pygame.Rect((window_width / 2) - 65, (window_height / 2) - 80, 250, 30), 2)
        pygame.draw.rect(window, white_dark, pygame.Rect((window_width / 2) - 65, (window_height / 2) - 20, 250, 30), 2)
    elif selected == -1:
        pygame.draw.rect(window, white_dark, pygame.Rect((window_width / 2) - 65, (window_height / 2) - 80, 250, 30), 2)
        pygame.draw.rect(window, white, pygame.Rect((window_width / 2) - 65, (window_height / 2) - 20, 250, 30), 2)
    else:
        pygame.draw.rect(window, white_dark, pygame.Rect((window_width / 2) - 65, (window_height / 2) - 80, 250, 30), 2)
        pygame.draw.rect(window, white_dark, pygame.Rect((window_width / 2) - 65, (window_height / 2) - 20, 250, 30), 2)
    message("Username:", white, (x, y), font, window)
    message("Password:", white, (x, y + 60), font, window)
