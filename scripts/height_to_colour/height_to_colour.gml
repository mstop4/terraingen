/// @arg height_grid
/// @arg colour_grid

var _height_grid = argument[0];
var _colour_grid = argument[1];

var _w = ds_grid_width(_height_grid);
var _h = ds_grid_height(_height_grid);

for (var i=0; i<_w; i++) {
	for (var j=0; j<_h; j++) {
		_colour_grid[# i , j] = make_color_hsv(0,0,_height_grid[# i, j]);
	}
}