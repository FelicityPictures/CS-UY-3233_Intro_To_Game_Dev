// beak chomping
if(beakHeight < 3 || beakHeight > 20){
	beakChange = beakChange * -1
}
beakHeight += beakChange
if(bodyRadius > 90){
	bodyRadius -= 0.05
}

//timing food
if(foodThrown){
	foodTiming += 0.03
	
	if(foodTiming > 1.5){
		foodThrown = false
		foodTiming = 0.0
		if(bodyRadius < maxBodyRadius){
			bodyRadius += 10
		}
		
		if(bodyRadius >= maxBodyRadius){
			feedAttempt++
			
			if(feedAttempt > 5){
				bodyRadius = 90
				feedAttempt = 0
			}
		}
	}
}