var _mat = matrix_build(0,0,0,0,0,0,1,1,1);
matrix_set(matrix_world,_mat);
vertex_submit(model,pr_trianglestrip,-1);
matrix_set(matrix_world,matrix_build_identity());