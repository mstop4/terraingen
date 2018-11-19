if (!running) {
	diamondsquare_init(terrain_map, exec_stack, map_side_length, min_value, max_value);

	var _result = 0;

	while (_result < 1) {
		_result = diamondsquare_step(terrain_map, exec_stack, min_value, max_value, variance, decay);
	}
	grid_to_surface(terrain_map, out_surf);
}