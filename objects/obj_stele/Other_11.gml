/// @description Evaluate phrase

print("Evaluate phrase");
draw_stele_tex(true);
api_evaluate_phrase = http_get(obj_MCP.server_address + "/api/v1/evaluate?q=" + phrase + "&depth=" + string(scoring_depth));