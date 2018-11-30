/// @func  mark_tree_map(list, cell_num, map_width, buffer)
/// @arg   list      
/// @arg   cell_num  
/// @arg   map_width 
/// @arg   spacing    

var _list = argument[0];
var _cell_num = argument[1];
var _map_width = argument[2];
var _spacing = argument[3];

var _cell_x = _cell_num mod _map_width;
var _cell_y = _cell_num div _map_width;

var _min_x = clamp(_cell_x - _spacing, 0, _map_width-1);
var _max_x = clamp(_cell_x + _spacing, 0, _map_width-1);
var _min_y = clamp(_cell_y - _spacing, 0, _map_width-1);
var _max_y = clamp(_cell_y + _spacing, 0, _map_width-1);

for (var i=_min_x; i<=_max_x; i++) {
	for (var j=_min_y; j<=_max_y; j++) {
		var _cur_cell = (_min_y + j) * _map_width + _min_x + i;
		ds_list_delete(_list, ds_list_find_index(_list,_cur_cell));
	}
}