var _mat = matrix_build(real_x,real_y,real_z,0,0,0,1,1,growth);
matrix_set(matrix_world,_mat);
vertex_submit(stem_model,pr_trianglestrip,-1);

mat = matrix_build(real_x,real_y,real_z+growth,0,0,0,1,1,1);
matrix_set(matrix_world,_mat);
vertex_submit(joint_model,pr_trianglestrip,-1);

matrix_set(matrix_world,matrix_build_identity());