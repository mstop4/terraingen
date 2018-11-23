/// @arg paused

var _paused = argument[0];

paused = _paused;

if (_paused) {
	window_set_cursor(cr_arrow);
} else {
	window_set_cursor(cr_none);
}