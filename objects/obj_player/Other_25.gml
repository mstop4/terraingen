if (cursor_model != -1) {
	cur_cursor_colour = can_plant ? cursor_ok_colour : cursor_error_colour;
	
	shader_set(shd_cursor);
	shd_cursor_set_uniforms();

	matrix_set(matrix_world,matrix_build_identity());
	vertex_submit(cursor_model,pr_linestrip,-1);
	
	shader_reset();
}

var _mat = matrix_build(cursor_real_xyz[0], cursor_real_xyz[1], cursor_real_xyz[2], 0, 0, 0, 1, 1, 1);
matrix_set(matrix_world,_mat);
vertex_submit(cursor_model,pr_linestrip,-1);
matrix_set(matrix_world,matrix_build_identity());