with (obj_stele) {
	if (surface_exists(tex_surf)) {
		surface_set_target(tex_surf);
			draw_clear(c_silver);
			draw_set_colour(c_black);
			draw_set_font(fnt_fruit);
		
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_text(0, 0, phrase);
		
			draw_set_halign(fa_center);
			draw_set_valign(fa_center);
			draw_text(tex_width/2, tex_height + display_scale * -eff_tex_height * text_area_percent/2, string(score));
		surface_reset_target();
	}
}