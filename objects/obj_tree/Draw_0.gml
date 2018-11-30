var _mat = matrix_build(real_x, real_y, real_z, 0, 0, 0, 1,1,1);
matrix_set(matrix_world,_mat);
vertex_submit(trunk,pr_trianglelist,-1);

_mat = matrix_build(real_x, real_y, real_z+trunk_length+crown_width/2, 0, 0, 0, 1,1,1);
matrix_set(matrix_world,_mat);
vertex_submit(crown,pr_trianglelist,-1);

matrix_set(matrix_world,matrix_build_identity());