draw_set_font(fnt_gui);
switch (obj_MCP.conn_state) {
	case connection_state.disconnected:
		draw_text(8,8,"Offline");
		break;
		
	case connection_state.connecting:
		draw_text(8,8,"Connecting...");
		break;
		
	case connection_state.connected:
		draw_text(8,8,"Online");
		break;
		
	default:
		draw_text(8,8,"Error");
}