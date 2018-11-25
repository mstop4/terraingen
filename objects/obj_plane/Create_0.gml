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

event_user(0);