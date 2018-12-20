phrase = "";
api_evaluate_phrase = -1;

z = 0;
translate_vec = [x, y, z];
scale_vec = [1, 1, 1];
rotate_vec = [0, 0, 0];
v_offset = 0;

tex_id = sprite_get_texture(spr_stele, 0);
model = make_stele(half_width, half_length, half_depth, c_white);

shd_stele_get_uniforms();