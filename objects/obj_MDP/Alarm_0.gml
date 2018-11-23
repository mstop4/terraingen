if (window_get_fullscreen()) {
	var _w = display_get_width();
	var _h = display_get_height();
	surface_resize(application_surface,_w,_h);
	view_set_wport(view_index,_w);
	view_set_hport(view_index,_h);
} else {
	surface_resize(application_surface,window_width,window_height);
	view_set_wport(view_index,window_width);
	view_set_hport(view_index,window_height);
}