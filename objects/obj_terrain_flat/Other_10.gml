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
ds_grid_set_region(colour_map,0,0,map_side_length,map_side_length, $7cd387);
/*ds_stack_clear(exec_stack);
diamondsquare_init(colour_map, exec_stack, seed_start, 128, min_value, max_value);

_result = 0;

while (_result < 1) {
	_result = diamondsquare_step(colour_map, exec_stack, min_value, max_value, 128, decay);
}

var _c;

for (var i=0; i<map_side_length; i++) {
	for (var j=0; j<map_side_length; j++) {
		_c = colour_map[# i, j];
		
		if (_c < 64) {
			colour_map[# i, j] = c_red;
		}
		
		else if (_c < 127) {
			colour_map[# i, j] = c_yellow;			
		}
		
		else if (_c < 191) {
			colour_map[# i, j] = c_lime;			
		}
		
		else {
			colour_map[# i, j] = c_blue;			
		}
	}
}*/

create_alpha_map(alpha_map, map_border);
print("Generating UV map...");
generate_uvs(uv_map, uv_scale);

print("Creating Model...");
vertex_delete_buffer(terrain_model);
terrain_model = terrain_to_flat_model(terrain_map, colour_map, alpha_map, uv_map, normal_strength);

var _center = other.map_side_length / 2;

with (cls_fgObj) {
	if (id  != other.id)
		event_user(0);
}

var _player = instance_create_layer(0,0,layer,obj_player);

with (_player) {
	event_user(0);
}

print("Done! ", current_time - _start, " ms");
terrain_done = 1;
