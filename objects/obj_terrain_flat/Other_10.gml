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

var _center = map_side_length / 2;

var _bill = instance_create_layer(0,0,layer,obj_billboard);
_bill.x = (_center - 1) * global.xy_scale;
_bill.y = _center * global.xy_scale;

with (cls_fgObj) {
	if (id  != other.id)
		event_user(0);
}

var _player = instance_create_layer(0,0,layer,obj_player);
_player.x = _center * global.xy_scale;
_player.y = _center * global.xy_scale;

with (_player) {
	event_user(0);
}

var _stele = instance_create_layer(0,0,layer,obj_stele);
_stele.x = _center * global.xy_scale;
_stele.y = (_center - 1) * global.xy_scale;

with (_stele) {
	event_user(0);
}

print("Done! ", current_time - _start, " ms");
terrain_done = 1;
