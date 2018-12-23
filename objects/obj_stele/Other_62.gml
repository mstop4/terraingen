if (async_load[? "id"] == api_evaluate_phrase) {
	if (async_load[? "status"] == 0) {
		var _json = json_decode(async_load[? "result"]);
		score = _json[? "totalScore"];
		print("Score is: ", score);
		ds_map_destroy(_json);
		
		draw_stele_tex(false);
	}
}