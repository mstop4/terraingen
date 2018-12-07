attribute vec3 in_Position;                  // (x,y,z)
attribute vec3 in_Normal;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
//attribute vec2 in_TextureCoord;              // (u,v)

varying vec4 v_vViewPos;
varying vec3 v_vNormal;
//varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position, 1.0);
	vec4 view_space_pos = gm_Matrices[MATRIX_WORLD_VIEW] * object_space_pos;
	
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
	
	v_vViewPos = view_space_pos;
	vec4 n = gm_Matrices[MATRIX_WORLD] * vec4(in_Normal, 0.0);
	v_vNormal = normalize(n.xyz);
    v_vColour = in_Colour;
    //v_vTexcoord = in_TextureCoord;
}
