phrase = "";
api_evaluate_phrase = -1;

z = 0;
translate_vec = [x, y, z];
scale_vec = [1, 1, 1];
rotate_vec = [0, 0, 0];
v_offset = 0;

//tex_surf = surface_create(tex_width, tex_height);
tex_id = sprite_get_texture(spr_stele,0);
model = obj_to_model("stele.obj");

shd_stele_get_uniforms();