randomize();
map_side_length = power(2, map_size) + 1;
terrain_map = ds_grid_create(map_side_length, map_side_length);
colour_map = ds_grid_create(map_side_length, map_side_length);
exec_queue = ds_queue_create();
terrain_model = vertex_create_buffer();

terrain_done = false;
render_mode = pr_trianglestrip;

x = (-map_side_length / 2) * xscale;
y = x;