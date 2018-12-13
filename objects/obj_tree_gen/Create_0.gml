print("Planting trees...");
var _start = current_time;
map_side_length = obj_terrain_flat.map_side_length-1;

tree_map = ds_grid_create(map_side_length,map_side_length);

if (num_trees > 0) {
	get_words = http_get(obj_MCP.server_address + "/api/v1/seed?count=" + string(num_trees * 4));
}

print("Done! ", current_time - _start, " ms");