my_cam = instance_create_layer(0,0,layer,obj_camera);
my_cam.owner = id;
use_camera(obj_MDP.bg_view_index, my_cam.back_camera);
use_camera(obj_MDP.fg_view_index, my_cam.fore_camera);

cursor_model = -1;
cursor_x = 0;
cursor_y = 0;
cursor_ok_colour = [1.0, 1.0, 1.0, 1.0];
cursor_error_colour = [1.0, 0.0, 0.0, 1.0];
cur_cursor_colour = cursor_ok_colour;

can_plant = false;

direction = 120;
pitch = -2;
word_list = ds_list_create();
word_map = ds_map_create();
word_selection = 0;
num_words = 0;

view_bob_t = 0;
view_bob_z = view_bob_amount;
is_stepping = false;

set_cursor_lock(false);
shd_cursor_get_uniforms();

api_get_first_words = http_get(obj_MCP.server_address + "/api/v1/seed?count=" + string(starting_word_count));