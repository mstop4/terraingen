uniform vec4 u_ambient_colour;

varying vec3 v_vNormal;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * u_ambient_colour;
}
