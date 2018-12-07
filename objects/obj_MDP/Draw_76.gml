if (!surface_exists(fg_surf)) {
	fg_surf = surface_create(app_width, app_height);
	view_surface_id[fg_view_index] = fg_surf;
}

if (!surface_exists(bg_surf)) {
	bg_surf = surface_create(app_width, app_height);
	view_surface_id[bg_view_index] = bg_surf;
	bg_surf_tex = surface_get_texture(bg_surf);
}