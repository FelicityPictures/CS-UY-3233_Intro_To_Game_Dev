if(room == titleScreen){
	if(keyboard_check_pressed(vk_space)){
		global.HEALTH_POINTS = 100
		global.SCORE = 0
		room_goto(gameScreen)
	}
}

else if(room == gameScreen){
	global.SCORE += delta_time
	if(global.HEALTH_POINTS <= 0){
		room_goto(endScreen)
	}
}

else if(room == endScreen){
	if(keyboard_check_pressed(ord("A"))
		or keyboard_check_pressed(vk_left)){
		endgameChoice = 0
	}
	else if(keyboard_check_pressed(ord("D"))
			or keyboard_check_pressed(vk_right)){
		endgameChoice = 1
	}
	else if(keyboard_check_pressed(vk_space)){
		if(endgameChoice == 0){
			global.HEALTH_POINTS = 100
			global.SCORE = 0
			room_goto(gameScreen)
		}else{
			room_goto(titleScreen)
		}
	}
}