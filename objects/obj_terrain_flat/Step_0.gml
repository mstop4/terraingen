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
			break;
			
		case load_state.terrain_height:
			while (_time_spent < obj_load_screen.update_time) {
				if (diamondsquare_step(terrain_map, exec_stack, min_value, max_value, variance, decay)) {
					
					print("Generating colour map...");
					load_stage = load_state.terrain_colour;
					break;
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
			var _amount_step = 1 / map_border;
			var _w = ds_grid_width(alpha_map);
			
			while (_time_spent < obj_load_screen.update_time) {
				
				if (_w > map_border*2) {
					ds_grid_set_region(alpha_map, i, i, _w-i-1, _w-i-1, 1 - _amount_step * (map_border-i));
				}
				
				i++;
				
				if (i > map_border) {
					print("Generating UV map...");
					load_stage = load_state.terrain_uv;
					i = 0;
					j = 0;
					break;
				}
				
				_time_spent += delta_time;
			}
			break;
			
		case load_state.terrain_uv:
			var _w = ds_grid_width(_uv_grid);
			var _h = ds_grid_height(_uv_grid);
			
			while (_time_spent < obj_load_screen.update_time) {		
				uv_map[# i, j] = [i / uv_scale, j / uv_scale];
				
				j++;
				if (j >= _h) {
					i++;
					
					if (i >= _w) {
						print("Creating Model...");
						vertex_delete_buffer(terrain_model);
						load_stage = load_state.terrain_model;
					}
					
					j = 0;
				}
				_time_spent += delta_time;
			}
			break;
	}
}