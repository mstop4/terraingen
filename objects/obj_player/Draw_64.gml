draw_set_halign(fa_left);
draw_set_color(c_white);
//draw_set_font(fnt_small);
draw_set_valign(fa_top);

if (is_stepping)
	draw_set_colour(c_aqua);
else
	draw_set_colour(c_white);
	
draw_text(0,256,"View Bob t: " + string(view_bob_t));