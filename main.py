import pyglet as pt

window = pt.window.Window(720, 720, "GWP", resizable=True)


# Sprites
player = pt.sprite.Sprite(pt.resource.image("img/game/player.png"),  x= 10 , y=  80)
platforms = [pt.sprite.Sprite(pt.resource.image("img/game/platform.png"), x= 1, y = 1),
             pt.sprite.Sprite(pt.resource.image("img/game/platform.png"), x= 150, y = player.width)]

# Bool variables
game = True
speed = 150

jump_power = 9000
jump_count = 1
floor = 0

# control
keys = pt.window.key.KeyStateHandler()
window.push_handlers(keys)

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

def fall(p, platform):
    global jump_count
    if not check_collision(p, platform) and jump_count == 0:
        p.y -= 0.7 
    else:
        if jump_count == 0:
            p.y = platform.height
            jump_count = 1
        if not check_collision(p, platform):
            p.y -= 1
            jump_count = 0

def control(pr, dt):
    if keys[pt.window.key.D] :
        pr.x += speed * dt
        
    elif keys[pt.window.key.A] and pr.x > 0:
        pr.x -= speed * dt
        
    global jump_count
    if keys[pt.window.key.SPACE] and jump_count > 0:
        pr.y += jump_power * dt
        jump_count -= 1

@window.event
def on_draw():
    if game:
        window.clear()
        player.draw()
        for i in range(len(platforms)):
            platforms[i].draw()

def update(dt):
    if game:
        
        for i in range(len(platforms)):
            fall(player, platforms[i])
        
        control(player, dt)
        

pt.clock.schedule_interval(update, 1/144)
pt.app.run()
