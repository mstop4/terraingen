var _mat 

for (var i=0; i<5; i++) {
	_mat = matrix_build(real_x,real_y,real_z+i*0.2,random_range(-45,45),random_range(-45,45),random_range(-45,45),1,1,1);
	matrix_set(matrix_world,_mat);
	vertex_submit(stem_model,pr_trianglestrip,-1);

	_mat = matrix_build(real_x,real_y,real_z+(i+1)*0.2,0,0,0,1,1,1);
	matrix_set(matrix_world,_mat);
	vertex_submit(joint_model,pr_trianglestrip,-1);
}

matrix_set(matrix_world,matrix_build_identity());