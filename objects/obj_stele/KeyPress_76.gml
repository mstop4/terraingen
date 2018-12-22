with (obj_player) {
	if (!ds_list_empty(word_list)) {
		var _word = word_list[| word_selection];
		
		other.phrase += other.phrase != "" ? " " + _word : _word;
		draw_stele_tex();

		if (word_map[? _word] == 1) {
			ds_map_delete(word_map, _word);
			ds_list_delete(word_list, word_selection);
			num_words = ds_list_size(word_list);
			word_selection = min(word_selection,num_words);
		} 
		
		else {
			word_map[? _word]--;
		}
	}
}