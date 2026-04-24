// Circular magnifier: radial zoom + mix to flat sample at snapshot bounds.
// Uniform order must match BackdropMagnifierLayer / _BackdropMagnifierPainter.
#include <flutter/runtime_effect.glsl>

uniform float uTexW;
uniform float uTexH;
uniform float uOriginX;
uniform float uOriginY;
uniform float uLensCx;
uniform float uLensCy;
uniform float uRadiusPx;
uniform float uZoom;
uniform float uEdgeSoftness;
uniform sampler2D uTex;

out vec4 frag_color;

void main() {
  vec2 fc = FlutterFragCoord().xy;
  vec2 lensC = vec2(uLensCx, uLensCy);
  vec2 delta = fc - lensC;
  float d = length(delta);

  float r = clamp(d / max(uRadiusPx, 1.0), 0.0, 1.0);
  float mag = mix(uZoom, 1.0, pow(r, max(uEdgeSoftness, 0.05)));

  vec2 o = vec2(uOriginX, uOriginY);
  vec2 centerTex = o + lensC;
  vec2 sampleMag = centerTex + delta / max(mag, 0.01);
  vec2 suvMag = sampleMag / vec2(uTexW, uTexH);

  // Как liquid_glass_displace: фон под этим пикселем без линзы
  vec2 sampleFlat = o + fc;
  vec2 suvFlat = sampleFlat / vec2(uTexW, uTexH);

  vec2 halfPx = 0.5 / vec2(uTexW, uTexH);
  vec2 limLo = halfPx;
  vec2 limHi = vec2(1.0) - halfPx;
  vec4 cFlat = texture(uTex, clamp(suvFlat, limLo, limHi));
  vec4 cMag = texture(uTex, clamp(suvMag, limLo, limHi));

  vec2 m = vec2(4.0) / vec2(uTexW, uTexH);
  float wMag =
      smoothstep(0.0, m.x, suvMag.x) *
      (1.0 - smoothstep(1.0 - m.x, 1.0, suvMag.x)) *
      smoothstep(0.0, m.y, suvMag.y) *
      (1.0 - smoothstep(1.0 - m.y, 1.0, suvMag.y));

  vec3 rgb = mix(cFlat.rgb, cMag.rgb, wMag);
  frag_color = vec4(rgb, 1.0);
}
