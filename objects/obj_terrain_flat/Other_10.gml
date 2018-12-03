terrain_done = 0;
var _start = current_time;
print("Starting terrain generation...");
diamondsquare_init(terrain_map, exec_stack, seed_start, seed_range, min_value, max_value);

print("Generating height map...");
var _result = 0;

while (_result < 1) {
	_result = diamondsquare_step(terrain_map, exec_stack, min_value, max_value, variance, decay);
}

print("Generating colour map...");
ds_grid_set_region(colour_map,0,0,map_side_length,map_side_length,$20D090);
print("Generating UV map...");
generate_uvs(uv_map, uv_scale);

print("Creating Model...");
vertex_delete_buffer(terrain_model);
terrain_model = terrain_to_flat_model(terrain_map, colour_map, uv_map);
vertex_delete_buffer(border_model);
border_model = make_world_border(terrain_map, 127, 1);

var _center = other.map_side_length / 2;

with (cls_gravObj) {
	event_user(0);
}

print("Done! ", current_time - _start, " ms");
terrain_done = 1;
