import pygame
#import connectdb as sql
import generalfunctions as func


FONT = pygame.font.SysFont("Comic Sans MS", 20)

BLACK = (0, 0, 0)
WHITE = (255, 255, 255)


def user_logged(logged_in, window):
    if logged_in == 1:
        logged_in_loop = True
        while logged_in_loop:
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    logged_in_loop = False

            window.fill(BLACK)
            func.message("You are logged in", WHITE, (100, 200), FONT, window)
            pygame.display.update()
