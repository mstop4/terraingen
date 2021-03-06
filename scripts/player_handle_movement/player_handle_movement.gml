direction = wrap(direction - (window_get_width() / 2 - window_mouse_get_x()) * obj_MCP.mouse_sens_hor, 0, 360);
pitch = clamp(pitch - (window_get_height() / 2 - window_mouse_get_y()) * obj_MCP.mouse_sens_ver,-max_pitch,max_pitch);

var _v_input = obj_input.button_held[action.back] - obj_input.button_held[action.front];
var _h_input = obj_input.button_held[action.right] - obj_input.button_held[action.left];

if (_v_input != 0 || _h_input != 0) {
	var _move_dir = point_direction(_v_input,_h_input,0,0) + direction;
	var _spd_x = lengthdir_x(my_speed,_move_dir) * delta_time / global.dt_scale;
	var _spd_y = lengthdir_y(my_speed,_move_dir) * delta_time / global.dt_scale;

	if (!place_meeting(x + _spd_x, y, cls_solidObj)) {
		x = clamp(x + _spd_x, obj_terrain.map_border * global.xy_scale, (obj_terrain.map_side_length-1-obj_terrain.map_border) * global.xy_scale);
	}
	
	if (!place_meeting(x, y + _spd_y, cls_solidObj)) {	
		y = clamp(y + _spd_y, obj_terrain.map_border * global.xy_scale, (obj_terrain.map_side_length-1-obj_terrain.map_border) * global.xy_scale);
	}
	
	z = blin_z_pos(x, y, global.xy_scale, obj_terrain.terrain_map);
		
	// View bobbing
	view_bob_delta_dt = view_bob_delta * delta_time / global.dt_scale;
	view_bob_t = view_bob_t + view_bob_delta_dt;
	if (view_bob_t > 360) {
		view_bob_t -= 360;
	}
		
	if (!is_stepping && (view_bob_t+90) mod 180 <= view_bob_delta_dt) {
		is_stepping = true;
		audio_play_sound(snd_step,0,false);
	} else if (is_stepping && view_bob_t mod 180 > view_bob_delta_dt) {
		is_stepping = false;
	}
		
	view_bob_z = abs(dcos(view_bob_t)) * view_bob_amount;
}
	
else {
	// View bobbing
	if (abs(view_bob_t mod pi) <= view_bob_delta*4) {
		view_bob_t = 0;
		view_bob_z = 0.1;
	} 
	else {
		view_bob_t = view_bob_t + view_bob_delta*4;
		if (view_bob_t > 360) {
			view_bob_t -= 360;
		}
		view_bob_z = abs(dcos(view_bob_t)) * view_bob_amount;
	}
}