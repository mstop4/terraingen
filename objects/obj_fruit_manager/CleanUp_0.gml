for (var i=0; i<num_textures; i++) {
	sprite_delete(tex_list[i]);
	ds_grid_destroy(occupancy_list[| i]);
}


ds_list_destroy(occupancy_list);