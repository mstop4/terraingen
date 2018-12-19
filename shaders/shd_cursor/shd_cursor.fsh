varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 u_blend;

void main()
{
    gl_FragColor = v_vColour * u_blend;
}
