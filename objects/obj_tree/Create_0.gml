trunk = make_cylinder(trunk_radius, trunk_length, trunk_step, trunk_colour);
crown = make_cube(crown_width/2, crown_colour);

branch_width = crown_width/2;
branch_colour = c_lime;
branch_offset[0,0] = crown_width/2;
branch_offset[0,1] = 0;
branch_offset[0,2] = 0;
branch[0] = make_cube(branch_width/2, branch_colour);

z = 0;
real_x = 0;
real_y = 0;
real_z = 0;

event_user(0);