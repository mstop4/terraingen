/// @func make_world_border(grid, bottom_z, border_width)
/// @arg grid
/// @arg bottom_z
/// @arg border_width

var _grid = argument[0];
var _bottom_z = argument[1];
var _border_width = argument[2];

var _w = ds_grid_width(_grid);
var _model = vertex_create_buffer();

var _z1, _z2, _v1, _v2, _n;

vertex_begin(_model, global.vert_w_light);

for (var i=-1; i<_w; i++) {
	
	// North
	
	if (i < 0 || i >= _w) {
		_z1 = _bottom_z;
	}
	else {
		_z1 = _grid[# i, 0];
	}
		
	if (i+1 < 0 || i+1 >= _w) {
		_z2 = _bottom_z;
	}
	else {
		_z2 = _grid[# i+1, 0];
	}
	
	_v1 = vector_math([i, 0, _z1], [i, -_border_width, _bottom_z], vec_op.subtract);
	_v2 = vector_math([i+1, -_border_width, _bottom_z], [i, -_border_width, _bottom_z], vec_op.subtract);
			
	_n = cross_product_normalized(_v1, _v2);
	
	add_vertex(_model,i,-_border_width,_bottom_z,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,i,0,_z1,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,i+1,-_border_width,_bottom_z,_n[0],_n[1],_n[2],c_white,1,0,0);
	
	_v1 = vector_math([i+1, 0, _z2], [i, 0, _z1], vec_op.subtract);
	_v2 = vector_math([i+1, -_border_width, _bottom_z], [i, 0, _z1], vec_op.subtract);
			
	_n = cross_product_normalized(_v1, _v2);
	
	add_vertex(_model,i,0,_z1,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,i+1,0,_z2,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,i+1,-_border_width,_bottom_z,_n[0],_n[1],_n[2],c_white,1,0,0);
	
	// South
	
	if (i < 0 || i >= _w) {
		_z1 = _bottom_z;
	}
	else {
		_z1 = _grid[# i, _w-1];
	}
		
	if (i+1 < 0 || i+1 >= _w) {
		_z2 = _bottom_z;
	}
	else {
		_z2 = _grid[# i+1, _w-1];
	}
	
	_v1 = vector_math([i, _w-1+_border_width, _bottom_z], [i, _w-1, _z1], vec_op.subtract);
	_v2 = vector_math([i+1, _w-1, _z2], [i, _w-1, _z1], vec_op.subtract);
			
	_n = cross_product_normalized(_v1, _v2);
	
	add_vertex(_model,i,_w-1,_z1,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,i,_w-1+_border_width,_bottom_z,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,i+1,_w-1,_z2,_n[0],_n[1],_n[2],c_white,1,0,0);
	
	_v1 = vector_math([i+1, _w-1+_border_width, _bottom_z], [i, _w-1+_border_width, _bottom_z], vec_op.subtract);
	_v2 = vector_math([i+1, _w-1, _z2], [i, _w-1+_border_width, _bottom_z], vec_op.subtract);
			
	_n = cross_product_normalized(_v1, _v2);
	
	add_vertex(_model,i,_w-1+_border_width,_bottom_z,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,i+1,_w-1+_border_width,_bottom_z,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,i+1,_w-1,_z2,_n[0],_n[1],_n[2],c_white,1,0,0);
}

for (var i=0; i<_w-1; i++) {
	
	// West

	_z1 = _grid[# 0, i];
	_z2 = _grid[# 0, i+1];
	
	_v1 = vector_math([-_border_width, i+1, _bottom_z], [-_border_width, i, _bottom_z], vec_op.subtract);
	_v2 = vector_math([0, i, _z1], [-_border_width, i, _bottom_z], vec_op.subtract);
			
	_n = cross_product_normalized(_v1, _v2);
	
	add_vertex(_model,-_border_width,i,_bottom_z,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,-_border_width,i+1,_bottom_z,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,0,i,_z1,_n[0],_n[1],_n[2],c_white,1,0,0);
	
	_v1 = vector_math([0, i+1, _z2], [-_border_width, i+1, _bottom_z], vec_op.subtract);
	_v2 = vector_math([0, i, _z1], [-_border_width, i+1, _bottom_z], vec_op.subtract);
			
	_n = cross_product_normalized(_v1, _v2);
	
	add_vertex(_model,-_border_width,i+1,_bottom_z,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,0,i+1,_z2,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,0,i,_z1,_n[0],_n[1],_n[2],c_white,1,0,0);
	
	// East

	_z1 = _grid[# _w-1, i];
	_z2 = _grid[# _w-1, i+1];
	
	_v1 = vector_math([_w-1, i+1, _z2], [_w-1, i, _z1], vec_op.subtract);
	_v2 = vector_math([_w-1+_border_width, i, _z1], [_w-1, i, _z1], vec_op.subtract);
			
	_n = cross_product_normalized(_v1, _v2);
	
	add_vertex(_model,_w-1,i,_z1,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,_w-1,i+1,_z2,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,_w-1+_border_width,i,_bottom_z,_n[0],_n[1],_n[2],c_white,1,0,0);
	
	_v1 = vector_math([_w-1+_border_width, i+1, _bottom_z], [_w-1, i+1, _z2], vec_op.subtract);
	_v2 = vector_math([_w-1+_border_width, i, _bottom_z], [_w-1, i+1, _z2], vec_op.subtract);
			
	_n = cross_product_normalized(_v1, _v2);
	
	add_vertex(_model,_w-1,i+1,_z2,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,_w-1+_border_width,i+1,_bottom_z,_n[0],_n[1],_n[2],c_white,1,0,0);
	add_vertex(_model,_w-1+_border_width,i,_bottom_z,_n[0],_n[1],_n[2],c_white,1,0,0);
}

vertex_end(_model);
vertex_freeze(_model);

return _model;
