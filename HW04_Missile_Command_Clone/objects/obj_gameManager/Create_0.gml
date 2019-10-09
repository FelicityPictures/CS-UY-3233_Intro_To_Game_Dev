batteryStartY = 700

//fill leftBatteries
leftBatteries = ds_list_create()
leftBatteryStartX = 100
PyramidOfBatteries(leftBatteries, leftBatteryStartX, batteryStartY, sprite_get_width(spr_battery), sprite_get_height(spr_battery))
leftBatteryCount = (ds_list_find_value(leftBatteries, ds_list_size(leftBatteries)-1)).missilesLeft


//fill rightBatteries
rightBatteries = ds_list_create();
rightBatteryStartX = room_width - 100
PyramidOfBatteries(rightBatteries, rightBatteryStartX, batteryStartY, sprite_get_width(spr_battery), sprite_get_height(spr_battery))
rightBatteryCount = (ds_list_find_value(leftBatteries, ds_list_size(leftBatteries)-1)).missilesLeft

//fill centerBatteries
centerBatteries = ds_list_create();
centerBatteryStartX = room_width/2
PyramidOfBatteries(centerBatteries, centerBatteryStartX, batteryStartY, sprite_get_width(spr_battery), sprite_get_height(spr_battery))
centerBatteryCount = (ds_list_find_value(leftBatteries, ds_list_size(leftBatteries)-1)).missilesLeft

//create player
player = instance_create_depth(room_width/2, room_height/2, 1, obj_player)