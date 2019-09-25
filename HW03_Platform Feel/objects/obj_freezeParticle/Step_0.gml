image_xscale += sizeChangeSpeed
image_yscale += sizeChangeSpeed

sizeChangeSpeed += sizeAcceleration

if(image_xscale < 0 or image_yscale < 0){
	instance_destroy()	
}