draw_set_font(fnt_gui);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

draw_set_valign(fa_top);

draw_text(0,128,"Direction: " + string(direction) + "\nPitch: " + string(pitch) + "\nView Bob t: " + string(view_bob_t));

draw_set_font(fnt_word_list);
draw_set_halign(fa_right);
draw_set_valign(fa_top);

for (var i=0; i<num_words; i++) {
	if (word_selection == i) {
		draw_set_color($8080FF);
	} else {
		draw_set_color(c_white);
	}
	
	draw_text(1280, 32+i*24, word_list[| i] + ": " + string(word_map[? word_list[| i]]));
}