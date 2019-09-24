_x = argument0
_y = argument1
_amount = argument2

for(i = 0; i < _amount; i++){
	instance_create_depth(_x, _y, -1, obj_particles)
}