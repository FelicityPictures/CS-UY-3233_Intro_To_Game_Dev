missileTracker = ds_list_create()

for(i = 0; i < 4; i++){
	chooseX = choose(100, 203, 306, 409, 512, 650, 787, 924)
	createEnemyMissile(missileTracker, random_range(50, room_width-50), random_range(0,-100),
		chooseX, 725)
}

waveTimer = 0.0
waves = 0
maximumWaves = 4
timeBetweenWaves = 10000000

planeTimer = 0.0
timeBetweenPlanes = 10000000

switchTriggered = false