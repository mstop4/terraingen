/// @arg is_evaluating

var _is_evaluating = argument[0];

with (obj_stele) {
	if (surface_exists(tex_surf)) {
		gpu_push_state();
		gpu_set_ztestenable(false);
		gpu_set_zwriteenable(false);
		
		surface_set_target(tex_surf);
			draw_clear(c_black);
			draw_set_colour(c_white);
			draw_set_font(fnt_stele);
		
			var _formatted_phrase = dialogue_line_breaker(phrase, tex_width*display_scale, fnt_stele);
		
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_text(0, 0, _formatted_phrase);
		
			draw_set_halign(fa_center);
			draw_set_valign(fa_center);
			if (_is_evaluating)
				draw_text(tex_width/2, tex_height + display_scale * -eff_tex_height * text_area_percent/2, "Evaluating...");	
			else
				draw_text(tex_width/2, tex_height + display_scale * -eff_tex_height * text_area_percent/2, string(score) + " pts.");
			
			buffer_get_surface(tex_buff, tex_surf, 0, 0, 0);
		surface_reset_target();
		
		gpu_pop_state();
	}
}