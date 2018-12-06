if (owner) {
	var _real_xyz = convert_to_terrain_space(owner.x, owner.y, owner.z + owner.view_bob_z, global.xy_scale, obj_terrain);
	x = _real_xyz[0];
	y = _real_xyz[1];
	z = _real_xyz[2] + owner.height;
	direction = owner.direction;
	pitch = owner.pitch;
}

camera_update(camera);