if(room == start){
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text_transformed(room_width/2, (room_height/2) - 50, "Missile Command", 4, 4, 0)
	draw_text_transformed(room_width/2, (room_height/2) + 200, "Left click to start", 2, 2, 0)
}else if(room == gameOver){
	draw_set_halign(fa_center)
	draw_set_color(c_red)
	draw_text_transformed(room_width/2, (room_height/2) - 50, "Game over.", 3, 3, 0)
	draw_set_color(c_white)
	draw_text_transformed(room_width/2, (room_height/2) + 50, "All your cities were destroyed", 2, 2, 0)
	draw_set_color(c_white)
	draw_text_transformed(room_width/2, (room_height/2) - 150, "Final score: " + printedScore, 2, 2, 0)
	draw_text_transformed(room_width/2, (room_height/2) + 200, "Left click to try again", 1.5, 1.5, 0)
}else if(room == gameComplete){
	draw_set_halign(fa_center)
	draw_set_color(c_green)
	draw_text_transformed(room_width/2, (room_height/2) - 50, "Congratulations!", 3, 3, 0)
	draw_set_color(c_white)
	draw_text_transformed(room_width/2, (room_height/2) + 50, "You successfully defended your cities", 2, 2, 0)
	draw_set_color(c_white)
	draw_text_transformed(room_width/2, (room_height/2) - 150, "Final score: " + printedScore, 2, 2, 0)
	draw_text_transformed(room_width/2, (room_height/2) + 200, "Left click to play again", 1.5, 1.5, 0)
}