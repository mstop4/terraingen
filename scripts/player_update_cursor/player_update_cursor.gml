var _terrain_id = obj_terrain.id;

var _x1 = cursor_x * _terrain_id.xscale + _terrain_id.x;
var _y1 = cursor_y * _terrain_id.yscale + _terrain_id.y;
var _x2 = (cursor_x+1) * _terrain_id.xscale + _terrain_id.x;
var _y2 = (cursor_y+1) * _terrain_id.yscale + _terrain_id.y;

var _tl_z = _terrain_id.terrain_map[# cursor_x, cursor_y] * _terrain_id.zscale + _terrain_id.z + cursor_height;
var _tr_z = _terrain_id.terrain_map[# cursor_x+1, cursor_y] * _terrain_id.zscale + _terrain_id.z + cursor_height;
var _bl_z = _terrain_id.terrain_map[# cursor_x, cursor_y+1] * _terrain_id.zscale + _terrain_id.z + cursor_height;
var _br_z = _terrain_id.terrain_map[# cursor_x+1, cursor_y+1] * _terrain_id.zscale + _terrain_id.z + cursor_height;

if (cursor_model != -1)
	vertex_delete_buffer(cursor_model);

cursor_model = make_cursor(_x1, _y1, _x2, _y2, _tl_z, _tr_z, _bl_z, _br_z, c_white);