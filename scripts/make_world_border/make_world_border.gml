/// @func make_world_border(_grid, _bottom_z)
/// @arg grid
/// @arg bottom_z
/// @arg border_width

var _grid = argument[0];
var _bottom_z = argument[1];
var _border_width = argument[2];

var _w = ds_grid_width(_grid);
var _model = vertex_create_buffer();

var _z1, _z2, _a1, _a2;

vertex_begin(_model, global.vert_w_light);

for (var i=-1; i<=_w; i++) {
	
	// North
	
	if (i < 0 || i >= _w) {
		_z1 = _bottom_z;
		_a1 = 0;
	}
	else {
		_z1 = _grid[# i, 0];
		_a1 = 1;
	}
		
	if (i+1 < 0 || i+1 >= _w) {
		_z2 = _bottom_z;
		_a2 = 0;
	}
	else {
		_z2 = _grid[# i+1, 0];
		_a2 = 1;
	}
	
	add_vertex(_model,i,-_border_width,_bottom_z,0,0,0,c_white,0,0,0);
	add_vertex(_model,i,0,_z1,0,0,0,c_white,_a1,0,0);
	add_vertex(_model,i+1,-_border_width,_bottom_z,0,0,0,c_white,0,0,0);
	
	add_vertex(_model,i,0,_z1,0,0,0,c_white,_a1,0,0);
	add_vertex(_model,i+1,0,_z2,0,0,0,c_white,_a2,0,0);
	add_vertex(_model,i+1,-_border_width,_bottom_z,0,0,0,c_white,0,0,0);
	
	// South
	
	if (i < 0 || i >= _w) {
		_z1 = _bottom_z;
		_a1 = 0;
	}
	else {
		_z1 = _grid[# i, _w-1];
		_a1 = 1;
	}
		
	if (i+1 < 0 || i+1 >= _w) {
		_z2 = _bottom_z;
		_a2 = 0;
	}
	else {
		_z2 = _grid[# i+1, _w-1];
		_a2 = 1;
	}
	
	add_vertex(_model,i,_w-1,_z1,0,0,0,c_white,_a1,0,0);
	add_vertex(_model,i,_w-1+_border_width,_bottom_z,0,0,0,c_white,0,0,0);
	add_vertex(_model,i+1,_w-1,_z2,0,0,0,c_white,_a2,0,0);
	
	add_vertex(_model,i,_w-1+_border_width,_bottom_z,0,0,0,c_white,0,0,0);
	add_vertex(_model,i+1,_w-1+_border_width,_bottom_z,0,0,0,c_white,0,0,0);
	add_vertex(_model,i+1,_w-1,_z2,0,0,0,c_white,_a2,0,0);
}

/*for (var i=0; i<_w-1; i++) {
	
	// West

	_z1 = _grid[# 0, i];
	_z2 = _grid[# 0, i+1];
	
	add_vertex(_model,-_border_width,i,_bottom_z,0,0,0,c_white,0,0,0);
	add_vertex(_model,-_border_width,i+1,_bottom_z,0,0,0,c_white,0,0,0);
	add_vertex(_model,0,i,_z1,0,0,0,c_white,1,0,0);
	
	add_vertex(_model,-_border_width,i+1,_bottom_z,0,0,0,c_white,0,0,0);
	add_vertex(_model,0,i+1,_z2,0,0,0,c_white,1,0,0);
	add_vertex(_model,0,i,_z1,0,0,0,c_white,1,0,0);
	
	// East

	_z1 = _grid[# _w-1, i];
	_z2 = _grid[# _w-1, i+1];
	
	add_vertex(_model,_w-1,i,_z1,0,0,0,c_white,1,0,0);
	add_vertex(_model,_w-1,i+1,_z2,0,0,0,c_white,1,0,0);
	add_vertex(_model,_w-1+_border_width,i,_bottom_z,0,0,0,c_white,0,0,0);
	
	add_vertex(_model,_w-1,i+1,_z2,0,0,0,c_white,1,0,0);
	add_vertex(_model,_w-1+_border_width,i+1,_bottom_z,0,0,0,c_white,0,0,0);
	add_vertex(_model,_w-1+_border_width,i,_bottom_z,0,0,0,c_white,0,0,0);
}*/

vertex_end(_model);
vertex_freeze(_model);

return _model;
