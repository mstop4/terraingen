if (state == plant_state.growing) {
	growth += growth_rate * delta_time / global.dt_scale;
	
	if (growth >= 1) {
		growth = 1;
		trunk_scale_vec[0] = 1;
		trunk_scale_vec[1] = 1;
		trunk_scale_vec[2] = 1;
		state = plant_state.stable;
		
		for (var i=0; i<num_fruit; i++) {
			fruit[i].visible = true;
			fruit[i].state = plant_state.growing;
		}
	}
	
	else {
		trunk_scale_vec[0] = min(1, growth / stage_trans);
		trunk_scale_vec[1] = trunk_scale_vec[0];
		trunk_scale_vec[2] = trunk_scale_vec[0];
		
		crown_translate_vec[2] = real_z+(trunk_length+crown_half_width)*trunk_scale_vec[0]-0.1;
		
		if (growth < stage_trans) {
			crown_scale_vec[0] = growth / stage_trans * xy_scale_stage[0]; 
			crown_scale_vec[1] = crown_scale_vec[0];
			crown_scale_vec[2] = growth / stage_trans * z_scale_stage[0];
		}
		
		else {
			crown_scale_vec[0] = max(xy_scale_stage[0], (growth - stage_trans) * (1/(1-stage_trans)) * (xy_scale_stage[1]-xy_scale_stage[0]) + xy_scale_stage[0]);
			crown_scale_vec[1] = crown_scale_vec[0];
			crown_scale_vec[2] = min(z_scale_stage[0], (growth - stage_trans) * (1/(1-stage_trans)) * (z_scale_stage[1]-z_scale_stage[0]) + z_scale_stage[0]);
		}
	}
}

var _dir_from_player = point_direction(obj_player.my_cam.x, obj_player.my_cam.y, trunk_translate_vec[0], trunk_translate_vec[1]);
var _dist_from_player = point_distance_3d(obj_player.my_cam.x, obj_player.my_cam.y, obj_player.my_cam.z, trunk_translate_vec[0], trunk_translate_vec[1], real_z);

can_draw = _dist_from_player <= obj_MDP.far_dist + draw_threshold_dist && 
		   abs(angle_difference(obj_player.direction, _dir_from_player)) <= cull_halfangle;

//yaw += 0.01;