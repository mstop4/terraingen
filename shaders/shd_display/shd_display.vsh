attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

uniform vec3 u_translate;
uniform vec3 u_rotate;
uniform vec3 u_scale;
uniform vec2 u_uvTranslate;

varying vec4 v_vViewPos;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	mat4 translate_mat = mat4(1.0, 0.0, 0.0, u_translate.x,
							  0.0, 1.0, 0.0, u_translate.y,
							  0.0, 0.0, 1.0, u_translate.z,
							  0.0, 0.0, 0.0, 1.0);
							  
	mat4 scale_mat = mat4(u_scale.x, 0.0, 0.0, 0.0,
						  0.0, u_scale.y, 0.0, 0.0,
						  0.0, 0.0, u_scale.z, 0.0,
						  0.0, 0.0, 0.0, 1.0);
						  
	vec3 sinL = vec3(sin(u_rotate.x), sin(u_rotate.y), sin(u_rotate.z));
	vec3 cosL = vec3(cos(u_rotate.x), cos(u_rotate.y), cos(u_rotate.z));
					   
	mat4 rotate_mat = mat4(cosL.y*cosL.z, -cosL.y*sinL.z*cosL.x + sinL.y*sinL.x, cosL.y*sinL.z*sinL.x + sinL.y*cosL.x, 0.0,
						   sinL.z, cosL.z*cosL.x, -cosL.z*sinL.x, 0.0,
						   -sinL.y*cosL.z, sinL.y*sinL.z*cosL.x + cosL.y*sinL.x, -sinL.y*sinL.z*sinL.x + cosL.y*cosL.x, 0.0,
						   0.0, 0.0, 0.0, 1.0);		
	
    vec4 object_space_pos = vec4( in_Position, 1.0) * scale_mat * rotate_mat * translate_mat;
	vec4 view_space_pos = gm_Matrices[MATRIX_WORLD_VIEW] * object_space_pos;
	
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
	
	v_vViewPos = view_space_pos;
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord + u_uvTranslate;
}
