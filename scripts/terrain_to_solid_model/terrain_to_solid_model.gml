/// @func  terrain_to_solid_model(height_grid, normal_grid, colour_grid)
/// @arg   height_grid   
/// @arg   normal_grid
/// @arg   colour_grid    

var _height_grid = argument[0];
var _normal_grid = argument[1];
var _colour_grid = argument[2];

var _w = ds_grid_width(_height_grid);

var _dir = 1;
var _estimated_count = _w *_w * 2 -_w - 1;
var _v = array_create(_estimated_count);
var _n = array_create(_estimated_count);
var _c = array_create(_estimated_count);
var _t = array_create(_estimated_count);

var _count = 0;
var _cur_n, _cur_v;

var _vert_buf = vertex_create_buffer();

for (var j=0; j<_w-1; j++) {
	if (_dir == 1) {
		for (var i=0; i<_w; i++) {
			_cur_n = _normal_grid[# i, j];
			
			_v[_count] = [i, j, _height_grid[# i, j]];
			_n[_count] = [_cur_n[0], _cur_n[1], _cur_n[2]];
			_c[_count] = _colour_grid[# i, j];
			_count++;
			
			_cur_n = _normal_grid[# i, j+1];
			
			_v[_count] = [i, j+1, _height_grid[# i, j+1]];
			_n[_count] = [_cur_n[0], _cur_n[1], _cur_n[2]];
			_c[_count] = _colour_grid[# i, j+1];
			_count++;
			
			if (i == _w-1) {
				_v[_count] = [i, j+1, _height_grid[# i, j+1]];
				_n[_count] = [_cur_n[0], _cur_n[1], _cur_n[2]];
				_c[_count] = _colour_grid[# i, j+1];
				_count++;
			}
		}
		
		_dir = -1;
	}
	
	else {
		for (var i=_w-1; i>=0; i--) {
			
			_cur_n = _normal_grid[# i, j];
			
			_v[_count] = [i, j, _height_grid[# i, j]];
			_n[_count] = [_cur_n[0], _cur_n[1], _cur_n[2]];
			_c[_count] = _colour_grid[# i, j];
			_count++;
			
			_cur_n = _normal_grid[# i, j+1];
			
			_v[_count] = [i, j+1, _height_grid[# i, j+1]];
			_n[_count] = [_cur_n[0], _cur_n[1], _cur_n[2]];
			_c[_count] = _colour_grid[# i, j+1];
			_count++;
			
			if (i == 0) {
				_v[_count] = [i, j+1, _height_grid[# i, j+1]];
				_n[_count] = [_cur_n[0], _cur_n[1], _cur_n[2]];
				_c[_count] = _colour_grid[# i, j+1];
				_count++;
			}
		}
		
		_dir = 1;
	}
}

vertex_begin(_vert_buf,global.vert_w_light);

for (var i=0; i<_count; i++) {
	_cur_v = _v[i];
	_cur_n = _n[i];
	vertex_position_3d(_vert_buf,_cur_v[0],_cur_v[1],_cur_v[2]);
	vertex_normal(_vert_buf,_cur_n[0],_cur_n[1],_cur_n[2]);
	vertex_color(_vert_buf,_c[i],1);
	vertex_texcoord(_vert_buf,0,0);
}

vertex_end(_vert_buf);
vertex_freeze(_vert_buf);

print (vertex_get_buffer_size(_vert_buf), " - ", vertex_get_number(_vert_buf));

return _vert_buf;