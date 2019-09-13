if(keyboard_check_pressed(vk_space)){
	if(room == startScreen){
		room_goto_next()
	}else if(room == endScreen){
		room_goto(startScreen)
	}
}

if(global.PLAYER_LIVES <= 0){
	room_goto(endScreen)
	global.PLAYER_LIVES = 3
	global.SCORE = 0
}

if(room == gameScreen){
	global.SCORE += 1/room_speed
}