terrain_done = 0;
var _start = current_time;
print("Starting terrain generation...");
diamondsquare_init(terrain_map, exec_stack, seed_start, seed_range, min_value, max_value);

print("Generating height map...");
var _result = 0;

while (_result < 1) {
	_result = diamondsquare_step(terrain_map, exec_stack, min_value, max_value, variance, decay);
}

print("Generating normal map...");
height_to_normal(terrain_map, normal_map, normal_strength);
print("Generating colour map...");
ds_grid_set_region(colour_map,0,0,map_side_length,map_side_length,c_white);
//height_to_colour(terrain_map, colour_map);
print("Generating UV map...");
generate_uvs(uv_map, uv_scale);

print("Creating Model...");
vertex_delete_buffer(terrain_model);
terrain_model = terrain_to_solid_model(terrain_map, normal_map, colour_map, uv_map);

with (obj_camera) {
	z = blin_z_pos(obj_terrain.terrain_map, other.map_side_length div 2, other.map_side_length div 2);
}

print("Done! ", current_time - _start, " ms");
terrain_done = 1;
