if (owner.can_draw && model != -1 && view_current == obj_MDP.fg_view_index) {
	
	var _xy_scale,  _z_scale;
	
	if (growth < stage_trans) {
		_xy_scale = growth / stage_trans * xy_scale_stage[0]; 
		_z_scale = growth / stage_trans * z_scale_stage[0];
	}
	else {
		_xy_scale = min(xy_scale_stage[0], (growth - stage_trans) * (1/(1-stage_trans)) * (xy_scale_stage[1]-xy_scale_stage[0]) + xy_scale_stage[0]);
		_z_scale = max(z_scale_stage[0], (growth - stage_trans) * (1/(1-stage_trans)) * (z_scale_stage[1]-z_scale_stage[0]) + z_scale_stage[0]);
	}
	
	var _mat = matrix_build(real_x, real_y, real_z + height + length, sway_angle, 0, yaw, _xy_scale,_xy_scale, _z_scale);
	matrix_set(matrix_world,_mat);
	vertex_submit(model,pr_trianglelist,tex_id);
}