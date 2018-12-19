if (async_load[? "id"] == api_get_fruit_words) {
	if (async_load[? "status"] == 0) {
		var _json = json_decode(async_load[? "result"]);
		var _words = _json[? "words"];
		
		tree_init_fruits(_words);
		state = plant_state.growing;
		if (ds_exists(_json, ds_type_list))
			ds_list_destroy(_json);
	}
}