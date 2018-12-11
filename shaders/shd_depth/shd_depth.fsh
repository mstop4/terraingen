uniform float u_near;
uniform float u_far;
varying vec4 v_vViewPos;

void main()
{
	float dist = length(v_vViewPos);
	float z_ratio = 2.0 * (v_vViewPos.z - u_near) / (u_far - u_near) - 1.0;

    gl_FragColor = mix(vec4(0.0, 0.0, 0.0, 1.0), vec4(1.0, 1.0, 1.0, 1.0), z_ratio);
}