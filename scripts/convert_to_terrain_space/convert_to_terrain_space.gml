/// @func convert_to_terrain_space(x, y, z, xy_scale, terrain_id);
/// @arg x
/// @arg y
/// @arg z
/// @arg xy_scale
/// @arg terrain_id

var _xy_scale = argument[3];
var _x = argument[0] / _xy_scale;
var _y = argument[1] / _xy_scale;
var _z = argument[2];
var _terrain_id = argument[4];

return [_x * _terrain_id.xscale + _terrain_id.x, _y * _terrain_id.yscale + _terrain_id.y, _z * _terrain_id.zscale + _terrain_id.z];