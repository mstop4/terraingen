if (terrain_done) {
	var _mat = matrix_build(x,y,z,0,0,0,xscale,yscale,zscale);
	matrix_set(matrix_world,_mat);
	vertex_submit(terrain_model,pr_trianglelist,tex_id);
	matrix_set(matrix_world,matrix_build_identity());
}