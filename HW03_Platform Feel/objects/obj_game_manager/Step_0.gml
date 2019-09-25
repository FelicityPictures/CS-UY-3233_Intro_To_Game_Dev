global.SCORE += delta_time
if(room = rm_gameOver){
	if(keyboard_check(vk_enter)){
		room_goto(rm_level1)	
	}
}