var _r = argument[0];
var _g = argument[1];
var _b = argument[2];

var _min = min(_r, _g, _b);
var _max = max(_r, _g, _b);

var _h, _s, _v;

// Hue
if (_max == _min)  {
	_h = 0;
}

else {
	if (_max == _r) {
		_h = 60 * ((_g - _b) / (_max - _min));
	}
	
	else if (_max == _g) {
		_h = 60 * (2 + (_b - _r) / (_max - _min));
	}
	
	else {
		_h = 60 * (4 + (_r - _g) / (_max - _min));
	}
}

if (_h < 0) _h += 360;

// Saturation
if (_max == 0) {
	_s = 0;
}

else {
	_s = (_max - _min) / _max;
}

// Value
_v = _max;

return [_h, _s, _v];