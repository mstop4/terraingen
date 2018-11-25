/// @func generate_stem_simple(radius, length, steps)

var _radius = argument[0];
var _length = argument[1];
var _steps = argument[2];

var _step_size = 2 * pi / _steps;
var _model = vertex_create_buffer();

vertex_begin(_model, global.vert_w_light);

for (var i=0; i<=_steps; i++) {

	var _v = [cos(_step_size * i), 
			  sin(_step_size * i)];

	add_vertex(_model, _v[0] * _radius, _v[1] * _radius, 0,
					   _v[0], _v[1], -1,
					   c_white, 1, 0, 0);
					   
	add_vertex(_model, _v[0] * _radius, _v[1] * _radius, _length,
					   _v[0], _v[1], 1,
					   c_white, 1, 0, 0);
}

for (var i=0; i<=_steps; i++) {

	var _v = [cos(_step_size * i), 
			  sin(_step_size * i)];
			  
	var _v2 = [cos(_step_size * (i+1)), 
			  sin(_step_size * (i+1))];

	add_vertex(_model, _v[0] * _radius, _v[1] * _radius, _length,
					   _v[0], _v[1], 1,
					   c_white, 1, 0, 0);
					   
	add_vertex(_model, _v2[0] * _radius, _v2[1] * _radius, _length,
					   _v2[0], _v2[1], 1,
					   c_white, 1, 0, 0);
					   
	add_vertex(_model, 0, 0, _length,
					   0, 0, 1,
					   c_white, 1, 0, 0);
}

vertex_end(_model);
vertex_freeze(_model);

return _model;