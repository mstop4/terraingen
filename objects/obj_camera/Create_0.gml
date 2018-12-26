/// @description init camera

x = 0
y = 0
z = 0;
pitch = 0;
lookat = [0, 0, 0];

owner = noone;
bind_z_to_owner = true;

fore_camera = camera_create();
back_camera = camera_create();
fb_cam_proj_mat =
		matrix_build_projection_perspective_fov(
		obj_MDP.fov,
		view_get_wport(obj_MDP.fg_view_index)/view_get_hport(obj_MDP.fg_view_index),
		obj_MDP.near_dist,obj_MDP.far_dist);

camera_set_proj_mat(fore_camera,fb_cam_proj_mat);
camera_set_proj_mat(back_camera,fb_cam_proj_mat);