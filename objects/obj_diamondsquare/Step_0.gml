if (running) {
	time_taken = 0;
	last_time = get_timer();
	
	while (time_taken < 1000000/room_speed) {
		if (diamondsquare_step(terrain_map, exec_stack, min_value, max_value, variance, decay) == 1) {
			running = false;
			break;
		}
		var _now = get_timer();
		time_taken += _now - last_time;
		last_time = _now;
	}
	
	height_grid_to_surface(terrain_map, terrain_surf);
}