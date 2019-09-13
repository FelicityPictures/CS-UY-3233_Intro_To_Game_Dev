/// @description Insert description here
// You can write your code in this editor

draw_set_color(darkGray)
// body
draw_circle(bodyX, bodyY, bodyRadius, false)

draw_set_color(lightGray)
// head
draw_circle(bodyX, bodyY-200, 50, false)

// neck
// draw_set_color(c_gray)
draw_rectangle(bodyX-50, bodyY-200+50-50, bodyX+50, bodyY-200+50+80, false)

// wings
draw_set_color(wingColor)
draw_triangle(bodyX-50, bodyY-60, bodyX-50, bodyY+50, bodyX-140, bodyY+50, false)
draw_triangle(bodyX+50, bodyY-60, bodyX+50, bodyY+50, bodyX+140, bodyY+50, false)

// beak
draw_set_color(c_orange)
draw_triangle(bodyX-15, bodyY-200+10, bodyX+15, bodyY-200+10, bodyX, bodyY-200-beakHeight, false)
draw_triangle(bodyX-15, bodyY-200+10, bodyX+15, bodyY-200+10, bodyX, bodyY-200+10+beakHeight, false)

// eyes
draw_set_color(c_black)
draw_circle(bodyX-20, bodyY-200-10, 10, false)
draw_circle(bodyX+20, bodyY-200-10, 10, false)

if(bodyRadius < maxBodyRadius * 0.5){
	draw_text_transformed(250, 50, "Feed me! I'm S T A R V I N G", 3, 3, 0)
}else if(bodyRadius >= maxBodyRadius){
	draw_text_transformed(250, 50, "I'm gonna burst. Please stop!", 3, 3, 0)
}else if(bodyRadius > maxBodyRadius * 0.5){
	draw_text_transformed(250, 50, "Okay. I'm getting pretty full...", 3, 3, 0)
}