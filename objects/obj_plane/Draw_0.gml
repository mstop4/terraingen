var _mat = matrix_build(real_x,real_y,real_z,0,0,90,1,1,1);
matrix_set(matrix_world,_mat);
vertex_submit(model,pr_trianglelist,tex_id);