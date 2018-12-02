if (window_has_focus() && !paused)
	window_mouse_set(window_get_width() / 2, window_get_height() / 2);
	
if (obj_input.button_pressed[action.quit]) {
	game_end();
}

if (obj_input.button_pressed[action.pause]) {
	set_paused(!paused);
}