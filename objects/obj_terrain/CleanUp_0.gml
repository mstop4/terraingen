for (var i=0; i<map_size; i++) {
	for (var j=0; j<map_size; j++) {
		ds_grid_destroy(ds_grid_destroy(terrain_maps[# i, j]));
		ds_grid_destroy(ds_grid_destroy(colour_maps[# i, j]));
		ds_grid_destroy(ds_grid_destroy(normal_maps[# i, j]));
		ds_grid_destroy(ds_grid_destroy(uv_maps[# i, j]));
		vertex_delete_buffer(terrain_models[# i, j]);
	}
}

ds_grid_destroy(terrain_maps);
ds_grid_destroy(colour_maps);
ds_grid_destroy(normal_maps);
ds_grid_destroy(uv_maps);
ds_grid_destroy(chunk_offsets);
ds_grid_destroy(terrain_models);
ds_stack_destroy(exec_stack);