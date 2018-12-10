/// @arg cursor_lock

cursor_lock = argument[0];

if (cursor_lock) {
	window_set_cursor(cr_arrow);
} else {
	window_set_cursor(cr_none);
}