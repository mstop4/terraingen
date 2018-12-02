if (obj_input.button_pressed[action.regrow_trees]) {
	with (obj_tree_cube) {
		state = tree_state.growing;
		growth = 0;
	}
}