if (async_load[? "id"] == api_evaluate_phrase) {
	if (async_load[? "status"] == 0) {
		var _json = json_decode(async_load[? "result"]);
		var _words = _json[? "words"];
		var _words_len = ds_list_size(_words);
		score = 0;
		
		for (var i=0; i<_words_len; i++) {
			var _cur_word = _words[| i];
			var _scores = _cur_word[? "scores"];
			var _scores_len = ds_list_size(_scores);
			
			for (var j=0; j<_scores_len; j++) {
				if (_scores[| j] != 0) {
					score += log2(_scores[| j]);
				}
			}
		}
		
		ds_map_destroy(_json);
		
		score_scroll = false;
		score_uv_offset[0] = 0;
		draw_stele_tex(false);
	}
}