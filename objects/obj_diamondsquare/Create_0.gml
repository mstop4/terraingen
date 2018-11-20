randomize();
map_side_length = power(2, map_size) + 1;
terrain_map = ds_grid_create(map_side_length, map_side_length);
exec_queue = ds_queue_create();
out_surf = surface_create(map_side_length, map_side_length);

running = false;
time_taken = 0;
lasT_time = 0;