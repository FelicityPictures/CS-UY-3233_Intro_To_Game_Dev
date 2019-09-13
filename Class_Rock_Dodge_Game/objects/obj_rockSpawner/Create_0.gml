numberOfRocks = 5

for(i = 0; i < numberOfRocks; i++){
	instance_create_depth(random_range(0, room_width-sprite_get_width(0)), random_range(-100, -sprite_get_height(0)), 0, obj_rock)
}