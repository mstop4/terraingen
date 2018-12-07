u_ambient_colour = shader_get_uniform(shd_cel,"u_ambient_colour");
u_normal_weight = shader_get_uniform(shd_cel,"u_normal_weight");

u_fog_start = shader_get_uniform(shd_cel,"u_fog_start");
u_fog_end = shader_get_uniform(shd_cel,"u_fog_end");

u_diffuse_colour[1] = shader_get_uniform(shd_cel,"u_diffuse_colour2");
u_diffuse_direction[1] = shader_get_uniform(shd_cel,"u_diffuse_direction2");

u_diffuse_colour[0] = shader_get_uniform(shd_cel,"u_diffuse_colour1");
u_diffuse_direction[0] = shader_get_uniform(shd_cel,"u_diffuse_direction1");