if (async_load[? "id"] == get_fruit_words) {
	if (async_load[? "status"] == 0) {
		var _json = json_decode(async_load[? "result"]);
		var _words = _json[? "words"];
		
		tree_init_fruits(_words);
		state = plant_state.growing;
	}
}