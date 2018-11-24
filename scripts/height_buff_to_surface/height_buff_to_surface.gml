/// @func  height_buff_to_surface(buff, width, surf)
/// @arg   buff 
/// @arg   width
/// @arg   surf 

var _buff = argument[0];
var _w = argument[1];
var _surf = argument[2];

if (surface_exists(_surf)) {
	
	surface_set_target(_surf);
		draw_clear_alpha(c_black, 0);

		for (var i=0; i<_w; i++) {
			for (var j=0; j<_w; j++) {
				var _cur_value = buffer_peek(_buff, get_address(i, j, _w, 4, 0), buffer_f32);
				
				if (_cur_value != -1) {
					var _cur_colour = make_color_hsv(0,0,_cur_value);
					draw_point_color(i, j, _cur_colour);
				}
			}
		}
	
	surface_reset_target();
}