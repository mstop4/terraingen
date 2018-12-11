/// @arg cursor_lock

obj_MCP.cursor_lock = argument[0];

if (obj_MCP.cursor_lock) {
	window_set_cursor(cr_none);
} else {
	window_set_cursor(cr_arrow);
}