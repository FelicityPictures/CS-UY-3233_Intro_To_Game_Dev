/// @description Insert description here
// You can write your code in this editor

if room = gameStart {
	if keyboard_check(vk_space) {
		room_goto(level1)
	}
}

if room = gameOver or room = win {
	if keyboard_check(vk_space) {
		room_goto(gameStart)
		global.gameScore = 0
	}
}