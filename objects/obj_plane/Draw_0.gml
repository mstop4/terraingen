var _mat = matrix_build(real_x,real_y,z,0,0,90,1,1,1);
matrix_set(matrix_world,_mat);
vertex_submit(model,pr_trianglestrip,tex_id);
matrix_set(matrix_world,matrix_build_identity());