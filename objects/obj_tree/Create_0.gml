trunk = make_cylinder(trunk_radius, trunk_length, trunk_step, trunk_colour);
crown = make_cube(crown_width/2, crown_colour);

branch_scale[0,0] = 1.5;
branch_scale[0,1] = 0.5;
branch_scale[0,2] = 0.5;
branch_colour = c_lime;
branch_offset[0,0] = 0;
branch_offset[0,1] = 0;
branch_offset[0,2] = 0;

branch_scale[1,0] = 0.5;
branch_scale[1,1] = 1.5;
branch_scale[1,2] = 0.5;
branch_colour = c_lime;
branch_offset[1,0] = 0;
branch_offset[1,1] = 0;
branch_offset[1,2] = 0;

branch_scale[2,0] = 0.5;
branch_scale[2,1] = 0.5;
branch_scale[2,2] = 0.5;
branch_colour = c_lime;
branch_offset[2,0] = 0;
branch_offset[2,1] = 0;
branch_offset[2,2] = crown_width/2;

z = 0;
real_x = 0;
real_y = 0;
real_z = 0;

shd_cel_get_uniforms();

event_user(0);
