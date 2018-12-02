if (state == tree_state.growing) {
	if (growth >= 1) {
		growth = 1;
		state = tree_state.stable;
	}
		
	growth += 0.001;
}