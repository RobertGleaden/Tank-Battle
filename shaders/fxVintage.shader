attribute vec3 in_Position;
attribute vec2 in_TextureCoord;
varying vec2 coord;

void main()
{
    coord = in_TextureCoord;
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 1.0);
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 coord;
uniform vec4 uPhase;

void main()
{
    vec2 phs = vec2(cos(uPhase.z + (coord.y * uPhase.w)), sin(uPhase.z + (coord.x * uPhase.w)));
    vec2 crd = coord + (phs * uPhase.xy);
    vec4 col = texture2D(gm_BaseTexture, crd);
    gl_FragColor = col;
}

