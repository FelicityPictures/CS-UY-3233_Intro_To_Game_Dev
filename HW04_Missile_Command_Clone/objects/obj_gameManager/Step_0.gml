if(global.LIVES <= 0 && room == game && switchingRoom == false){
	alarm[0] = 2 * room_speed
	switchingRoom = true
}

//getting input to change rooms
if(mouse_check_button_released(mb_left)){
	if(room == start or room == finish){
		instance_create_depth(mouse_x, mouse_y, 1, obj_explosion)
		alarm[1] = 1.5 * room_speed
	}
}