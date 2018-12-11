var _cam = argument[0];
var _d = spherical_to_cartesian_coords(light_dist, obj_light.theta, obj_light.phi);

var _view_matrix = matrix_build_lookat(x - _d[0], y - _d[1], 127 + _d[2], x, y, 127,0,0,-1);
camera_set_view_mat(_cam,_view_matrix);