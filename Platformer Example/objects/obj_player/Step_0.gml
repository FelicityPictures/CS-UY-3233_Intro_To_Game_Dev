if x > room_width{
    x = 0
}
if x < 0{
    x = room_width
}

image_xscale = sizeScale
image_yscale = sizeScale

// if keyboard_check(ord("A")) and grounded{
if keyboard_check(ord("A")){				// if pressing A..
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
if keyboard_check(ord("D")){ 
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
        jump_amt = jump_max								// set our jump value to its max to start the jump
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

if instance_position(x,y+4,obj_platform){				// check to see if there is a platform below player
	near_plat = instance_nearest(x,y+4,obj_platform)	// save a reference to that platform as new variable
	y = near_plat.y-1									// set the player on top of that platform
	grounded = true										// player is on the ground!
}else{													// if there is nothing underneath the player, they aren't on the ground!
    grounded = false
}

if !grounded
and jump_amt > 0{
    if instance_position(x,y-32-jump_amt,obj_platform){
        jump_amt = 0
    }
}

if collision_circle(x, y+sprite_height/2, sprite_width/2 + 10, obj_fire, false, false){
	fireNearby = collision_circle(x, y+sprite_height/2, sprite_width/2 + 10, obj_fire, false, false)
	sizeScale -= 0.01 / (sqrt((abs(y - fireNearby.y) ^2) + (abs(x - fireNearby.x) ^2)))
}

if(y < 0){
	room_goto(rm_gameOver)
}