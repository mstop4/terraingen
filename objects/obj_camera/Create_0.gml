/// @description init camera

x = 0
y = 0
z = 0;
pitch = 0;

owner = noone;

view_enabled = true;
view_set_visible(view_index,true);
view_set_wport(view_index,1280);
view_set_hport(view_index,720);
cur_camera = 0;

fp_camera = camera_create();
fp_cam_project_matrix = matrix_build_projection_perspective_fov(60,view_get_wport(view_index)/view_get_hport(view_index),1,32000);
camera_set_proj_mat(fp_camera,fp_cam_project_matrix);
view_set_camera(view_index,fp_camera);

//oh_camera = camera_create_view(0,0,view_wport[view_index],view_hport[view_index],0,noone,-1,-1,64,64);
