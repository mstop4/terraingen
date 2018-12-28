uniform float u_fog_start;
uniform float u_fog_end;
uniform sampler2D u_bg_tex;
uniform vec2 u_app_size;
uniform vec2 u_uvBounds;

varying vec4 v_vViewPos;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{	
	vec2 realTexcoord = vec2( mod(v_vTexcoord.x, u_uvBounds.x),
							  mod(v_vTexcoord.y, u_uvBounds.y));	
	vec4 tex_colour = texture2D(gm_BaseTexture, realTexcoord);
	
	if (tex_colour.a < 0.01)
		discard;
		
	vec4 fg_colour = v_vColour * tex_colour;	   
	vec4 bg_colour = texture2D(u_bg_tex, gl_FragCoord.xy / u_app_size.xy);
	
	float dist = length(v_vViewPos);
	float fog_ratio = clamp((u_fog_end - dist) / (u_fog_end - u_fog_start), 0.0, 1.0);

    gl_FragColor = mix(bg_colour, fg_colour, fog_ratio);
}
