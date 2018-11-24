buffer_delete(terrain_buff);
buffer_delete(normal_buff);
ds_stack_destroy(exec_stack);
surface_free(terrain_surf);
surface_free(normal_surf);