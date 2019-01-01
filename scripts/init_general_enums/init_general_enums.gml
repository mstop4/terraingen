enum vec_op {
	add,
	subtract
}

enum plant_state {
	stable,
	growing,
	felled
}

enum connection_state {
	disconnected,
	connecting,
	connected
}

enum region_ids {
	duplicate = -1,
	rhyme,
	preceed,
	follow,
	trigger
}