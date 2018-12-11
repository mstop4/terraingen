draw_set_font(fnt_gui);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
var _d1 = diffuse_direction[| 0];
var _d2 = diffuse_direction[| 1];

draw_text(160,0,"Theta:" + string(theta) + "\nPhi: " + string(phi) +
			   "\nLight Vector: (" + string(_d1[0]) + ", " + string(_d1[1]) + ", " + string(_d1[2]) + 
			   ") (" + string(_d2[0]) + ", " + string(_d2[1]) + ", " + string(_d2[2]) + ")");