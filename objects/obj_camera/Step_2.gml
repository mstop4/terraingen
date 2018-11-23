if (owner) {
	x = owner.x * obj_terrain.xscale + obj_terrain.x;
	y = owner.y * obj_terrain.yscale + obj_terrain.y;
	z = blin_z_pos(obj_terrain.terrain_map, owner.x, owner.y) * obj_terrain.zscale + owner.height;
	direction = owner.direction;
	pitch = owner.pitch;
}
camera_update();