if (view_current == obj_MDP.fg_view_index) {
	shader_set(shd_stele);
	shd_stele_set_uniforms(base_translate_vec, base_scale_vec, base_rotate_vec, base_uv_offset);
	vertex_submit(base_model,pr_trianglelist,-1);
	
	shd_stele_set_uniforms(front_text_translate_vec, base_scale_vec, front_text_rotate_vec, text_uv_offset);
	vertex_submit(text_model,pr_trianglelist,-1);
	
	shd_stele_set_uniforms(front_score_translate_vec, base_scale_vec, front_score_rotate_vec, score_uv_offset);
	vertex_submit(score_model,pr_trianglelist,-1);
	
	shader_reset();
}