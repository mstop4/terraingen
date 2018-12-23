if (async_load[? "id"] == api_evaluate_phrase) {
	if (async_load[? "status"] == 0) {
		var _json = json_decode(async_load[? "result"]);
		score = _json[? "totalScore"];
		ds_map_destroy(_json);
		
		score_scroll = false;
		score_uv_offset[0] = 0;
		draw_stele_tex(false);
	}
}