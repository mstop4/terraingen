map_side_length = power(2, map_size) + 1;
exec_stack = ds_stack_create();

terrain_map = ds_grid_create(map_side_length, map_side_length);
region_map = ds_grid_create(map_side_length, map_side_length);
colour_map = ds_grid_create(map_side_length, map_side_length);
colour_tex = -1;
alpha_map = ds_grid_create(map_side_length, map_side_length);
uv_map = ds_grid_create(map_side_length, map_side_length);
tex_id = -1;

terrain_model = vertex_create_buffer();

terrain_done = false;
render_mode = pr_trianglestrip;

x = (-map_side_length / 2) * xscale;
y = x;

translate_vec = [x, y, z];
scale_vec = [xscale, yscale, zscale];
rotate_vec = [0, 0, 0];

region_colours = [$0e69f9, $18caf7, $71cc2e, $ccb500];

event_user(0);
audio_play_sound(mus_test,100,true);