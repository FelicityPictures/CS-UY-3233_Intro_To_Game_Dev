image_xscale = sizeScale
image_yscale = sizeScale

sizeScale += growthSpeed

if(sizeScale > 1 and growthSpeed > 0){
	growthSpeed *= -1
}
if(sizeScale < 0){
	instance_destroy()	
}