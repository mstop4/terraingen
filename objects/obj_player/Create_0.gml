my_cam = instance_create_layer(0,0,layer,obj_camera);
my_cam.owner = id;
use_camera(obj_MDP.bg_view_index, my_cam.back_camera);
use_camera(obj_MDP.fg_view_index, my_cam.fore_camera);

pitch = 0;

view_bob_t = 0;
view_bob_z = view_bob_amount;
is_stepping = false;

event_user(0);