colour = $FFFFFF;
model = make_fruit(length, width, colour);
tex_id = -1;
word = "(blank)";

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
