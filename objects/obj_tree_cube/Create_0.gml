crown_colour = $81c226;
trunk_colour = $0e69f9;

state = plant_state.stable;
can_draw = false;
cull_halfangle = obj_MDP.fov+30;

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

get_fruit_words = http_get(obj_MCP.server_address + "/seed?quantity=" + string(num_fruit));