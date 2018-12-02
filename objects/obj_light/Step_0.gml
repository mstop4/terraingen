var _theta_input = obj_input.button_held[action.light_incr_theta] - obj_input.button_held[action.light_decr_theta];
var _phi_input = obj_input.button_held[action.light_incr_phi] - obj_input.button_held[action.light_decr_phi];

if (_theta_input != 0) {
	theta += _theta_input;
	var _d = spherical_to_cartesian_coords(1, theta, phi);
	diffuse_direction[| 0] = _d;
	diffuse_direction[| 1] = [-_d[0], -_d[1], -_d[2]];
}

if (_phi_input != 0) {
	phi += _phi_input;
	var _d = spherical_to_cartesian_coords(1, theta, phi);
	diffuse_direction[| 0] = _d;
	diffuse_direction[| 1] = [-_d[0], -_d[1], -_d[2]];
}