/*text_uv_offset[1] += 0.001;
if (text_uv_offset[1] > text_uv_max[1]) 
	text_uv_offset[1] -= text_uv_max[1];*/
	
if (score_scroll) {
	score_t += 0.01;
	score_uv_offset[0] = clamp(score_t, 0, score_uv_max[0]);
	
	if (score_t > 1.5) 
		score_t = -0.5;
}

with (obj_player) {
	var _dx = lengthdir_x(200, direction);
	var _dy = lengthdir_y(200, direction);
	
	other.can_interact = (
		ray_line_intersect(x, y, x+_dx, y+_dy, other.x+50, other.y, other.x-50, other.y) != -1 &&
		point_in_rectangle(x, y, other.x-50, other.y-150, other.x+50, other.y+150)
	);
}