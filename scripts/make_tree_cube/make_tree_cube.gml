// components (growing)
trunk = make_cylinder(trunk_radius, trunk_length, trunk_step, trunk_colour);

crown = vertex_create_buffer();
vertex_begin(crown, global.vert_w_light);
add_cube(crown, crown_half_width, crown_colour, [0, 0, 0], [1, 1, 1]);

var _half_width, _off_x, _off_y, _off_z;

// Top
_half_width[0] = random_range(crown_half_width/2, crown_half_width/1.5);
_off_x[0] = random_range(-(crown_half_width - _half_width[0]), crown_half_width - _half_width[0]);
_off_y[0] = random_range(-(crown_half_width - _half_width[0]), crown_half_width - _half_width[0]);
_off_z[0] = random_range(crown_half_width - _half_width[0]/4, crown_half_width);
add_cube(crown, _half_width[0], crown_colour, [_off_x[0], _off_y[0], _off_z[0]], [1, 1, 1]);

// Front
_half_width[1] = random_range(crown_half_width/2, crown_half_width/1.5);
_off_x[1] = random_range(-(crown_half_width - _half_width[1]), crown_half_width - _half_width[1])
_off_y[1] = random_range(crown_half_width - _half_width[1]/4, crown_half_width)
_off_z[1] = random_range(-(crown_half_width - _half_width[1]), crown_half_width - _half_width[1]);
add_cube(crown, _half_width[1], crown_colour, [_off_x[1], _off_y[1], _off_z[1]], [1, 1, 1]);

// Back
_half_width[2] = random_range(crown_half_width/2, crown_half_width/1.5);
_off_x[2] = random_range(-(crown_half_width - _half_width[2]), crown_half_width - _half_width[2])
_off_y[2] = -random_range(crown_half_width - _half_width[2]/4, crown_half_width)
_off_z[2] = random_range(-(crown_half_width - _half_width[2]), crown_half_width - _half_width[2]);
add_cube(crown, _half_width[2], crown_colour, [_off_x[2], _off_y[2], _off_z[2]], [1, 1, 1]);

// Left
_half_width[3] = random_range(crown_half_width/2, crown_half_width/1.5);
_off_x[3] = random_range(crown_half_width - _half_width[3]/4, crown_half_width)
_off_y[3] = random_range(-(crown_half_width - _half_width[3]), crown_half_width - _half_width[3])
_off_z[3] = random_range(-(crown_half_width - _half_width[3]), crown_half_width - _half_width[3]);
add_cube(crown, _half_width[3], crown_colour, [_off_x[3], _off_y[3], _off_z[3]], [1, 1, 1]);

// Right
_half_width[4] = random_range(crown_half_width/2, crown_half_width/1.5);
_off_x[4] = -random_range(crown_half_width - _half_width[4]/4, crown_half_width)
_off_y[4] = random_range(-(crown_half_width - _half_width[4]), crown_half_width - _half_width[4])
_off_z[4] = random_range(-(crown_half_width - _half_width[4]), crown_half_width - _half_width[4]);
add_cube(crown, _half_width[4], crown_colour, [_off_x[4], _off_y[4], _off_z[4]], [1, 1, 1]);

vertex_end(crown);
vertex_freeze(crown);

// Full tree (static)
full_tree = vertex_create_buffer();
vertex_begin(full_tree,global.vert_w_light);

var _z_offset = trunk_length+crown_half_width;

add_cylinder(full_tree, trunk_radius, trunk_length, trunk_step, trunk_colour);
add_cube(full_tree, crown_half_width, crown_colour, [0, 0, _z_offset], [1, 1, 1]);

// Top
add_cube(full_tree, _half_width[0], crown_colour, [_off_x[0], _off_y[0], _off_z[0]+_z_offset], [1, 1, 1]);

// Front
add_cube(full_tree, _half_width[1], crown_colour, [_off_x[1], _off_y[1], _off_z[1]+_z_offset], [1, 1, 1]);

// Back
add_cube(full_tree, _half_width[2], crown_colour, [_off_x[2], _off_y[2], _off_z[2]+_z_offset], [1, 1, 1]);

// Left
add_cube(full_tree, _half_width[3], crown_colour, [_off_x[3], _off_y[3], _off_z[3]+_z_offset], [1, 1, 1]);

// Right
add_cube(full_tree, _half_width[4], crown_colour, [_off_x[4], _off_y[4], _off_z[4]+_z_offset], [1, 1, 1]);

vertex_end(full_tree);
vertex_freeze(full_tree);