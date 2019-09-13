/// @description Insert description here
// You can write your code in this editor

if(thrown){
	thrownTiming += 0.03
	positionY += -1
	radius -= 0.5
}

if(thrownTiming > 1){
	radius = 0
}

if(thrownTiming > 1.5){
	thrownTiming = 0.0
	positionY = originalPositionY
	radius = 20
	thrown = false
	color = make_colour_rgb(irandom(255),irandom(255),irandom(255));

}