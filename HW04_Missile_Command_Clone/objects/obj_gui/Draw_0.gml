if(room == start){
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text_transformed(room_width/2, (room_height/2) - 50, "Missile Command", 4, 4, 0)
	draw_text_transformed(room_width/2, (room_height/2) + 200, "Left click to start", 2, 2, 0)
}else if(room == finish){
	draw_set_halign(fa_center)
	draw_set_color(c_red)
	draw_text_transformed(room_width/2, (room_height/2) - 50, "Final score: " + printedScore, 3, 3, 0)
	draw_set_color(c_white)
	draw_text_transformed(room_width/2, (room_height/2) + 50, string(global.LIVES) + " cities left", 1, 1, 0)
	draw_text_transformed(room_width/2, (room_height/2) + 100, string(global.MISSILESLEFT) + " missiles left", 1, 1, 0)
	draw_text_transformed(room_width/2, (room_height/2) + 200, "Left click to play again", 1.5, 1.5, 0)
}else if(room == game){
	draw_set_halign(fa_center)
	draw_set_color(c_silver)
	draw_text_transformed(room_width/2, 50, printedScore, 2, 2, 0)
	draw_sprite(spr_bg, 0, 0, 0)
}