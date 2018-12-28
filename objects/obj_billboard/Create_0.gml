direction = 180;
z = 0;
translate_vec = [0, 0, 0];
scale_vec = [1, 1, 1];
rotate_vec = [pi/2, 0, 0];

tex_id = sprite_get_texture(sprite_index, image_index);
tex_uv_offset = [0, 0];

model = vertex_create_buffer();
update_sprite(model, 1, 1, c_white, sprite_get_uvs(sprite_index, image_index));