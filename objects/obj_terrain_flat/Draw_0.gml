if (terrain_done && view_current == obj_MDP.fg_view_index || view_current == obj_MDP.d_view_index) {
	var _mat = matrix_build(x,y,z,0,0,0,xscale,yscale,zscale);
	matrix_set(matrix_world,_mat);
	vertex_submit(terrain_model,pr_trianglelist,tex_id);
	matrix_set(matrix_world,matrix_build_identity());
}