var _mat = matrix_build(0,0,0,0,0,0,10,10,10);
matrix_set(matrix_world,_mat);
vertex_submit(sphere_vb,pr_trianglestrip,-1);
matrix_set(matrix_world,matrix_build_identity());