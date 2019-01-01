/// @arg tex_index
/// @arg tex_slot_x
/// @arg tex_slot_y

var _tex_index = argument[0];
var _tex_slot_x = argument[1];
var _tex_slot_y = argument[2];

with (obj_fruit_manager) {
	
	if (!ds_exists(occupancy_list, ds_type_list))
		return false;
	
	if (_tex_index < num_textures &&
		_tex_slot_x < texs_per_row &&
		_tex_slot_y < texs_per_col) {
			
		var _cur_occ_grid = occupancy_list[| _tex_index];
		_cur_occ_grid[# _tex_slot_x, _tex_slot_y] = 0;
		return true;
	}
	
	else {
		return false;
	}
}