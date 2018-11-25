if (!running) {
	diamondsquare_init(terrain_map, exec_stack, seed_start, seed_range, min_value, max_value);
	ds_grid_set_region(normal_map, 0, 0, chunk_side_length, chunk_side_length, -1);

	var _result = 0;

	while (_result < 1) {
		_result = diamondsquare_step(terrain_map, exec_stack, min_value, max_value, variance, decay);
	}
	
	height_to_normal(terrain_map, normal_map, normal_strength);
	
	height_grid_to_surface(terrain_map, terrain_surf);
	normal_grid_to_surface(normal_map, normal_surf);
}