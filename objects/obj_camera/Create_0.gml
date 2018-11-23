/// @description init camera

x = 0
y = 0
z = 0;
pitch = 0;

owner = noone;

camera = camera_create();
cam_project_matrix = matrix_build_projection_perspective_fov(60,view_get_wport(obj_MDP.view_index)/view_get_hport(obj_MDP.view_index),0.1,3200);
camera_set_proj_mat(camera,cam_project_matrix);