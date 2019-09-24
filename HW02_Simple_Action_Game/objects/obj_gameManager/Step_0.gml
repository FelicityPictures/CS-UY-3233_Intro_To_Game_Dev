if(room == titleScreen){
	if(keyboard_check_pressed(vk_space)){
		global.HEALTH_POINTS = 100
		global.SCORE = 0
		audio_play_sound(sfx_beep,2,false)
		audio_play_sound(sfx_backgroundMusic,1,true)
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
		audio_play_sound(sfx_switch, 2, false)
		endgameChoice = 0
	}
	else if(keyboard_check_pressed(ord("D"))
			or keyboard_check_pressed(vk_right)){
		audio_play_sound(sfx_switch, 2, false)
		endgameChoice = 1
	}
	else if(keyboard_check_pressed(vk_space)){
		if(endgameChoice == 0){
			global.HEALTH_POINTS = 100
			global.SCORE = 0
			audio_play_sound(sfx_beep,2,false)
			room_goto(gameScreen)
		}else{
			audio_play_sound(sfx_beep,2,false)
			room_goto(titleScreen)
		}
	}
}