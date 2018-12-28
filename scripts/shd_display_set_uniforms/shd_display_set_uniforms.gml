/// @arg translate
/// @arg scale
/// @arg rotate
/// @arg uv_offset
/// @arg uv_bounds

with (obj_MDP) {
	shader_set_uniform_f_array(shd_display_u_translate, argument[0]);
	shader_set_uniform_f_array(shd_display_u_scale, argument[1]);
	shader_set_uniform_f_array(shd_display_u_rotate, argument[2]);
	shader_set_uniform_f_array(shd_display_u_uvTranslate, argument[3]);
	shader_set_uniform_f_array(shd_display_u_uvBounds, argument[4]);

	shader_set_uniform_f(shd_display_u_fog_start, fog_start);
	shader_set_uniform_f(shd_display_u_fog_end, fog_end);
	texture_set_stage(shd_display_u_bg_tex, bg_surf_tex);
	shader_set_uniform_f_array(shd_display_u_app_size, [app_width, app_height]);
}