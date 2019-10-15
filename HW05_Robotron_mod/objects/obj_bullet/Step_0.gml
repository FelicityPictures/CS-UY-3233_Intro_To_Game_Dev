/// @description Insert description here
// You can write your code in this editor

if instance_position(x, y, obj_grunt) {
	(instance_position(x, y, obj_grunt)).hp--
	instance_destroy()
}

if instance_position(x, y, obj_hulk) {
	instance_destroy()
	if image_angle = 0 {
		obj_hulk.x += pushBack
	} else if image_angle = 45 {
		obj_hulk.x += pushBack
		obj_hulk.y -= pushBack
	} else if image_angle = 90 {
		obj_hulk.y -= pushBack
	} else if image_angle = 135 {
		obj_hulk.x -= pushBack
		obj_hulk.y -= pushBack
	} else if image_angle = 180 {
		obj_hulk.x -= pushBack
	} else if image_angle = 225 {
		obj_hulk.x -= pushBack
		obj_hulk.y += pushBack
	} else if image_angle = 270 {
		obj_hulk.y += pushBack
	} else if image_angle = 315 {
		obj_hulk.x += pushBack
		obj_hulk.y += pushBack
	}
}

if instance_position(x, y, obj_sphereoid) {
	global.gameScore += 1000
	instance_destroy(instance_nearest(x, y, obj_sphereoid))
	instance_destroy()
}

if instance_position(x, y, obj_enforcer) {
	global.gameScore += 150
	instance_destroy(instance_nearest(x, y, obj_enforcer))
	instance_destroy()
}

if instance_position(x, y, obj_enemybullet) {
	instance_destroy(instance_nearest(x, y, obj_enemybullet))
	instance_destroy()
}

if instance_position(x, y, obj_electrode) {
	instance_destroy(instance_nearest(x, y, obj_electrode))
	instance_destroy()
}