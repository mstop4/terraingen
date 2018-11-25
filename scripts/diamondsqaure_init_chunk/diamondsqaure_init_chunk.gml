/// @func  diamondsquare_init_chunks(height_grids, exec_stack, min, max, map_width, map_height, chunk_width, chunk_height)
/// @arg   height_grids
/// @arg   exec_stack
/// @arg   start  
/// @arg   range
/// @arg   min
/// @arg   max
/// @arg   map_width
/// @arg   map_height
/// @arg   chunk_width
/// @arg   chunk_height

var _height_grids = argument[0];
var _exec_stack = argument[1];
var _start = argument[2];
var _range = argument[3];
var _min = argument[4];
var _max = argument[5];
var _map_width = argument[6];
var _map_height = argument[7];
var _chunk_width = argument[8];
var _chunk_height = argument[9];

var _seed_min = clamp(_start - _range, _min, _max);
var _seed_max = clamp(_start + _range, _min, _max);

for (var i=0; i<_map_width; i++) {
	for (var j=0; j<_map_height; j++) {
		ds_grid_set_region(_height_grids[#i, ,0,0,_w-1,_h-1,-1);
	}
}







_height_grid[# 0, 0] = irandom_range(_seed_min, _seed_max);
_height_grid[# _w-1, 0] = irandom_range(_seed_min, _seed_max);
_height_grid[# 0, _h-1] = irandom_range(_seed_min, _seed_max);
_height_grid[# _w-1, _h-1] = irandom_range(_seed_min, _seed_max);

var _temp_list = ds_list_create();
ds_list_add(_temp_list, 0, 0, _w-1, _h-1, 0);
ds_stack_push(_exec_stack, _temp_list);