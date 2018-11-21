/// @arg height_grid
/// @arg normal_grid
/// @arg strength

var _height_grid = argument[0];
var _normal_grid = argument[1];
var _strength = argument[2];

var _w = ds_grid_width(_height_grid);
var _h = ds_grid_height(_height_grid);

var _up_rise, _down_rise, _left_rise, _right_rise;

for (var i=0; i<_w; i++) {
	for (var j=0; j<_h; j++) {
	    var _v_run = 0;
		var _h_run = 0;
		
		if (j-1 >= 0) {
			_up_rise = _height_grid[# i, j-1];
			_v_run++;
		} else {
			_up_rise = _height_grid[# i, j];
		}
		
		if (j+1 < _h) {
			_down_rise = _height_grid[# i, j+1];
			_v_run++;
		} else {
			_down_rise = _height_grid[# i, j];
		}
		
		if (i-1 >= 0) {
			_left_rise = _height_grid[# i-1, j];
			_h_run++;
		} else {
			_left_rise = _height_grid[# i, j];
		}
		
		if (i+1 < _w) {
			_right_rise = _height_grid[# i+1, j];
			_h_run++;
		} else {
			_right_rise = _height_grid[# i, j];
		}		
		
		if (_h_run == 0 || _v_run == 0) {
			_normal_grid[# i, j] = [0, 0, 1];
		}
		
		else {
			var _h_vec = [_h_run,0,_right_rise - _left_rise];
			var _v_vec = [0,_v_run,_down_rise - _up_rise];
		
			var _n_vec = cross_product_normalized(_h_vec[0], _h_vec[1], _h_vec[2], _v_vec[0], _v_vec[1], _v_vec[2]);
			
			_n_vec[0] = lerp(0,_n_vec[0],_strength);
			_n_vec[1] = lerp(0,_n_vec[1],_strength);
			_n_vec[2] = lerp(1,_n_vec[0],_strength);
			
			var _n_len = point_distance_3d(0,_n_vec[0],0,_n_vec[1],0,_n_vec[2]);
			
			_normal_grid[# i, j] = [_n_vec[0] / _n_len, _n_vec[1] / _n_len, _n_vec[2] / _n_len];
		}
	}
}