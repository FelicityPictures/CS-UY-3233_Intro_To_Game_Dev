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
	hitBattery.missilesLeft = 0
}

hitMissile = collision_circle(x, y, sprite_width/2, obj_missile, false, true)
if(hitMissile != noone && hitMissile.friendly == false){
	if(friendly == true){
		global.SCORE += 25
	}
	instance_destroy(hitMissile)
}

hitCity = collision_circle(x, y, sprite_width/2, obj_city, false, true)
if(hitCity != noone){
	instance_destroy(hitCity)
}

hitPlane = collision_circle(x, y, sprite_width/2, obj_plane, false, true)
if(hitPlane != noone){
	instance_destroy(hitPlane)
	global.SCORE += 100
}