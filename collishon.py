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