/// @func obj_to_model(filename)
/// @arg filename

var _filename = argument[0];

var _model = 0;

var _f = file_text_open_read(_filename);

while (!file_text_eof(_f)) {
	while (!file_text_eoln(_f)) {
		var _line = file_text_read_string(_f);
		print(tokenize_string(_line, " "));
	}
	
	file_text_readln(_f);
}

file_text_close(_f);