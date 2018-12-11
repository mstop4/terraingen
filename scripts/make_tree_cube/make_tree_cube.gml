trunk = make_cylinder(trunk_radius, trunk_length, trunk_step, trunk_colour);

crown = vertex_create_buffer();
vertex_begin(crown, global.vert_w_light);
add_cube(crown, crown_half_width, crown_colour, [0, 0, 0], [1, 1, 1]);

var _half_width, _off_x, _off_y, _off_z;

// Top
_half_width = random_range(crown_half_width/2, crown_half_width/1.5);
_off_x = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width);
_off_y = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width);
_off_z = random_range(crown_half_width - _half_width/4, crown_half_width);
add_cube(crown, _half_width, crown_colour, [_off_x, _off_y, _off_z], [1, 1, 1]);

// Front
_half_width = random_range(crown_half_width/2, crown_half_width/1.5);
_off_x = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width)
_off_y = random_range(crown_half_width - _half_width/4, crown_half_width)
_off_z = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width);
add_cube(crown, _half_width, crown_colour, [_off_x, _off_y, _off_z], [1, 1, 1]);

// Back
_half_width = random_range(crown_half_width/2, crown_half_width/1.5);
_off_x = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width)
_off_y = -random_range(crown_half_width - _half_width/4, crown_half_width)
_off_z = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width);
add_cube(crown, _half_width, crown_colour, [_off_x, _off_y, _off_z], [1, 1, 1]);

// Left
_half_width = random_range(crown_half_width/2, crown_half_width/1.5);
_off_x = random_range(crown_half_width - _half_width/4, crown_half_width)
_off_y = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width)
_off_z = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width);
add_cube(crown, _half_width, crown_colour, [_off_x, _off_y, _off_z], [1, 1, 1]);

// Right
_half_width = random_range(crown_half_width/2, crown_half_width/1.5);
_off_x = -random_range(crown_half_width - _half_width/4, crown_half_width)
_off_y = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width)
_off_z = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width);
add_cube(crown, _half_width, crown_colour, [_off_x, _off_y, _off_z], [1, 1, 1]);

vertex_end(crown);
vertex_freeze(crown);