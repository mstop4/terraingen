//Set up camera location
var zz = 100;
var xx = lengthdir_x(360,-current_time/100);//Rotation is negative now to match with the old gif and spin clockwise
var yy = lengthdir_y(360,-current_time/100);

//Build a matrix that looks from the camera location above, to the room center. The up vector points to -z
mLookat = matrix_build_lookat(xx,yy,zz,0,0,0,0,0,-1);

//Assign the matrix to the camera. This updates were the camera is looking from, without having to unnecessarily update the projection.
camera_set_view_mat(view_camera[0], mLookat);