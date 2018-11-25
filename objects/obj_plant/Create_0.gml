stem_model = make_cylinder(radius, length, sections, c_white);
joint_model = make_sphere(radius * 1.25, rings, sections, c_white);
z = 0;
is_growing = false;

event_user(0);