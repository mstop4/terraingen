model = vertex_create_buffer();
vertex_begin(model,global.vert_w_light);

vertex_position_3d(model,-100,-100,0);
vertex_color(model,c_white,1);
vertex_normal(model,0,0,1);

vertex_position_3d(model,-100,100,0);
vertex_color(model,c_white,1);
vertex_normal(model,0,0,1);

vertex_position_3d(model,100,-100,0);
vertex_color(model,c_white,1);
vertex_normal(model,0,0,1);

vertex_position_3d(model,100,100,0);
vertex_color(model,c_white,1);
vertex_normal(model,0,0,1);

vertex_end(model);
vertex_freeze(model);