/// @description restore texture

if (!surface_exists(tex_surf)) {
	tex_surf = surface_create(tex_width, tex_height);
	buffer_set_surface(tex_buff, tex_surf, 0, 0, 0);
	tex_id = surface_get_texture(tex_surf);
}


