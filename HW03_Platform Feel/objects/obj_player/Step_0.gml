if x > room_width{
    x = 0
}
if x < 0{
    x = room_width
}

image_xscale = sizeScale
image_yscale = sizeScale

// if keyboard_check(ord("A")) and grounded{
if keyboard_check(vk_left){				// if pressing A..
    if(xSpeed > -maxXSpeed){
		if grounded{
			xSpeed -= groundXAcceleration
		}else{
			xSpeed -= airXAcceleration
		}
	}
    image_xscale = -sizeScale									//flip the sprite to face left
    if grounded{
        sprite_index= spr_snowman_run
    }
}else
// if keyboard_check(ord("D")) and grounded{ 
if keyboard_check(vk_right){ 
    if(xSpeed < maxXSpeed){
		if grounded{
			xSpeed += groundXAcceleration
		}else{
			xSpeed += airXAcceleration
		}						// only move character if there is space!
	}
    image_xscale = sizeScale									//flip the sprite to face right
    if grounded{										//only change to walking sprite if on the ground
        sprite_index = spr_snowman_run
    }
}else{													//if not pressing either direction..
    if grounded{										//..and on the ground.. 
        sprite_index = spr_snowman_idle					//..show idle animation!
    }
}

if !instance_position(x+xSpeed,y-16,obj_platform){		// only move character if there is space!
	x += xSpeed
}else{
	xSpeed = 0											// if collides with object, stop
}
if grounded{
	xSpeed = lerp(xSpeed, 0.0, 0.1)
}

if grounded{											// if player is touching the ground or platform
    jump_amt = 0										// set our jump value to 0 so we don't move
    
    if keyboard_check_pressed(vk_space){				//check for jump key only if on the ground
        jump_amt = jump_max/sizeScale								// set our jump value to its max to start the jump
        y -= jump_amt									// move player upward by the current jump value
        grounded = false									// we're not on the ground anymore!
    }
    
}else{													// if player is NOT on the ground
    y -= jump_amt										// move player upward by the current jump value
    if jump_amt > -jump_max{							// this is to keep player from falling too fast
        jump_amt -= (grav_amt * sizeScale)							// reduce the jump strength by gravity, this gives the arc
    }    
    
    if jump_amt > 0{									// use jump sprite for jump, fall sprite for fall!
        sprite_index= spr_snowman_jump
    }else{
        sprite_index= spr_snowman_fall
    }
}

if(jump_amt <= 0){
	hit_plat = instance_position(x,y+4,obj_platform)
	if(hit_plat != noone){
		y = hit_plat.y-1
		grounded = true
	}else{
		grounded = false
	}
}

if !grounded
and jump_amt > 0{
    if instance_position(x,y-32-jump_amt,obj_platform){
        jump_amt = 0
    }
}

fireNearby = collision_circle(x, y-sprite_height/2, sprite_height/2 + (10*sizeScale), obj_fire, false, false)
if(fireNearby != noone){
	if(sizeScale >= minimumSize){
		sizeScale -= sizeChange / (sqrt((abs(y - fireNearby.y) ^2) + (abs(x - fireNearby.x) ^2)))
	}
	instance_create_depth(x + random_range( - (sprite_width/8), sprite_width/8), y-sprite_height+(5*sizeScale), -10, obj_waterParticle)
}
iceNearby = collision_circle(x, y-sprite_height/2, sprite_height/2 + (10*sizeScale), obj_ice, false, false)
if(iceNearby != noone){
	if(sizeScale <= maximumSize){
		sizeScale += sizeChange / (sqrt((abs(y - iceNearby.y) ^2) + (abs(x - iceNearby.x) ^2)))
	}
	instance_create_depth(x + (choose(-1,1) * ((sprite_width/2)+random_range(0, 30))), random_range(y, y-sprite_height-10), -10, obj_freezeParticle)
}

if(collision_circle(x, y-sprite_height/2, sprite_height/2, obj_flag, false, false)){
	room_goto_next()
}

if(y > room_height+sprite_height){
	room_goto(rm_gameOver)
}