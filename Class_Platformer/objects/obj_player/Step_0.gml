// keyboard controls
if(keyboard_check(vk_right)){
	x += walkSpeed
	sprite_index = spr_player_walk
	image_xscale = 1
	/*
	if(!audio_is_playing(sfx_walk)){
	}
	*/
}
else if(keyboard_check(vk_left)){
	x -= walkSpeed
	sprite_index = spr_player_walk
	image_xscale = -1
}

if(keyboard_check(vk_space)){
	if(grounded){
		grounded = false
		fallSpeed = -jumpStrength
		audio_play_sound(sfx_jump, 2, false)
	}
}

if(not keyboard_check(vk_right) and not keyboard_check(vk_left)){
	sprite_index = spr_player_idle
}

// collisions

if(!grounded){
	fallSpeed += grav
	y += fallSpeed
}

hitFeet = instance_position(x, y+1, obj_platform)
if(hitFeet != noone){
	grounded = true
	y -= y - (hitFeet.y - (hitFeet.sprite_height/2))
	fallSpeed = 0
}else{
	grounded = false	
}