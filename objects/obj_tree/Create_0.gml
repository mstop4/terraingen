trunk = make_cylinder(trunk_radius, trunk_length, trunk_step, c_yellow);
crown = vertex_create_buffer();

vertex_begin(crown, global.vert_w_light);
add_cube(crown, crown_width/2, c_lime, [0, 0, 0], [1, 1, 1]);
add_cube(crown, crown_width/4, c_lime, [0, 0, 0], [3, 1, 1]);
add_cube(crown, crown_width/4, c_lime, [0, 0, 0], [1, 3, 1]);
add_cube(crown, crown_width/4, c_lime, [0, 0, crown_width/2], [1, 1, 1]);

vertex_end(crown);
vertex_freeze(crown);

z = 0;
real_x = 0;
real_y = 0;
real_z = 0;

event_user(0);