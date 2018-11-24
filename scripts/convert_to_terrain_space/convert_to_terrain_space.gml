/// @func convert_to_terrain_space(x, y, z, terrain_id);

var _x = argument[0];
var _y = argument[1];
var _z = argument[2];
var _terrain_id = argument[3];

return [_x * _terrain_id.xscale + _terrain_id.x, _y * _terrain_id.yscale + _terrain_id.y, _z * _terrain_id.zscale + _terrain_id.z];