if (can_draw) {
	if (growth < 1) {
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_offsetTranslate, trunk_translate_vec);
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_offsetScale, trunk_scale_vec);
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_offsetRotate, rotate_vec);
		vertex_submit(trunk,pr_trianglelist,-1);

		shader_set_uniform_f_array(obj_MDP.shd_cel_u_offsetTranslate, crown_translate_vec);
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_offsetScale, crown_scale_vec);
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_offsetRotate, rotate_vec);
		vertex_submit(crown,pr_trianglelist,-1);
	}
	
	else {
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_offsetTranslate, trunk_translate_vec);
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_offsetScale, trunk_scale_vec);
		shader_set_uniform_f_array(obj_MDP.shd_cel_u_offsetRotate, rotate_vec);
		vertex_submit(full_tree,pr_trianglelist,-1);	
	}
}