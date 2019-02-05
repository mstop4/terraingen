var _center = map_side_length / 2;

var _bill_list = ds_list_create();

for (var i=obj_terrain.map_border-1; i<map_side_length-2-obj_terrain.map_border; i++) {
	for (var j=obj_terrain.map_border-1; j<map_side_length-2-obj_terrain.map_border; j++) {
		ds_list_add(_bill_list, i*j);
	}
}

ds_list_shuffle(_bill_list);

var _cur_bill;

for (var i=0; i<10; i++) {
	if (ds_list_empty(_bill_list))
		break;
		
	_cur_bill = _bill_list[| 0];
	var _x = _cur_bill mod (map_side_length-1);
	var _y = _cur_bill div (map_side_length-1);
	
	ds_list_delete(_bill_list, 0);
	var _bill = instance_create_layer(_x * global.xy_scale,_y * global.xy_scale,layer,obj_billboard);
	_bill.direction = random(360);
}

with (cls_fgObj) {
	if (id  != other.id)
		event_user(0);
}

var _player = instance_create_layer(0,0,layer,obj_player);
_player.x = _center * global.xy_scale;
_player.y = _center * global.xy_scale;

with (_player) {
	event_user(0);
}

var _stele = instance_create_layer(0,0,layer,obj_stele);
_stele.x = _center * global.xy_scale;
_stele.y = (_center - 1) * global.xy_scale;

with (_stele) {
	event_user(0);
}