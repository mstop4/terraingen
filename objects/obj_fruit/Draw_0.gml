if (can_draw && view_current == obj_MDP.fg_view_index) {
	var _mat = matrix_build(real_x, real_y, real_z + height, 0, 0, 0, 1, 1, 1);
	matrix_set(matrix_world,_mat);
	vertex_submit(model,pr_trianglelist,-1);
	matrix_set(matrix_world,matrix_build_identity());
}