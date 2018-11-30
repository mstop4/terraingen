/// @desc Init 3d Init

gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);
gpu_set_texrepeat(true);
gpu_set_alphatestenable(true);
gpu_set_texfilter(false);
gpu_set_cullmode(cull_counterclockwise);
//gpu_set_fog(true, c_black, 0, 128);

layer_force_draw_depth(true, 0);
//application_surface_draw_enable(false);

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_color();
vertex_format_add_texcoord();
global.vert_w_light = vertex_format_end();

view_enabled = true;
view_set_visible(view_index,true);
surface_resize(application_surface,window_width,window_height);
view_set_wport(view_index,window_width);
view_set_hport(view_index,window_height);

shd_cel_get_uniforms();