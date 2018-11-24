map_side_length = power(2, map_size) + 1;
terrain_buff = buffer_create(map_side_length*map_side_length*4, buffer_grow, 4);
normal_buff = buffer_create(map_side_length*map_side_length*4, buffer_grow, 4);
exec_stack = ds_stack_create();
terrain_surf = surface_create(map_side_length, map_side_length);
normal_surf = surface_create(map_side_length, map_side_length); 