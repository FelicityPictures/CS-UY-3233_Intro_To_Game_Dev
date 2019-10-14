choice = choose(-1, 1)

if(choice < 0){
	new = instance_create_depth(-50, random_range(150, 250), 1, obj_plane)
	new.velocity = 2
}else{
	new = instance_create_depth(room_width+50, random_range(150, 250), 1, obj_plane)
	new.velocity = -2
	new.image_xscale = -1
}