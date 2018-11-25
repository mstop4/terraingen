stem_models = generate_stem_simple(0.05, 1, sections);
cap_poly = ds_grid_create(3,sections);
z = 0;
is_growing = false;

var _step_size = 2 * pi / sections;

for (var i=0; i<sections; i++) {
	var _ii = wrap(i,0,sections-1);
	cap_poly[# 0, _ii] = cos(_step_size*i);
	cap_poly[# 1, _ii] = sin(_step_size*i);
	cap_poly[# 2, _ii] = 0;
}

cap_normal = [0, 0, 1];
end_normal = [0, 0, 1];

event_user(0);