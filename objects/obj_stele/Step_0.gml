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
	other.can_interact = (
		//ray_line_intersect(x, y, x+my_cam.lookat[0]*25, y+my_cam.lookat[1]*25, other.x-50, other.y+12.5, other.x+50, other.y+12.5) != -1 ||
		ray_line_intersect(x, y, x+my_cam.lookat[0]*25, y+my_cam.lookat[1]*25, other.x+50, other.y-12.5, other.x-50, other.y-12.5) != -1
	);
}