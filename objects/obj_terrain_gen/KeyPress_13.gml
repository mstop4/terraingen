diamondsquare_init(terrain_map, exec_stack, map_side_length, min_value, max_value);

while (terrain_done < 1) {
	terrain_done = diamondsquare_step(terrain_map, exec_stack, min_value, max_value, variance, decay);
}
