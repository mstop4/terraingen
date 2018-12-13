if (async_load[? "id"] == get_fruit_words) {
	if (async_load[? "status"] == 0) {
		var _json = json_decode(async_load[? "result"]);
		ds_list_copy(words, _json[? "words"]);
		
		tree_init_fruits(words);
		state = plant_state.growing;
		ds_list_destroy(_json);
	}
}