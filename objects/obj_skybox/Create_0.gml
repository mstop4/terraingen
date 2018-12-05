side_models = make_skybox();
scale = obj_MDP.far_dist;

tex_id[0] = sprite_get_texture(top_tex, 0);
tex_id[1] = sprite_get_texture(bottom_tex, 0);
tex_id[2] = sprite_get_texture(left_tex, 0);
tex_id[3] = sprite_get_texture(right_tex, 0);
tex_id[4] = sprite_get_texture(front_tex, 0);
tex_id[5] = sprite_get_texture(back_tex, 0);