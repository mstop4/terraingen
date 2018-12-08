ambient_colour = [0.35, 0.35, 0.35, 1];

diffuse_colour = ds_list_create();
diffuse_direction = ds_list_create();;

var _d = spherical_to_cartesian_coords(1, theta, phi);

ds_list_add(diffuse_colour, [0.77, 0.77, 0.61, 1]);
ds_list_add(diffuse_direction, _d );

ds_list_add(diffuse_colour, [-0.12, -0.12, -0.04, 1]);
ds_list_add(diffuse_direction, [-_d[0], -_d[1], -_d[2]]);