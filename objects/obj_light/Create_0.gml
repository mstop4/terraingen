altitude = 270;

draw_set_lighting(true);
draw_light_define_ambient($404040);
draw_light_define_direction(1,0,dcos(altitude),dsin(altitude),c_white);
draw_light_enable(1,true);