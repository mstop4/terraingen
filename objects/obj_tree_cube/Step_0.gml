if (state == plant_state.growing) {
	growth += 0.002;
	
	if (growth >= 1) {
		growth = 1;
		state = plant_state.stable;
		
		for (var i=0; i<num_fruit; i++) {
			fruit[i].visible = true;
			fruit[i].state = plant_state.growing;
		}
	}
}

var _dir_from_player = point_direction(obj_player.my_cam.x, obj_player.my_cam.y, real_x, real_y);
var _dist_from_player = point_distance_3d(obj_player.my_cam.x, obj_player.my_cam.y, obj_player.my_cam.z, real_x, real_y, real_z);

can_draw = _dist_from_player <= obj_MDP.far_dist + draw_threshold_dist && 
		   abs(angle_difference(obj_player.direction, _dir_from_player)) <= cull_halfangle;