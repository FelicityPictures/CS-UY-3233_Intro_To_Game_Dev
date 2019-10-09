x = mouse_x
y = mouse_y

ds_queue_enqueue(shooterTracking, instance_create_depth(x, y, 0, obj_position))

if((y > room_height - 100 || y < 100)){
	if(!outOfBounds){
		lastY = y
	}
	outOfBounds = true
}else if(y < room_height - 100 || y > 100){
	outOfBounds = false
}
