/// @arg word

var _start = current_time;
var _word = argument[0];

var _cur_occ_grid;
var _i, _x, _y;

with (obj_fruit_manager) {
	// Check for space in any existing texture page
	for (var _i=0; _i<num_textures; _i++) {
		_cur_occ_grid = occupancy_list[| _i];
		if (ds_grid_value_exists(_cur_occ_grid, 0, 0, texs_per_row-1, texs_per_col-1, 0)) {
			
			_x = ds_grid_value_x(_cur_occ_grid, 0, 0, texs_per_row-1, texs_per_col-1, 0);
			_y = ds_grid_value_y(_cur_occ_grid, 0, 0, texs_per_row-1, texs_per_col-1, 0);
			break;
		}
	}
	
	// No more space, create a new page
	if (_i == num_textures) {
		var _surf = surface_create(max_tex_size, max_tex_size);
		var _spr = sprite_create_from_surface(_surf,0,0,max_tex_size,max_tex_size,false,false,0,0);
		surface_free(_surf);

		tex_list[_i] = _spr;
		_cur_occ_grid = ds_grid_create(texs_per_row, texs_per_col);
		ds_list_add(occupancy_list, _cur_occ_grid);
		num_textures++;
		
		_x = 0;
		_y = 0;
	}
	
	// Update texture page 
	_cur_occ_grid[# _x, _y] = 1;
			
	var _surf = surface_create(max_tex_size, max_tex_size);
	surface_set_target(_surf);		
		draw_clear_alpha(c_white, 1);
		draw_sprite(tex_list[_i],0,0,0);
		draw_set_colour(c_white);
		draw_rectangle(_x * tex_width, _y * tex_height, (_x+1) * tex_width, (_y+1) * tex_height, false);
		gpu_set_colorwriteenable(true, true, true, false);
		draw_set_colour(c_black);
		draw_set_font(fnt_fruit);
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		draw_text((_x+0.5) * tex_width, (_y+0.5) * tex_height, _word);
		gpu_set_colorwriteenable(true, true, true, true);
	surface_reset_target();
	
	sprite_delete(tex_list[_i]);
	tex_list[_i] = sprite_create_from_surface(_surf,0,0,max_tex_size,max_tex_size,false,false,0,0);
	surface_free(_surf);
	
	var _tex_id = sprite_get_texture(tex_list[_i], 0);
	print("Atlas update time: ", string(current_time - _start), " ms");
	
	return [_tex_id, _x * tex_width / max_tex_size, _y * tex_height / max_tex_size,
			(_x+1) * tex_width / max_tex_size, (_y+1) * tex_height / max_tex_size];
}