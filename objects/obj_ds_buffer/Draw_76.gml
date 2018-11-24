if (!surface_exists(terrain_surf)) {
	terrain_surf = surface_create(map_side_length, map_side_length);
	height_buff_to_surface(terrain_map, map_side_length, terrain_surf);
}