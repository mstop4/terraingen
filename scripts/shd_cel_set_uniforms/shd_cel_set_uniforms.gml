shader_set_uniform_f_array(u_ambient_colour,obj_light.ambient_colour);
shader_set_uniform_f(u_normal_weight,obj_light.normal_weight);

shader_set_uniform_f(u_fog_start, fog_start);
shader_set_uniform_f(u_fog_end, fog_end);
shader_set_uniform_f_array(u_fog_colour, fog_colour);

shader_set_uniform_f_array(u_diffuse_colour[0],obj_light.diffuse_colour[| 0]);
shader_set_uniform_f_array(u_diffuse_direction[0],obj_light.diffuse_direction[| 0]);

shader_set_uniform_f_array(u_diffuse_colour[1],obj_light.diffuse_colour[| 1]);
shader_set_uniform_f_array(u_diffuse_direction[1],obj_light.diffuse_direction[| 1]);