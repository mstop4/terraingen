var _xyz = convert_to_terrain_space(x, y, 0, global.xy_scale, obj_terrain);
translate_vec[0] = _xyz[0];
translate_vec[1] = _xyz[1];

var _data = fruit_add_texture(word);
tex_index = _data[0];
tex_slot[0] = _data[1];
tex_slot[1] = _data[2];
var _uvs = [_data[3], _data[4], _data[5], _data[6]];

model = make_fruit(length, width, c_white, _uvs);