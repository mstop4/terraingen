if (model != -1) {
	gpu_push_state();
	gpu_set_cullmode(cull_noculling);
	shader_set_uniform_f_array(obj_MDP.shd_cel_u_translate, translate_vec);
	shader_set_uniform_f_array(obj_MDP.shd_cel_u_scale, scale_vec);
	shader_set_uniform_f_array(obj_MDP.shd_cel_u_rotate, rotate_vec);
	vertex_submit(model,pr_trianglelist,tex_id);
	gpu_pop_state();
}