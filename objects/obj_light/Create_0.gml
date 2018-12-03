ambient_colour = [0.35, 0.35, 0.35, 1];

diffuse_colour = ds_list_create();
diffuse_direction = ds_list_create();;

var _d = spherical_to_cartesian_coords(1, theta, phi);

ds_list_add(diffuse_colour, [0.65, 0.65, 0.65, 1]);
ds_list_add(diffuse_direction, _d );

ds_list_add(diffuse_colour, [-0.1, -0.1, -0.1, 1]);
ds_list_add(diffuse_direction, [-_d[0], -_d[1], -_d[2]]);