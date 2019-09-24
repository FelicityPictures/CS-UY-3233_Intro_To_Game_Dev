/// @description Insert description here
// You can write your code in this editor

if !global.GAME_BEGIN{
	if keyboard_check_pressed(vk_space){
		global.GAME_BEGIN = true
		instance_create_depth(x,y-32,0,obj_ball)
	}
}


if keyboard_check(vk_right){
	x += mspd
	image_xscale = lerp(image_xscale, 1.5, 0.2)
	image_yscale = lerp(image_yscale, 0.75, 0.2)
}
if keyboard_check(vk_left){
	x -= mspd
	image_xscale = lerp(image_xscale, 1.5, 0.2)
	image_yscale = lerp(image_yscale, 0.75, 0.2)
}

if(not keyboard_check(vk_right) and not keyboard_check(vk_left)){
	image_xscale = lerp(image_xscale, 1, 0.2)
	image_yscale = lerp(image_yscale, 1, 0.2)
}
