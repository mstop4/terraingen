if (window_get_fullscreen()) {
	app_width = display_get_width();
	app_height = display_get_height();
} else {
	app_width = window_width;
	app_height = window_height;
}

surface_resize(application_surface,app_width,app_height);

if (!surface_exists(fg_surf)) {
	fg_surf = surface_create(app_width, app_height);
	view_surface_id[fg_view_index] = fg_surf;
}

else {
	surface_resize(fg_surf,app_width,app_height);
}

view_set_wport(fg_view_index,app_width);
view_set_hport(fg_view_index,app_height);

if (!surface_exists(bg_surf)) {
	bg_surf = surface_create(app_width, app_height);
	view_surface_id[bg_view_index] = bg_surf;
	bg_surf_tex = surface_get_texture(bg_surf);
}

else {
	surface_resize(bg_surf,app_width,app_height);
}

view_set_wport(bg_view_index,app_width);
view_set_hport(bg_view_index,app_height);