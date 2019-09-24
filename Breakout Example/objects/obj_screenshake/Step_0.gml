if(shake_timer > 0){
	shake_timer -= 1
}else{
	shake_on = false
}

if(shake_on){
	shake_x = random_range(-shake_amt, shake_amt)
	shake_y = random_range(-shake_amt, shake_amt)
	camera_set_view_pos(view_camera[0], shake_x, shake_y)
}else{
	camera_set_view_pos(view_camera[0], 0, 0)
}