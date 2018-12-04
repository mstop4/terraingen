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

for (var i=0; i<num_trees;) {
	if (ds_list_empty(tree_list)) {
		print("Not enough room for more trees.");
		break;
	}	
	var _cur_cell = irandom(_num_cells-1);
	var _index = ds_list_find_index(tree_list, _cur_cell);
	if (_index > -1) {
		ds_list_delete(tree_list, _index);
		var _tree = instance_create_layer((_cur_cell mod map_side_length) * global.xy_scale, (_cur_cell div map_side_length) * global.xy_scale,layer,obj_tree_cube);
		mark_tree_map(tree_list, _cur_cell, map_side_length, tree_buffer);
		i++;
	}
}

with (obj_tree_cube) {
	event_user(0);
}

ds_list_destroy(tree_list);

print("Done! ", current_time - _start, " ms");