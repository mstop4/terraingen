/// @func generate_stem(radius, length, normal, _start_poly)

var _radius = argument[0];
var _length = argument[1];
var _normal = argument[2];
var _start_poly = argument[3];

var _steps = ds_grid_height(_start_poly);
var _step_size = 2 * pi / _steps;
var _model = vertex_create_buffer();

// find cap poly center
var _start_poly_center;
var _sx = 0, _sy = 0, _sz = 0;

for (var i=0; i<_steps; i++) {
	_sx += _start_poly[# 0, _steps];
	_sy += _start_poly[# 1, _steps];
	_sz += _start_poly[# 2, _steps];
}

_start_poly_center = [_sx / _steps, _sy / _steps, _sz / _steps];

// calculate end poly
var _end_poly;
var _end_poly_center = [_start_poly_center[0] + _normal[0] * _length,
						_start_poly_center[1] + _normal[1] * _length,
						_start_poly_center[2] + _normal[2] * _length];
						


vertex_begin(_model, global.vert_w_light);

for (var i=0; i<_steps; i++) {

	var _n = [_start_poly[# 0, i] - _start_poly_center[0], 
			  _start_poly[# 1, i] - _start_poly_center[1], 
			  _start_poly[# 2, i] - _start_poly_center[2]];

	add_vertex(_model, _start_poly[# 0, i], _start_poly[# 1, i], _start_poly[# 2, i],
					   _n[0], _n[1], _n[2],
					   c_white, 1, 0, 0);
}