for (var i=0; i<num_textures; i++) {
	surface_free(tex_list[i]);
	buffer_delete(buff_list[i]);
	ds_grid_destroy(occupancy_list[| i]);
}


ds_list_destroy(occupancy_list);