colour = $FFFFFF;
word = choose("Hello", "World", "foo", "bar");
model = make_fruit(length, width, colour);

var _tex_surf = surface_create(128,32);
	
surface_set_target(_tex_surf);
	draw_clear(c_white);
	draw_set_colour(c_black);
	draw_set_font(fnt_default);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(64,16,word);
surface_reset_target();

tex = sprite_create_from_surface(_tex_surf,0,0,128,32,false,false,0,0);
tex_id = sprite_get_texture(tex,0);

surface_free(_tex_surf);

z = 0;
real_x = 0;
real_y = 0;
real_z = 0;
height = 0;
yaw = random(360);


growth = 0;
sway_t = random(2 * pi);
sway_t_delta = 2 * pi / 480;
sway_angle = 0;

state = plant_state.stable;
can_draw = false;

cull_halfangle = obj_MDP.fov+30;

xy_scale_stage[0] = 1.1;
xy_scale_stage[1] = 1;

z_scale_stage[0] = 0.75;
z_scale_stage[1] = 1;
