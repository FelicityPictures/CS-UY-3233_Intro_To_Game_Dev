cityArray = argument0

for(i = 0; i < ds_list_size(cityArray)-1; i++){
	currentCity = ds_list_find_value(cityArray, i)
	if(currentCity.alive == false){
		instance_destroy(currentCity)	
		ds_list_delete(cityArray, i)
		i--
	}
}