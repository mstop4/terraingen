stem_model = make_cylinder(radius, length, sections, c_white);
joint_model = make_sphere(radius * 1.25, rings, sections, c_white);
z = 0;
sec_trans[stem_sections,5] = 0;
var _last_xyz = [0, 0, 0];

for (var i=0; i<=stem_sections; i++) {
	for (var j=0; j<3; j++) {
		sec_trans[i,j+3] = j != 2 ? random_range(-20,20) : 0;
		sec_trans[i,j] = _last_xyz[j];
	}
	
	var _mat = matrix_build(_last_xyz[0], _last_xyz[1], _last_xyz[2], sec_trans[i,3], sec_trans[i,4], sec_trans[i,5], 1, 1, 1);
	var _t = matrix_transform_vertex(_mat, 0, 0, length);
	
	for (var k=0; k<3; k++) {
		_last_xyz[k] = _t[k];
	}
}

state = plant_state.stable;

event_user(0);