crown_colour = $81c226;
trunk_colour = $0e69f9;

state = plant_state.stable;
can_draw = false;
cull_halfangle = obj_MDP.fov+30;
seed_word = "blank";
words = ds_list_create();

make_tree_cube();

yaw = random(360);
z = 0;
real_x = 0;
real_y = 0;
real_z = 0;
growth = 0;

xy_scale_stage[0] = 0.25;
xy_scale_stage[1] = 1;

z_scale_stage[0] = 1.25;
z_scale_stage[1] = 1;

event_user(0);

get_fruit_words = -1;
alarm[0] = 1;