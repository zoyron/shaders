// rendering texts in GPUs can be an overcomplicated task, so we will start by rendering a warm color

#ifdef GL_ES
precision mediump float; // setting the precision as medium because GL_ES is usually defined in mobiles and browsers, so higher precision would take more time to render
#endif

uniform float u_time;
void main(){
  gl_FragColor = vec4(0,1,0,1);
}
