if (can_draw && models_ready) {
	if (growth < 1) {
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_translate, trunk_translate_vec);
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_scale, trunk_scale_vec);
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_rotate, rotate_vec);
		vertex_submit(trunk,pr_trianglelist,-1);

		shader_set_uniform_f_array(obj_MDP.shd_cel_u_translate, crown_translate_vec);
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_scale, crown_scale_vec);
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_rotate, rotate_vec);
		vertex_submit(crown,pr_trianglelist,-1);
	}
	
	else {
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_translate, trunk_translate_vec);
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_scale, trunk_scale_vec);
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_rotate, rotate_vec);
		vertex_submit(full_tree,pr_trianglelist,-1);
	}
}