varying vec2 vUv;

float random (vec2 st) {
    return fract(sin(dot(st.xy,
                         vec2(12.9898,78.233)))*
        43758.5453123);
}

void main(){
  vec2 waveUv = vec2(
    vUv.x + sin(vUv.y * 30.0) * 0.1,
    vUv.y + sin(vUv.x * 30.0) * 0.1
  );
  float strength = 1.0 - step(0.01, abs(distance(waveUv, vec2(0.5)) - 0.25));
  gl_FragColor = vec4(vec3(strength), 1.0);
}
