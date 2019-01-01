/// @func make_sprite(model, length, width, colour, uvs)
/// @arg model
/// @arg length
/// @arg width
/// @arg colour
/// @arg uvs

var _model = argument[0];
var _half_length = argument[1] / 2;
var _half_width = argument[2] / 2;
var _colour = argument[3];
var _uvs = argument[4];

vertex_begin(_model, global.vert_w_light);

add_vertex(_model, -_half_width, -_half_length, 0, 0, 0, 1, _colour, 1, _uvs[0], _uvs[3]);
add_vertex(_model, -_half_width, _half_length, 0, 0, 0, 1, _colour, 1, _uvs[0], _uvs[1]);
add_vertex(_model, _half_width, -_half_length, 0, 0, 0, 1, _colour, 1, _uvs[2], _uvs[3]);

add_vertex(_model, -_half_width, _half_length, 0, 0, 0, 1, _colour, 1, _uvs[0], _uvs[1]);
add_vertex(_model, _half_width, _half_length, 0, 0, 0, 1, _colour, 1, _uvs[2], _uvs[1]);
add_vertex(_model, _half_width, -_half_length, 0, 0, 0, 1, _colour, 1, _uvs[2], _uvs[3]);

vertex_end(_model);