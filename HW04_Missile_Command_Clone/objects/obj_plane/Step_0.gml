x += velocity

if((velocity > 0 && x > (room_width + sprite_width/2)) or
	(velocity < 0 && x < -100)){
	instance_destroy()
}