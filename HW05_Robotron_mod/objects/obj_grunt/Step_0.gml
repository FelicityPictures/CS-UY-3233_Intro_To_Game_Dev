/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(obj_player) < 300) {
	move_towards_point(obj_player.x, obj_player.y, spd)
	
	if (distance_to_object(obj_player) < 100) {
		spd = 0.6
	}
} else {
	spd = 0
}

if(hp <= 0){
	instance_destroy()
	global.gameScore += 100
}