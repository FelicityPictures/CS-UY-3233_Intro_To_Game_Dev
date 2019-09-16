// keyboard controls for WASD
if(keyboard_check(ord("W")) or keyboard_check(vk_up)){
	if(y > global.PLAY_EDGE_TOP + (sprite_height/2)){
		y -= movingSpeed
	}
}else if(keyboard_check(ord("S")) or keyboard_check(vk_down)){
	if(y < (global.PLAY_EDGE_TOP + global.PLAY_HEIGHT) - (sprite_height/2)){
		y += movingSpeed
	}
}
if(keyboard_check(ord("A")) or keyboard_check(vk_left)){
	if(x > global.PLAY_EDGE_LEFT + (sprite_width/2)){
		x -= movingSpeed
	}
}else if(keyboard_check(ord("D")) or keyboard_check(vk_right)){
	if(x < (global.PLAY_EDGE_LEFT + global.PLAY_WIDTH) - (sprite_width/2)){
		x += movingSpeed
	}
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
		global.HEALTH_POINTS -= 70
		if(global.HEALTH_POINTS <= 0){
			global.HEALTH_POINTS = 1
			instance_create_depth(x, y, 0, obj_player_dies)
			instance_destroy()
		}else{
			alarm[0] = timeSpentInvincible * 30
		}
	}
}else{
	image_speed = 0.25
}

healthHit = collision_circle(x, y, sprite_width/2, obj_healthPack, false, false)
if(healthHit != noone){
	global.HEALTH_POINTS += 10
	instance_destroy(healthHit)
}