colour = $FFFFFF;
model = -1;
tex_index = -1;
tex_slot = [0, 0];
tex_id = -1;
word = "(blank)";
owner = noone;

real_z = 0;
translate_vec = [0, 0, 0];
scale_vec = [0, 0, 0];
rotate_vec = [0, 0, random(2*pi)];
height = 0;

growth = 0;
can_collect = false;
sway_t = random(2 * pi);
sway_t_delta = 2 * pi / 480;
sway_half_angle_rad = sway_half_angle * (2*pi/360);

state = plant_state.stable;
can_draw = false;

cull_halfangle = obj_MDP.fov+30;

xy_scale_stage[0] = 1.1;
xy_scale_stage[1] = 1;

z_scale_stage[0] = 0.85;
z_scale_stage[1] = 1;
