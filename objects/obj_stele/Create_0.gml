phrase = "";
score = 0;
api_evaluate_phrase = -1;

// Transforms
z = 0;
base_translate_vec = [x, y, z];
base_scale_vec = [1, 1, 1];
base_rotate_vec = [0, 0, 0];
base_uv_offset = [0, 0];

text_translate_vec = [x, y, z];
text_rotate_vec = [pi/2, 0, 0];
text_uv_offset = [0, 0];

score_translate_vec = [x, y, z];
score_rotate_vec = [pi/2, 0, 0];
score_uv_offset = [0, 0];

// Texture
tex_surf = surface_create(tex_width, tex_height);
tex_id = surface_get_texture(tex_surf);
tex_buff = buffer_create(tex_width * tex_height * 4, buffer_fast, 1);
draw_stele_tex();
buffer_get_surface(tex_buff, tex_surf, 0, 0, 0);
print("stele tex size: ", buffer_get_size(tex_buff));

// Models
base_model = make_stele_base(s_width/2, s_length/2, s_depth/2, c_silver);
var _uv_split = eff_tex_height * text_area_percent / tex_height;
var _uv_bottom = eff_tex_height / tex_height;
text_model = make_stele_display(s_length * display_scale * text_area_percent, s_width * display_scale, s_depth/2 + 0.001, [0, 0, 1, _uv_split], c_white);
score_model = make_stele_display(s_length * display_scale * (1-text_area_percent), s_width * display_scale, s_depth/2 + 0.001, [0, _uv_split, 1, _uv_bottom], c_white);

text_uv_max = [1, _uv_split];
score_uv_max = [1, 1];

shd_display_get_uniforms();