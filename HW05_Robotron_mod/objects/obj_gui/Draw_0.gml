/// @description Insert description here
// You can write your code in this editor

draw_set_color(choose(c_orange, c_lime, c_teal))
draw_rectangle(20, 40, 780, 780, true)
draw_text(200, 10, global.gameScore)

if(room == level1 or room == level2 or room == level3){
	draw_set_color(c_white)
	draw_rectangle(room_width/2, 10, (room_width/2) + 100 + 10, 50, true)
	draw_set_color(c_aqua)
	draw_rectangle(room_width/2 + 5, 10 + 5,
				  (room_width/2)+ 5 +((global.rayGunTimer/global.maximumRayGunTime)*100), 50 - 5,
				  false)
}