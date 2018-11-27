z = blin_z_pos(x+0.5, y+0.5, obj_terrain.terrain_map);
var _xyz = convert_to_terrain_space(x+0.5, y+0.5, z+1, obj_terrain);
real_x = _xyz[0];
real_y = _xyz[1];
real_z = _xyz[2];