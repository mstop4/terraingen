if (!surface_exists(sky_surf)) {
	sky_surf = surface_create(app_width, app_height);
}

surface_set_target(sky_surf);
	with (obj_skybox) {
		event_user(0);
	}
surface_reset_target();

surface_set_target(application_surface);
	draw_surface(sky_surf,0,0);
surface_reset_target();

shader_set(shd_cel);
shd_cel_set_uniforms();