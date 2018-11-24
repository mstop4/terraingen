if (window_has_focus() && !obj_MCP.paused) {
	direction = wrap(direction - (window_get_width() / 2 - window_mouse_get_x()) * obj_MCP.mouse_sens_hor, 0, 360);
	pitch = clamp(pitch - (window_get_height() / 2 - window_mouse_get_y()) * obj_MCP.mouse_sens_ver,-90,90);
}

var _v_input = obj_input.button_held[action.down] - obj_input.button_held[action.up];
var _h_input = obj_input.button_held[action.right] - obj_input.button_held[action.left];

if (_v_input != 0 || _h_input != 0) {
	var _move_dir = point_direction(_v_input,_h_input,0,0) + direction;
	var _spd_x = lengthdir_x(my_speed,_move_dir);
	var _spd_y = lengthdir_y(my_speed,_move_dir);

	x = clamp(x + _spd_x, 0, obj_terrain.map_side_length-1);
	y = clamp(y + _spd_y, 0, obj_terrain.map_side_length-1);
	z = blin_z_pos(x, y, obj_terrain.terrain_map);
}