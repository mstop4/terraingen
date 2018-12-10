if (conn_state == connection_state.disconnected) {
	handshake = http_get(obj_MCP.server_address + "/handshake");
}