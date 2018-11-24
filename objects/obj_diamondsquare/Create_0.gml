map_side_length = power(2, map_size) + 1;
terrain_map = ds_grid_create(map_side_length, map_side_length);
normal_map = ds_grid_create(map_side_length, map_side_length); 
exec_stack = ds_stack_create();
terrain_surf = surface_create(map_side_length, map_side_length);
normal_surf = surface_create(map_side_length, map_side_length); 

running = false;
time_taken = 0;
last_time = 0;