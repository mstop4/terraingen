var _xyz = convert_to_terrain_space(x, y, 0, global.xy_scale, obj_terrain);
real_x = _xyz[0];
real_y = _xyz[1];

var _data = fruit_add_texture(word);
tex_index = _data[0];
var _uvs = [_data[1], _data[2], _data[3], _data[4]];

model = make_fruit(length, width, c_white, _uvs);