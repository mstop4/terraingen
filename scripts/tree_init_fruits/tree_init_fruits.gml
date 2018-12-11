/// @arg word_list

var _word_list = argument[0];

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
	fruit[i].word = _word_list[| i];
	with (fruit[i]) event_user(0);
}