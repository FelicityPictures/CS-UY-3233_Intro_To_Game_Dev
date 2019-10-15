/// @description Insert description here
// You can write your code in this editor

x += xspd
y += yspd

if (timer <= 1 and alarm[0] == -1) {
    alarm[0] = room_speed*2;
    timer = 0;
}

if x < 50 or x > 750 {
	xspd *= -1
} if y < 50 or y > 750 {
	yspd *= -1
}

if (distance_to_object(obj_human) < 50) {
	move_towards_point(obj_human.x, obj_human.y, chase_spd)
}

if instance_position(x, y, obj_human) {
	instance_destroy(instance_nearest(x, y, obj_human))
}