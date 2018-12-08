enum device {
	keyboard,
	mouse,
	gamepad
}

enum action {
	up,
	down,
	left,
	right,
	
	pause,
	fullscreen,
	quit,
	
	regen_terrain,
	regrow_trees,
	plant_tree,
	
	light_incr_theta,
	light_decr_theta,
	light_incr_phi,
	light_decr_phi,	
	
	max_actions
}

enum vec_op {
	add,
	subtract
}

enum plant_state {
	stable,
	growing,
	felled
}