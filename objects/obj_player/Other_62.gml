if (async_load[? "id"] == get_first_words) {
	if (async_load[? "status"] == 0) {
		var _json = json_decode(async_load[? "result"]);
		var _words = _json[? "seeds"];
		
		ds_list_copy(word_list, _words);
		num_words = ds_list_size(word_list);
		
		for (var i=0; i<num_words; i++) {
			ds_map_add(word_map, word_list[| i], 1);
		}
		
		ds_list_destroy(_words);
	}
}