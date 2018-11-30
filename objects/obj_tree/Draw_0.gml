var _from_player = point_direction(obj_player.my_cam.x, obj_player.my_cam.y, real_x, real_y);

if (abs(angle_difference(obj_player.direction, _from_player)) <= obj_player.my_cam.fov+30) {
	
	var _mat = matrix_build(real_x, real_y, real_z, 0, 0, 0, growth, growth, growth);
	matrix_set(matrix_world,_mat);
	vertex_submit(trunk,pr_trianglelist,-1);

	_mat = matrix_build(real_x, real_y, real_z+(trunk_length+crown_width/2)*growth, 0, 0, yaw, growth, growth, growth);
	matrix_set(matrix_world,_mat);
	vertex_submit(crown,pr_trianglelist,-1);

	matrix_set(matrix_world,matrix_build_identity());
}