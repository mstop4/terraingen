var _start = current_time;

diamondsquare_init_buff(terrain_buff, map_side_length, exec_stack, seed_min, seed_max);
//ds_grid_set_region(normal_map, 0, 0, map_side_length, map_side_length, -1);

var _result = 0;

while (_result < 1) {
	_result = diamondsquare_step_buff(terrain_buff, map_side_length, exec_stack, min_value, max_value, variance, decay);
}
	
//height_to_normal(terrain_map, normal_map, normal_strength);
	
height_buff_to_surface(terrain_buff, map_side_length, terrain_surf);
//normal_grid_to_surface(normal_map, normal_surf);

print (current_time - _start, " ms");