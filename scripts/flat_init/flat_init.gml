/// @func  diamondsquare_init(grid, value)
/// @arg   grid 
/// @arg   value

var _grid = argument[0];
var _value = argument[1];

var _w = ds_grid_width(_grid);
var _h = ds_grid_height(_grid);

ds_grid_set_region(_grid,0,0,_w,_h,_value);