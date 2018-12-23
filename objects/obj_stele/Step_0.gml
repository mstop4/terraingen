/*text_uv_offset[1] += 0.001;
if (text_uv_offset[1] > text_uv_max[1]) 
	text_uv_offset[1] -= text_uv_max[1];*/
	
if (score_scroll) {
	score_t += 0.01;
	score_uv_offset[0] = clamp(score_t, 0, score_uv_max[0]);
	
	if (score_t > 1.5) 
		score_t = -0.5;
}