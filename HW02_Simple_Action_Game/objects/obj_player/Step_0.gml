// keyboard controls for WASD
if(keyboard_check(ord("W"))){
	y -= movingSpeed
}else if(keyboard_check(ord("A"))){
	x -= movingSpeed
}else if(keyboard_check(ord("S"))){
	y += movingSpeed
}else if(keyboard_check(ord("D"))){
	x += movingSpeed
}else if(keyboard_check(vk_space)){
	jumpSpeed = 20	
}

if(!invincible){
	VboneHit = collision_rectangle(x-(sprite_width/2), y-(sprite_height/2),
								  x+(sprite_width/2), y+(sprite_height/2),
								  obj_verticalBone, false, false)
	HboneHit = collision_rectangle(x-(sprite_width/2), y-(sprite_height/2),
								  x+(sprite_width/2), y+(sprite_height/2),
								  obj_horizontalBone, false, false)
	if(VboneHit != noone or HboneHit != noone){
		invincible = true
		global.HEALTH_POINTS -= 20
		alarm[0] = timeSpentInvincible * 30
	}
}else{
	image_speed = 0.25
}