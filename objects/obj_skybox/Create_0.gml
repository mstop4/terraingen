tex_id[0] = sprite_get_texture(texture, top_index);
tex_id[1] = sprite_get_texture(texture, bottom_index);
tex_id[2] = sprite_get_texture(texture, left_index);
tex_id[3] = sprite_get_texture(texture, right_index);
tex_id[4] = sprite_get_texture(texture, front_index);
tex_id[5] = sprite_get_texture(texture, back_index);

tex_uv[0] = sprite_get_uvs(texture, top_index);
tex_uv[1] = sprite_get_uvs(texture, bottom_index);
tex_uv[2] = sprite_get_uvs(texture, left_index);
tex_uv[3] = sprite_get_uvs(texture, right_index);
tex_uv[4] = sprite_get_uvs(texture, front_index);
tex_uv[5] = sprite_get_uvs(texture, back_index);

side_models = make_skybox();
scale = obj_MDP.far_dist;