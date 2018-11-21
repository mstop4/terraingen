/// @func  diamondsquare_init(height_grid, exec_stack, min, max)
/// @arg   height_grid
/// @arg   exec_stack
/// @arg   min  
/// @arg   max  

var _height_grid = argument[0];
var _exec_stack = argument[1];
var _min = argument[2];
var _max = argument[3];

var _w = ds_grid_width(_height_grid);
var _h = ds_grid_height(_height_grid);

ds_grid_set_region(_height_grid,0,0,_w-1,_h-1,-1);

_height_grid[# 0, 0] = irandom_range(_min, _max);
_height_grid[# _w-1, 0] = irandom_range(_min, _max);
_height_grid[# 0, _h-1] = irandom_range(_min, _max);
_height_grid[# _w-1, _h-1] = irandom_range(_min, _max);

var _temp_list = ds_list_create();
ds_list_add(_temp_list, 0, 0, _w-1, _h-1, 0);
ds_stack_push(_exec_stack, _temp_list);