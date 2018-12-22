shd_display_u_translate = shader_get_uniform(shd_display,"u_translate");
shd_display_u_scale = shader_get_uniform(shd_display,"u_scale");
shd_display_u_rotate = shader_get_uniform(shd_display,"u_rotate");
shd_display_u_uvTranslate = shader_get_uniform(shd_display,"u_uvTranslate");

shd_display_u_fog_start = shader_get_uniform(shd_display,"u_fog_start");
shd_display_u_fog_end = shader_get_uniform(shd_display,"u_fog_end");
shd_display_u_bg_tex = shader_get_sampler_index(shd_display,"u_bg_tex"); 
shd_display_u_app_size = shader_get_uniform(shd_display,"u_app_size");