/// @arg uv_grid

var _uv_grid = argument[0];

var _w = ds_grid_width(_uv_grid)-1;
var _h = ds_grid_height(_uv_grid)-1;

for (var i=0; i<_w; i++) {
	for (var j=0; j<_h; j++) {
		_uv_grid[# i, j] = [i / _w, j / _h];
	}
}