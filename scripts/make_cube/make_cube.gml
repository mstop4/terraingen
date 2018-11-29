/// @func make_cube(half_width, colour)
/// @arg half_width
/// @arg colour

var _hw = argument[0];
var _colour = argument[1];

var _model = vertex_create_buffer();

vertex_begin(_model, global.vert_w_light);

// Bottom

add_vertex(_model, -_hw, -_hw, -_hw,  0, 0, -1, _colour, 1, 0, 0);
add_vertex(_model, _hw, -_hw, -_hw,  0, 0, -1, _colour, 1, 0, 0);
add_vertex(_model, -_hw, _hw, -_hw,  0, 0, -1, _colour, 1, 0, 0);

add_vertex(_model, _hw, -_hw, -_hw,  0, 0, -1, _colour, 1, 0, 0);
add_vertex(_model, _hw, _hw, -_hw,  0, 0, -1, _colour, 1, 0, 0);
add_vertex(_model, -_hw, _hw, -_hw,  0, 0, -1, _colour, 1, 0, 0);

// Top

add_vertex(_model, _hw, _hw, _hw,  0, 0, 1, _colour, 1, 0, 0);
add_vertex(_model, _hw, -_hw, _hw,  0, 0, 1, _colour, 1, 0, 0);
add_vertex(_model, -_hw, _hw, _hw,  0, 0, 1, _colour, 1, 0, 0);

add_vertex(_model, -_hw, -_hw, _hw,  0, 0, 1, _colour, 1, 0, 0);
add_vertex(_model, -_hw, _hw, _hw,  0, 0, 1, _colour, 1, 0, 0);
add_vertex(_model, _hw, -_hw, _hw,  0, 0, 1, _colour, 1, 0, 0);

// Front

add_vertex(_model, _hw, _hw, _hw,  0, 1, 0, _colour, 1, 0, 0);
add_vertex(_model, -_hw, _hw, _hw,  0, 1, 0, _colour, 1, 0, 0);
add_vertex(_model, _hw, _hw, -_hw,  0, 1, 0, _colour, 1, 0, 0);

add_vertex(_model, -_hw, _hw, -_hw,  0, 1, 0, _colour, 1, 0, 0);
add_vertex(_model, _hw, _hw, -_hw,  0, 1, 0, _colour, 1, 0, 0);
add_vertex(_model, -_hw, _hw, _hw,  0, 1, 0, _colour, 1, 0, 0);

// Back

add_vertex(_model, _hw, -_hw, _hw,  0, -1, 0, _colour, 1, 0, 0);
add_vertex(_model, _hw, -_hw, -_hw,  0, -1, 0, _colour, 1, 0, 0);
add_vertex(_model, -_hw, -_hw, _hw,  0, -1, 0, _colour, 1, 0, 0);

add_vertex(_model, -_hw, -_hw, -_hw,  0, -1, 0, _colour, 1, 0, 0);
add_vertex(_model, -_hw, -_hw, _hw,  0, -1, 0, _colour, 1, 0, 0);
add_vertex(_model, _hw, -_hw, -_hw,  0, -1, 0, _colour, 1, 0, 0);

// Left

add_vertex(_model, _hw, _hw, _hw,  1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, _hw, _hw, -_hw,  1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, _hw, -_hw, _hw,  1, 0, 0, _colour, 1, 0, 0);

add_vertex(_model, _hw, -_hw, -_hw,  1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, _hw, -_hw, _hw,  1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, _hw, _hw, -_hw,  1, 0, 0, _colour, 1, 0, 0);

// Right

add_vertex(_model, -_hw, _hw, _hw,  -1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, -_hw, -_hw, _hw,  -1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, -_hw, _hw, -_hw,  -1, 0, 0, _colour, 1, 0, 0);

add_vertex(_model, -_hw, -_hw, -_hw,  -1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, -_hw, _hw, -_hw,  -1, 0, 0, _colour, 1, 0, 0);
add_vertex(_model, -_hw, -_hw, _hw,  -1, 0, 0, _colour, 1, 0, 0);

vertex_end(_model);
vertex_freeze(_model);

return _model;