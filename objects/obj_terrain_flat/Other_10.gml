terrain_done = 0;
var _start = current_time;
print("Starting terrain generation...");
diamondsquare_init(terrain_map, exec_stack, seed_start, seed_range, min_value, max_value);
print("Generating height map...");
var _result = 0;

while (_result < 1) {
	_result = diamondsquare_step(terrain_map, exec_stack, min_value, max_value, variance, decay);
}

print("Generating region map...");
//ds_grid_set_region(colour_map,0,0,map_side_length,map_side_length, $7cd387);
create_region_map(region_map, colour_map, 64);

print("Generating alpha map...");
create_alpha_map(alpha_map, map_border);

print("Generating UV map...");
generate_uvs(uv_map);

print("Creating Model...");
vertex_delete_buffer(terrain_model);
terrain_model = terrain_to_flat_model(terrain_map, alpha_map, uv_map, normal_strength);

populate_terrain();

print("Done! ", current_time - _start, " ms");
terrain_done = 1;
