if (owner) {
	var _real_xyz = convert_to_terrain_space(owner.x, owner.y, owner.z + owner.view_bob_z, global.xy_scale, obj_terrain);
	x = _real_xyz[0];
	y = _real_xyz[1];
	z = bind_z_to_owner ? _real_xyz[2] + owner.height : z;
	direction = owner.direction;
	pitch = owner.pitch;
}

if (!bind_z_to_owner) {
	var _z_input = obj_input.button_held[action.down] - obj_input.button_held[action.up];
	z -= 0.1 * _z_input;
}

lookat[0] = x+lengthdir_x(1,direction);
lookat[1] = y+lengthdir_y(1,direction);
lookat[2] = lengthdir_y(1,pitch)+z;
var _view_matrix = matrix_build_lookat(x,y,z,lookat[0],lookat[1],lookat[2],0,0,-1);

camera_set_view_mat(fore_camera,_view_matrix);
camera_set_view_mat(back_camera,_view_matrix);

audio_listener_position(x,y,z);
audio_listener_orientation(lookat[0],lookat[1],lookat[2],0,0,1);