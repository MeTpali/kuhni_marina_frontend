// Snapshot backdrop: UV warp + optional separable blur.
// Uniform order must match BackdropDisplaceLayer / _BackdropDisplacePainter (Dart).
#include <flutter/runtime_effect.glsl>

uniform float uTexW;
uniform float uTexH;
uniform float uOriginX;
uniform float uOriginY;
uniform float uDispScale;
uniform float uBlurSigma;
uniform sampler2D uTex;

out vec4 frag_color;

void main() {
  vec2 fc = FlutterFragCoord().xy;
  vec2 texPos = vec2(uOriginX, uOriginY) + fc;
  vec2 uv = texPos / vec2(uTexW, uTexH);

  vec2 p = uv * 20.0;
  float n1 = sin(p.x * 2.1) * cos(p.y * 1.7);
  float n2 = sin(p.y * 2.3 + 1.0) * cos(p.x * 1.9 + 0.5);
  float denom = max(min(uTexW, uTexH), 1.0);
  vec2 warp = vec2(n1, n2) * (uDispScale / denom) * 0.35;

  vec2 suv = clamp(uv + warp, vec2(0.001), vec2(0.999));
  vec4 c = texture(uTex, suv);

  float sigma = uBlurSigma;
  if (sigma < 0.001) {
    frag_color = c;
    return;
  }
  vec2 px = 1.0 / vec2(uTexW, uTexH);
  vec2 o = px * sigma * 1.8;
  vec4 acc = c * 0.2270270270;
  acc += texture(uTex, clamp(suv + vec2(0.0, o.y), vec2(0.001), vec2(0.999))) * 0.3162162162;
  acc += texture(uTex, clamp(suv - vec2(0.0, o.y), vec2(0.001), vec2(0.999))) * 0.3162162162;
  acc += texture(uTex, clamp(suv + vec2(o.x, 0.0), vec2(0.001), vec2(0.999))) * 0.0702702703;
  acc += texture(uTex, clamp(suv - vec2(o.x, 0.0), vec2(0.001), vec2(0.999))) * 0.0702702703;
  frag_color = acc;
}
