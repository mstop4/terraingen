if (state == plant_state.growing) {
	if (growth >= 1) {
		growth = 1;
		state = plant_state.stable;
	}
		
	growth += 0.001;
}