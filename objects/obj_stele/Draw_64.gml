if (global.show_debug_gui) {
	draw_set_font(fnt_word_list);
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);

	draw_text(0, 720, phrase);
}