if (global.show_debug_gui) {
	draw_set_font(fnt_gui);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_black);

	draw_set_valign(fa_top);
	var _c = obj_terrain_flat.colour_map[#  cursor_x, cursor_y];

	draw_text(0,128,"Direction: " + string(direction) + 
				    "\nPitch: " + string(pitch) + 
					"\nView Bob t: " + string(view_bob_t) + 
					"\nView Bob Delta:" + string(view_bob_delta_dt) +
					"\nCursor: " + string(cursor_x) + ", " + string(cursor_y) +
					"\nGround: " + string(color_get_red(_c)) + ", " + string(colour_get_green(_c)) + ", " + string(colour_get_blue(_c))
					);
}

draw_set_font(fnt_word_list);
draw_set_halign(fa_right);
draw_set_valign(fa_top);

for (var i=0; i<num_words; i++) {
	var _in_col = word_selection == i ? $8080FF : c_white;
	draw_outlined_text(obj_MDP.app_width, 32+i*24, word_list[| i] + ": " + string(word_map[? word_list[| i]]), 1, 1, 0, _in_col, c_black, 2, 1, 8);
}