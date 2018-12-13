var _mat, _t_mat, _r_mat, _s_mat;

for (var i=0; i<growth; i++) {
	_t_mat = matrix_build(real_x + sec_trans[i,0], real_y + sec_trans[i,1], real_z + sec_trans[i,2],
					    0, 0, 0,
						1, 1, 1);
						
	_r_mat = matrix_build(0, 0, 0,
					    sec_trans[i,3], sec_trans[i,4], sec_trans[i,5],
						1, 1, 1);
						
	_s_mat = matrix_build(0, 0, 0,
					    0, 0, 0,
						1, 1, min(growth - i, 1));
						
	_mat = matrix_build_identity();
	
	_mat = matrix_multiply(_mat, _s_mat);
	_mat = matrix_multiply(_mat, _r_mat);
	_mat = matrix_multiply(_mat, _t_mat);
						
	matrix_set(matrix_world,_mat);
	vertex_submit(stem_model,pr_trianglelist,-1);

	if (growth > i+1) {
		_mat = matrix_build(real_x + sec_trans[i+1,0], real_y + sec_trans[i+1,1], real_z + sec_trans[i+1,2],
						    0, 0, 0,
							1,1,1);
		matrix_set(matrix_world,_mat);
		vertex_submit(joint_model,pr_trianglelist,-1);
	}
}