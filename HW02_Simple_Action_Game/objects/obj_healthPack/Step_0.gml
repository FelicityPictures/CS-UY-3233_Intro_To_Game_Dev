xSpeed += xGravity
x += xSpeed
y += ySpeed

if((xSpeed < -referenceXSpeed and xLeft <= 0)
	or (xSpeed > referenceXSpeed and xLeft >= 0)){
	xSpeed = referenceXSpeed * xLeft
	xGravity *= -1
	xLeft *= -1
}

if(y > room_height + sprite_height
	or x > room_width + sprite_width){
	instance_destroy()	
}