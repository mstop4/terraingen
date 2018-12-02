/// @func make_sphere(model, radius, rings, sections, colour)
/// @arg model
/// @arg radius
/// @arg rings
/// @arg sections
/// @arg colour

var _model = argument[0];
var _radius = argument[1];
var _rings = argument[2];
var _sections = argument[3];
var _colour = argument[4];

var _r_step = pi / _rings;
var _s_step = 2 * pi / _sections;
var _tl_v, _tr_v, _bl_v, _br_v;

for (var i=0; i<_rings; i++) {
	var _t_rad = sin(i * _r_step) * _radius;
	var _b_rad = sin((i+1) * _r_step) * _radius;
	_tl_v[2] = cos(i * _r_step) * _radius;
	_tr_v[2] = cos(i * _r_step) * _radius;
	_bl_v[2] = cos((i+1) * _r_step) * _radius;
	_br_v[2] = cos((i+1) * _r_step) * _radius;
	
	for (var j=0; j<_sections; j++) {
		var _j_step_l = j * _s_step;
		var _j_step_r = (j+1) * _s_step;
		
		_tl_v[0] = cos(_j_step_l) * _t_rad;
		_tl_v[1] = sin(_j_step_l) * _t_rad;
		_tr_v[0] = cos(_j_step_r) * _t_rad;
		_tr_v[1] = sin(_j_step_r) * _t_rad;
		_bl_v[0] = cos(_j_step_l) * _b_rad;
		_bl_v[1] = sin(_j_step_l) * _b_rad;
		_br_v[0] = cos(_j_step_r) * _b_rad;
		_br_v[1] = sin(_j_step_r) * _b_rad;
		
		var _vec_tl_br = vector_math(_br_v, _tl_v, vec_op.subtract);
		var _vec_tr_bl = vector_math(_bl_v, _tr_v, vec_op.subtract);
		
		var _n = cross_product_normalized(_vec_tr_bl, _vec_tl_br);
		
		add_vertex(_model, _tl_v[0], _tl_v[1], _tl_v[2], _n[0], _n[1], _n[2], _colour, 1, 0, 0);
		add_vertex(_model, _tr_v[0], _tr_v[1], _tr_v[2], _n[0], _n[1], _n[2], _colour, 1, 0, 0);
		add_vertex(_model, _bl_v[0], _bl_v[1], _bl_v[2], _n[0], _n[1], _n[2], _colour, 1, 0, 0);
		
		add_vertex(_model, _bl_v[0], _bl_v[1], _bl_v[2], _n[0], _n[1], _n[2], _colour, 1, 0, 0);
		add_vertex(_model, _tr_v[0], _tr_v[1], _tr_v[2], _n[0], _n[1], _n[2], _colour, 1, 0, 0);
		add_vertex(_model, _br_v[0], _br_v[1], _br_v[2], _n[0], _n[1], _n[2], _colour, 1, 0, 0);

		
	}
}