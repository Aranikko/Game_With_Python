import pyglet
import math

window_width = 800
window_height = 600

# Создаем окно
window = pyglet.window.Window(width=window_width, height=window_height)

# Координаты и скорость объекта
obj_x, obj_y = window_width // 2, window_height // 2
velocity = 200  # Скорость движения объекта (пикселей в секунду)

@window.event
def on_mouse_press(x, y, button, modifiers):
    global obj_x, obj_y
    # Задаем вектор направления движения к точке нажатия
    dx = x - obj_x
    dy = y - obj_y
    distance = math.sqrt(dx ** 2 + dy ** 2)

    # Нормализуем вектор, чтобы установить единичную длину (нормирование)
    normalized_dx = dx / distance
    normalized_dy = dy / distance

    # Изменяем позицию объекта на каждом шаге анимации, чтобы двигаться к точке нажатия
    pyglet.clock.unschedule(update)  # Остановим предыдущую анимацию, если она была запущена
    pyglet.clock.schedule_interval(update, 1 / 60.0, normalized_dx, normalized_dy)




@window.event
def on_draw():
    window.clear()
    # Рисуем объект на его текущей позиции
    point = pyglet.graphics.draw(1, pyglet.gl.GL_POINTS, ('v2f', (obj_x, obj_y)))

def update(dt, dx, dy):
    global obj_x, obj_y
    # Обновляем позицию объекта на каждом шаге анимации
    
    obj_x += velocity * dx * dt
    obj_y += velocity * dy * dt

if __name__ == "__main__":
    pyglet.app.run()
