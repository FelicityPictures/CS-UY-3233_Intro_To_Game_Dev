recent = ds_queue_dequeue(shooterTracking)

if(outOfBounds){
	draw_sprite(spr_player_shooter, 0, recent.x, lastY)
	draw_sprite(spr_player_aim, 0, x, y)
}else{
	draw_sprite(spr_player_shooter, 0, recent.x, recent.y)
	draw_sprite(spr_player_aim, 0, x, y)
}