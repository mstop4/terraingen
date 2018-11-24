model = vertex_create_buffer();
vertex_begin(model,global.vert_w_light);

add_vertex(model, 0, -0.5, 0.5, 1, 0, 0, c_white, 1, 0, 0);
add_vertex(model, 0, -0.5, -0.5, 1, 0, 0, c_white, 1, 0, 1);
add_vertex(model, 0, 0.5, 0.5, 1, 0, 0, c_white, 1, 1, 0);
add_vertex(model, 0, 0.5, -0.5, 1, 0, 0, c_white, 1, 1, 1);

add_vertex(model, 0, 0.5, -0.5, -1, 0, 0, c_white, 1, 1, 1);

add_vertex(model, 0, 0.5, -0.5, -1, 0, 0, c_white, 1, 1, 1);
add_vertex(model, 0, 0.5, 0.5, -1, 0, 0, c_white, 1, 1, 0);
add_vertex(model, 0, -0.5, -0.5, -1, 0, 0, c_white, 1, 0, 1);
add_vertex(model, 0, -0.5, 0.5, -1, 0, 0, c_white, 1, 0, 0);

vertex_end(model);
vertex_freeze(model);