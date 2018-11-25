chunk_side_length = power(2, chunk_size) + 1;
exec_stack = ds_stack_create();

terrain_maps = ds_grid_create(map_size, map_size);
colour_maps = ds_grid_create(map_size, map_size);
normal_maps = ds_grid_create(map_size, map_size);
uv_maps = ds_grid_create(map_size, map_size);
chunk_offsets = ds_grid_create(map_size, map_size);
terrain_models = ds_grid_create(map_size, map_size);

for (var i=0; i<map_size; i++) {
	for (var j=0; j<map_size; j++) {
		terrain_maps[# i, j] = ds_grid_create(chunk_side_length, chunk_side_length);
		colour_maps[# i, j] = ds_grid_create(chunk_side_length, chunk_side_length);
		normal_maps[# i, j] = ds_grid_create(chunk_side_length, chunk_side_length);
		uv_maps[# i, j] = ds_grid_create(chunk_side_length, chunk_side_length);
		chunk_offsets[# i, j] = [i * chunk_side_length, j * chunk_side_length];
		terrain_models[# i, j] = vertex_create_buffer();
	}
}

tex_id = sprite_get_texture(terrain_tex,0);

terrain_done = false;

x = (-chunk_side_length / 2) * xscale;
y = x;