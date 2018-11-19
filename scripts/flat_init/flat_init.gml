/// @func  diamondsquare_init(height_grid, value)
/// @arg   height_grid 
/// @arg   value

var _height_grid = argument[0];
var _colour_grid = argument[1];
var _value = argument[2];

var _w = ds_grid_width(_height_grid);
var _h = ds_grid_height(_height_grid);

ds_grid_set_region(_height_grid,0,0,_w,_h,_value);

for (var i=0; i<_w; i++) {
	for (var j=0; j<_h; j++) {
		_colour_grid[# i, j] = make_color_rgb(irandom_range(0,255), irandom_range(0,255), irandom_range(0,255));
	}
}