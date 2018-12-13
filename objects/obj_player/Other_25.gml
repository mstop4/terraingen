var _mat = matrix_build(cursor_real_xyz[0], cursor_real_xyz[1], cursor_real_xyz[2], 0, 0, 0, 1, 1, 1);
matrix_set(matrix_world,_mat);
vertex_submit(cursor_model,pr_linestrip,-1);
matrix_set(matrix_world,matrix_build_identity());