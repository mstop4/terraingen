/// @func  diamondsquare_init(height_buffer, map_width, exec_stack, min, max)
/// @arg   height_buffer
/// @arg   map_width
/// @arg   exec_stack
/// @arg   min  
/// @arg   max  

var _height_buffer = argument[0];
var _w = argument[1];
var _exec_stack = argument[2];
var _min = argument[3];
var _max = argument[4];

var _size = buffer_get_size(_height_buffer);
buffer_fill(_height_buffer,0,buffer_f32,-1,_size);

buffer_poke(_height_buffer,get_address(0,0,_w,4,0),buffer_f32,irandom_range(_min, _max));
buffer_poke(_height_buffer,get_address(_w-1,0,_w,4,0),buffer_f32,irandom_range(_min, _max));
buffer_poke(_height_buffer,get_address(0,_w-1,_w,4,0),buffer_f32,irandom_range(_min, _max));
buffer_poke(_height_buffer,get_address(_w-1,_w-1,_w,4,0),buffer_f32,irandom_range(_min, _max));

var _temp_list = ds_list_create();
ds_list_add(_temp_list, 0, 0, _w-1, _w-1, 0);
ds_stack_push(_exec_stack, _temp_list);