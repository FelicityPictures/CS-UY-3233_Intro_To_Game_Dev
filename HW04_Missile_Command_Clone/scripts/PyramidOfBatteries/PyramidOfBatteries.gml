// inserts pyramid of batteries, starting at top, middle one

insertIntoArray = argument0
startingX = argument1
startingY = argument2
spriteWidth = argument3
spriteHeight = argument4

for (row = 0; row < 4; row++){
    for(column = 0; column < row+1; column++){
		newBattery = instance_create_depth(startingX + (spriteWidth * 1.25 * column), startingY + ((spriteHeight/1.5) * row), 1, obj_battery)
		ds_list_add(insertIntoArray, newBattery)
	}
	startingX -= (spriteWidth * 1.25)/2
}