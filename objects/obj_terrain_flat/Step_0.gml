if (terrain_done) {
	if (obj_input.button_pressed[action.regen_terrain]) {
		event_user(0);
	}
}

else {
	var _time_spent = 0;
	
	switch (load_stage) {
		case load_state.terrain_start:
			print("Starting terrain generation...");
			diamondsquare_init(terrain_map, exec_stack, seed_start, seed_range, min_value, max_value);
			
			print("Generating height map...");
			load_stage = load_state.terrain_height;
			obj_load_screen.progress = 0;
			obj_load_screen.progress_max = map_side_length * map_side_length;
			break;
			
		case load_state.terrain_height:
			while (_time_spent < obj_load_screen.update_time) {
				if (diamondsquare_step(terrain_map, exec_stack, min_value, max_value, variance, decay)) {
					
					print("Generating colour map...");
					load_stage = load_state.terrain_colour;
					break;
				}
			
				else {
					obj_load_screen.progress++;
				}
				
				_time_spent += delta_time;
			}
			break;
			
		case load_state.terrain_colour:
			ds_grid_set_region(colour_map,0,0,map_side_length,map_side_length, $7cd387);
			print("Generating alpha map...");
			load_stage = load_state.terrain_alpha;
			i = 0;
			break;
			
		case load_state.terrain_alpha:
			while (_time_spent < obj_load_screen.update_time) {
				var _w = ds_grid_width(alpha_map);
				
				if (_w > map_border*2) {
					var _amount_step = 1 / map_border;
					ds_grid_set_region(_alpha_grid, i, i, _w-i-1, _w-i-1, 1 - _amount_step * (_border_width-i));
				}
				//create_alpha_map(alpha_map, map_border);
			}
			
	}
}