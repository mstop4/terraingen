/// @arg grid
/// @arg x
/// @arg y

var _grid = argument[0];
var _x = argument[1];
var _y = argument[2];

var _floor_x = floor(_x);
var _ceil_x = ceil(_x);
var _floor_y = floor(_y);
var _ceil_y = ceil(_y);

var _tl_point = _grid[# _floor_x, _floor_y];
var _tr_point = _grid[# _ceil_x, _floor_y];
var _bl_point = _grid[# _floor_x, _ceil_y];
var _br_point = _grid[# _ceil_x, _ceil_y];

var _t_x = _ceil_x != _floor_x ? (_x - _floor_x) / (_ceil_x - _floor_x) : 0;
var _t_y = _ceil_y != _floor_y ? (_y - _floor_y) / (_ceil_y - _floor_y) : 0;

var _top_lerp = lerp(_tl_point, _tr_point, _t_x);
var _bottom_lerp = lerp(_bl_point, _br_point, _t_x);

return lerp(_top_lerp, _bottom_lerp, _t_y);