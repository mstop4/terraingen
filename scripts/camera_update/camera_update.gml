var _view_matrix = matrix_build_lookat(x,y,z,x+lengthdir_x(1,direction),y+lengthdir_y(1,direction),lengthdir_y(1,pitch)+z,0,0,-1);
camera_set_view_mat(view_camera[view_index],_view_matrix);