/// @func lower_terrain_border(grid, amount, border_width)
/// @arg grid
/// @arg amount
/// @arg border_width

var _grid = argument[0];
var _amount = argument[1];
var _border_width = argument[2];

var _w = ds_grid_width(_grid);

if (_w <= _border_width*2) return;

var _amount_step = _amount / _border_width;

for (var i=0; i<_border_width; i++) {
	
	// North & South
	for (var j=i; j<_w-i-1; j++) {
		_grid[# j, i] -= _amount_step * (_border_width-i);
		_grid[# j, _w-1-i] -= _amount_step * (_border_width-i);
	}
	
	// West & East
	for (var j=i; j<_w-i; j++) {
		_grid[# i, j] -= _amount_step * (_border_width-i);
		_grid[# _w-1-i, j] -= _amount_step * (_border_width-i);
	}
}