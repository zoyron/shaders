varying vec2 vUv;

void main(){
  float strength = step(0.4, mod(vUv.y * 10.0, 1.0));
  strength *= step(0.75, mod(vUv.x * 10.0, 1.0));
  float strength1 = step(0.4, mod(vUv.x * 10.0, 1.0));
  strength1 *= step(0.75, mod(vUv.y * 10.0, 1.0));
  strength += strength1;
  gl_FragColor = vec4(vec3(strength), 1.0);
}
