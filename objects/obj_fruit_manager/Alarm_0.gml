var _start = current_time;
var _refresh_tex_id = false;

for (var i=0; i<num_textures; i++) {
	if (dirty_list[i]) {
		buffer_get_surface(buff_list[i], tex_list[i], 0, 0, 0);
		dirty_list[i] = false;
		_refresh_tex_id = true;
	}
}

if (_refresh_tex_id) {
	with (obj_fruit) {
		tex_id = tex_index > -1 ? surface_get_texture(other.tex_list[tex_index]) : -1;
	}
}

print("Surface backup time: ", string(current_time - _start), " ms");