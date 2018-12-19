shader_set_uniform_f_array(shd_cel_u_translate,[0, 0, 0]);
shader_set_uniform_f_array(shd_cel_u_scale,[1, 1, 1]);
shader_set_uniform_f_array(shd_cel_u_rotate,[0, 0, 0]);

shader_set_uniform_f_array(shd_cel_u_ambient_colour,obj_light.ambient_colour);
shader_set_uniform_f(shd_cel_u_normal_weight,obj_light.normal_weight);

shader_set_uniform_f(shd_cel_u_fog_start, fog_start);
shader_set_uniform_f(shd_cel_u_fog_end, fog_end);
texture_set_stage(shd_cel_u_bg_tex, bg_surf_tex);
shader_set_uniform_f_array(shd_cel_u_app_size, [app_width, app_height]);

shader_set_uniform_f_array(shd_cel_u_diffuse_colour[0],obj_light.diffuse_colour[| 0]);
shader_set_uniform_f_array(shd_cel_u_diffuse_direction[0],obj_light.diffuse_direction[| 0]);

shader_set_uniform_f_array(shd_cel_u_diffuse_colour[1],obj_light.diffuse_colour[| 1]);
shader_set_uniform_f_array(shd_cel_u_diffuse_direction[1],obj_light.diffuse_direction[| 1]);