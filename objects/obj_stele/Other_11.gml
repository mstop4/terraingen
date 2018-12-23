/// @description Evaluate phrase

score_scroll = true;
score_t = -0.5;
score_uv_offset[0] = 0;
draw_stele_tex(true);
api_evaluate_phrase = http_get(obj_MCP.server_address + "/api/v1/evaluate?q=" + phrase + "&depth=" + string(scoring_depth));