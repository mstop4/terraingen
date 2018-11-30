/// @func spherical_to_cartesian_coords(r, theta, phi)
/// @arg r       distance from origin to point
/// @arg theta   angle from + z-axis (degrees)
/// @arg phi	 angle from + x-axis (degrees)

var _r = argument[0];
var _theta = argument[1];
var _phi = argument[2];

var _x = _r * dsin(_phi) * dcos(_theta);
var _y = _r * dsin(_phi) * dsin(_theta);
var _z = _r * dcos(_phi);

return [_x, _y, _z];