/// @func make_skybox()

var _model, _uvs;

for (var i=0; i<6; i++) {
	_model[i] = vertex_create_buffer();
}

// Top
vertex_begin(_model[0], global.vert_wo_light);

_uvs = tex_uv[0];
add_vertex_no_light(_model[0], -0.5, 0.5, 0.5, c_white, 1, _uvs[0], _uvs[1]);
add_vertex_no_light(_model[0], -0.5, -0.5, 0.5, c_white, 1, _uvs[2], _uvs[1]);
add_vertex_no_light(_model[0], 0.5, 0.5, 0.5, c_white, 1, _uvs[0], _uvs[3]);
add_vertex_no_light(_model[0], 0.5, -0.5, 0.5, c_white, 1, _uvs[2], _uvs[3]);

vertex_end(_model[0]);
vertex_freeze(_model[0]);

// Bottom
vertex_begin(_model[1], global.vert_wo_light);

_uvs = tex_uv[1];
add_vertex_no_light(_model[1], -0.5, 0.5, -0.5, c_white, 1, _uvs[0], _uvs[3]);
add_vertex_no_light(_model[1], 0.5, 0.5, -0.5, c_white, 1, _uvs[0], _uvs[1]);
add_vertex_no_light(_model[1], -0.5, -0.5, -0.5, c_white, 1, _uvs[2], _uvs[3]);
add_vertex_no_light(_model[1], 0.5, -0.5, -0.5, c_white, 1, _uvs[2], _uvs[1]);

vertex_end(_model[1]);
vertex_freeze(_model[1]);

// Left
vertex_begin(_model[2], global.vert_wo_light);

_uvs = tex_uv[2];
add_vertex_no_light(_model[2], -0.5, -0.5, 0.5, c_white, 1, _uvs[0], _uvs[1]);
add_vertex_no_light(_model[2], -0.5, 0.5, 0.5, c_white, 1, _uvs[2], _uvs[1]);
add_vertex_no_light(_model[2], -0.5, -0.5, -0.5, c_white, 1, _uvs[0], _uvs[3]);
add_vertex_no_light(_model[2], -0.5, 0.5, -0.5, c_white, 1, _uvs[2], _uvs[3]);

vertex_end(_model[2]);
vertex_freeze(_model[2]);

// Right
vertex_begin(_model[3], global.vert_wo_light);

_uvs = tex_uv[3];
add_vertex_no_light(_model[3], 0.5, 0.5, -0.5, c_white, 1, _uvs[0], _uvs[3]);
add_vertex_no_light(_model[3], 0.5, 0.5, 0.5, c_white, 1, _uvs[0], _uvs[1]);
add_vertex_no_light(_model[3], 0.5, -0.5, -0.5, c_white, 1, _uvs[2], _uvs[3]);
add_vertex_no_light(_model[3], 0.5, -0.5, 0.5, c_white, 1, _uvs[2], _uvs[1]);

vertex_end(_model[3]);
vertex_freeze(_model[3]);

// Back
vertex_begin(_model[4], global.vert_wo_light);

_uvs = tex_uv[4];
add_vertex_no_light(_model[4], -0.5, -0.5, -0.5, c_white, 1, _uvs[2], _uvs[3]);
add_vertex_no_light(_model[4], 0.5, -0.5, -0.5, c_white, 1, _uvs[0], _uvs[3]);
add_vertex_no_light(_model[4], -0.5, -0.5, 0.5, c_white, 1, _uvs[2], _uvs[1]);
add_vertex_no_light(_model[4], 0.5, -0.5, 0.5, c_white, 1, _uvs[0], _uvs[1]);

vertex_end(_model[4]);
vertex_freeze(_model[4]);

// Front
vertex_begin(_model[5], global.vert_wo_light);

_uvs = tex_uv[5];
add_vertex_no_light(_model[5], 0.5, 0.5, 0.5, c_white, 1, _uvs[2], _uvs[1]);
add_vertex_no_light(_model[5], 0.5, 0.5, -0.5, c_white, 1, _uvs[2], _uvs[3]);
add_vertex_no_light(_model[5], -0.5, 0.5, 0.5, c_white, 1, _uvs[0], _uvs[1]);
add_vertex_no_light(_model[5], -0.5, 0.5, -0.5, c_white, 1, _uvs[0], _uvs[3]);

vertex_end(_model[5]);
vertex_freeze(_model[5]);

return _model;