var _from_player = point_direction(obj_player.my_cam.x, obj_player.my_cam.y, real_x, real_y);

if (abs(angle_difference(obj_player.direction, _from_player)) <= obj_player.my_cam.fov+30) {
	
	var _stage_trans = 0.95;
	
	var _trunk_scale = min(1, growth / _stage_trans);
	var _mat = matrix_build(real_x, real_y, real_z, 0, 0, 0, _trunk_scale, _trunk_scale, _trunk_scale);
	matrix_set(matrix_world,_mat);
	vertex_submit(trunk,pr_trianglelist,-1);

	var _crown_xy_scale,  _crown_z_scale;
	
	if (growth < _stage_trans) {
		_crown_xy_scale = growth / _stage_trans * 0.25; 
		_crown_z_scale = growth / _stage_trans * 1.25;
	}
	else {
		_crown_xy_scale = max(0.25, (growth - _stage_trans) * (1/(1-_stage_trans)) * 0.75 + 0.25);
		_crown_z_scale = min(1.25, (growth - _stage_trans) * (1/(1-_stage_trans)) * -0.25 + 1.25);
	}
	
	_mat = matrix_build(real_x, real_y, real_z+(trunk_length+crown_half_width)*_trunk_scale, 0, 0, yaw, _crown_xy_scale, _crown_xy_scale, _crown_z_scale);
	matrix_set(matrix_world,_mat);
	vertex_submit(crown,pr_trianglelist,-1);

	matrix_set(matrix_world,matrix_build_identity());
}