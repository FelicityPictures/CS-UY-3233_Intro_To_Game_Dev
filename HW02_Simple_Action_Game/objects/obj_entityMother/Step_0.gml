boneAccumulatedTime += delta_time/1000000
healthAccumulatedTime += delta_time/1000000
difficultyAccumulatedTime += delta_time/1000000

if(difficultyAccumulatedTime >= timeToIncreaseDifficulty){
	boneSpeed += 0.25
	timeBetweenBones -= 0.1
	difficultyAccumulatedTime -= timeToIncreaseDifficulty
}

if(boneAccumulatedTime >= timeBetweenBones){
	boneDirection = random_range(0, 4)
	// right to left
	if(boneDirection < 1){
		boneArray[numberOfBones] = instance_create_depth(0, 0, 0, obj_verticalBone)
		boneArray[numberOfBones].x = 0 - (boneArray[numberOfBones].sprite_width/2)
		boneArray[numberOfBones].y = random_range(0-(boneArray[numberOfBones].sprite_height/4),
							(global.PLAY_EDGE_TOP+global.PLAY_HEIGHT)+(boneArray[numberOfBones].sprite_height/4))
		boneArray[numberOfBones].movement = boneSpeed
	}
	// left to right
	else if(boneDirection < 2){
		boneArray[numberOfBones] = instance_create_depth(0, 0, 0, obj_verticalBone)
		boneArray[numberOfBones].x = window_get_width() + (boneArray[numberOfBones].sprite_width/2)
		boneArray[numberOfBones].y = random_range(0-(boneArray[numberOfBones].sprite_height/4),
							(global.PLAY_EDGE_TOP+global.PLAY_HEIGHT)+(boneArray[numberOfBones].sprite_height/4))
		boneArray[numberOfBones].movement = -boneSpeed
	}
	// top to bottom
	else if(boneDirection < 3){
		boneArray[numberOfBones] = instance_create_depth(0, 0, 0, obj_horizontalBone)
		boneArray[numberOfBones].x = random_range(0-(boneArray[numberOfBones].sprite_width/4),
										room_width+(boneArray[numberOfBones].sprite_width/4))
		boneArray[numberOfBones].y = 0 - (boneArray[numberOfBones].sprite_height/2)
		boneArray[numberOfBones].movement = boneSpeed
	}
	// bottom to top
	else{
		boneArray[numberOfBones] = instance_create_depth(0, 0, 0, obj_horizontalBone)
		boneArray[numberOfBones].x = random_range(0-(boneArray[numberOfBones].sprite_width/4),
										room_width+(boneArray[numberOfBones].sprite_width/4))
		boneArray[numberOfBones].y = window_get_width() + (boneArray[numberOfBones].sprite_height/2)
		boneArray[numberOfBones].movement = -boneSpeed
	}
	boneAccumulatedTime -= timeBetweenBones
	numberOfBones++
}

if(healthAccumulatedTime >= ifTimeForHealth){
	decideIfSpawnHealthPack = random_range(0, 100)
	if(decideIfSpawnHealthPack > global.HEALTH_POINTS){
		instance_create_depth(0, 0, 0, obj_healthPack)
	}
	healthAccumulatedTime -= ifTimeForHealth
}