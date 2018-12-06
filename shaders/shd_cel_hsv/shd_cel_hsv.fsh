uniform vec4 u_ambient_colour;
uniform float u_normal_weight;

uniform float u_fog_start;
uniform float u_fog_end;
uniform vec4 u_fog_colour;

uniform vec3 u_diffuse_direction1;
uniform vec3 u_diffuse_direction2;

varying vec4 v_vViewPos;
varying vec3 v_vNormal;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

// http://lolengine.net/blog/2013/07/27/rgb-to-hsv-in-glsl
vec3 rgb2hsv(vec3 c)
{
    vec4 K = vec4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
    vec4 p = mix(vec4(c.bg, K.wz), vec4(c.gb, K.xy), step(c.b, c.g));
    vec4 q = mix(vec4(p.xyw, c.r), vec4(c.r, p.yzx), step(p.x, c.r));

    float d = q.x - min(q.w, q.y);
    float e = 1.0e-10;
    return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
}

vec3 hsv2rgb(vec3 c)
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void main()
{
	float diffuse_ratio1 = max(dot(v_vNormal * u_normal_weight, u_diffuse_direction1), 0.0);
	float diffuse_ratio2 = max(dot(v_vNormal * u_normal_weight, u_diffuse_direction2), 0.0);
	
	vec3 colour_hsv = rgb2hsv(v_vColour.rgb);
	
	vec2 c_h = vec2(20.0 * diffuse_ratio1, 5.0 * diffuse_ratio2);
	vec2 c_s = vec2((1.0 - colour_hsv.y) * (1.0 - diffuse_ratio1), (1.0 - colour_hsv.y) * (1.0 - diffuse_ratio2));
	vec2 c_v = vec2(colour_hsv.z * diffuse_ratio1, colour_hsv.z * diffuse_ratio2);

	float new_h = colour_hsv.x + c_h.x + c_h.y;
	
	//if (new_h < 0.0) new_h += 1.0;
	//else if (new_h > 1.0) new_h -= 1.0;

	vec3 new_colour_hsv = vec3(new_h, 1.0, 1.0);
							   //clamp(colour_hsv.y + c_s.x + c_s.y, 0.0, 1.0),
							   //clamp(c_v.x + c_v.y, 0.0, 1.0));
							   
							   
	vec4 new_colour_rgb = vec4(hsv2rgb(new_colour_hsv), v_vColour.a);
					   
	vec4 true_colour = /*(v_vColour * u_ambient_colour) +*/ new_colour_rgb;
	
	float dist = length(v_vViewPos);
	float fog_ratio = clamp((u_fog_end - dist) / (u_fog_end - u_fog_start), 0.0, 1.0);
	
    vec4 final = mix(u_fog_colour, true_colour, fog_ratio);
	gl_FragColor = vec4(final.rgb, 1.0);
}
