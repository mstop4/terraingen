/// @func create_region_map(region_grid, colour_buff, colour_surf, num_regions)
/// @arg region_grid
/// @arg num_regions

var _region_grid = argument[0];
var _num_regions = argument[1];

var _start = current_time;

var _colour_surf = surface_create(map_side_length-1, map_side_length-1);

var _region_seeds = ds_grid_create(3,_num_regions);
var _region_colour = ds_list_create();
ds_list_add(_region_colour, $FFD8C0)//, c_fuchsia, c_aqua, c_silver, $0080FF);

var _region_bag = ds_list_create();

ds_grid_set_region(_region_grid,0,0,map_side_length-2,map_side_length-2,-1);

for (var i=0; i<_num_regions; i++) {
	_region_seeds[# 0,i] = irandom_range(map_border-1, map_side_length-map_border-2);
	_region_seeds[# 1,i] = irandom_range(map_border-1, map_side_length-map_border-2);
	
	if (ds_list_empty(_region_bag)) {
		ds_list_copy(_region_bag, _region_colour);
		ds_list_shuffle(_region_bag);
	}
	
	_region_seeds[# 2,i] = _region_bag[| 0];
	ds_list_delete(_region_bag, 0);
}

surface_set_target(_colour_surf);
draw_clear_alpha(c_black,1);

for (var j=0; j<map_side_length; j++) {
	for (var i=0; i<map_side_length; i++) {
		var _min_dist = 1000000;
		var _cur_dist, _region_id;
		
		for (var k=0; k<_num_regions; k++) {
			_cur_dist = abs(j - _region_seeds[# 0,k]) + abs(i - _region_seeds[# 1,k]);
			//point_distance(j, i, region_seeds[# 0,k], region_seeds[# 1,k]);
			if (_cur_dist < _min_dist) {
				_region_id = k;
				
				if (_cur_dist == 0)
					break;
				
				_min_dist = _cur_dist;
			}
		}
		
		_region_grid[# i, j] = _region_id;
		draw_point_colour(j, i, _region_seeds[# 2, _region_id]);
	}
}

// Set Alpha
/*if (map_side_length-1 > map_border*2) {
	gpu_set_colorwriteenable(0,0,0,1);
	
	draw_set_colour(c_black);
	var	_amount_step = 255 / map_border;

	for (var i=0; i<=map_border; i++) {
		draw_set_alpha(255 - _amount_step * (map_border-i));
		draw_rectangle(i, i, map_side_length-i-2, map_side_length-i-2,false);
	}
	
	gpu_set_colorwriteenable(1,1,1,1);
	draw_set_alpha(1);
}*/

surface_reset_target();

colour_map = sprite_create_from_surface(_colour_surf,0,0,map_side_length-1,map_side_length-1,false,false,0,0);

ds_grid_destroy(_region_seeds);
ds_list_destroy(_region_colour);
ds_list_destroy(_region_bag);
surface_free(_colour_surf);

tex_id = sprite_get_texture(colour_map, 0);

print("Voronoi time: " + string(current_time - _start) + " ms");