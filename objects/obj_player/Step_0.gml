var _v_input = obj_input.button_held[action.down] - obj_input.button_held[action.up];
var _h_input = obj_input.button_held[action.right] - obj_input.button_held[action.left];

x = clamp(x - _v_input * my_speed, 0, obj_terrain.map_side_length-1);
y = clamp(y - _h_input * my_speed, 0, obj_terrain.map_side_length-1);