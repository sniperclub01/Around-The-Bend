//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;

const float speed = 0.003;
const float xFreq = 10.0;
const float xSize = 0.01;

void main()
{
	
	float Hori_Wave = sin(time * speed + v_vTexcoord.y * xFreq) * (xSize * v_vTexcoord.x) / v_vTexcoord.x;
	
	vec4 distort = v_vColour * texture2D( gm_BaseTexture, vec2( v_vTexcoord.x + Hori_Wave, v_vTexcoord.y ));
	gl_FragColor = distort;
	
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}
