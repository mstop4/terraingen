uniform vec4 u_ambient_colour;
uniform vec4 u_diffuse_colour;
uniform vec3 u_diffuse_direction;

varying vec3 v_vNormal;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	float diffuse_ratio = max(dot(v_vNormal, u_diffuse_direction), 0.0);
    gl_FragColor = (v_vColour * u_ambient_colour) + (v_vColour * u_diffuse_colour * diffuse_ratio);
}
