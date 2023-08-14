#version 150

#define EMITLESS -1.0

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in float vertexDistance;
in vec4 vertexColor;
in vec4 lightMapColor;
in vec4 overlayColor;
in vec2 texCoord0;
in vec4 normal;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0);
    
    if (color.a < 0.1) {
        discard;
    }
    //ifでの処理
    /*
    if(color.a == 1.0 || color.a < 0.9){
        color *= vertexColor * ColorModulator;
        color.rgb = mix(overlayColor.rgb, color.rgb, overlayColor.a);
        color *= lightMapColor;
    }else{
        float emission= 10.0 * (color.a - 0.9);
        color.rgb = mix(overlayColor.rgb, color.rgb, overlayColor.a);
        color *= max(lightMapColor,emission);
    }
    */

    //三項演算子での処理
    float emission = (color.a == 1.0 || color.a < 0.9) ? EMITLESS : 10.0 * (color.a - 0.9);//EMITLESS = -1.0
    color *= (emission == EMITLESS) ? (vertexColor * ColorModulator) : vec4(1.0) ;
    color.rgb = mix(overlayColor.rgb, color.rgb, overlayColor.a);
    color *= max(lightMapColor,emission);

    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}
