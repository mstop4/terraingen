if (other.growth >= 1 && other.can_collect) {
	var _index = ds_list_find_index(word_list, other.word);
	if (_index < 0) {
		ds_list_add(word_list, other.word);
		ds_list_sort(word_list,true);
		ds_map_add(word_map, other.word, 1);
	}
	
	else {
		word_map[? other.word]++;
	}
	
	instance_destroy(other);
	num_words = ds_list_size(word_list);
	audio_play_sound_at(snd_get_fruit, other.translate_vec[0], other.translate_vec[1], other.translate_vec[2], 1, 4, 0.5, false, 50);
}