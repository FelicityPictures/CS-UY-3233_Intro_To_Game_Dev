waveTimer += delta_time
planeTimer += delta_time

if(waveTimer >= timeBetweenWaves && waves < maximumWaves){
	for(i = 0; i < 4; i++){
		createEnemyMissile(missileTracker,
			random_range(50, room_width-50), random_range(0,-10),
			choose(100, 203, 306, 409, 512, 650, 787, 924), 725)
	}
	waveTimer -= timeBetweenWaves
	waves++
}

if(planeTimer > timeBetweenPlanes){
	createEnemyAirplane()
	planeTimer -= timeBetweenPlanes
}

if(waves >= maximumWaves && !instance_exists(obj_missile) && switchTriggered == false){
	alarm[0] = 2 * room_speed
	switchTriggered = true
}