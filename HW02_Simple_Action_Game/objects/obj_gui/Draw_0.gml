if(room == titleScreen){
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_text_transformed(500, 250, "DODGEY-TALES", 6, 6, 0)
	instructions = "Use WSAD or the arrow keys to move."
	draw_text_transformed(500, 500, instructions, 2, 2, 0)
	instructions = "Avoid the bones!"
	draw_text_transformed(500, 550, instructions, 2, 2, 0)
	instructions = "Press space to begin."
	draw_text_transformed(500, 800, instructions, 3, 3, 0)
}
else if(room == gameScreen){
	// draw surrounding rectangle
	draw_set_color(c_white)
	draw_rectangle(global.PLAY_EDGE_LEFT, global.PLAY_EDGE_TOP,
					25+global.PLAY_WIDTH, 25+global.PLAY_HEIGHT, true)

	// draw HP bar
	draw_set_halign(fa_left)
	draw_text_transformed(25, 920, "HP", 3, 3, 0)

	draw_rectangle(100, 920, 611, 980, true)
	draw_set_color(c_red)
	draw_rectangle(106, 926, 106+(global.HEALTH_POINTS*5), 975, false)

	// draw score
	draw_set_color(c_white)
	draw_set_halign(fa_right)
	draw_text_transformed(25+global.PLAY_WIDTH, 920,
							printedScore, 3, 3, 0)
}
else if (room == endScreen){
	draw_set_color(c_red)
	draw_set_halign(fa_center)
	draw_text_transformed(500, 200, "GAME OVER", 2, 2, 0)
	draw_text_transformed(500, 400,
							"Final Score: " + printedScore, 3, 3, 0)
	draw_set_color(c_white)
	instructions = "Play again"
	draw_text_transformed(300, 600, instructions, 2, 2, 0)
	instructions = "Main Menu"
	draw_text_transformed(700, 600, instructions, 2, 2, 0)
}
