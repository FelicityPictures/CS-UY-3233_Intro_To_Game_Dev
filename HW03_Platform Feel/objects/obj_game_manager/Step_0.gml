if(room != rm_gameOver and room != rm_titleScreen){
	global.SCORE += delta_time
}

if(room == rm_titleScreen){
	if(keyboard_check(vk_enter)){
		room_goto(rm_level1)	
	}
}
else if(room = rm_gameOver){
	if(keyboard_check(vk_enter)){
		room_goto(rm_titleScreen)
		global.SCORE = 0
	}
}