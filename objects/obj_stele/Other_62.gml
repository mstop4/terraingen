if (async_load[? "id"] == api_evaluate_phrase) {
	if (async_load[? "status"] == 0) {
		var _json = json_decode(async_load[? "result"]);
		print("Score is: ", _json[? "totalScore"]);
		ds_map_destroy(_json);
	}
}