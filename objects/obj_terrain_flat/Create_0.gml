map_side_length = power(2, map_size) + 1;
exec_stack = ds_stack_create();

terrain_map = ds_grid_create(map_side_length, map_side_length);
colour_map = ds_grid_create(map_side_length, map_side_length);
uv_map = ds_grid_create(map_side_length, map_side_length);
tex_id = -1; //sprite_get_texture(terrain_tex,0);

terrain_model = vertex_create_buffer();

terrain_done = false;
render_mode = pr_trianglestrip;

x = (-map_side_length / 2) * xscale;
y = x;

event_user(0);