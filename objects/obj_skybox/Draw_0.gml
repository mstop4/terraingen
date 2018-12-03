shader_reset();

var _mat = matrix_build(0,0,127,0,0,0,scale,scale,scale);
matrix_set(matrix_world,_mat);

for (var i=0; i<6; i++) {
	vertex_submit(side_models[i],pr_trianglestrip,tex_id[i]);
}

matrix_set(matrix_world,matrix_build_identity());

with (obj_MDP) {
	shader_set(shd_cel);
	shd_cel_set_uniforms();
}