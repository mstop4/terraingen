if (async_load[? "id"] == api_get_fruit_words) {
	if (async_load[? "status"] == 0) {
		var _json = json_decode(async_load[? "result"]);
		ds_list_copy(words, _json[? "words"]);
		
		tree_init_fruits(words);
		state = plant_state.growing;
		if (ds_exists(_json, ds_type_map))
			ds_map_destroy(_json);
	}
}