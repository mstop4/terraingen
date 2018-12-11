attribute vec3 in_Position;                  // (x,y,z)

varying vec4 v_vViewPos;

void main()
{
    vec4 object_space_pos = vec4( in_Position, 1.0);
	vec4 view_space_pos = gm_Matrices[MATRIX_WORLD_VIEW] * object_space_pos;
	
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
	
	v_vViewPos = view_space_pos;
}
