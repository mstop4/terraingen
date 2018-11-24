/// @arg x
/// @arg y
/// @arg width
/// @arg alignment
/// @arg offset

var _x = argument[0];
var _y = argument[1];
var _width = argument[2];
var _alignment = argument[3];
var _offset = argument[4];

return (_y * _width + _x) * _alignment + _offset;