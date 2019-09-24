x += xSpeed
y += ySpeed

ySpeed += grav
image_angle += rotation_speed

image_xscale -= size_decay
image_yscale -= size_decay

if(image_xscale < 0 or image_yscale < 0){
	instance_destroy()	
}