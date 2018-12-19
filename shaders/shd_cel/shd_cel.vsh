attribute vec3 in_Position;                  // (x,y,z)
attribute vec3 in_Normal;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

uniform vec3 u_offsetTranslate;
uniform vec3 u_offsetRotate;
uniform vec3 u_offsetScale;

varying vec4 v_vViewPos;
varying vec3 v_vNormal;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	mat4 translate_mat = mat4(1.0, 0.0, 0.0, u_offsetTranslate.x,
							  0.0, 1.0, 0.0, u_offsetTranslate.y,
							  0.0, 0.0, 1.0, u_offsetTranslate.z,
							  0.0, 0.0, 0.0, 1.0);
							  
	mat4 scale_mat = mat4(u_offsetScale.x, 0.0, 0.0, 0.0,
						  0.0, u_offsetScale.y, 0.0, 0.0,
						  0.0, 0.0, u_offsetScale.z, 0.0,
						  0.0, 0.0, 0.0, 1.0);
						  
	mat4 rotateX_mat = mat4(1.0, 0.0, 0.0, 0.0,
							0.0, cos(u_offsetRotate.x), -sin(u_offsetRotate.x), 0.0,
							0.0, sin(u_offsetRotate.x), cos(u_offsetRotate.x), 0.0,
							0.0, 0.0, 0.0, 1.0);
						  
	mat4 rotateY_mat = mat4(cos(u_offsetRotate.y), 0.0, sin(u_offsetRotate.y), 0.0,
							0.0, 1.0, 0.0, 0.0,
							-sin(u_offsetRotate.y), 0.0, cos(u_offsetRotate.y), 0.0,
							0.0, 0.0, 0.0, 1.0);
							
	mat4 rotateZ_mat = mat4(cos(u_offsetRotate.z), -sin(u_offsetRotate.z), 0.0, 0.0,
							sin(u_offsetRotate.z), cos(u_offsetRotate.z), 0.0, 0.0,
							0.0, 0.0, 1.0, 0.0,
							0.0, 0.0, 0.0, 1.0);
							
	mat4 rotate_mat = rotateX_mat * rotateZ_mat * rotateY_mat;
	
    vec4 object_space_pos = vec4( in_Position, 1.0) * scale_mat * rotate_mat * translate_mat;
	vec4 view_space_pos = gm_Matrices[MATRIX_WORLD_VIEW] * object_space_pos;
	
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
	
	v_vViewPos = view_space_pos;
	vec4 n = gm_Matrices[MATRIX_WORLD] * vec4(in_Normal, 0.0) * scale_mat * rotate_mat * translate_mat;
	v_vNormal = normalize(n.xyz);
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}
