image_xscale = sizeScale
image_yscale = sizeScale

sizeScale += growthSpeed

if(sizeScale > 1 and growthSpeed > 0){
	growthSpeed *= -1
}
if(sizeScale < 0){
	instance_destroy()	
}

hitBattery = collision_circle(x, y, sprite_width/2, obj_battery, false, false)
if(hitBattery != noone){
	instance_create_depth(hitBattery.x, hitBattery.y, 0, obj_explosion)
	instance_destroy(hitBattery)
}