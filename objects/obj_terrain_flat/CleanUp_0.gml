ds_grid_destroy(terrain_map);
ds_grid_destroy(region_map);
ds_grid_destroy(colour_map);
ds_grid_destroy(alpha_map);
ds_grid_destroy(uv_map);
ds_stack_destroy(exec_stack);
vertex_delete_buffer(terrain_model);