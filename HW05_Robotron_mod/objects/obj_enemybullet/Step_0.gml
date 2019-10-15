/// @description Insert description here
// You can write your code in this editor

if instance_position(x, y, obj_player) {
	global.dead = true
	room_goto(gameOver)
}