/// @func  diamondsquare_step(grid, exec_stack, min, max, variance)
/// @arg   grid       
/// @arg   exec_stack  
/// @arg   min        
/// @arg   max        
/// @arg   variance   

var _grid = argument[0];
var _exec_stack = argument[1];
var _min = argument[2];
var _max = argument[3];
var _variance = argument[4];

if (ds_stack_empty(_exec_stack))
	return 1;

var _cur_step = ds_stack_pop(_exec_stack);

var _left = _cur_step[| 0];
var _top = _cur_step[| 1];
var _right = _cur_step[| 2];
var _bottom = _cur_step[| 3];

ds_list_destroy(_cur_step);

// Exit condition
if (_right - _left < 2 || _bottom - _top < 2)
	return -1; 

var _mid_x = floor((_left + _right) / 2);
var _mid_y = floor((_top + _bottom) / 2);

var _tl_val = _grid[# _left, _top];
var _tr_val = _grid[# _right, _top];
var _bl_val = _grid[# _left, _bottom];
var _br_val = _grid[# _right, _bottom];

// Diamond step
_grid[# _mid_x, _mid_y] = clamp(mean(_tl_val, _tr_val, _bl_val, _br_val)
						  + irandom_range(-_variance, _variance), _min, _max);
var _mid_val = _grid[# _mid_x, _mid_y];


//Square Step
_grid[# _mid_x, _top] = clamp(mean(_tl_val, _tr_val, _mid_val)
						+ irandom_range(-_variance, _variance), _min, _max);
						
_grid[# _mid_x, _bottom] = clamp(mean(_bl_val, _br_val, _mid_val)
						   + irandom_range(-_variance, _variance), _min, _max);
						   
_grid[# _left, _mid_y] = clamp(mean(_tl_val, _bl_val, _mid_val)
						 + irandom_range(-_variance, _variance), _min, _max);
						 
_grid[# _right, _mid_y] = clamp(mean(_tr_val, _br_val, _mid_val)
						   + irandom_range(-_variance, _variance), _min, _max);
						
var _temp_list;

_temp_list = ds_list_create();
ds_list_add(_temp_list, _left, _top, _mid_x, _mid_y);
ds_stack_push(_exec_stack, _temp_list);

_temp_list = ds_list_create();
ds_list_add(_temp_list, _mid_x, _top, _right, _mid_y);
ds_stack_push(_exec_stack, _temp_list);

_temp_list = ds_list_create();
ds_list_add(_temp_list, _left, _mid_y, _mid_x, _bottom);
ds_stack_push(_exec_stack, _temp_list);

_temp_list = ds_list_create();
ds_list_add(_temp_list, _mid_x, _mid_y, _right, _bottom);
ds_stack_push(_exec_stack, _temp_list);

return 0;