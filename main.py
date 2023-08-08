import pyglet 
from pyglet.window import key

window = pyglet.window.Window(800, 600, "GWP", resizable=True) 

# game

# sprites
bg_game = pyglet.sprite.Sprite(pyglet.resource.image("img/game/bg.png"), x = 0, y = 0)
floor = pyglet.sprite.Sprite(pyglet.resource.image("img/game/floor.png"), x = 0, y = -250)
player = pyglet.sprite.Sprite(pyglet.resource.image("img/game/player.png"), x= 10, y = 150)
spike_1 = pyglet.sprite.Sprite(pyglet.resource.image("img/game/spike.png"), x = 1920, y = 150)

# label
start = pyglet.text.Label('Press space to start!',
                          font_name='Times New Roman',
                          font_size=72,
                          x=window.width//2, y=window.height//2,
                          anchor_x='center', anchor_y='center')

# control
keys = pyglet.window.key.KeyStateHandler()
window.push_handlers(keys)

# bool variables
game = False

# int variables
count_jump = 1

# functions
def check_collision(bird_hitbox, floor_hitbox):
    x1 = bird_hitbox.x
    y1 = bird_hitbox.y
    x2 = bird_hitbox.x + bird_hitbox.width
    y2 = bird_hitbox.y + bird_hitbox.height
 
    x3 = floor_hitbox.x
    y3 = floor_hitbox.y
    x4 = floor_hitbox.x + floor_hitbox.width
    y4 = floor_hitbox.y + floor_hitbox.height
    if x1 < x4 and x2 > x3 and y1 < y4 and y2 > y3:
        return True
    else:
        return False

@window.event
def on_draw():
    window.clear()
    
    if game:
        bg_game.draw()
        floor.draw()
        player.draw()
        spike_1.draw()
    else:
        start.draw()

def update(dt):
    global game, count_jump
    if game:
        if spike_1.x + spike_1.width > 0:
            spike_1.x -= 450 * dt
        else:
            spike_1.x = 1920
            
        if keys[key.UP] and count_jump > 0:
            player.y += player.width
            count_jump -= 1
        
        if check_collision(player, floor):
            count_jump = 1
        else:
            player.y -= 100 * dt
        
        if check_collision(player, spike_1):
            spike_1.x = 1920
            player.y = 150
            game = False
            
        
    else:
        start.x = window.width//2
        start.y = window.height//2
        if keys[key.SPACE]:
            game = True
     

pyglet.clock.schedule_interval(update, 1/144)
pyglet.app.run()
