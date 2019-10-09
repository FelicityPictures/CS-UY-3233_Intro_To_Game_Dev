timer += delta_time

if(timer >= 3000000 && waves < 5){
	for(i = 0; i < 4; i++){
		createEnemyMissile(random_range(50, room_width-50), random_range(0,-10),
			choose(100, 512) + (random_range(1,3)*103), 725)
	}
	timer -= 3000000
	waves++
}