# encoding=UTF-8
import pygame
import connectdb as sql
import generalfunctions as func


FONT = pygame.font.SysFont("Comic Sans MS", 20)

BLACK = (0, 0, 0)
WHITE = (255, 255, 255)

WHITE_G = (200, 200, 200)

Y = []
yy = 50
for i in range(0, 12):
    Y.append(yy)
    yy += 29
k = 0

page_index = 0
mp = 0


def draw_straight_line(y, t, window):
    pygame.draw.line(window, WHITE, (0, y), (500, y), t)


def page_button(window, next_back=True):
    global page_index, mp
    mouse = pygame.mouse.get_pos()
    mouse_click = pygame.mouse.get_pressed()
    if next_back:
        x = 490
        m = ">"
        pg = 12
    else:
        x = 0
        m = "<"
        pg = -12
    y = 405

    if x + 10 > mouse[0] > x and y + 20 > mouse[1] > y:
        pygame.draw.rect(window, WHITE, pygame.Rect(x, y, 10, 20))
        t = FONT.render(m, True, BLACK)
        if mouse_click[0] == 1 and mp <= 0:
            if pg == -12:
                if page_index - 12 >= 0:
                    page_index += pg
            if pg == 12:
                if page_index + 12 <= sql.count_employees()[0]:
                    page_index += pg
            mp += 1

        if mouse_click[0] == 0:
            mp = 0
    else:
        pygame.draw.rect(window, BLACK, pygame.Rect(x, y, 10, 20))
        t = FONT.render(m, True, WHITE)
    t_r = t.get_rect()
    t_r.center = (x + (10 / 2), y + (15 / 2))
    window.blit(t, t_r)


def user_logged(logged_in, window):
    global k, page_index
    if logged_in == 1:
        logged_in_loop = True
        while logged_in_loop:
            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    logged_in_loop = False

            window.fill(BLACK)
            draw_straight_line(50, 2, window)
            draw_straight_line(400, 2, window)

            for person, pos in zip(sql.get_employees(page_index), Y):
                func.message(str(person[0]), WHITE, (30, pos), FONT, window)
                func.message(str(person[1]), WHITE, (200, pos), FONT, window)

            page_button(window, True)
            page_button(window, False)

            pygame.display.update()
