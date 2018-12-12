var _xyz = convert_to_terrain_space(x, y, 0, global.xy_scale, obj_terrain);
real_x = _xyz[0];
real_y = _xyz[1];

var _tex_surf = surface_create(tex_width,tex_height);

gpu_set_colorwriteenable(true, true, true, false);
surface_set_target(_tex_surf);
	draw_clear(c_white);
	draw_set_colour(c_black);
	draw_set_font(fnt_fruit);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(tex_width/2,tex_height/2,word);
surface_reset_target();
gpu_set_colorwriteenable(true, true, true, true);

tex = sprite_create_from_surface(_tex_surf,0,0,tex_width,tex_height,false,false,0,0);
tex_id = sprite_get_texture(tex,0);

surface_free(_tex_surf);