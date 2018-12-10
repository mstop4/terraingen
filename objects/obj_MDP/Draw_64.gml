draw_set_font(fnt_default);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_valign(fa_top);
draw_text(1280,0,string(fps) + "/" + string(game_get_speed(gamespeed_fps)) + "/" + string(fps_real));