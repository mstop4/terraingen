/// @func create_region_map(region_grid, colour_grid, num_regions)
/// @arg region_grid
/// @arg colour_grid
/// @arg num_regions

var _region_grid = argument[0];
var _colour_grid = argument[1];
var _num_regions = argument[2];

var _start = current_time;

var _colour_surf = surface_create(map_side_length-1, map_side_length-1);
var _region_seeds = ds_grid_create(3,_num_regions);

var _region_ids = ds_list_create();
var _num_unique_regions = array_length_1d(region_colours);

for (var i=0; i<_num_unique_regions; i++) {
	ds_list_add(_region_ids, i);
}

var _region_ids_bag = ds_list_create();

ds_grid_set_region(_region_grid,0,0,map_side_length-2,map_side_length-2,-1);

for (var i=0; i<_num_regions; i++) {
	_region_seeds[# 0,i] = irandom_range(map_border-1, map_side_length-map_border-2);
	_region_seeds[# 1,i] = irandom_range(map_border-1, map_side_length-map_border-2);
	
	if (ds_list_empty(_region_ids_bag)) {
		ds_list_copy(_region_ids_bag, _region_ids);
		ds_list_shuffle(_region_ids_bag);
	}
	
	_region_seeds[# 2,i] = _region_ids_bag[| 0];
	ds_list_delete(_region_ids_bag, 0);
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
		
		var _id = _region_seeds[# 2, _region_id];
		_region_grid[# i, j] = _id;
		_colour_grid[# i, j] = region_colours[_id];
		draw_point_colour(j, i, region_colours[_id]);
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

colour_tex = sprite_create_from_surface(_colour_surf,0,0,map_side_length-1,map_side_length-1,false,false,0,0);

ds_grid_destroy(_region_seeds);
ds_list_destroy(_region_ids);
ds_list_destroy(_region_ids_bag);
surface_free(_colour_surf);

tex_id = sprite_get_texture(colour_tex, 0);

print("Voronoi time: " + string(current_time - _start) + " ms");