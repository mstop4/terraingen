/// @description init camera

x = 0
y = 0
z = 0;
pitch = 0;

owner = noone;

camera = camera_create();
cam_project_matrix = matrix_build_projection_perspective_fov(fov,view_get_wport(obj_MDP.view_index)/view_get_hport(obj_MDP.view_index),0.1,render_distance_max);
//gpu_set_fog(true,c_red,render_distance_min,render_distance_max);
camera_set_proj_mat(camera,cam_project_matrix);