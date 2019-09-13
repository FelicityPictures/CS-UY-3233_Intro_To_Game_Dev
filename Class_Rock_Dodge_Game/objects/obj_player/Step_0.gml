if(keyboard_check(ord("W"))){
	y -= movSpeed
}
if(keyboard_check(ord("A"))){
	x -= movSpeed
}
if(keyboard_check(ord("S"))){
	y += movSpeed
}
if(keyboard_check(ord("D"))){
	x += movSpeed
}

/*
if(instance_position(x,y,obj_rock)){
	x = startX
	y = startY
}

if(collision_circle(x, y, sprite_get_width(0)/2, obj_rock, false, false)){
	instance_destroy(instance_nearest(x, y, obj_rock))
	dead = true
	alarm[0] = respawnTime * 30
}
*/

if(!dead){
	hitRock = collision_circle(x,y,sprite_get_width(0)/2, obj_rock, false, false)
	if(hitRock != noone){
		instance_destroy(hitRock)
		dead = true
		global.PLAYER_LIVES -= 1
		alarm[0] = respawnTime * 30
	}
}
