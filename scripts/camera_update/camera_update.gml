var zz = -640;
var xx = lengthdir_x(720,-current_time/10) + (room_width*0.5);//Rotation is negative now to match with the old gif and spin clockwise
var yy = lengthdir_y(720,-current_time/10) + (room_height*0.5);

//var _view_matrix = matrix_build_lookat(x,y,z,x+lengthdir_x(1,direction),y+lengthdir_y(1,direction),lengthdir_y(1,pitch)+z,0,0,1);
var _view_matrix = matrix_build_lookat(xx,yy,zz,room_width/2,room_height/2,0,0,0,-1);
camera_set_view_mat(view_camera[view_index],_view_matrix);