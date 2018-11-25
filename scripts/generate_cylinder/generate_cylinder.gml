/// @func generate_stem_simple(radius, length, steps)

var _radius = argument[0];
var _length = argument[1];
var _sections = argument[2];

var _section_size = 2 * pi / _sections;
var _model = vertex_create_buffer();

vertex_begin(_model, global.vert_w_light);

// Bottom cap

for (var i=0; i<=_sections; i++) {

	var _v = [cos(_section_size * i), 
			  sin(_section_size * i)];
			  
	var _vn = normalize_3d(_v[0], _v[1], -1);
			  
	var _v2 = [cos(_section_size * (i+1)), 
			  sin(_section_size * (i+1))];
			  
	var _vn2 = normalize_3d(_v2[0], _v2[1], -1);

	add_vertex(_model, _v[0] * _radius, _v[1] * _radius, _length,
					   _vn[0], _vn[1], _vn[2],
					   c_white, 1, 0, 0);
					   
	add_vertex(_model, _v2[0] * _radius, _v2[1] * _radius, _length,
					   _vn2[0], _vn2[1], _vn2[2],
					   c_white, 1, 0, 0);
					   
	add_vertex(_model, 0, 0, _length,
					   0, 0, 1,
					   c_white, 1, 0, 0);
}

// sides

for (var i=0; i<=_sections; i++) {

	var _v = [cos(_section_size * i), 
			  sin(_section_size * i)];

	add_vertex(_model, _v[0] * _radius, _v[1] * _radius, 0,
					   _v[0], _v[1], -1,
					   c_white, 1, 0, 0);
					   
	add_vertex(_model, _v[0] * _radius, _v[1] * _radius, _length,
					   _v[0], _v[1], 1,
					   c_white, 1, 0, 0);
}

// Top cap

for (var i=0; i<=_sections; i++) {

	var _v = [cos(_section_size * i), 
			  sin(_section_size * i)];
			  
	var _vn = normalize_3d(_v[0], _v[1], 1);
			  
	var _v2 = [cos(_section_size * (i+1)), 
			  sin(_section_size * (i+1))];
			  
	var _vn2 = normalize_3d(_v2[0], _v2[1], 1);

	add_vertex(_model, _v[0] * _radius, _v[1] * _radius, _length,
					   _vn[0], _vn[1], _vn[2],
					   c_white, 1, 0, 0);
					   
	add_vertex(_model, _v2[0] * _radius, _v2[1] * _radius, _length,
					   _vn2[0], _vn2[1], _vn2[2],
					   c_white, 1, 0, 0);
					   
	add_vertex(_model, 0, 0, _length,
					   0, 0, 1,
					   c_white, 1, 0, 0);
}

vertex_end(_model);
vertex_freeze(_model);

return _model;