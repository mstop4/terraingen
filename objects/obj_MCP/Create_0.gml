#macro PORT "3000"

//show_debug_overlay(true);
randomize();
global.xy_scale = 100;
global.dt_scale = 1/60 * 1000000;
server_address = "https://garden-path-server.herokuapp.com";
mouse_sens_hor = 0.1;
mouse_sens_ver = 0.1;
cursor_lock = false;
conn_state = connection_state.disconnected;