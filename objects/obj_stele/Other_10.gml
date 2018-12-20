x = obj_terrain.map_side_length / 2 * global.xy_scale;
y = (obj_terrain.map_side_length / 2 + 1) * global.xy_scale;
z = blin_z_pos(x, y, global.xy_scale, obj_terrain.terrain_map);

translate_vec = convert_to_terrain_space(x, y, z, global.xy_scale, obj_terrain_flat);
translate_vec[2] += half_length;