terrain_done = 0;
ds_grid_set_region(colour_map,0,0,map_side_length,map_side_length,c_white);
ds_grid_set_region(terrain_map,0,0,map_side_length,map_side_length,127);
ds_grid_set_region(normal_map,0,0,map_side_length,map_side_length,[0,1,0]);

vertex_delete_buffer(terrain_model);
terrain_model = terrain_to_solid_model(terrain_map, normal_map, colour_map);

with (obj_camera) {
	z = blin_z_pos(obj_terrain.terrain_map, other.map_side_length div 2, other.map_side_length div 2);
}

terrain_done = 1;
