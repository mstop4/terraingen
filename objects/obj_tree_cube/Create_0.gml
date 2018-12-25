crown_colour = $81c226;
trunk_colour = $0e69f9;

state = plant_state.stable;
can_draw = false;
models_ready = false;
cull_halfangle = obj_MDP.fov+30;
seed_word = "blank";
words = ds_list_create();

z = 0;
real_z = 0;
crown_translate_vec = [0, 0, 0];
trunk_translate_vec = [0, 0, 0];
crown_scale_vec = [0, 0, 0];
trunk_scale_vec = [0, 0, 0];
rotate_vec = [0, 0, random(2*pi)];
growth = 0;

xy_scale_stage[0] = 0.25;
xy_scale_stage[1] = 1;

z_scale_stage[0] = 1.25;
z_scale_stage[1] = 1;

event_user(0);

api_get_fruit_words = -1;
alarm[0] = 1;