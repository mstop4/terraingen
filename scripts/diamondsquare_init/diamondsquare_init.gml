/// @func  diamondsquare_init(grid, min, max)
/// @arg   grid 
/// @arg   exec_queue
/// @arg   min  
/// @arg   max  

var _grid = argument[0];
var _exec_queue = argument[1];
var _min = argument[2];
var _max = argument[3];

var _w = ds_grid_width(_grid);
var _h = ds_grid_height(_grid);

ds_grid_set_region(_grid,0,0,_w-1,_h-1,-1);

_grid[# 0, 0] = irandom_range(_min, _max);
_grid[# _w-1, 0] = irandom_range(_min, _max);
_grid[# 0, _h-1] = irandom_range(_min, _max);
_grid[# _w-1, _h-1] = irandom_range(_min, _max);

var _temp_list = ds_list_create();
ds_list_add(_temp_list, 0, 0, _w-1, _h-1, 0);
ds_queue_enqueue(_exec_queue, _temp_list);