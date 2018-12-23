map_side_length = 257;
border_size = 3;
num_regions = 128;

var _start = current_time;

region_map = ds_grid_create(map_side_length, map_side_length);
colour_map = surface_create(map_side_length, map_side_length);
region_seeds = ds_grid_create(3,num_regions);

region_colour = ds_list_create();
ds_list_add(region_colour, c_red, c_yellow, c_lime, c_blue)//, c_fuchsia, c_aqua, c_silver, $0080FF);
region_bag = ds_list_create();

ds_grid_set_region(region_map,0,0,map_side_length-1,map_side_length-1,-1);

for (var i=0; i<num_regions; i++) {
	region_seeds[# 0,i] = irandom_range(border_size-1, map_side_length-border_size-1);
	region_seeds[# 1,i] = irandom_range(border_size-1, map_side_length-border_size-1);
	
	if (ds_list_empty(region_bag)) {
		ds_list_copy(region_bag, region_colour);
		ds_list_shuffle(region_bag);
	}
	
	region_seeds[# 2,i] = region_bag[| 0];
	ds_list_delete(region_bag, 0);
}

surface_set_target(colour_map);

for (var i=0; i<map_side_length; i++) {
	for (var j=0; j<map_side_length; j++) {
		var _min_dist = 1000000;
		var _cur_dist, _region_id;
		
		for (var k=0; k<num_regions; k++) {
			_cur_dist = abs(i - region_seeds[# 0,k]) + abs(j - region_seeds[# 1,k]);
			//point_distance(i, j, region_seeds[# 0,k], region_seeds[# 1,k]);
			if (_cur_dist < _min_dist) {
				_region_id = k;
				
				if (_cur_dist == 0)
					break;
				
				_min_dist = _cur_dist;
			}
		}
		
		region_map[# i, j] = _region_id;
		draw_point_color(i, j, region_seeds[# 2,_region_id]);
	}
}

surface_reset_target();
ds_grid_destroy(region_seeds);
ds_list_destroy(region_colour);
ds_list_destroy(region_bag);

print("Voronoi time: " + string(current_time - _start) + " ms");