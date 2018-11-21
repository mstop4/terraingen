/// @func  normal_grid_to_surface(grid, surf)
/// @arg   grid 
/// @arg   surf 

var _grid = argument[0];
var _surf = argument[1];

if (surface_exists(_surf)) {
	var _w = ds_grid_width(_grid);
	var _h = ds_grid_height(_grid);
	
	surface_set_target(_surf);
		draw_clear_alpha(c_black, 0);

		for (var i=0; i<_w; i++) {
			for (var j=0; j<_h; j++) {
				var _cur_value = _grid[# i, j];
				
				if (_cur_value != -1) {
					var _cur_colour = make_color_rgb((_cur_value[0] + 1) / 2 * 255, (_cur_value[1] + 1) / 2 * 255, _cur_value[2] * 255);
					draw_point_color(i, j, _cur_colour);
				}
			}
		}
	
	surface_reset_target();
}