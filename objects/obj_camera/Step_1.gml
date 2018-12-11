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

camera_update(fore_camera);
camera_update(back_camera);