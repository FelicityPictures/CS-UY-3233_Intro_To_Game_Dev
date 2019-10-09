leftBatteries = ds_list_create();

batteryStartY = 700
leftBatteryStartX = 100

//fill leftBatteries
PyramidOfBatteries(leftBatteries, leftBatteryStartX, batteryStartY, sprite_get_width(spr_battery), sprite_get_height(spr_battery))

//fill rightBatteries
rightBatteries = ds_list_create();
rightBatteryStartX = room_width - 100
PyramidOfBatteries(rightBatteries, rightBatteryStartX, batteryStartY, sprite_get_width(spr_battery), sprite_get_height(spr_battery))

centerBatteries = ds_list_create();
centerBatteryStartX = room_width/2

//fill centerBatteries
PyramidOfBatteries(centerBatteries, centerBatteryStartX, batteryStartY, sprite_get_width(spr_battery), sprite_get_height(spr_battery))

//create player
player = instance_create_depth(room_width/2, room_height/2, 1, obj_player)