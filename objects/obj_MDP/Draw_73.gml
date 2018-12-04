shader_reset();

// Render Skybox
gpu_set_zwriteenable(false);
with (obj_skybox) {
	event_user(0);
}
gpu_set_zwriteenable(true);