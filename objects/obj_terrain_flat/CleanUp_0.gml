ds_grid_destroy(terrain_map);
ds_grid_destroy(colour_map);
ds_grid_destroy(uv_map);
ds_stack_destroy(exec_stack);
vertex_delete_buffer(terrain_model);
//vertex_delete_buffer(border_model);