x = obj_terrain.map_side_length / 2 * global.xy_scale;
y = (obj_terrain.map_side_length / 2 + 1) * global.xy_scale;
z = blin_z_pos(x, y, global.xy_scale, obj_terrain.terrain_map);

base_translate_vec = convert_to_terrain_space(x, y, z, global.xy_scale, obj_terrain_flat);
base_translate_vec[2] += half_length;

// Math!
front_text_translate_vec[0] = base_translate_vec[0];
front_text_translate_vec[1] = base_translate_vec[1] - half_depth - 0.01;
front_text_translate_vec[2] = base_translate_vec[2] + (display_scale * (-half_length*2 * (text_area_percent - 1))) / 2;