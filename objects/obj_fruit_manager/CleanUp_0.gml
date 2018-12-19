for (var i=0; i<num_textures; i++) {
	surface_free(tex_list[i]);
	sprite_delete(spr_list[i]);
	ds_grid_destroy(occupancy_list[| i]);
}


ds_list_destroy(occupancy_list);