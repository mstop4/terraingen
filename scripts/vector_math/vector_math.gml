/// @func vector_math(v1, v2, op)
/// @arg v1
/// @arg v2
/// @arg op

var _v1 = argument[0];
var _v2 = argument[1];
var _op = argument[2];

switch (_op) {
	case vec_op.add:
		var _vlen = array_length_1d(_v1);

		if (_vlen != array_length_1d(_v2)) return 0;

		var _vf = array_create(_vlen);

		for (var i=0; i<_vlen; i++) {
			_vf[i] = _v1[i] + _v2[i];
		}

		return _vf;
		
	case vec_op.subtract:
		var _vlen = array_length_1d(_v1);

		if (_vlen != array_length_1d(_v2)) return 0;

		var _vf = array_create(_vlen);

		for (var i=0; i<_vlen; i++) {
			_vf[i] = _v1[i] - _v2[i];
		}

		return _vf;
}

