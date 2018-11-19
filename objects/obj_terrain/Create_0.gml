randomize();
map_side_length = power(2, map_size) + 1;
terrain_map = ds_grid_create(map_side_length, map_side_length);
colour_map = ds_grid_create(map_side_length, map_side_length);
exec_stack = ds_stack_create();

terrain_done = false;
flat_init(terrain_map, colour_map, 0);
terrain_model = grid_to_model(terrain_map, colour_map);

x = (-map_side_length / 2) * xscale;
y = x;