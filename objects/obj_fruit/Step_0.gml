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