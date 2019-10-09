if(mouse_check_button_released(mb_left)){
	recent = ds_queue_head(player.shooterTracking)
	leftBatteriesSize = ds_list_size(leftBatteries)
	rightBatteriesSize = ds_list_size(rightBatteries)
	centerBatteriesSize = ds_list_size(centerBatteries)
	
	if(leftBatteriesSize > 0 and
	((recent.x < room_width/3) or
	(centerBatteriesSize <= 0 and (recent.x < room_width/2 or rightBatteries <= 0)) or
	(rightBatteriesSize <= 0 and centerBatteriesSize <= 0 and recent.x > (room_width*2)/3))){
		if(player.outOfBounds){
			createSlowMissile(leftBatteryStartX, batteryStartY, recent.x, player.lastY)
		}else{
			createSlowMissile(leftBatteryStartX, batteryStartY, recent.x, recent.y)
		}
		// destroy battery if it is spent
		lastBattery = ds_list_find_value(leftBatteries, ds_list_size(leftBatteries)-1)
		lastBattery.missilesLeft--
		leftBatteryCount--
		if(leftBatteryCount <= 0){
			ds_list_delete(leftBatteries, ds_list_size(leftBatteries)-1)
			if(ds_list_size(leftBatteries)-1 > 0){
				leftBatteryCount = (ds_list_find_value(leftBatteries, ds_list_size(leftBatteries)-1)).missilesLeft
			}
		}
	}
	else if(centerBatteriesSize > 0 and
	((recent.x > room_width/3 and recent.x < (room_width*2)/3) or
	(leftBatteriesSize <= 0 and recent.x < room_width/3) or
	(rightBatteriesSize <= 0 and recent.x > (room_width*2)/3))){
		if(player.outOfBounds){
			createFastMissile(centerBatteryStartX, batteryStartY, recent.x, player.lastY)
		}else{
			createFastMissile(centerBatteryStartX, batteryStartY, recent.x, recent.y)
		}
		// destroy battery if it is spent
		centerBattery = ds_list_find_value(centerBatteries, ds_list_size(centerBatteries)-1)
		centerBattery.missilesLeft--
		centerBatteryCount--
		if(centerBatteryCount <= 0){
			ds_list_delete(centerBatteries, ds_list_size(centerBatteries)-1)
			if(ds_list_size(centerBatteries)-1 > 0){
				centerBatteryCount = (ds_list_find_value(centerBatteries, ds_list_size(centerBatteries)-1)).missilesLeft
			}
		}
	}
	else if(rightBatteriesSize > 0 and
		(recent.x > (room_width/3)*2 or centerBatteriesSize <= 0 or leftBatteries <= 0)){
		if(player.outOfBounds){
			createSlowMissile(rightBatteryStartX, batteryStartY, recent.x, player.lastY)
		}else{
			createSlowMissile(rightBatteryStartX, batteryStartY, recent.x, recent.y)
		}
		// destroy battery if it is spent
		rightBattery = ds_list_find_value(rightBatteries, ds_list_size(rightBatteries)-1)
		rightBattery.missilesLeft--
		rightBatteryCount--
		if(rightBatteryCount <= 0){
			ds_list_delete(rightBatteries, ds_list_size(rightBatteries)-1)
			if(ds_list_size(rightBatteries)-1 > 0){
				rightBatteryCount = (ds_list_find_value(rightBatteries, ds_list_size(rightBatteries)-1)).missilesLeft
			}
		}
	}
}