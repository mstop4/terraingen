shader_set_uniform_f_array(shd_stele_u_translate, translate_vec);
shader_set_uniform_f_array(shd_stele_u_scale, scale_vec);
shader_set_uniform_f_array(shd_stele_u_rotate, rotate_vec);
shader_set_uniform_f(shd_stele_u_vTranslate, v_offset);

shader_set_uniform_f_array(shd_stele_u_ambient_colour,obj_light.ambient_colour);
shader_set_uniform_f(shd_stele_u_normal_weight,obj_light.normal_weight);

shader_set_uniform_f(shd_stele_u_fog_start, obj_MDP.fog_start);
shader_set_uniform_f(shd_stele_u_fog_end, obj_MDP.fog_end);
texture_set_stage(shd_stele_u_bg_tex, obj_MDP.bg_surf_tex);
shader_set_uniform_f_array(shd_stele_u_app_size, [obj_MDP.app_width, obj_MDP.app_height]);

shader_set_uniform_f_array(shd_stele_u_diffuse_colour[0],obj_light.diffuse_colour[| 0]);
shader_set_uniform_f_array(shd_stele_u_diffuse_direction[0],obj_light.diffuse_direction[| 0]);

shader_set_uniform_f_array(shd_stele_u_diffuse_colour[1],obj_light.diffuse_colour[| 1]);
shader_set_uniform_f_array(shd_stele_u_diffuse_direction[1],obj_light.diffuse_direction[| 1]);