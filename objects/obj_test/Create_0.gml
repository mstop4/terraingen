gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);
layer_force_draw_depth(true, 0);

view_enabled = true;
view_set_visible(0, true);

camera = camera_create();
projMat = matrix_build_projection_perspective_fov(-60, -view_get_wport(0)/view_get_hport(0), 32, 32000);
camera_set_proj_mat(camera, projMat);
view_set_camera(0, camera);
camera_set_update_script(view_camera[0], camera_test);