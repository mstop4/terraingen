var _h = argument[0];
var _s = argument[1];
var _v = argument[2];

var _c = _v * _s;

var _hi = _h / 60;
var _x = _c * (1 - abs(_hi mod 2 - 1));

var _ri, _gi, _bi;

if (_hi <= 1) {
	_ri = _c;
	_gi = _x;
	_bi = 0;
}

else if (_hi <= 2) {
	_ri = _x;
	_gi = _c;
	_bi = 0;
}

else if (_hi <= 3) {
	_ri = 0;
	_gi = _c;
	_bi = _x;
}

else if (_hi <= 4) {
	_ri = 0;
	_gi = _x;
	_bi = _c;
}

else if (_hi <= 5) {
	_ri = _x;
	_gi = 0;
	_bi = _c;
}

else if (_hi <= 6) {
	_ri = _c;
	_gi = 0;
	_bi = _x;
}

else {
	_ri = 0;
	_gi = 0;
	_bi = 0;
}

var _m = _v - _c;

return [_ri + _m, _gi + _m, _bi + _m];