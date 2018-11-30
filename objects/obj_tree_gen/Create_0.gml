print("Planting trees...");
var _start = current_time;
map_side_length = obj_terrain_flat.map_side_length-1;
var _num_cells = map_side_length*map_side_length;

tree_map = ds_list_create();

for (var i=0; i<_num_cells; i++) {
	ds_list_add(tree_map, i);
}

ds_list_shuffle(tree_map);

for (var i=0; i<num_trees;) {
	var _cur_cell = irandom(_num_cells-1);
	if (ds_list_find_index(tree_map, _cur_cell) > -1) {
		var _tree = instance_create_layer(_cur_cell mod map_side_length, _cur_cell div map_side_length,layer,obj_tree);
		mark_tree_map(tree_map, map_side_length, _cur_cell, tree_buffer);
		i++;
	}
}

with (obj_tree) {
	event_user(0);
}

ds_list_destroy(tree_map);

print("Done! ", current_time - _start, " ms");