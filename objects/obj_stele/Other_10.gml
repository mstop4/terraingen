/// @description init transforms

x = obj_terrain.map_side_length / 2 * global.xy_scale;
y = (obj_terrain.map_side_length / 2 + 1) * global.xy_scale;
z = blin_z_pos(x, y, global.xy_scale, obj_terrain.terrain_map);

base_translate_vec = convert_to_terrain_space(x, y, z, global.xy_scale, obj_terrain_flat);
base_translate_vec[2] += s_length/2;

// Math!
text_translate_vec[0] = base_translate_vec[0];
text_translate_vec[1] = base_translate_vec[1];
text_translate_vec[2] = base_translate_vec[2] + display_scale * -s_length * (text_area_percent - 1) / 2;

score_translate_vec[0] = base_translate_vec[0];
score_translate_vec[1] = base_translate_vec[1];
score_translate_vec[2] = base_translate_vec[2] + display_scale * -s_length * text_area_percent / 2;