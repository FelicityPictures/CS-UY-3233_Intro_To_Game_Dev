fallSpeed += grav
y += fallSpeed

if( y > room_height){
	y = random_range(-sprite_get_height(0), -100)
	x = random_range(0, room_width-sprite_get_width(0))
	fallSpeed = 0
}