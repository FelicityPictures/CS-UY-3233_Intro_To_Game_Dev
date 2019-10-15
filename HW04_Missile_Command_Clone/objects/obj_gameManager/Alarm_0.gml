/// @description switch to finish room

global.SCORE += 100 * global.LIVES
global.SCORE += 5 * global.MISSILESLEFT
switchingRoom = false
room_goto(finish)