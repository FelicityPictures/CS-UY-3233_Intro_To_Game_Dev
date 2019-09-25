x += xMovement

if !instance_position(x+sensor, y, obj_platform){
	xMovement *= -1
	sensor *= -1
}