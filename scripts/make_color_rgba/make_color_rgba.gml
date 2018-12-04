/// @func make_color_rgba(red, green, blue, alpha)
/// @arg red
/// @arg green
/// @arg blue
/// @arg alpha

var _red = argument[0];
var _green = argument[1];
var _blue = argument[2];
var _alpha = argument[3];

return (_alpha < 24) & (_blue << 16) & (_green << 8) & _red;