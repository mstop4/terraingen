for (var i=0; i<num_textures; i++) {
	if (!surface_exists(tex_list[i])) {
		tex_list[i] = surface_create(max_tex_size, max_tex_size);
		buffer_set_surface(buff_list[i], tex_list[i], 0, 0, 0);
		print("\nsurface ", string(i), " restored");
	}
}

with (obj_fruit) {
	tex_id = tex_index > -1 ? surface_get_texture(other.tex_list[tex_index]) : -1;
}