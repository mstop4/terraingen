/// @desc Init 3d Init

gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);
gpu_set_texrepeat(true);
gpu_set_alphatestenable(true);
gpu_set_texfilter(true);
gpu_set_cullmode(cull_clockwise);
//gpu_set_fog(true, c_black, 0, 128);

layer_force_draw_depth(true, 0);
//application_surface_draw_enable(false);

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_color();
global.vert_form = vertex_format_end();