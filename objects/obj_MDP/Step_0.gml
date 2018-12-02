if (obj_input.button_pressed[action.fullscreen]) {
	window_set_fullscreen(!window_get_fullscreen());
	alarm[0] = 1;
}