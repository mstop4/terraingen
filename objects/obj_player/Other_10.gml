z = blin_z_pos(x, y, global.xy_scale, obj_terrain.terrain_map);

cursor_x = floor(x / global.xy_scale + lengthdir_x(1, direction));
cursor_y = floor(y / global.xy_scale + lengthdir_y(1, direction));

player_update_cursor();