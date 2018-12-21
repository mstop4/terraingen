phrase = "";
api_evaluate_phrase = -1;

z = 0;
base_translate_vec = [x, y, z];
base_scale_vec = [1, 1, 1];
base_rotate_vec = [0, 0, 0];
base_uv_offset = [0, 0];

front_text_translate_vec = [x, y, z];
front_text_rotate_vec = [pi/2, 0, 0];
back_text_translate_vec = [x, y, z];
back_text_rotate_vec = [-pi/2, 0, 0];
text_uv_offset = [0, 0];

//tex_surf = surface_create(tex_width, tex_height);
//tex_id = sprite_get_texture(spr_stele2,0);
base_model = make_stele(half_width, half_length, half_depth, c_silver);
text_model = make_plane(half_length * 2 * display_scale * text_area_percent, half_width * 2 * display_scale, c_black);

shd_stele_get_uniforms();