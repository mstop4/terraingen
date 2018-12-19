shd_cel_u_offsetTranslate = shader_get_uniform(shd_cel,"u_offsetTranslate");
shd_cel_u_offsetScale = shader_get_uniform(shd_cel,"u_offsetScale");
shd_cel_u_offsetRotate = shader_get_uniform(shd_cel,"u_offsetRotate");

shd_cel_u_ambient_colour = shader_get_uniform(shd_cel,"u_ambient_colour");
shd_cel_u_normal_weight = shader_get_uniform(shd_cel,"u_normal_weight");

shd_cel_u_fog_start = shader_get_uniform(shd_cel,"u_fog_start");
shd_cel_u_fog_end = shader_get_uniform(shd_cel,"u_fog_end");
shd_cel_u_bg_tex = shader_get_sampler_index(shd_cel,"u_bg_tex"); 
shd_cel_u_app_size = shader_get_uniform(shd_cel,"u_app_size");

shd_cel_u_diffuse_colour[1] = shader_get_uniform(shd_cel,"u_diffuse_colour2");
shd_cel_u_diffuse_direction[1] = shader_get_uniform(shd_cel,"u_diffuse_direction2");

shd_cel_u_diffuse_colour[0] = shader_get_uniform(shd_cel,"u_diffuse_colour1");
shd_cel_u_diffuse_direction[0] = shader_get_uniform(shd_cel,"u_diffuse_direction1");