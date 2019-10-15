/// @description Insert description here
// You can write your code in this editor

if yspd = 0 {
	yspd = choose(-0.8, 0.8)
} else {
	yspd = 0
	sprite_index = spr_hulk_side
	if x < 0 {
		image_xscale = -1
	} else {
		image_xscale = 1
	}
}

if xspd = 0 {
	xspd = choose(-0.8, 0.8)
} else {
	xspd = 0
	sprite_index = spr_hulk_updown
}