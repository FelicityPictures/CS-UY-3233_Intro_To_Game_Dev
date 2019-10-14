list = argument0

for(i = 0; i < ds_list_size(list)-1; i++){
	if(!instance_exists(ds_list_find_value(list, i))){
		ds_list_delete(list, i)
		i--
	}
}