phi++;
var _d = spherical_to_cartesian_coords(1, theta, phi);
diffuse_direction[| 0] = _d;
diffuse_direction[| 1] = [-_d[0], -_d[1], -_d[2]];