if (window_has_focus() && obj_MCP.cursor_lock) {
	player_handle_movement();
	
	// Check if tile is ok to plant on
	cursor_x = floor(x / global.xy_scale + lengthdir_x(1, direction));
	cursor_y = floor(y / global.xy_scale + lengthdir_y(1, direction));
	cursor_z = max(obj_terrain.terrain_map[# cursor_x, cursor_y],
				   obj_terrain.terrain_map[# cursor_x+1, cursor_y],
				   obj_terrain.terrain_map[# cursor_x, cursor_y+1],
				   obj_terrain.terrain_map[# cursor_x+1, cursor_y+1]);
	
	cursor_real_xyz = convert_to_terrain_space(cursor_x+0.5, cursor_y+0.5, cursor_z, 1, obj_terrain);
	
	var _at_border = cursor_x < obj_terrain.map_border || cursor_x > obj_terrain.map_side_length-1-obj_terrain.map_border ||
					 cursor_y < obj_terrain.map_border || cursor_y > obj_terrain.map_side_length-1-obj_terrain.map_border
	
	var _num_neighbours = ds_grid_get_disk_sum(obj_tree_manager.tree_map, cursor_x, cursor_y, obj_tree_manager.tree_buffer);
	var _inside_player = collision_circle((cursor_x+0.5) * global.xy_scale, (cursor_y+0.5) * global.xy_scale, 15, id, false, false);
	
	can_plant = !_at_border && _num_neighbours == 0 && !_inside_player;
	
	if (obj_input.button_pressed[action.plant_tree]) {
		if (can_plant) {
			obj_tree_manager.tree_map[# cursor_x, cursor_y] = 1;
			var _word = word_list[| word_selection];
			
			var _tree = instance_create_layer(cursor_x * global.xy_scale, cursor_y * global.xy_scale,layer,obj_tree_cube);
			_tree.seed_word = _word;
			
			if (word_map[? _word] == 1) {
				ds_map_delete(word_map, _word);
				ds_list_delete(word_list, word_selection);
				num_words = ds_list_size(word_list);
				word_selection = min(word_selection,num_words);
			} 
		
			else {
				word_map[? _word]--;
			}
		}
	}
}