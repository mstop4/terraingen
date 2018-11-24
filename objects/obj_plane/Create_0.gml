model = obj_to_model("CHAHIN_NOTEBOOK.obj");

tex = surface_create(256,256);
surface_set_target(tex);
	draw_clear(c_blue);
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	gpu_push_state();
	gpu_set_colorwriteenable(true, true, true, false);
	draw_text(0,0,"Hello");
	gpu_pop_state();
surface_reset_target();
tex_id = surface_get_texture(tex);

z = blin_z_pos(x, y, obj_terrain.terrain_map);
var _xyz = convert_to_terrain_space(x, y, z, obj_terrain);
real_x = _xyz[0];
real_y = _xyz[1];
real_z = _xyz[2];