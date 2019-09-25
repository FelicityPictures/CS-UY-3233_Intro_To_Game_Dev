if(room == rm_gameOver){
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_text(room_width/2, room_height/2, "What a patient snowman!")
	draw_text(room_width/2, (room_height/2)+100, "The run only took you " + " seconds.")
	
	draw_text(room_width/2, (room_height/2)+300, "Press enter to play again.")
}