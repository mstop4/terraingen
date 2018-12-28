if (async_load[? "id"] == api_get_words) {
	if (async_load[? "status"] == 0) {
		var _json = json_decode(async_load[? "result"]);
		var _words = _json[? "seeds"];
		
		var _tree_list = ds_list_create();

		for (var i=obj_terrain.map_border-1; i<map_side_length-2-obj_terrain.map_border; i++) {
			for (var j=obj_terrain.map_border-1; j<map_side_length-2-obj_terrain.map_border; j++) {
				ds_list_add(_tree_list, i*j);
			}
		}

		ds_list_shuffle(_tree_list);

		ds_grid_set_region(tree_map,0,0,map_side_length,map_side_length,0);

		for (var i=0; i<num_trees;) {
			if (ds_list_empty(_tree_list)) {
				print("Not enough room for more trees.");
				break;
			}	
	
			var _cur_cell = _tree_list[| 0];
			var _x = _cur_cell mod map_side_length;
			var _y = _cur_cell div map_side_length;
			if (ds_grid_get_disk_sum(tree_map, _x, _y, tree_buffer) == 0) {
				tree_map[# _x, _y] = 1;
				
				var _tree = instance_create_layer(_x * global.xy_scale, _y * global.xy_scale,layer,obj_tree_cube);
				repeat (4) {
					ds_list_add(_tree.words, _words[| 0]);
					ds_list_delete(_words, 0);
				}
				
				i++;
			}
	
			ds_list_delete(_tree_list, 0);
		}

		with (obj_tree_cube) {
			event_user(0);
		}

		ds_list_destroy(_tree_list);
		ds_list_destroy(_words);
	}
}