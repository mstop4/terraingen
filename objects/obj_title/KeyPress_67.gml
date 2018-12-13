if (obj_MCP.conn_state == connection_state.disconnected) {
	handshake = http_get(obj_MCP.server_address + "/handshake");
	obj_MCP.conn_state = connection_state.connecting;
	alarm[1] = 600;
}