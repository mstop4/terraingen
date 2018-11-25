/// @func make_cylinder(radius, length, steps, colour)

var _radius = argument[0];
var _length = argument[1];
var _sections = argument[2];
var _colour = argument[3];

var _section_size = 2 * pi / _sections;
var _model = vertex_create_buffer();

var i, _v, _vn, _v2, _vn2;

vertex_begin(_model, global.vert_w_light);

// Bottom cap

for (var i=0; i<=_sections; i++) {

	_v = [cos(_section_size * i), 
			  sin(_section_size * i)];
			  
	_vn = normalize_3d(_v[0], _v[1], 0);
			  
	_v2 = [cos(_section_size * (i+1)), 
			  sin(_section_size * (i+1))];
			  
	_vn2 = normalize_3d(_v2[0], _v2[1], 0);

	add_vertex(_model, _v[0] * _radius, _v[1] * _radius, 0,
					   _vn[0], _vn[1], _vn[2],
					   _colour, 1, 0, 0);
					   
	add_vertex(_model, _v2[0] * _radius, _v2[1] * _radius, 0,
					   _vn2[0], _vn2[1], _vn2[2],
					   _colour, 1, 0, 0);
					   
	add_vertex(_model, 0, 0, 0,
					   0, 0, -1,
					   _colour, 1, 0, 0);
}

add_vertex(_model, _v2[0] * _radius, _v2[1] * _radius, 0,
					_vn2[0], _vn2[1], _vn2[2],
					_colour, 1, 0, 0);

// sides

for (var i=0; i<=_sections; i++) {

	_v = [cos(_section_size * i), 
			  sin(_section_size * i)];
			  
	_vn = normalize_3d(_v[0], _v[1], 0);
	_vn2 = normalize_3d(_v[0], _v[1], 0);

	add_vertex(_model, _v[0] * _radius, _v[1] * _radius, 0,
					   _vn[0], _vn[1], _vn[2],
					   _colour, 1, 0, 0);
					   
	add_vertex(_model, _v[0] * _radius, _v[1] * _radius, _length,
					   _vn2[0], _vn2[1], _vn2[2],
					   _colour, 1, 0, 0);
}

// Top cap

for (var i=0; i<=_sections; i++) {

	_v = [cos(_section_size * i), 
			  sin(_section_size * i)];
			  
	_vn = normalize_3d(_v[0], _v[1], 0);
			  
	_v2 = [cos(_section_size * (i+1)), 
			  sin(_section_size * (i+1))];
			  
	_vn2 = normalize_3d(_v2[0], _v2[1], 0);

	add_vertex(_model, _v[0] * _radius, _v[1] * _radius, _length,
					   _vn[0], _vn[1], _vn[2],
					   _colour, 1, 0, 0);
					   
	add_vertex(_model, _v2[0] * _radius, _v2[1] * _radius, _length,
					   _vn2[0], _vn2[1], _vn2[2],
					   _colour, 1, 0, 0);
					   
	add_vertex(_model, 0, 0, _length,
					   0, 0, 1,
					   _colour, 1, 0, 0);
}

vertex_end(_model);
vertex_freeze(_model);

return _model;