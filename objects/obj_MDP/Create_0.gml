/// @desc Init 3d

gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);
gpu_set_texrepeat(true);
gpu_set_alphatestenable(true);
gpu_set_texfilter(false);
gpu_set_cullmode(cull_counterclockwise);
application_surface_draw_enable(false);

layer_force_draw_depth(true, 0);

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_color();
vertex_format_add_texcoord();
global.vert_w_light = vertex_format_end();

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_color();
vertex_format_add_texcoord();
global.vert_wo_light = vertex_format_end();

app_width = window_width;
app_height = window_height;
fov = 60 / (16 / 9) * app_width / app_height;
global.show_debug_gui = true;

view_enabled = true;
view_set_visible(bg_view_index,true);
view_set_wport(bg_view_index,app_width);
view_set_hport(bg_view_index,app_height);

view_set_visible(fg_view_index,true);
view_set_wport(fg_view_index,app_width);
view_set_hport(fg_view_index,app_height);

fg_surf = surface_create(app_width, app_height);
view_surface_id[fg_view_index] = fg_surf;
bg_surf = surface_create(app_width, app_height);
view_surface_id[bg_view_index] = bg_surf;
bg_surf_tex = surface_get_texture(bg_surf);

fog_end = far_dist * fog_far_ratio;
fog_start = fog_end - fog_range;

shd_cel_get_uniforms();