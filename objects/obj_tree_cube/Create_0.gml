crown_colour = $81c226;
trunk_colour = $0e69f9;

state = plant_state.stable;
can_draw = false;
cull_halfangle = obj_MDP.fov+30;

trunk = make_cylinder(trunk_radius, trunk_length, trunk_step, trunk_colour);

crown = vertex_create_buffer();
vertex_begin(crown, global.vert_w_light);
add_cube(crown, crown_half_width, crown_colour, [0, 0, 0], [1, 1, 1]);

var _half_width, _off_x, _off_y, _off_z;

// Top
_half_width = random_range(crown_half_width/2, crown_half_width/1.5);
_off_x = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width);
_off_y = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width);
_off_z = random_range(crown_half_width - _half_width/4, crown_half_width);
add_cube(crown, _half_width, crown_colour, [_off_x, _off_y, _off_z], [1, 1, 1]);

// Front
_half_width = random_range(crown_half_width/2, crown_half_width/1.5);
_off_x = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width)
_off_y = random_range(crown_half_width - _half_width/4, crown_half_width)
_off_z = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width);
add_cube(crown, _half_width, crown_colour, [_off_x, _off_y, _off_z], [1, 1, 1]);

// Back
_half_width = random_range(crown_half_width/2, crown_half_width/1.5);
_off_x = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width)
_off_y = -random_range(crown_half_width - _half_width/4, crown_half_width)
_off_z = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width);
add_cube(crown, _half_width, crown_colour, [_off_x, _off_y, _off_z], [1, 1, 1]);

// Left
_half_width = random_range(crown_half_width/2, crown_half_width/1.5);
_off_x = random_range(crown_half_width - _half_width/4, crown_half_width)
_off_y = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width)
_off_z = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width);
add_cube(crown, _half_width, crown_colour, [_off_x, _off_y, _off_z], [1, 1, 1]);

// Right
_half_width = random_range(crown_half_width/2, crown_half_width/1.5);
_off_x = -random_range(crown_half_width - _half_width/4, crown_half_width)
_off_y = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width)
_off_z = random_range(-(crown_half_width - _half_width), crown_half_width - _half_width);
add_cube(crown, _half_width, crown_colour, [_off_x, _off_y, _off_z], [1, 1, 1]);

vertex_end(crown);
vertex_freeze(crown);

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

fruit_slots = ds_list_create();
var _slots_half_width = fruit_slot_rows div 2;

for (var i=0; i<fruit_slot_rows; i++) {
	for (var j=0; j<fruit_slot_rows; j++) {
		if (!(abs(i-(fruit_slot_rows div 2)) < 2 && abs(j-(fruit_slot_rows div 2)) < 2)) 
			ds_list_add(fruit_slots,i*fruit_slot_rows+j);
	}
}

ds_list_shuffle(fruit_slots);

for (var i=0; i<num_fruit; i++) {
	var _cur_slot = fruit_slots[| 0];
	ds_list_delete(fruit_slots, 0);
	var _col = (_cur_slot mod fruit_slot_rows) - _slots_half_width;
	var _row = (_cur_slot div fruit_slot_rows) - _slots_half_width;
	
	var _xx = (_col * dsin(yaw)) + (_row * dcos(yaw));
	var _yy = (_col * dcos(yaw)) - (_row * dsin(yaw));
	
	fruit[i] = instance_create_layer(x+(0.5*global.xy_scale)+_xx*20, y+(0.5*global.xy_scale)+_yy*20,layer,obj_fruit);
	fruit[i].height = trunk_length + crown_half_width - 0.1 - crown_half_width - fruit[i].length;
	fruit[i].real_z = real_z;
	with (fruit[i]) event_user(0);
}