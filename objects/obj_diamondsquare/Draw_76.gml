if (!surface_exists(terrain_surf)) {
	terrain_surf = surface_create(chunk_side_length, chunk_side_length);
	height_grid_to_surface(terrain_map, terrain_surf);
}

if (!surface_exists(normal_surf)) {
	normal_surf = surface_create(chunk_side_length, chunk_side_length);
	height_grid_to_surface(normal_map, normal_surf);
}