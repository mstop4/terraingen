if (get_own_words)
	api_get_fruit_words = http_get(obj_MCP.server_address + "/api/v1/trigger?q=" + seed_word + "&count=" + string(num_fruit));
else
	tree_init_fruits(words);