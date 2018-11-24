/// @func  add_vertex(vert_buf, px, py, pz, nx, ny, nz, colour, alpha, u, v)
/// @arg   vert_buf 
/// @arg   px       
/// @arg   py       
/// @arg   pz       
/// @arg   nx       
/// @arg   ny       
/// @arg   nz       
/// @arg   colour   
/// @arg   alpha    
/// @arg   u        
/// @arg   v        

var _vert_buf = argument[0];
var _px = argument[1];
var _py = argument[2];
var _pz = argument[3];
var _nx = argument[4];
var _ny = argument[5];
var _nz = argument[6];
var _colour = argument[7];
var _alpha = argument[8];
var _u = argument[9];
var _v = argument[10];

vertex_position_3d(_vert_buf, _px, _py, _pz);
vertex_normal(_vert_buf, _nx, _ny, _nz);
vertex_color(_vert_buf, _colour, _alpha);
vertex_texcoord(_vert_buf, _u, _v);