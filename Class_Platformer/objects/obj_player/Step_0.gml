if(keyboard_check(vk_right)){
	x += walkSpeed
	sprite_index = spr_player_walk
	image_xscale = 1
}
else if(keyboard_check(vk_left)){
	x -= walkSpeed
	sprite_index = spr_player_walk
	image_xscale = -1
}

if(not keyboard_check(vk_right) and not keyboard_check(vk_left)){
	sprite_index = spr_player_idle
}