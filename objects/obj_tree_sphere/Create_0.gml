crown_colour = c_lime;
trunk_colour = c_yellow;

trunk = make_cylinder(trunk_radius, trunk_length, trunk_step, trunk_colour);
crown = vertex_create_buffer();
state = tree_state.stable;

vertex_begin(crown, global.vert_w_light);
add_sphere(crown, crown_half_width, 8, 8, crown_colour);

vertex_end(crown);
vertex_freeze(crown);

yaw = random(360);
z = 0;
real_x = 0;
real_y = 0;
real_z = 0;

event_user(0);