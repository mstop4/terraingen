if (!surface_exists(out_surf)) {
	out_surf = surface_create(map_side_length, map_side_length);
	grid_to_surface(terrain_map, out_surf);
}