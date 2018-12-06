if (can_draw) {
	if (growth < 1) {
		var _mound_z_offset = -mound_radius * growth*2;
		var _mat = matrix_build(real_x, real_y, real_z + _mound_z_offset, 0, 0, 0, 1, 1, 1);
		matrix_set(matrix_world,_mat);
		vertex_submit(mound,pr_trianglelist,-1);
	}
	
	var _trunk_scale = min(1, growth / stage_trans);
	_mat = matrix_build(real_x, real_y, real_z-0.1, 0, 0, 0, _trunk_scale, _trunk_scale, _trunk_scale);
	matrix_set(matrix_world,_mat);
	vertex_submit(trunk,pr_trianglelist,-1);

	var _crown_xy_scale,  _crown_z_scale;
	
	if (growth < stage_trans) {
		_crown_xy_scale = growth / stage_trans * 0.25; 
		_crown_z_scale = growth / stage_trans * 1.25;
	}
	else {
		_crown_xy_scale = max(0.25, (growth - stage_trans) * (1/(1-stage_trans)) * 0.75 + 0.25);
		_crown_z_scale = min(1.25, (growth - stage_trans) * (1/(1-stage_trans)) * -0.25 + 1.25);
	}
	
	_mat = matrix_build(real_x, real_y, real_z+(trunk_length+crown_half_width)*_trunk_scale-0.1, 0, 0, yaw, _crown_xy_scale, _crown_xy_scale, _crown_z_scale);
	matrix_set(matrix_world,_mat);
	vertex_submit(crown,pr_trianglelist,-1);

	matrix_set(matrix_world,matrix_build_identity());
}