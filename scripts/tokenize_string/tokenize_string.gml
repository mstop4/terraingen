/// @func tokenize_string(string, delimiter)
/// @arg string
/// @arg delimiter

var _string = argument[0];
var _delimiter = argument[1];

var _tokens = [];
var _count = 0;

while (string_length(_string) > 0) {
	var _first_space = string_pos(" ",_string);
	
	// No Spaces left
	if (_first_space == 0) {
		_tokens[_count] = _string;
		_string = "";
	}
	
	// Still spaces left
	else {
		// No leading spaces
		if (_first_space > 1) {
			_tokens[_count] = string_copy(_string,1,_first_space-1);
			_count++;
		}
		
		_string = string_copy(_string,_first_space+1, string_length(_string)-_first_space);
	}
}

return _tokens;