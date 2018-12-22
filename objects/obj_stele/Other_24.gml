/// @description draw displays

shd_display_set_uniforms(text_translate_vec, base_scale_vec, text_rotate_vec, text_uv_offset, text_uv_max);
vertex_submit(text_model,pr_trianglelist,tex_id);
	
shd_display_set_uniforms(score_translate_vec, base_scale_vec, score_rotate_vec, score_uv_offset, score_uv_max);
vertex_submit(score_model,pr_trianglelist,tex_id);