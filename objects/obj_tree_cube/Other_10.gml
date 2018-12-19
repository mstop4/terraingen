z = blin_z_pos(x+50, y+50, global.xy_scale, obj_terrain.terrain_map);
var _xyz = convert_to_terrain_space(x+50, y+50, z, global.xy_scale, obj_terrain);

real_z = _xyz[2];
crown_translate_vec = _xyz;
trunk_translate_vec = [_xyz[0], _xyz[1], _xyz[2]];

trunk_translate_vec[2] -= 0.1;