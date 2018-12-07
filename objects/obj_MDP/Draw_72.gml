with (obj_camera) {
	camera_set_proj_mat(fore_camera,cam_project_matrix);
	camera_set_proj_mat(back_camera,cam_project_matrix);
}

if (view_current == bg_view_index) {
	draw_clear_alpha(c_black, 0);
	
	with (obj_skybox) {
		event_user(0);
	}
}

else if (view_current == fg_view_index) {
	draw_clear_alpha(c_black, 0);

	shader_set(shd_cel);
	shd_cel_set_uniforms();
}