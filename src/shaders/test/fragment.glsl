varying vec2 vUv;

void main(){
  float strength = ceil(vUv.x * 10.0) / 10.0;
  strength *= ceil(vUv.y * 10.0) / 10.0;
  gl_FragColor = vec4(vec3(strength), 1.0);
}
