z = blin_z_pos(x, y, global.xy_scale, obj_terrain.terrain_map);
var _xyz = convert_to_terrain_space(x, y, z, global.xy_scale, obj_terrain);
translate_vec = _xyz;