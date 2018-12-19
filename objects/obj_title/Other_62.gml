if (async_load[? "id"] == api_handshake) {
	if (async_load[? "status"] == 0) {
		if (async_load[? "result"] == "Welcome to the Garden Path server!") {
			obj_MCP.conn_state = connection_state.connected;
			alarm[0] = 60;
		}
		
		else {
			obj_MCP.conn_state = connection_state.disconnected;
		}
	}
}