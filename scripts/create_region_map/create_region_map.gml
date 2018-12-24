/// @func create_region_map(region_grid, colour_grid, num_regions)
/// @arg region_grid
/// @arg colour_grid
/// @arg num_regions

var _region_grid = argument[0];
var _colour_grid = argument[1];
var _num_regions = argument[2];

var _start = current_time;

var _region_seeds = ds_grid_create(3,_num_regions);
var _region_colour = ds_list_create();
ds_list_add(_region_colour, c_red, c_yellow, c_lime, c_blue)//, c_fuchsia, c_aqua, c_silver, $0080FF);

var _region_bag = ds_list_create();

ds_grid_set_region(_region_grid,0,0,map_side_length-1,map_side_length-1,-1);

for (var i=0; i<_num_regions; i++) {
	_region_seeds[# 0,i] = irandom_range(map_border-1, map_side_length-map_border-1);
	_region_seeds[# 1,i] = irandom_range(map_border-1, map_side_length-map_border-1);
	
	if (ds_list_empty(_region_bag)) {
		ds_list_copy(_region_bag, _region_colour);
		ds_list_shuffle(_region_bag);
	}
	
	_region_seeds[# 2,i] = _region_bag[| 0];
	ds_list_delete(_region_bag, 0);
}

for (var i=0; i<map_side_length; i++) {
	for (var j=0; j<map_side_length; j++) {
		var _min_dist = 1000000;
		var _cur_dist, _region_id;
		
		for (var k=0; k<_num_regions; k++) {
			_cur_dist = abs(i - _region_seeds[# 0,k]) + abs(j - _region_seeds[# 1,k]);
			//point_distance(i, j, region_seeds[# 0,k], region_seeds[# 1,k]);
			if (_cur_dist < _min_dist) {
				_region_id = k;
				
				if (_cur_dist == 0)
					break;
				
				_min_dist = _cur_dist;
			}
		}
		
		_region_grid[# i, j] = _region_id;
		_colour_grid[# i, j] = _region_seeds[# 2,_region_id];
	}
}

ds_grid_destroy(_region_seeds);
ds_list_destroy(_region_colour);
ds_list_destroy(_region_bag);

print("Voronoi time: " + string(current_time - _start) + " ms");