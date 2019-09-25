if(room == rm_titleScreen){
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text(room_width/2, (room_height/2)-100, "You can't die in this game, but you can always quit ;)")
	draw_text(room_width/2, (room_height/2)-50, "Left and right arrow keys to move. Space to jump.")

	
	draw_text(room_width/2, (room_height/2)+300, "Press enter to start playing.")
}
else if(room == rm_gameOver){
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text(room_width/2, room_height/2, "What a patient snowman!")
	draw_text(room_width/2, (room_height/2)+100, "The run took you "
				+ printedScore + " seconds.")
	
	draw_text(room_width/2, (room_height/2)+300, "Press enter to play again.")
}