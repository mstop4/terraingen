var _start = current_time;
var _refresh_tex_id = false;

for (var i=0; i<num_textures; i++) {
	if (dirty_list[i]) {
		sprite_delete(spr_list[i]);
		spr_list[i] = sprite_create_from_surface(tex_list[i],0,0,max_tex_size,max_tex_size,false,false,0,0);
		dirty_list[i] = false;
		_refresh_tex_id = true;
	}
}

if (_refresh_tex_id) {
	with (obj_fruit) {
		tex_id = tex_index > -1 ? sprite_get_texture(other.spr_list[tex_index], 0) : -1;
	}
}

print("Surface backup time: ", string(current_time - _start), " ms");