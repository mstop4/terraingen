uniform vec4 u_ambient_colour;
uniform float u_normal_weight;

uniform float u_fog_start;
uniform float u_fog_end;
uniform sampler2D u_bg_tex;
uniform vec2 u_app_size;

uniform vec4 u_diffuse_colour1;
uniform vec3 u_diffuse_direction1;
uniform vec4 u_diffuse_colour2;
uniform vec3 u_diffuse_direction2;

varying vec4 v_vViewPos;
varying vec3 v_vNormal;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 tex_colour = texture2D(gm_BaseTexture, v_vTexcoord);
	
	if (tex_colour.a < 0.01)
		discard;
	
	float diffuse_ratio1 = max(dot(v_vNormal * u_normal_weight, u_diffuse_direction1), 0.0);
	float diffuse_ratio2 = max(dot(v_vNormal * u_normal_weight, u_diffuse_direction2), 0.0);
	
	vec4 fg_colour = (v_vColour * u_ambient_colour) + 
					   (v_vColour * u_diffuse_colour1 * diffuse_ratio1) +
					   (v_vColour * u_diffuse_colour2 * diffuse_ratio2);
					   
	fg_colour *= tex_colour;
					   
	vec4 bg_colour = texture2D(u_bg_tex, gl_FragCoord.xy / u_app_size.xy);
	
	float dist = length(v_vViewPos);
	float fog_ratio = clamp((u_fog_end - dist) / (u_fog_end - u_fog_start), 0.0, 1.0);

    gl_FragColor = mix(bg_colour, fg_colour, fog_ratio);
}
