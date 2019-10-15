/// @description Insert description here
// You can write your code in this editor


move_towards_point(obj_player.x, obj_player.y, espd)

if(bulletTimer <= 1 and alarm[1] == -1){
	alarm[1] = room_speed*2;
	bulletTimer = 0;
	bullet = false
}

if bullet {
	var newBullet = instance_create_depth(x, y, 1, obj_enemybullet)
	with newBullet {
		move_towards_point(random_range(obj_player.x-20, obj_player.x+20), random_range(obj_player.y-20, obj_player.y+20), shootspd)
	}
}