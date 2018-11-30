uniform vec4 u_ambient_colour;
uniform float u_normal_weight;

uniform vec4 u_diffuse_colour1;
uniform vec3 u_diffuse_direction1;
uniform vec4 u_diffuse_colour2;
uniform vec3 u_diffuse_direction2;

varying vec3 v_vNormal;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	float diffuse_ratio1 = max(dot(v_vNormal * u_normal_weight, u_diffuse_direction1), 0.0);
	float diffuse_ratio2 = max(dot(v_vNormal * u_normal_weight, u_diffuse_direction2), 0.0);
    gl_FragColor = (v_vColour * u_ambient_colour) + 
				   (v_vColour * u_diffuse_colour1 * diffuse_ratio1) +
				   (v_vColour * u_diffuse_colour2 * diffuse_ratio2);
}
