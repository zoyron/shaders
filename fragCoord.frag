#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse; // by default the co-ordinates are not normalized, have to divide them by u_resolution to normalize them
uniform float u_time;

void main(){
  vec2 st = gl_FragCoord.xy/u_resolution;
  gl_FragColor = vec4(st.x, st.y, 0.0, 0.5);
}
