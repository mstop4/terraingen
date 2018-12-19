if (state == plant_state.growing) {
	
	growth += growth_rate * delta_time / global.dt_scale;
	
	if (growth >= 1) {
		scale_vec[0] = 1;
		scale_vec[1] = 1;
		scale_vec[2] = 1;
		growth = 1;
		state = plant_state.stable;
		alarm[0] = 30;
	}
	
	else {
		if (growth < stage_trans) {
			scale_vec[0] = growth / stage_trans * xy_scale_stage[0];
			scale_vec[1] = scale_vec[0];
			scale_vec[2] = growth / stage_trans * z_scale_stage[0];
		}
		else {
			scale_vec[0] = min(xy_scale_stage[0], (growth - stage_trans) * (1/(1-stage_trans)) * (xy_scale_stage[1]-xy_scale_stage[0]) + xy_scale_stage[0]);
			scale_vec[1] = scale_vec[0];			
			scale_vec[2] = max(z_scale_stage[0], (growth - stage_trans) * (1/(1-stage_trans)) * (z_scale_stage[1]-z_scale_stage[0]) + z_scale_stage[0]);
		}
	}
}

sway_t = sway_t + sway_t_delta mod (2 * pi);
rotate_vec[0] = sin(sway_t) * sway_half_angle_rad;