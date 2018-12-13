texs_per_row = max_tex_size div tex_width;
texs_per_col = max_tex_size div tex_height;

tex_list = array_create(1);
occupancy_list = ds_list_create();

var _surf = surface_create(max_tex_size, max_tex_size);
surface_set_target(_surf);
	draw_clear_alpha(c_white,1);
surface_reset_target();
var _spr = sprite_create_from_surface(_surf,0,0,max_tex_size,max_tex_size,false,false,0,0);
surface_free(_surf);

tex_list[0] = _spr;
ds_list_add(occupancy_list, ds_grid_create(texs_per_row, texs_per_col));
num_textures = 1;