outOfBounds = false

lastY = 0

shooterTracking = ds_queue_create()
for(i = 0; i < 8; i++){
	ds_queue_enqueue(shooterTracking, instance_create_depth(x, y, 0, obj_position))
}