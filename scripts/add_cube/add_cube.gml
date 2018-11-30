/// @func make_cube(model, half_width, colour, offset, scale)
/// @arg model
/// @arg half_width
/// @arg colour
/// @arg offset
/// @arg scale

var _model = argument[0];
var _hw = argument[1];
var _colour = argument[2];
var _offset = argument[3];
var _scale = argument[4];

var _x = _hw * _scale[0];
var _y = _hw * _scale[1];
var _z = _hw * _scale[2];

// Bottom

add_vertex(_model, -_x + _offset[0], -_y + _offset[1], -_z + _offset[2],  0, 0, -1, _colour, 1, 0, 0);
add_vertex(_model, _x + _offset[0], -_y + _offset[1], -_z + _offset[2],  0, 0, -1, _colour, 1, 0, 0);
add_vertex(_model, -_x + _offset[0], _y + _offset[1], -_z + _offset[2],  0, 0, -1, _colour, 1, 0, 0);

add_vertex(_model, _x + _offset[0], -_y + _offset[1], -_z + _offset[2],  0, 0, -1, _colour, 1, 0, 0);
add_vertex(_model, _x + _offset[0], _y + _offset[1], -_z + _offset[2],  0, 0, -1, _colour, 1, 0, 0);
add_vertex(_model, -_x + _offset[0], _y + _offset[1], -_z + _offset[2],  0, 0, -1, _colour, 1, 0, 0);

// Top

add_vertex(_model, _x + _offset[0], _y + _offset[1], _z + _offset[2],  0, 0, 1, _colour, 1, 0, 0);
add_vertex(_model, _x + _offset[0], -_y + _offset[1], _z + _offset[2],  0, 0, 1, _colour, 1, 0, 0);
add_vertex(_model, -_x + _offset[0], _y + _offset[1], _z + _offset[2],  0, 0, 1, _colour, 1, 0, 0);

add_vertex(_model, -_x + _offset[0], -_y + _offset[1], _z + _offset[2],  0, 0, 1, _colour, 1, 0, 0);
add_vertex(_model, -_x + _offset[0], _y + _offset[1], _z + _offset[2],  0, 0, 1, _colour, 1, 0, 0);
add_vertex(_model, _x + _offset[0], -_y + _offset[1], _z + _offset[2],  0, 0, 1, _colour, 1, 0, 0);

// Front

add_vertex(_model, _x + _offset[0], _y + _offset[1], _z + _offset[2],  0, 1, 0, _colour, 1, 0, 0);
add_vertex(_model, -_x + _offset[0], _y + _offset[1], _z + _offset[2],  0, 1, 0, _colour, 1, 0, 0);
add_vertex(_model, _x + _offset[0], _y + _offset[1], -_z + _offset[2],  0, 1, 0, _colour, 1, 0, 0);

add_vertex(_model, -_x + _offset[0], _y + _offset[1], -_z + _offset[2],  0, 1, 0, _colour, 1, 0, 0);
add_vertex(_model, _x + _offset[0], _y + _offset[1], -_z + _offset[2],  0, 1, 0, _colour, 1, 0, 0);
add_vertex(_model, -_x + _offset[0], _y + _offset[1], _z + _offset[2],  0, 1, 0, _colour, 1, 0, 0);

// Back

add_vertex(_model, _x + _offset[0], -_y + _offset[1], _z + _offset[2],  0, -1, 0, _colour, 1, 0, 0);
add_vertex(_model, _x + _offset[0], -_y + _offset[1], -_z + _offset[2],  0, -1, 0, _colour, 1, 0, 0);
add_vertex(_model, -_x + _offset[0], -_y + _offset[1], _z + _offset[2],  0, -1, 0, _colour, 1, 0, 0);

add_vertex(_model, -_x + _offset[0], -_y + _offset[1], -_z + _offset[2],  0, -1, 0, _colour, 1, 0, 0);
add_vertex(_model, -_x + _offset[0], -_y + _offset[1], _z + _offset[2],  0, -1, 0, _colour, 1, 0, 0);
add_vertex(_model, _x + _offset[0], -_y + _offset[1], -_z + _offset[2],  0, -1, 0, _colour, 1, 0, 0);

// Left

add_vertex(_model, _x + _offset[0], _y + _offset[1], _z + _offset[2],  1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, _x + _offset[0], _y + _offset[1], -_z + _offset[2],  1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, _x + _offset[0], -_y + _offset[1], _z + _offset[2],  1, 0, 0, _colour, 1, 0, 0);

add_vertex(_model, _x + _offset[0], -_y + _offset[1], -_z + _offset[2],  1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, _x + _offset[0], -_y + _offset[1], _z + _offset[2],  1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, _x + _offset[0], _y + _offset[1], -_z + _offset[2],  1, 0, 0, _colour, 1, 0, 0);

// Right

add_vertex(_model, -_x + _offset[0], _y + _offset[1], _z + _offset[2],  -1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, -_x + _offset[0], -_y + _offset[1], _z + _offset[2],  -1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, -_x + _offset[0], _y + _offset[1], -_z + _offset[2],  -1, 0, 0, _colour, 1, 0, 0);

add_vertex(_model, -_x + _offset[0], -_y + _offset[1], -_z + _offset[2],  -1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, -_x + _offset[0], _y + _offset[1], -_z + _offset[2],  -1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, -_x + _offset[0], -_y + _offset[1], _z + _offset[2],  -1, 0, 0, _colour, 1, 0, 0);