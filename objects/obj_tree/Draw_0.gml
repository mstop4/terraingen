var _mat = matrix_build(real_x, real_y, real_z, 0, 0, 0, 1,1,1);
matrix_set(matrix_world,_mat);
vertex_submit(trunk,pr_trianglelist,-1);

_mat = matrix_build(real_x, real_y, real_z+trunk_length+crown_width/2, 0, 0, 0, 1,1,1);
matrix_set(matrix_world,_mat);
vertex_submit(crown,pr_trianglelist,-1);

for (var i=0; i<num_branches; i++) {
	_mat = matrix_build(real_x + branch_offset[i,0], real_y + branch_offset[i,1], real_z+trunk_length+crown_width/2 + branch_offset[i,2], 0, 0, 0, 1,1,1);
	matrix_set(matrix_world,_mat);
	vertex_submit(branch[i],pr_trianglelist,-1);
}

matrix_set(matrix_world,matrix_build_identity());