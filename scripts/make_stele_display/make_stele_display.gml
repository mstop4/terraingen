/// @func make_plane(length, width, spacing, uvs, colour)
/// @arg length
/// @arg width
/// @arg spacing
/// @arg uvs
/// @arg colour

var _half_length = argument[0] / 2;
var _half_width = argument[1] / 2;
var _spacing = argument[2];
var _uvs = argument[3];
var _colour = argument[4];

var _model = vertex_create_buffer();

vertex_begin(_model, global.vert_w_light);

add_vertex(_model, -_half_width, -_half_length, _spacing, 0, 0, 1, _colour, 1, _uvs[0], _uvs[3]);
add_vertex(_model, -_half_width, _half_length, _spacing, 0, 0, 1, _colour, 1, _uvs[0], _uvs[1]);
add_vertex(_model, _half_width, -_half_length, _spacing, 0, 0, 1, _colour, 1, _uvs[2], _uvs[3]);

add_vertex(_model, -_half_width, _half_length, _spacing, 0, 0, 1, _colour, 1, _uvs[0], _uvs[1]);
add_vertex(_model, _half_width, _half_length, _spacing, 0, 0, 1, _colour, 1, _uvs[2], _uvs[1]);
add_vertex(_model, _half_width, -_half_length, _spacing, 0, 0, 1, _colour, 1, _uvs[2], _uvs[3]);

add_vertex(_model, _half_width, -_half_length, -_spacing, 0, 0, -1, _colour, 1, _uvs[0], _uvs[3]);
add_vertex(_model, -_half_width, _half_length, -_spacing, 0, 0, -1, _colour, 1, _uvs[2], _uvs[1]);
add_vertex(_model, -_half_width, -_half_length, -_spacing, 0, 0, -1, _colour, 1, _uvs[2], _uvs[3]);

add_vertex(_model, _half_width, -_half_length, -_spacing, 0, 0, -1, _colour, 1, _uvs[0], _uvs[3]);
add_vertex(_model, _half_width, _half_length, -_spacing, 0, 0, -1, _colour, 1, _uvs[0], _uvs[1]);
add_vertex(_model, -_half_width, _half_length, -_spacing, 0, 0, -1, _colour, 1, _uvs[2], _uvs[1]);

vertex_end(_model);
vertex_freeze(_model);

return _model;