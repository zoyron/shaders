varying vec2 vUv;

void main(){
  float strength = vUv.x;
  gl_FragColor = vec4(vec2(strength * 0.0005), 1.0, 1.0);
}
