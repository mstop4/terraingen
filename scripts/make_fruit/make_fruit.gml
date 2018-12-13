/// @func make_fruit(length, width, colour, uvs)
/// @arg length
/// @arg width
/// @arg colour
/// @arg uvs

var _length = argument[0];
var _half_width = argument[1] / 2;
var _colour = argument[2];
var _uvs = argument[3];

var _model = vertex_create_buffer();

vertex_begin(_model, global.vert_w_light);

var _vert0 = [_half_width, -_length];		// 1, 0
var _vert1 = [-_half_width, -_length];    // 1, 1
var _vert2 = [_half_width, 0];			// 0, 0
var _vert3 = [-_half_width, 0];			// 0, 1

// front

add_vertex(_model, _vert1[0], 0, _vert1[1], 0, -1, 0, _colour, 1, _uvs[2], _uvs[3]);
add_vertex(_model, _vert3[0], 0, _vert3[1], 0, -1, 0, _colour, 1, _uvs[0], _uvs[3]);
add_vertex(_model, _vert0[0], 0, _vert0[1], 0, -1, 0, _colour, 1, _uvs[2], _uvs[1]);

add_vertex(_model, _vert3[0], 0, _vert3[1],  0, -1, 0, _colour, 1, _uvs[0], _uvs[3]);
add_vertex(_model, _vert2[0], 0, _vert2[1],  0, -1, 0, _colour, 1, _uvs[0], _uvs[1]);
add_vertex(_model, _vert0[0], 0, _vert0[1],  0, -1, 0, _colour, 1, _uvs[2], _uvs[1]);

// back

add_vertex(_model, _vert0[0], 0, _vert0[1], 0, 1, 0, _colour, 1, _uvs[2], _uvs[3]);
add_vertex(_model, _vert2[0], 0, _vert2[1], 0, 1, 0, _colour, 1, _uvs[0], _uvs[3]);
add_vertex(_model, _vert1[0], 0, _vert1[1], 0, 1, 0, _colour, 1, _uvs[2], _uvs[1]);

add_vertex(_model, _vert2[0], 0, _vert2[1],  0, 1, 0, _colour, 1, _uvs[0], _uvs[3]);
add_vertex(_model, _vert3[0], 0, _vert3[1],  0, 1, 0, _colour, 1, _uvs[0], _uvs[1]);
add_vertex(_model, _vert1[0], 0, _vert1[1],  0, 1, 0, _colour, 1, _uvs[2], _uvs[1]);

vertex_end(_model);
vertex_freeze(_model);

return _model;