control_slot = -1;
mouse_device_id = 0;

kbm_key[action.up] = ord("W");
kbm_key[action.down] = ord("S");
kbm_key[action.left] = ord("A");
kbm_key[action.right] = ord("D");

kbm_key[action.pause] = ord("P");
kbm_key[action.fullscreen] = ord("F");
kbm_key[action.quit] = vk_escape;

kbm_key[action.regen_terrain] = vk_enter;
kbm_key[action.regrow_trees] = ord("G");
kbm_key[action.plant_tree] = vk_space;

kbm_key[action.light_incr_theta] = vk_right;
kbm_key[action.light_decr_theta] = vk_left;
kbm_key[action.light_incr_phi] = vk_down;
kbm_key[action.light_decr_phi] = vk_up;

kbm_device[action.up] = device.keyboard;
kbm_device[action.down] = device.keyboard;
kbm_device[action.left] = device.keyboard;
kbm_device[action.right] = device.keyboard;

kbm_device[action.pause] = device.keyboard;
kbm_device[action.fullscreen] = device.keyboard;
kbm_device[action.quit] = device.keyboard;

kbm_device[action.regen_terrain] = device.keyboard;
kbm_device[action.regrow_trees] = device.keyboard;
kbm_device[action.plant_tree] = device.keyboard;

kbm_device[action.light_incr_theta] = device.keyboard;
kbm_device[action.light_decr_theta] = device.keyboard;
kbm_device[action.light_incr_phi] = device.keyboard;
kbm_device[action.light_decr_phi] = device.keyboard;

for (var i=0; i<action.max_actions; i++)
{
	button_pressed[i] = false;
	button_held[i] = false;
	button_released[i] = false;
}