if(mouse_check_button_released(mb_left)){
	recent = ds_queue_head(player.shooterTracking)
	
	if(recent.x < room_width/3){
		if(player.outOfBounds){
			createSlowMissile(leftBatteryStartX, batteryStartY, recent.x, player.lastY)
		}else{
			createSlowMissile(leftBatteryStartX, batteryStartY, recent.x, recent.y)
		}
		
	}else if(recent.x > (room_width/3)*2){
		if(player.outOfBounds){
			createSlowMissile(rightBatteryStartX, batteryStartY, recent.x, player.lastY)
		}else{
			createSlowMissile(rightBatteryStartX, batteryStartY, recent.x, recent.y)
		}
	}else{
		if(player.outOfBounds){
			createFastMissile(centerBatteryStartX, batteryStartY, recent.x, player.lastY)
		}else{
			createFastMissile(centerBatteryStartX, batteryStartY, recent.x, recent.y)
		}	
	}
}