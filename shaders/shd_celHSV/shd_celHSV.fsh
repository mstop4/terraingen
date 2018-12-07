uniform vec4 u_ambient_colour;
uniform float u_normal_weight;

uniform float u_fog_start;
uniform float u_fog_end;
uniform vec4 u_fog_colour;

uniform vec4 u_diffuse_colour1;
uniform vec3 u_diffuse_direction1;
uniform vec4 u_diffuse_colour2;
uniform vec3 u_diffuse_direction2;

varying vec4 v_vViewPos;
varying vec3 v_vNormal;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

// http://lolengine.net/blog/2013/07/27/rgb-to-hsv-in-glsl
vec3 rgb2hsv(vec3 c)
{
    vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
    vec4 P = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));
    vec4 Q = mix(vec4(P.xyw, c.r), vec4(c.r, P.yzx), step(P.x, c.r));

    float d = Q.x - min(Q.w, Q.y);
    float e = 1.0e-10;
    return vec3(abs(Q.z + (Q.w - Q.y) / (6.0 * d + e)), d / (Q.x + e), Q.x);
}

vec3 hsv2rgb(vec3 c)
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 P = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(P - K.xxx, 0.0, 1.0), c.y);
}

void main()
{
	//float diffuse_ratio1 = max(dot(v_vNormal * u_normal_weight, u_diffuse_direction1), 0.0);
	//float diffuse_ratio2 = max(dot(v_vNormal * u_normal_weight, u_diffuse_direction2), 0.0);
	
	vec3 in_col_hsv = rgb2hsv(vec3(1.0, 0.0, 0.0));
	
	/*vec4 final_colour = (v_vColour * u_ambient_colour) + 
					   (v_vColour * u_diffuse_colour1 * diffuse_ratio1) +
					   (v_vColour * u_diffuse_colour2 * diffuse_ratio2);*/
					   
	vec4 final_colour = vec4(hsv2rgb(in_col_hsv), 1.0);
	
	float dist = length(v_vViewPos);
	float fog_ratio = clamp((u_fog_end - dist) / (u_fog_end - u_fog_start), 0.0, 1.0);
	
    gl_FragColor = mix(u_fog_colour, final_colour, 1.0);
}
