paused = !paused;

if (paused) {
	window_set_cursor(cr_arrow);
} else {
	window_set_cursor(cr_none);
}