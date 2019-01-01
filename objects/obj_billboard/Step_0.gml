var _dir = point_direction(x, y, obj_player.x, obj_player.y);
rotate_vec[2] = -degtorad(_dir + 90);

var _ang_diff = angle_difference(direction, _dir);
if (_ang_diff >= -45 && _ang_diff < 45)
	sprite_index = spr_char_up;
else if (_ang_diff >= 45 && _ang_diff < 135)
	sprite_index = spr_char_left;
else if (_ang_diff >= -135 && _ang_diff < -45)
	sprite_index = spr_char_right;
else
	sprite_index = spr_char_down;

tex_id = sprite_get_texture(sprite_index, image_index);
update_sprite(model, 1, 1, c_white, sprite_get_uvs(sprite_index, image_index));