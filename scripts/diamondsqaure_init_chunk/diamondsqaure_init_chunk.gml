/// @func  diamondsquare_init_chunk(height_grid, exec_stack, min, max, chunk_x, chunk_y)
/// @arg   height_grid
/// @arg   exec_stack
/// @arg   start  
/// @arg   range
/// @arg   min
/// @arg   max
/// @arg   chunk_x
/// @arg   chunk_y
/// @arg   chunk_width
/// @arg   chunk_height

var _height_grid = argument[0];
var _exec_stack = argument[1];
var _start = argument[2];
var _range = argument[3];
var _min = argument[4];
var _max = argument[5];
var _chunk_x = argument[6];
var _chunk_y = argument[7];
var _w = argument[8];
var _h = argument[9];

var _seed_min = clamp(_start - _range, _min, _max);
var _seed_max = clamp(_start + _range, _min, _max);

ds_grid_set_region(_height_grid,0,0,_w-1,_h-1,-1);

if (_chunk_x - 1 >= 0) {
	
	_height_grid[# 0, 0] = 
}
_height_grid[# 0, 0] = irandom_range(_seed_min, _seed_max);
_height_grid[# _w-1, 0] = irandom_range(_seed_min, _seed_max);
_height_grid[# 0, _h-1] = irandom_range(_seed_min, _seed_max);
_height_grid[# _w-1, _h-1] = irandom_range(_seed_min, _seed_max);

var _temp_list = ds_list_create();
ds_list_add(_temp_list, 0, 0, _w-1, _h-1, 0);
ds_stack_push(_exec_stack, _temp_list);