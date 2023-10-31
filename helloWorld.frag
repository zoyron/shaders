// rendering texts in GPUs can be an overcomplicated task, so we will start by rendering a warm color

#ifdef GL_ES
precision mediump float;
#endif

uniform float u_time;
void main(){
  gl_FragColor = vec4(1.000,1.0,0.0,1.000);
}
