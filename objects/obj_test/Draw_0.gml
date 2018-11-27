var _mat = matrix_build(real_x, real_y, real_z+0.1, 0, 0, 0, 1,1,1);
matrix_set(matrix_world,_mat);
vertex_submit(model,pr_trianglelist,-1);

matrix_set(matrix_world,matrix_build_identity());