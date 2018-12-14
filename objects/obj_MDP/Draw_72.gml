with (obj_camera) {
	camera_set_proj_mat(fore_camera,fb_cam_proj_mat);
	camera_set_proj_mat(back_camera,fb_cam_proj_mat);
}

if (view_current == fg_view_index) {
	draw_clear_alpha(c_black, 0);
	
	shader_set(shd_cel);
	shd_cel_set_uniforms();
}