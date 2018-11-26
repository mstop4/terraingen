var _mat 

for (var i=0; i<stem_sections; i++) {
	_mat = matrix_build(real_x + sec_trans[i,0], real_y + sec_trans[i,1], real_z + sec_trans[i,2],
					    sec_trans[i,3], sec_trans[i,4], sec_trans[i,5],
						1,1,1);
						
	matrix_set(matrix_world,_mat);
	vertex_submit(stem_model,pr_trianglestrip,-1);

	_mat = matrix_build(real_x + sec_trans[i+1,0], real_y + sec_trans[i+1,1], real_z + sec_trans[i+1,2],
					    sec_trans[i+1,3], sec_trans[i+1,4], sec_trans[i+1,5],
						1,1,1);
	matrix_set(matrix_world,_mat);
	vertex_submit(joint_model,pr_trianglestrip,-1);
}

matrix_set(matrix_world,matrix_build_identity());