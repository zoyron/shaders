uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
uniform float uColorOffSet;
uniform float uColorMultiplier;

varying vec2 vUv;
varying float vElevation;

void main(){
  float mixStrength = (vElevation + uColorOffSet) * uColorMultiplier;
  vec3 color = mix(uDepthColor, uSurfaceColor, mixStrength);

  gl_FragColor = vec4(color, 1.0);
  #include <colorspace_fragment>
}
