/// @func make_cursor(x1, y1, x2, y2, tl_z, tr_z, bl_z, br_z, colour)
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
/// @arg tl_z
/// @arg tr_z
/// @arg bl_z
/// @arg br_z
/// @arg colour

var _x1 = argument[0];
var _y1 = argument[1];
var _x2 = argument[2];
var _y2 = argument[3];
var _tl_z = argument[4];
var _tr_z = argument[5];
var _bl_z = argument[6];
var _br_z = argument[7];
var _colour = argument[8];

var _model = vertex_create_buffer();

vertex_begin(_model, global.vert_wo_light);

add_vertex_no_light(_model, _x1, _y1, _tl_z, _colour, 1, 0, 0);
add_vertex_no_light(_model, _x1, _y2, _bl_z, _colour, 1, 0, 1);
add_vertex_no_light(_model, _x2, _y2, _br_z, _colour, 1, 1, 1);
add_vertex_no_light(_model, _x2, _y1, _tr_z, _colour, 1, 1, 0);
add_vertex_no_light(_model, _x1, _y1, _tl_z, _colour, 1, 0, 0);

vertex_end(_model);
vertex_freeze(_model);

return _model;