/// @func  terrain_to_solid_model(height_grid, normal_grid, colour_grid, uv_grid)
/// @arg   height_grid   
/// @arg   normal_grid
/// @arg   colour_grid    
/// @arg   uv_grid

var _height_grid = argument[0];
var _normal_grid = argument[1];
var _colour_grid = argument[2];
var _uv_grid = argument[3];

var _w = ds_grid_width(_height_grid);

var _dir = -1;

var _count = 0;
var _cur_n, _cur_v, _cur_uv;

var _vert_buf = vertex_create_buffer();
vertex_begin(_vert_buf,global.vert_w_light);

for (var j=0; j<_w-1; j++) {
	if (_dir == 1) {
		for (var i=0; i<_w; i++) {
			_cur_n = _normal_grid[# i, j];
			_cur_uv = _uv_grid[# i, j];
			
			add_vertex(_vert_buf, i, j, _height_grid[# i, j], 
								 _cur_n[0], _cur_n[1], _cur_n[2],
								 _colour_grid[# i, j], 1,
								 _cur_uv[0],_cur_uv[1]);
			
			_cur_n = _normal_grid[# i, j+1];
			_cur_uv = _uv_grid[# i, j+1];
			
			add_vertex(_vert_buf, i, j+1, _height_grid[# i, j+1], 
								 _cur_n[0], _cur_n[1], _cur_n[2],
								 _colour_grid[# i, j+1], 1,
								 _cur_uv[0],_cur_uv[1]);
			
			if (i == _w-1) {
				add_vertex(_vert_buf, i, j+1, _height_grid[# i, j+1], 
									 _cur_n[0], _cur_n[1], _cur_n[2],
									 _colour_grid[# i, j+1], 1,
									 _cur_uv[0],_cur_uv[1]);
			}
		}
		
		_dir = -1;
	}
	
	else {
		for (var i=_w-1; i>=0; i--) {
			_cur_n = _normal_grid[# i, j];
			_cur_uv = _uv_grid[# i, j];
			
			add_vertex(_vert_buf, i, j, _height_grid[# i, j], 
								 _cur_n[0], _cur_n[1], _cur_n[2],
								 _colour_grid[# i, j], 1,
								 _cur_uv[0],_cur_uv[1]);
			
			_cur_n = _normal_grid[# i, j+1];
			_cur_uv = _uv_grid[# i, j+1];
			
			add_vertex(_vert_buf, i, j+1, _height_grid[# i, j+1], 
								 _cur_n[0], _cur_n[1], _cur_n[2],
								 _colour_grid[# i, j+1], 1,
								 _cur_uv[0],_cur_uv[1]);
			
			if (i == 0) {
				add_vertex(_vert_buf, i, j+1, _height_grid[# i, j+1], 
									 _cur_n[0], _cur_n[1], _cur_n[2],
									 _colour_grid[# i, j+1], 1,
									 _cur_uv[0],_cur_uv[1]);
			}
		}
		
		_dir = 1;
	}
}

vertex_end(_vert_buf);
vertex_freeze(_vert_buf);

print (vertex_get_buffer_size(_vert_buf), " - ", vertex_get_number(_vert_buf));

return _vert_buf;