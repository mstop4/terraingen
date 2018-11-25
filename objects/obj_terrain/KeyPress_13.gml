terrain_done = 0;
var _start = current_time;
print("Starting terrain generation...");

for (var i=0; i<map_size; i++) {
	for (var j=0; j<map_size; j++) {




print("Generating height map...");
var _result = 0;

while (_result < 1) {
	_result = diamondsquare_step(terrain_map, exec_stack, min_value, max_value, variance, decay);
}

print("Generating normal map...");
height_to_normal(terrain_map, normal_map, normal_strength);
print("Generating colour map...");
ds_grid_set_region(colour_map,0,0,chunk_side_length,chunk_side_length,c_lime);
//height_to_colour(terrain_map, colour_map);
print("Generating UV map...");
generate_uvs(uv_map, uv_scale);

print("Creating Model...");
vertex_delete_buffer(terrain_model);
terrain_model = terrain_to_solid_model(terrain_map, normal_map, colour_map, uv_map);

var _center = other.chunk_side_length div 2;

with (obj_player) {
	x = _center;
	y = _center;
	z = blin_z_pos(_center, _center, obj_terrain.terrain_map);
}

with (obj_plane) {
	x = _center;
	y = _center;
	z = blin_z_pos(_center, _center, obj_terrain.terrain_map);
	var _xyz = convert_to_terrain_space(_center, _center, z, obj_terrain);
	real_x = _xyz[0];
	real_y = _xyz[1];
	z = _xyz[2] + 1;
}

print("Done! ", current_time - _start, " ms");
terrain_done = 1;
