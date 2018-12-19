if (owner.can_draw && model != -1) {
	shader_set_uniform_f_array(obj_MDP.shd_cel_u_offsetTranslate, translate_vec);
	shader_set_uniform_f_array(obj_MDP.shd_cel_u_offsetScale, scale_vec);
	shader_set_uniform_f_array(obj_MDP.shd_cel_u_offsetRotate, rotate_vec);
	vertex_submit(model,pr_trianglelist,tex_id);
}