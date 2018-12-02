z = blin_z_pos(x, y, global.xy_scale, obj_terrain.terrain_map);
var _center = 0;
var _xyz = convert_to_terrain_space(_center, _center, z, global.xy_scale, obj_terrain);
real_x = _xyz[0];
real_y = _xyz[1];
real_z = _xyz[2] + 1;