/// @func create_alpha_map(alpha_grid, border_width)
/// @arg alpha_grid
/// @arg border_width

var _alpha_grid = argument[0];
var _border_width = argument[1];

var _w = ds_grid_width(_alpha_grid);

if (_w <= _border_width*2) return;

var _amount_step = 1 / _border_width;

for (var i=0; i<=_border_width; i++) {
	ds_grid_set_region(_alpha_grid, i, i, _w-i-1, _w-i-1, 1 - _amount_step * (_border_width-i));
}