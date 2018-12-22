uniform float u_fog_start;
uniform float u_fog_end;
uniform sampler2D u_bg_tex;
uniform vec2 u_app_size;

varying vec4 v_vViewPos;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{				   
	vec4 fg_colour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );	   
	vec4 bg_colour = texture2D(u_bg_tex, gl_FragCoord.xy / u_app_size.xy);
	
	float dist = length(v_vViewPos);
	float fog_ratio = clamp((u_fog_end - dist) / (u_fog_end - u_fog_start), 0.0, 1.0);

    gl_FragColor = mix(bg_colour, fg_colour, fog_ratio);
}
