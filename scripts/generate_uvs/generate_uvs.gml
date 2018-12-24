/// @arg uv_grid

var _uv_grid = argument[0];

var _w = ds_grid_width(_uv_grid);
var _h = ds_grid_height(_uv_grid);

for (var i=0; i<_w; i++) {
	for (var j=0; j<_h; j++) {
		_uv_grid[# i, j] = [i / (_w-1), j / (_h-1)];
	}
}