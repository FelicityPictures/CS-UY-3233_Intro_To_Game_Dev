outOfBounds = false

lastY = 0

shooterTracking = ds_queue_create()
for(i = 0; i < 4; i++){
	ds_queue_enqueue(shooterTracking, instance_create_depth(x, y, 0, obj_position))
}