/// @func  diamondsquare_step(height_buffer, exec_stack, min, max, variance)
/// @arg   height_buffer       
/// @arg   width
/// @arg   exec_stack  
/// @arg   min        
/// @arg   max        
/// @arg   variance   
/// @arg   decay

var _height_buffer = argument[0];
var _w = argument[1];
var _exec_stack = argument[2];
var _min = argument[3];
var _max = argument[4];
var _variance = argument[5];
var _decay = argument[6];

if (ds_stack_empty(_exec_stack))
	return 1;

var _data = ds_stack_pop(_exec_stack);

var _left = _data[| 0];
var _top = _data[| 1];
var _right = _data[| 2];
var _bottom = _data[| 3];
var _cur_step = _data[| 4];

ds_list_destroy(_data);

// Exit condition
if (_right - _left < 2 || _bottom - _top < 2)
	return -1; 

var _mid_x = floor((_left + _right) / 2);
var _mid_y = floor((_top + _bottom) / 2);

var _tl_val = buffer_peek(_height_buffer,get_address(_left, _top, _w, 4, 0), buffer_f32);
var _tr_val = buffer_peek(_height_buffer,get_address(_right, _top, _w, 4, 0), buffer_f32);
var _bl_val = buffer_peek(_height_buffer,get_address(_left, _bottom, _w, 4, 0), buffer_f32);
var _br_val = buffer_peek(_height_buffer,get_address(_right, _bottom, _w, 4, 0), buffer_f32);

// Diamond step
if (buffer_peek(_height_buffer,get_address(_mid_x, _mid_y, _w, 4, 0), buffer_f32) == -1) {
	buffer_poke(_height_buffer,get_address(_mid_x, _mid_y, _w, 4, 0), buffer_f32, clamp(mean(_tl_val, _tr_val, _bl_val, _br_val)
							  + (irandom_range(-_variance, _variance) * 1/power(_decay, _cur_step)), _min, _max));
}

var _mid_val = buffer_peek(_height_buffer,get_address(_mid_x, _mid_y, _w, 4, 0), buffer_f32);


//Square Step
if (buffer_peek(_height_buffer,get_address(_mid_x, _top, _w, 4, 0), buffer_f32) == -1) {
	buffer_poke(_height_buffer,get_address(_mid_x, _top, _w, 4, 0), buffer_f32, clamp(mean(_tl_val, _tr_val, _bl_val, _br_val)
							  + (irandom_range(-_variance, _variance) * 1/power(_decay, _cur_step)), _min, _max));
}
			
if (buffer_peek(_height_buffer,get_address(_mid_x, _bottom, _w, 4, 0), buffer_f32) == -1) {
	buffer_poke(_height_buffer,get_address(_mid_x, _bottom, _w, 4, 0), buffer_f32, clamp(mean(_tl_val, _tr_val, _bl_val, _br_val)
							  + (irandom_range(-_variance, _variance) * 1/power(_decay, _cur_step)), _min, _max));
}

if (buffer_peek(_height_buffer,get_address(_left, _mid_y, _w, 4, 0), buffer_f32) == -1) {
	buffer_poke(_height_buffer,get_address(_left, _mid_y, _w, 4, 0), buffer_f32, clamp(mean(_tl_val, _tr_val, _bl_val, _br_val)
							  + (irandom_range(-_variance, _variance) * 1/power(_decay, _cur_step)), _min, _max));
}

if (buffer_peek(_height_buffer,get_address(_right, _mid_y, _w, 4, 0), buffer_f32) == -1) {
	buffer_poke(_height_buffer,get_address(_right, _mid_y, _w, 4, 0), buffer_f32, clamp(mean(_tl_val, _tr_val, _bl_val, _br_val)
							  + (irandom_range(-_variance, _variance) * 1/power(_decay, _cur_step)), _min, _max));
}
						
var _temp_list;

_temp_list = ds_list_create();
ds_list_add(_temp_list, _left, _top, _mid_x, _mid_y, _cur_step+1);
ds_stack_push(_exec_stack, _temp_list);

_temp_list = ds_list_create();
ds_list_add(_temp_list, _mid_x, _top, _right, _mid_y, _cur_step+1);
ds_stack_push(_exec_stack, _temp_list);

_temp_list = ds_list_create();
ds_list_add(_temp_list, _left, _mid_y, _mid_x, _bottom, _cur_step+1);
ds_stack_push(_exec_stack, _temp_list);

_temp_list = ds_list_create();
ds_list_add(_temp_list, _mid_x, _mid_y, _right, _bottom, _cur_step+1);
ds_stack_push(_exec_stack, _temp_list);

return 0;