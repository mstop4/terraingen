if (cursor_model != -1) {
	cur_cursor_colour = can_plant ? cursor_ok_colour : cursor_error_colour;
	
	shader_set(shd_cursor);
	shd_cursor_set_uniforms();

	matrix_set(matrix_world,matrix_build_identity());
	vertex_submit(cursor_model,pr_linestrip,-1);
	
	shader_reset();
}