if (window_has_focus() && obj_MCP.cursor_lock) {
	direction = wrap(direction - (window_get_width() / 2 - window_mouse_get_x()) * obj_MCP.mouse_sens_hor, 0, 360);
	pitch = clamp(pitch - (window_get_height() / 2 - window_mouse_get_y()) * obj_MCP.mouse_sens_ver,-max_pitch,max_pitch);

	var _v_input = obj_input.button_held[action.back] - obj_input.button_held[action.front];
	var _h_input = obj_input.button_held[action.right] - obj_input.button_held[action.left];

	if (_v_input != 0 || _h_input != 0) {
		var _move_dir = point_direction(_v_input,_h_input,0,0) + direction;
		var _spd_x = lengthdir_x(my_speed,_move_dir);
		var _spd_y = lengthdir_y(my_speed,_move_dir);

		if (!place_meeting(x + _spd_x, y, obj_tree_cube)) {
			x = clamp(x + _spd_x, obj_terrain.map_border * global.xy_scale, (obj_terrain.map_side_length-1-obj_terrain.map_border) * global.xy_scale);
		}
	
		if (!place_meeting(x, y + _spd_y, obj_tree_cube)) {	
			y = clamp(y + _spd_y, obj_terrain.map_border * global.xy_scale, (obj_terrain.map_side_length-1-obj_terrain.map_border) * global.xy_scale);
		}
	
		z = blin_z_pos(x, y, global.xy_scale, obj_terrain.terrain_map);
		
		view_bob_t = view_bob_t + view_bob_delta;
		if (view_bob_t > 360) {
			view_bob_t -= 360;
		}
		
		if (!is_stepping && (view_bob_t+90) mod 180 == 0) {
			is_stepping = true;
			audio_play_sound(snd_step,0,false);
		} else if (is_stepping && view_bob_t mod 180 != 0) {
			is_stepping = false;
		}
		
		view_bob_z = abs(dcos(view_bob_t)) * view_bob_amount;
	}
	
	else {
		if (abs(view_bob_t mod pi) <= view_bob_delta*4) {
			view_bob_t = 0;
			view_bob_z = 0.1;
		} 
		else {
			view_bob_t = view_bob_t + view_bob_delta*4;
			if (view_bob_t > 360) {
				view_bob_t -= 360;
			}
			view_bob_z = abs(dcos(view_bob_t)) * view_bob_amount;
		}
	}
	
	if (obj_input.button_pressed[action.plant_tree]) {
		var _fx = floor(x / global.xy_scale + lengthdir_x(1, direction));
		var _fy = floor(y / global.xy_scale + lengthdir_y(1, direction));
		
		// Prevent planting trees on map border
		if (_fx < obj_terrain.map_border || _fx > obj_terrain.map_side_length-1-obj_terrain.map_border ||
			_fy < obj_terrain.map_border || _fy > obj_terrain.map_side_length-1-obj_terrain.map_border)
				exit;
		
		var _area = ds_grid_get_disk_sum(obj_tree_gen.tree_map, _fx, _fy, obj_tree_gen.tree_buffer);
	
		if (_area == 0 && !collision_circle((_fx+0.5) * global.xy_scale, (_fy+0.5) * global.xy_scale, 15, id, false, false)) {
			obj_tree_gen.tree_map[# _fx, _fy] = 1;
			var _word = word_list[| word_selection];
			
			var _tree = instance_create_layer(_fx * global.xy_scale, _fy * global.xy_scale,layer,obj_tree_cube);
			_tree.seed_word = _word;
			
			word_map[? _word]--;
			
			if (word_map[? _word] <= 0) {
				ds_map_delete(word_map, _word);
				ds_list_delete(word_list, word_selection);
				num_words = ds_list_size(word_list);
			}
		}
	}
}