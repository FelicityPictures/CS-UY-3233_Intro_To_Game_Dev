batteryStartY = 700

//fill leftBatteries
leftBatteries = ds_list_create()
leftBatteryStartX = 100
PyramidOfBatteries(leftBatteries, leftBatteryStartX, batteryStartY, sprite_get_width(spr_battery), sprite_get_height(spr_battery))

//fill rightBatteries
rightBatteries = ds_list_create();
rightBatteryStartX = room_width - 100
PyramidOfBatteries(rightBatteries, rightBatteryStartX, batteryStartY, sprite_get_width(spr_battery), sprite_get_height(spr_battery))

//fill centerBatteries
centerBatteries = ds_list_create();
centerBatteryStartX = room_width/2
PyramidOfBatteries(centerBatteries, centerBatteryStartX, batteryStartY, sprite_get_width(spr_battery), sprite_get_height(spr_battery))

//create player
player = instance_create_depth(room_width/2, room_height/2, 1, obj_player)
