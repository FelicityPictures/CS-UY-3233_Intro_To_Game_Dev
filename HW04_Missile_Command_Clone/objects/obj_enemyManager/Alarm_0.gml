/// @description All missiles die -> go to finish screen

global.SCORE += 100 * global.LIVES
global.SCORE += 5 * global.MISSILESLEFT
room_goto(finish)