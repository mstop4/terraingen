diamondsquare_init(terrain_map, min_value, max_value);

var _temp_list =  ds_list_create();
ds_list_add(_temp_list, 0, 0, map_side_length-1, map_side_length-1);
ds_stack_push(exec_stack, _temp_list);