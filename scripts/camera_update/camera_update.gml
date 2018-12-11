var _cam = argument[0];
var _lookat = [x+lengthdir_x(1,direction), y+lengthdir_y(1,direction), lengthdir_y(1,pitch)+z];
var _view_matrix = matrix_build_lookat(x,y,z,_lookat[0],_lookat[1],_lookat[2],0,0,-1);
camera_set_view_mat(_cam,_view_matrix);