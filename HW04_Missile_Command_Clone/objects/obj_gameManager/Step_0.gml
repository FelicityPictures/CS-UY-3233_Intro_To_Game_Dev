if(ds_list_size(global.citiesLeft) <= 0 && room == game){
	alarm[0] = 1.5 * room_speed
}

//getting input to change rooms
if(mouse_check_button_released(mb_left)){
	// inst = instance_place(mouse_x, mouse_y, obj_button);
	if(room == start){
		instance_create_depth(mouse_x, mouse_y, 1, obj_explosion)
		alarm[1] = 1.5 * room_speed
	}else if (room == gameOver or room == gameComplete){
		instance_create_depth(mouse_x, mouse_y, 1, obj_explosion)
		alarm[2] = 1 * room_speed
	}
}