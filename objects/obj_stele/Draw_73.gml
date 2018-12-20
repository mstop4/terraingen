if (view_current == obj_MDP.fg_view_index) {
	shader_set(shd_stele);
	shd_stele_set_uniforms();
	vertex_submit(model,pr_trianglelist,tex_id);
	shader_reset();
}