diamondsquare_init(terrain_map, min_value, max_value);

var _temp_list =  ds_list_create();
ds_list_add(_temp_list, 0, 0, map_side_length-1, map_side_length-1);
ds_stack_push(exec_stack, _temp_list);

var _result = 0;

while (_result < 1) {
	_result = diamondsquare_step(terrain_map, exec_stack, min_value, max_value, variance);
}
grid_to_surface(terrain_map, out_surf);