// draw surrounding rectangle
draw_set_color(c_white)
draw_rectangle(25, 25, 975, 900, true)

// draw HP bar
draw_text_transformed(25, 920, "HP", 3, 3, 0)

draw_rectangle(100, 920, 611, 980, true)
draw_set_color(c_red)
draw_rectangle(106, 926, 106+(global.HEALTH_POINTS*5), 975, false)
