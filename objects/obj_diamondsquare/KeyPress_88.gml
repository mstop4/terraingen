var _up = 0;
var _down = 2;
var _left = 0;
var _right = 2;

var _h_vec = [2, 0, _right - _left];
var _v_vec = [0, 2, _down - _up];

print(cross_product_normalized(_v_vec[0], _v_vec[1], _v_vec[2], _h_vec[0], _h_vec[1], _h_vec[2]));