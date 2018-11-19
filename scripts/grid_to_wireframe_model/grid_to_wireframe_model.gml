/// @func  grid_to_wireframe_model(height_grid, colour_grid)
/// @arg   height_grid    
/// @arg   colour_grid    

var _height_grid = argument[0];
var _colour_grid = argument[1];

var _w = ds_grid_width(_height_grid);
var _h = ds_grid_height(_height_grid);

var _dir = 1;
var _vx, _vy, _vz, _c;
var _count = 0;

var _vert_buf = vertex_create_buffer();

for (var j=0; j<_h-1; j++) {
	if (_dir == 1) {
		for (var i=0; i<_w; i++) {
			_vx[_count] = i;
			_vy[_count] = j;
			_vz[_count] = _height_grid[# i, j];
			_c[_count] = _colour_grid[# i, j];
			_count++;
			
			_vx[_count] = i;
			_vy[_count] = j+1;
			_vz[_count] = _height_grid[# i, j+1];
			_c[_count] = _colour_grid[# i, j+1];
			_count++;
		}
		
		_dir = -1;
	}
	
	else {
		for (var i=_w-1; i>=0; i--) {
			_vx[_count] = i;
			_vy[_count] = j;
			_vz[_count] = _height_grid[# i, j];
			_c[_count] = _colour_grid[# i, j];
			_count++;
			
			_vx[_count] = i;
			_vy[_count] = j+1;
			_vz[_count] = _height_grid[# i, j+1];
			_c[_count] = _colour_grid[# i, j+1];
			_count++;
		}
		
		_dir = 1;
	}
}

vertex_begin(_vert_buf,global.vert_form);

for (var i=0; i<_count; i++) {
	vertex_position_3d(_vert_buf,_vx[i],_vy[i],_vz[i]);
	vertex_color(_vert_buf,_c[i],1);
}

vertex_end(_vert_buf);
vertex_freeze(_vert_buf);

return _vert_buf;