/// @description Insert description here
// You can write your code in this editor

if instance_position(x, y, obj_grunt) {
	instance_destroy(instance_nearest(x, y, obj_grunt))
}