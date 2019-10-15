/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_player_idle

if y > 20 and keyboard_check(ord("W")) {
	y -= spd
	image_xscale = 1
	sprite_index = spr_player_up
}
if x > 20 and keyboard_check(ord("A")) {
	x -= spd
	image_xscale = -1
	sprite_index = spr_player_side
}
if y < 780 and keyboard_check(ord("S")) {
	y += spd
	image_xscale = 1
	sprite_index = spr_player_down
}
if x < 780 and keyboard_check(ord("D")) {
	x += spd
	image_xscale = 1
	sprite_index = spr_player_side
}

if(gun == "default"){
	if(bulletTimer <= 0){
		if(keyboard_check(vk_up) or keyboard_check(vk_right) or
		   keyboard_check(vk_down) or keyboard_check(vk_left)){
			bulletTimer += bulletWaitTime
			newBullet = instance_create_depth(x, y, 10, obj_roundBullet)
			if(keyboard_check(vk_up) and !keyboard_check(vk_down)){
				newBullet.velocityY = -newBullet.bulletSpeed
			}
			if(keyboard_check(vk_down) and !keyboard_check(vk_up)){
				newBullet.velocityY = newBullet.bulletSpeed
			}
			if(keyboard_check(vk_left) and !keyboard_check(vk_right)){
				newBullet.velocityX = -newBullet.bulletSpeed
			}
			if(keyboard_check(vk_right) and !keyboard_check(vk_left)){
				newBullet.velocityX = newBullet.bulletSpeed
			}
		}
	}else{
		bulletTimer -= delta_time
	}
	
}else if(gun == "ray"){
	if(global.rayGunTimer >= delta_time){
		if keyboard_check(vk_left) {
			global.rayGunTimer -= delta_time
			if (!keyboard_check(vk_up) and !keyboard_check(vk_down)) {
				left = instance_create_depth(x, y, 1, obj_bullet)
				left.image_angle = 180
				with left {
					move_towards_point(0,y,global.bspd)
				}
				if x < 0 or x > 800 or y < 0 or y > 800 {
					instance_destroy(left)
				}
			} else if keyboard_check(vk_up) {
				d_135 = instance_create_depth(x, y, 1, obj_bullet)
				d_135.image_angle = 135
				with d_135 {
					move_towards_point(x-800,y-800,global.bspd)
				}
				if x < 0 or x > 800 or y < 0 or y > 800 {
					instance_destroy(d_135)
				}
			} else if keyboard_check(vk_down) {
				d_225 = instance_create_depth(x, y, 1, obj_bullet)
				d_225.image_angle = 225
				with d_225 {
					move_towards_point(x-800,y+800,global.bspd)
				}
				if x < 0 or x > 800 or y < 0 or y > 800 {
					instance_destroy(d_225)
				}
			}
		} else if keyboard_check(vk_right) {
			global.rayGunTimer -= delta_time
			if keyboard_check(vk_up) {
				d_45 = instance_create_depth(x, y, 1, obj_bullet)
				d_45.image_angle = 45
				with d_45 {
					move_towards_point(x+800,y-800,global.bspd)
				}
				if x < 0 or x > 800 or y < 0 or y > 800 {
					instance_destroy(d_45)
				}
			} else if keyboard_check(vk_down) {
				d_315 = instance_create_depth(x, y, 1, obj_bullet)
				d_315.image_angle = 315
				with d_315 {
					move_towards_point(x+800,y+800,global.bspd)
				}
				if x < 0 or x > 800 or y < 0 or y > 800 {
					instance_destroy(d_315)
				}
		
			} else if (!keyboard_check(vk_up) and !keyboard_check(vk_down)) {
				right = instance_create_depth(x, y, 1, obj_bullet)
				right.image_angle = 0
				with right {
					move_towards_point(room_width,y,global.bspd)
				}
				if x < 0 or x > 800 or y < 0 or y > 800 {
					instance_destroy(right)
				}
			}
		} else if keyboard_check(vk_up) {
			global.rayGunTimer -= delta_time
			up = instance_create_depth(x, y, 1, obj_bullet)
			up.image_angle = 90
			with up {
				move_towards_point(x,0,global.bspd)
			}
			if x < 0 or x > 800 or y < 0 or y > 800 {
				instance_destroy(up)
			}
		} else if keyboard_check(vk_down) {
			global.rayGunTimer -= delta_time
			down = instance_create_depth(x, y, 1, obj_bullet)
			down.image_angle = 270
			with down {
				move_towards_point(x,room_height,global.bspd)
			}
			if x < 0 or x > 800 or y < 0 or y > 800 {
				instance_destroy(down)
			}
		}
	}
}
/*
if(!keyboard_check(vk_up) and !keyboard_check(vk_right) and
   !keyboard_check(vk_down) and !keyboard_check(vk_left) and
   global.rayGunTimer < global.maximumRayGunTime - delta_time){
	   global.rayGunTimer += delta_time
}
*/

if instance_position(x, y, obj_human) {
	global.gameScore += 1000 * humanBonus
	humanBonus += 1
	instance_destroy(instance_nearest(x, y, obj_human))
}

if (instance_position(x, y, obj_grunt) or instance_position(x, y, obj_enforcer) or instance_position(x, y, obj_sphereoid) or instance_position(x, y, obj_hulk) or instance_position(x, y, obj_electrode)) {
	room_goto(gameOver)
}

if room = level1 {
	if global.gameScore >= 2500 {
		global.gameScore = 0
		room_goto(level2)
	}
} if room = level2 {
	if global.gameScore >= 4500 {
		global.gameScore = 0
		room_goto(level2)
	}
} if room = level3 {
	if global.gameScore >= 6500 {
		global.gameScore = 0
		room_goto(win)
	}
}