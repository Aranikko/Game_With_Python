import pyglet 
from pyglet.window import key
from collishon import check_collision

window = pyglet.window.Window(800, 600, "GWP", resizable=True) 

# game

# sprites
bg_game = pyglet.sprite.Sprite(pyglet.resource.image("img/bg.png"), x = 0, y = 0)
floor = pyglet.sprite.Sprite(pyglet.resource.image("img/floor.png"), x = 0, y = -250)
player = pyglet.sprite.Sprite(pyglet.resource.image("img/player.png"), x= 10, y = 150)
spike_1 = pyglet.sprite.Sprite(pyglet.resource.image("img/spike.png"), x = 1920, y = 150)

# control
keys = pyglet.window.key.KeyStateHandler()
window.push_handlers(keys)

# bool variables
game = False
show_orb = False

# int variables
count_jump = 1
score = 0

# label
start = pyglet.text.Label('Press space to start!',
                          font_name='Times New Roman',
                          font_size=72,
                          x=window.width//2, y=window.height//2,
                          anchor_x='center', anchor_y='center')

control = pyglet.text.Label('Control: Up arrow - Jump',
                          font_name='Times New Roman',
                          font_size=45,
                          x=window.width//2, y=window.height//4,
                          anchor_x='center', anchor_y='center')

score_label = pyglet.text.Label(f'score: {score}',
                          font_name='Times New Roman',
                          font_size=60,
                          x=window.width//2, y=window.height//2,
                          anchor_x='center', anchor_y='center')

# functions
@window.event
def on_draw():
    window.clear()
    
    if game:
        bg_game.draw()
        floor.draw()
        player.draw()
        spike_1.draw()
        score_label.draw()
    else:
        start.draw()
        control.draw()

def update(dt):
    global game, count_jump, score
    if game:
        
        score_label.x = player.x**2.2
        score_label.y = player.width*2.9
        
        if spike_1.x + spike_1.width > 0:
            spike_1.x -= 5
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
            
        if player.x == spike_1.x:
            score += 1
            score_label.text = f'score: {score}'
    
    else:
        start.x = window.width//2
        start.y = window.height//2
        
        control.x = window.width//2
        control.y = window.height//4
        
        if keys[key.SPACE]:
            game = True
     
pyglet.clock.schedule_interval(update, 1/144)
pyglet.app.run()
