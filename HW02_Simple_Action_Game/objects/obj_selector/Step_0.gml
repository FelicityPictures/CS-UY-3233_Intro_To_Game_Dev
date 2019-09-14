if(room == endScreen){
	if(keyboard_check_pressed(ord("A"))
		or keyboard_check_pressed(vk_left)){
		x = 300
		y = 550
	}
	else if(keyboard_check_pressed(ord("D"))
			or keyboard_check_pressed(vk_right)){
		x = 700
		y = 550
	}
}
else if(room = titleScreen){
	if(keyboard_check(ord("W")) or keyboard_check(vk_up)){
		y -= movingSpeed
	}else if(keyboard_check(ord("S")) or keyboard_check(vk_down)){
		y += movingSpeed
	}
	if(keyboard_check(ord("A")) or keyboard_check(vk_left)){
		x -= movingSpeed
	}else if(keyboard_check(ord("D")) or keyboard_check(vk_right)){
		x += movingSpeed
	}
}