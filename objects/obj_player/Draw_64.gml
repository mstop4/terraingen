draw_set_font(fnt_default);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

draw_set_valign(fa_top);

draw_text(0,128,"Direction: " + string(direction) + "\nPitch: " + string(pitch) + "\nView Bob t: " + string(view_bob_t));