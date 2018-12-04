surface_set_target(application_surface);
	draw_clear($E5B95B);
	
	// Render Skybox
	with (obj_skybox) {
		event_user(0);
	}

surface_reset_target();

shader_set(shd_cel);
shd_cel_set_uniforms();