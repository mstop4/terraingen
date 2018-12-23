with (obj_player) {
	if (!ds_list_empty(word_list)) {
		var _word = word_list[| word_selection];
		
		other.phrase += other.phrase != "" ? " " + _word : _word;
		draw_stele_tex(false);

		if (word_map[? _word] == 1) {
			ds_map_delete(word_map, _word);
			ds_list_delete(word_list, word_selection);
			num_words = ds_list_size(word_list);
			word_selection = clamp(word_selection, 0, num_words-1);
		} 
		
		else {
			word_map[? _word]--;
		}
	}
}