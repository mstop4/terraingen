randomize();
global.xy_scale = 100;
mouse_sens_hor = 0.1;
mouse_sens_ver = 0.1;

if (window_has_focus()) {
	set_paused(true);
} else {
	set_paused(false);
}
