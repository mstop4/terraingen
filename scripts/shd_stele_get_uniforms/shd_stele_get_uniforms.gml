shd_stele_u_translate = shader_get_uniform(shd_stele,"u_translate");
shd_stele_u_scale = shader_get_uniform(shd_stele,"u_scale");
shd_stele_u_rotate = shader_get_uniform(shd_stele,"u_rotate");
shd_stele_u_vTranslate = shader_get_uniform(shd_stele,"u_vTranslate");

shd_stele_u_ambient_colour = shader_get_uniform(shd_stele,"u_ambient_colour");
shd_stele_u_normal_weight = shader_get_uniform(shd_stele,"u_normal_weight");

shd_stele_u_fog_start = shader_get_uniform(shd_stele,"u_fog_start");
shd_stele_u_fog_end = shader_get_uniform(shd_stele,"u_fog_end");
shd_stele_u_bg_tex = shader_get_sampler_index(shd_stele,"u_bg_tex"); 
shd_stele_u_app_size = shader_get_uniform(shd_stele,"u_app_size");

shd_stele_u_diffuse_colour[1] = shader_get_uniform(shd_stele,"u_diffuse_colour2");
shd_stele_u_diffuse_direction[1] = shader_get_uniform(shd_stele,"u_diffuse_direction2");

shd_stele_u_diffuse_colour[0] = shader_get_uniform(shd_stele,"u_diffuse_colour1");
shd_stele_u_diffuse_direction[0] = shader_get_uniform(shd_stele,"u_diffuse_direction1");