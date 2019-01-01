/// @func make_plane(length, width, colour)
/// @arg length
/// @arg width
/// @arg colour

var _half_length = argument[0] / 2;
var _half_width = argument[1] / 2;
var _colour = argument[2];

var _model = vertex_create_buffer();

vertex_begin(_model, global.vert_w_light);

add_vertex(_model, -_half_width, -_half_length, 0, 0, 0, 1, _colour, 1, 0, 0);
add_vertex(_model, -_half_width, _half_length, 0, 0, 0, 1, _colour, 1, 0, 1);
add_vertex(_model, _half_width, -_half_length, 0, 0, 0, 1, _colour, 1, 1, 0);

add_vertex(_model, -_half_width, _half_length, 0, 0, 0, 1, _colour, 1, 0, 1);
add_vertex(_model, _half_width, _half_length, 0, 0, 0, 1, _colour, 1, 1, 1);
add_vertex(_model, _half_width, -_half_length, 0, 0, 0, 1, _colour, 1, 1, 0);

vertex_end(_model);
vertex_freeze(_model);

return _model;