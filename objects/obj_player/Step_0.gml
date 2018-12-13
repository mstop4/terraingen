if (window_has_focus() && obj_MCP.cursor_lock) {
	player_handle_movement();
	
	var _new_cursor_x = floor(x / global.xy_scale + lengthdir_x(1, direction));
	var _new_cursor_y = floor(y / global.xy_scale + lengthdir_y(1, direction));

	if (_new_cursor_x != cursor_x || _new_cursor_y != cursor_y) {
		cursor_x = _new_cursor_x;
		cursor_y = _new_cursor_y;
		player_update_cursor();
	}

	// Check if tile is ok to plant on	
	var _at_border = cursor_x < obj_terrain.map_border || cursor_x > obj_terrain.map_side_length-1-obj_terrain.map_border ||
					 cursor_y < obj_terrain.map_border || cursor_y > obj_terrain.map_side_length-1-obj_terrain.map_border
	
	var _num_neighbours = ds_grid_get_disk_sum(obj_tree_gen.tree_map, cursor_x, cursor_y, obj_tree_gen.tree_buffer);
	var _inside_player = collision_circle((cursor_x+0.5) * global.xy_scale, (cursor_y+0.5) * global.xy_scale, 15, id, false, false);
	
	can_plant = !_at_border && _num_neighbours == 0 && !_inside_player;
	
	if (obj_input.button_pressed[action.plant_tree]) {
		if (can_plant) {
			obj_tree_gen.tree_map[# cursor_x, cursor_y] = 1;
			var _word = word_list[| word_selection];
			
			var _tree = instance_create_layer(cursor_x * global.xy_scale, cursor_y * global.xy_scale,layer,obj_tree_cube);
			_tree.seed_word = _word;
			_tree.get_own_words = true;
			
			word_map[? _word]--;
			
			if (word_map[? _word] <= 0) {
				ds_map_delete(word_map, _word);
				ds_list_delete(word_list, word_selection);
				num_words = ds_list_size(word_list);
			}
		}
	}
}