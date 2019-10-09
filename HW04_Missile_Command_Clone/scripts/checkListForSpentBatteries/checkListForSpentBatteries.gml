list = argument0

for(i = 0; i < ds_list_size(list); i++){
	currentMissile = ds_list_find_value(list, i)
	if(currentMissile.missilesLeft <= 0){
		instance_destroy(currentMissile)
		ds_list_delete(list, i)
		i--
	}
}