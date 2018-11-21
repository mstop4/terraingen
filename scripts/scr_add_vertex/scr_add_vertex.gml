///scr_add_vertex( i, j )
//adds vertex to custom uv sphere vertex buffer
//-----------------------------------------
    var _i = argument0;
    var _j = argument1;
//-----------------------------------------
    var _cj = cos( _j );
    var _sj = sin( _j );
    var _ci = cos( _i );
    var _x = _ci * _cj;
    var _y = _ci * _sj;
    var _z = sin( _i );
//-----------------------------------------
    vertex_position_3d(sphere_vb, _x, _y, _z);
    vertex_colour(sphere_vb, c_red,1);
    vertex_normal(sphere_vb, _x, _y, _z);
    //vertex_float3(sphere_vb, -_sj, _cj, 0);   //tangent
//----------------------------------------- 