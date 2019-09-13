if(keyboard_check_pressed(vk_space)){
	if(room == titleScreen){
		global.HEALTH_POINTS = 100
		global.SCORE = 0
		room_goto(gameScreen)
	}
}

if(room == gameScreen){
	global.SCORE += delta_time
	if(global.HEALTH_POINTS <= 0){
		room_goto(endScreen)
	}
}else if(room == endScreen){
	if(keyboard_check_pressed(vk_space)){
		// room_goto(titleScreen)
	}
	
	if(keyboard_check_pressed(ord("A"))
		or keyboard_check_pressed(vk_left)){
		selector.x = 100
		selector.y = 900
	}
	else if(keyboard_check_pressed(ord("D"))
			or keyboard_check_pressed(vk_right)){
		selector.x = 400
		selector.y = 900
	}
}