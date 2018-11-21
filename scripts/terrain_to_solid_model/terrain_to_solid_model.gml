/// @func  terrain_to_solid_model(height_grid, normal_grid, colour_grid)
/// @arg   height_grid   
/// @arg   normal_grid
/// @arg   colour_grid    

var _height_grid = argument[0];
var _normal_grid = argument[1];
var _colour_grid = argument[2];

var _w = ds_grid_width(_height_grid);
var _h = ds_grid_height(_height_grid);

var _dir = 1;
var _vx, _vy, _vz, _nx, _ny, _nz, _c, _tu, _tv;
var _cur_n;
var _count = 0;

var _vert_buf = vertex_create_buffer();

for (var j=0; j<_h-1; j++) {
	if (_dir == 1) {
		for (var i=0; i<_w; i++) {
			_cur_n = _normal_grid[# i, j];
			
			_vx[_count] = i;
			_vy[_count] = j;
			_vz[_count] = _height_grid[# i, j];
			_nx[_count] = _cur_n[0];
			_ny[_count] = _cur_n[1];
			_nz[_count] = _cur_n[2];
			_c[_count] = _colour_grid[# i, j];
			_count++;
			
			_cur_n = _normal_grid[# i, j+1];
			
			_vx[_count] = i;
			_vy[_count] = j+1;
			_vz[_count] = _height_grid[# i, j+1];
			_nx[_count] = _cur_n[0];
			_ny[_count] = _cur_n[1];
			_nz[_count] = -_cur_n[2];
			_c[_count] = _colour_grid[# i, j+1];
			_count++;
			
			if (i == _w-1) {
				_vx[_count] = i;
				_vy[_count] = j+1;
				_vz[_count] = _height_grid[# i, j+1];
				_nx[_count] = _cur_n[0];
				_ny[_count] = _cur_n[1];
				_nz[_count] = -_cur_n[2];
				_c[_count] = _colour_grid[# i, j+1];
				_tu[_count] = 0;
				_tv[_count] = 1;
				_count++;
			}
		}
		
		_dir = -1;
	}
	
	else {
		for (var i=_w-1; i>=0; i--) {
			
			_cur_n = _normal_grid[# i, j];
			
			_vx[_count] = i;
			_vy[_count] = j;
			_vz[_count] = _height_grid[# i, j];
			_nx[_count] = _cur_n[0];
			_ny[_count] = _cur_n[1];
			_nz[_count] = _cur_n[2];
			_c[_count] = _colour_grid[# i, j];
			_count++;
			
			_cur_n = _normal_grid[# i, j+1];
			
			_vx[_count] = i;
			_vy[_count] = j+1;
			_vz[_count] = _height_grid[# i, j+1];
			_nx[_count] = _cur_n[0];
			_ny[_count] = _cur_n[1];
			_nz[_count] = _cur_n[2];
			_c[_count] = _colour_grid[# i, j+1];
			_count++;
			
			if (i == 0) {
				_vx[_count] = i;
				_vy[_count] = j+1;
				_vz[_count] = _height_grid[# i, j+1];
				_nx[_count] = _cur_n[0];
				_ny[_count] = _cur_n[1];
				_nz[_count] = _cur_n[2];
				_c[_count] = _colour_grid[# i, j+1];
				_count++;
			}
		}
		
		_dir = 1;
	}
}

vertex_begin(_vert_buf,global.vert_w_light);

for (var i=0; i<_count; i++) {
	vertex_position_3d(_vert_buf,_vx[i],_vy[i],_vz[i]);
	vertex_normal(_vert_buf,_nx[i],_ny[i],_nz[i]);
	vertex_color(_vert_buf,_c[i],1);
	vertex_texcoord(_vert_buf,0,0);
}

vertex_end(_vert_buf);
vertex_freeze(_vert_buf);

return _vert_buf;