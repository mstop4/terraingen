/// @func tokenize_string(string, delimiter)
/// @arg string
/// @arg delimiter

var _string = argument[0];
var _delimiter = argument[1];

var _tokens = [];
var _count = 0;

while (string_length(_string) > 0) {
	var _first_occ = string_pos(_delimiter,_string);
	
	// No Spaces left
	if (_first_occ == 0) {
		_tokens[_count] = _string;
		_string = "";
	}
	
	// Still spaces left
	else {
		// No leading spaces
		if (_first_occ > 1) {
			_tokens[_count] = string_copy(_string,1,_first_occ-1);
			_count++;
		}
		
		_string = string_delete(_string,1,_first_occ);
	}
}

return _tokens;