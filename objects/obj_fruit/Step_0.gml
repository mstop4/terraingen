if (state == plant_state.growing) {
	
	growth += 0.002;
	
	if (growth >= 1) {
		growth = 1;
		state = plant_state.stable;
		alarm[0] = 30;
	}
}

sway_t = sway_t + sway_t_delta mod (2 * pi);
sway_angle = sin(sway_t) * sway_half_angle;

var _dir_from_player = point_direction(obj_player.my_cam.x, obj_player.my_cam.y, real_x, real_y);
var _dist_from_player = point_distance_3d(obj_player.my_cam.x, obj_player.my_cam.y, obj_player.my_cam.z, real_x, real_y, real_z);

can_draw = _dist_from_player <= obj_MDP.far_dist + draw_threshold_dist && 
		   abs(angle_difference(obj_player.direction, _dir_from_player)) <= cull_halfangle;