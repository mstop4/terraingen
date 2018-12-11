draw_set_font(fnt_gui);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_valign(fa_top);

draw_text(0,0,"Camera\nX: " + string(x) + "\nY: " + string(y) + "\nZ: " + string(z));