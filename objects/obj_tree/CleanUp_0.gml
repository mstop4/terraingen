vertex_delete_buffer(trunk);
vertex_delete_buffer(crown);

for (var i=0; i<num_branches; i++) {
	vertex_delete_buffer(branch[i]);
}