stem_models = generate_stem_simple(0.05, 1, 6);
cap_poly = ds_grid_create(3,sections);
z = 0;

var _step_size = 2 * pi / sections;

for (var i=0; i<=sections; i++) {
	cap_poly[# 0, i] = cos(_step_size*i);
	cap_poly[# 1, i] = sin(_step_size*i);
	cap_poly[# 2, i] = 0;
}

event_user(0);