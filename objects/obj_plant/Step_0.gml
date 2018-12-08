if (state == plant_state.growing) {
	if (growth >= stem_sections) {
		growth = stem_sections;
		state = plant_state.stable;
	}
		
	growth += 0.02;
}