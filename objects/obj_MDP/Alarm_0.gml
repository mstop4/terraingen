if (window_get_fullscreen()) {
	app_width = display_get_width();
	app_height = display_get_height();
} else {
	app_width = window_width;
	app_height = window_height;
}

surface_resize(application_surface,app_width,app_height);
surface_resize(sky_surf,app_width,app_height);
view_set_wport(view_index,app_width);
view_set_hport(view_index,app_height);