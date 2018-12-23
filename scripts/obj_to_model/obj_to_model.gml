/// @func obj_to_model(filename)
/// @arg filename

var _filename = argument[0];

var _model = vertex_create_buffer();
vertex_begin(_model, global.vert_w_light);

var _f = file_text_open_read(_filename);
var _v = ds_list_create();
var _vt = ds_list_create();
var _vn = ds_list_create();
var _vc = ds_list_create();

while (!file_text_eof(_f)) {
	while (!file_text_eoln(_f)) {
		var _line = tokenize_string(file_text_read_string(_f), " ");
		
		switch (_line[0]) {
			case "#":
			case "o":
				break;
			
			case "v":
				ds_list_add(_v,[real(_line[1]), real(_line[2]), real(_line[3])]);
				if (array_length_1d(_line) > 4) {
					ds_list_add(_vc,[real(_line[4]), real(_line[5]), real(_line[6])]);
				} else {
					ds_list_add(_vc,[1, 1, 1]);
				}
				break;
				
			case "vt":
				ds_list_add(_vt, [real(_line[1]), real(_line[2])]);
				break;
				
			case "vn":
				ds_list_add(_vn, [real(_line[1]), real(_line[2]), real(_line[3])]);
				break;
				
			case "f":
				for (var i=1; i<array_length_1d(_line); i++) {
					var _face = tokenize_string(_line[i], "/");
					
					var _vert = _v[| real(_face[0])-1];
					vertex_position_3d(_model, _vert[0], _vert[1], _vert[2]);
					
					var _norm = _vn[| real(_face[2])-1];
					vertex_normal(_model, _norm[0], _norm[1], _norm[2]);
					
					var _col = _vc[| real(_face[0])-1];
					vertex_colour(_model, make_colour_rgb(_col[0] * 255, _col[1] * 255, _col[2] * 255), 1);
					
					var _uv = _vt[| real(_face[1])-1];
					vertex_texcoord(_model, _uv[0], _uv[1]);
				}
				break;
		}
	}
	
	file_text_readln(_f);
}

file_text_close(_f);

vertex_end(_model);
vertex_freeze(_model);

ds_list_destroy(_v);
ds_list_destroy(_vt);
ds_list_destroy(_vn);
ds_list_destroy(_vc);

return _model;