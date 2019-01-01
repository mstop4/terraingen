/// @func  cross_product_normalized(vec1, vec2)
/// @arg   vec1 
/// @arg   vec2

var _vec1 = argument[0];
var _vec2 = argument[1];

var _x1 = _vec1[0];
var _y1 = _vec1[1];
var _z1 = _vec1[2];
var _x2 = _vec2[0];
var _y2 = _vec2[1];
var _z2 = _vec1[2];

var _x3 = _y1*_z2 - _z1*_y2;
var _y3 = _z1*_x2 - _x1*_z2;
var _z3 = _x1*_y2 - _y1*_x2;

return normalize_3d(_x3, _y3, _z3);