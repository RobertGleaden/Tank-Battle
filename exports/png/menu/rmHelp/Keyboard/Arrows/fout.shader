float2 vec2(float x0, float x1)
{
    return float2(x0, x1);
}
// Varyings
static float2 _coord = {0, 0};

static float4 gl_Color[1] =
{
    float4(0, 0, 0, 0)
};


uniform float _gm_AlphaRefValue : register(c3);
uniform bool _gm_AlphaTestEnabled : register(c4);
uniform sampler2D _gm_BaseTexture : register(s0);
uniform float4 _gm_FogColour : register(c5);
uniform bool _gm_PS_FogEnabled : register(c6);
uniform float4 _uPhase : register(c7);

float4 gl_texture2D(sampler2D s, float2 t)
{
    return tex2D(s, t);
}

#define GL_USES_FRAG_COLOR
;
;
;
;
;
void _DoAlphaTest(in float4 _SrcColour)
{
{
if(_gm_AlphaTestEnabled)
{
{
if((_SrcColour.w <= _gm_AlphaRefValue))
{
{
discard;
;
}
;
}
;
}
;
}
;
}
}
;
void _DoFog(inout float4 _SrcColour, in float _fogval)
{
{
if(_gm_PS_FogEnabled)
{
{
(_SrcColour = lerp(_SrcColour, _gm_FogColour, clamp(_fogval, 0.0, 1.0)));
}
;
}
;
}
}
;
;
;
void gl_main()
{
{
float2 _phs = vec2(cos((_uPhase.z + (_coord.y * _uPhase.w))), sin((_uPhase.z + (_coord.x * _uPhase.w))));
float2 _crd = (_coord + (_phs * _uPhase.xy));
float4 _col = gl_texture2D(_gm_BaseTexture, _crd);
(gl_Color[0] = _col);
}
}
;
struct PS_INPUT
{
    float2 v0 : TEXCOORD0;
};

struct PS_OUTPUT
{
    float4 gl_Color0 : COLOR0;
};

PS_OUTPUT main(PS_INPUT input)
{
    _coord = input.v0.xy;

    gl_main();

    PS_OUTPUT output;
    output.gl_Color0 = gl_Color[0];

    return output;
}
