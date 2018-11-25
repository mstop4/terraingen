/// @func make_sphere(radius, rings, sections, colour)

var _model = vertex_create_buffer();
var _radius = argument[0];
var _rings = argument[1];
var _sections = argument[2];
var _colour = argument[3];

r_step = pi / _rings;
s_step = 2 * pi / _sections;
var _cur_v, _next_v;

vertex_begin(_model,global.vert_w_light);

for (var i=0; i<_rings-1; i++) {
	var _cur_r = sin(i * r_step) * _radius;
	var _next_r = sin((i+1) * r_step) * _radius;
	_cur_v[2] = cos(i * r_step) * _radius;
	_next_v[2] = cos((i+1) * r_step) * _radius;
	
	for (var j=0; j<=_sections; j++) {
		var _j_step = j * s_step;
		
		_cur_v[0] = cos(_j_step) * _cur_r;
		_cur_v[1] = sin(_j_step) * _cur_r;
		_next_v[0] = cos(_j_step) * _next_r;
		_next_v[1] = sin(_j_step) * _next_r;
		
		var _cur_n = normalize_3d(_cur_v[0], _cur_v[1], _cur_v[2]);
		var _next_n = normalize_3d(_next_v[0], _next_v[1], _next_v[2]);
		
		add_vertex(_model, _cur_v[0], _cur_v[1], _cur_v[2], _cur_n[0], _cur_n[1], _cur_n[2], _colour, 1, 0, 0);
		add_vertex(_model, _next_v[0], _next_v[1], _next_v[2], _next_n[0], _next_n[1], _next_n[2], _colour, 1, 0, 0);
	}
}

vertex_end(_model);
vertex_freeze(_model);

return _model;