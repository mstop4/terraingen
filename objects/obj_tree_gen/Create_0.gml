print("Planting trees...");
var _start = current_time;
map_side_length = obj_terrain_flat.map_side_length-1;
var _num_cells = map_side_length*map_side_length;

tree_map = ds_grid_create(map_side_length,map_side_length);
tree_list = ds_list_create();

for (var i=0; i<_num_cells; i++) {
	ds_list_add(tree_list, i);
}

ds_list_shuffle(tree_list);

ds_grid_set_region(tree_map,0,0,map_side_length,map_side_length,0);

for (var i=0; i<num_trees;) {
	if (ds_list_empty(tree_list)) {
		print("Not enough room for more trees.");
		break;
	}	
	
	var _cur_cell = tree_list[| 0];
	var _x = _cur_cell mod map_side_length;
	var _y = _cur_cell div map_side_length;
	if (ds_grid_get_disk_sum(tree_map, _x, _y, tree_buffer) == 0) {
		tree_map[# _x, _y] = 1;
		var _tree = instance_create_layer(_x * global.xy_scale, _y * global.xy_scale,layer,obj_tree_cube);
		i++;
	}
	
	ds_list_delete(tree_list, 0);
}

with (obj_tree_cube) {
	event_user(0);
}

ds_list_destroy(tree_list);

print("Done! ", current_time - _start, " ms");