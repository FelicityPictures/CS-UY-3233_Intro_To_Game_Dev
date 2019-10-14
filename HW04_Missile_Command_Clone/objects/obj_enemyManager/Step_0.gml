waveTimer += delta_time
planeTimer += delta_time

if(waveTimer >= timeBetweenWaves && waves < maximumWaves){
	for(i = 0; i < 4; i++){
		createEnemyMissile(missileTracker,
			random_range(50, room_width-50), random_range(0,-10),
			choose(100, 512) + (random_range(1,3)*103), 725)
	}
	waveTimer -= timeBetweenWaves
	waves++
}
if(waves >= maximumWaves && ds_list_size(missileTracker) <= 0){
	alarm[0] = 2 * room_speed
}

if(planeTimer > timeBetweenPlanes){
	createEnemyAirplane()
	planeTimer -= timeBetweenPlanes
}