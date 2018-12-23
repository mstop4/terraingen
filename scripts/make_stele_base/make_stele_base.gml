/// @func make_cube(half_width, half_height, half_depth, colour)
/// @arg half_width
/// @arg half_height
/// @arg half_depth
/// @arg colour

var _hw = argument[0];
var _hl = argument[1];
var _hd = argument[2];
var _colour = argument[3];

var _model = vertex_create_buffer();

vertex_begin(_model, global.vert_w_light);

// Bottom

add_vertex(_model, -_hw, -_hd, -_hl,  0, 0, -1, _colour, 1, 0, 0);
add_vertex(_model, _hw, -_hd, -_hl,  0, 0, -1, _colour, 1, 0, 0);
add_vertex(_model, -_hw, _hd, -_hl,  0, 0, -1, _colour, 1, 0, 0);

add_vertex(_model, _hw, -_hd, -_hl,  0, 0, -1, _colour, 1, 0, 0);
add_vertex(_model, _hw, _hd, -_hl,  0, 0, -1, _colour, 1, 0, 0);
add_vertex(_model, -_hw, _hd, -_hl,  0, 0, -1, _colour, 1, 0, 0);

// Top

add_vertex(_model, _hw, _hd, _hl,  0, 0, 1, _colour, 1, 0, 0);
add_vertex(_model, _hw, -_hd, _hl,  0, 0, 1, _colour, 1, 0, 0);
add_vertex(_model, -_hw, _hd, _hl,  0, 0, 1, _colour, 1, 0, 0);

add_vertex(_model, -_hw, -_hd, _hl,  0, 0, 1, _colour, 1, 0, 0);
add_vertex(_model, -_hw, _hd, _hl,  0, 0, 1, _colour, 1, 0, 0);
add_vertex(_model, _hw, -_hd, _hl,  0, 0, 1, _colour, 1, 0, 0);

// Front

add_vertex(_model, _hw, _hd, _hl,  0, 1, 0, _colour, 1, 0, 0);
add_vertex(_model, -_hw, _hd, _hl,  0, 1, 0, _colour, 1, 1, 0);
add_vertex(_model, _hw, _hd, -_hl,  0, 1, 0, _colour, 1, 0, 1);

add_vertex(_model, -_hw, _hd, -_hl,  0, 1, 0, _colour, 1, 1, 1);
add_vertex(_model, _hw, _hd, -_hl,  0, 1, 0, _colour, 1, 0, 1);
add_vertex(_model, -_hw, _hd, _hl,  0, 1, 0, _colour, 1, 1, 0);

// Back

add_vertex(_model, _hw, -_hd, _hl,  0, -1, 0, _colour, 1, 1, 0);
add_vertex(_model, _hw, -_hd, -_hl,  0, -1, 0, _colour, 1, 1, 1);
add_vertex(_model, -_hw, -_hd, _hl,  0, -1, 0, _colour, 1, 0, 0);

add_vertex(_model, -_hw, -_hd, -_hl,  0, -1, 0, _colour, 1, 0, 1);
add_vertex(_model, -_hw, -_hd, _hl,  0, -1, 0, _colour, 1, 0, 0);
add_vertex(_model, _hw, -_hd, -_hl,  0, -1, 0, _colour, 1, 1, 1);

// Left

add_vertex(_model, _hw, _hd, _hl,  1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, _hw, _hd, -_hl,  1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, _hw, -_hd, _hl,  1, 0, 0, _colour, 1, 0, 0);

add_vertex(_model, _hw, -_hd, -_hl,  1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, _hw, -_hd, _hl,  1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, _hw, _hd, -_hl,  1, 0, 0, _colour, 1, 0, 0);

// Right

add_vertex(_model, -_hw, _hd, _hl,  -1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, -_hw, -_hd, _hl,  -1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, -_hw, _hd, -_hl,  -1, 0, 0, _colour, 1, 0, 0);

add_vertex(_model, -_hw, -_hd, -_hl,  -1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, -_hw, _hd, -_hl,  -1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, -_hw, -_hd, _hl,  -1, 0, 0, _colour, 1, 0, 0);

vertex_end(_model);
vertex_freeze(_model);

return _model;