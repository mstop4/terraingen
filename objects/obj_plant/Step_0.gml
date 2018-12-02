if (state == tree_state.growing) {
	if (growth >= stem_sections) {
		growth = stem_sections;
		state = tree_state.stable;
	}
		
	growth += 0.02;
}