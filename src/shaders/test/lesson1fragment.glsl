
uniform vec3 uColor;
uniform sampler2D uTexture;

varying vec2 vUv;

void main(){
  // picking the color from the flag pixels to colorize the fragments of the shader
  vec4 textureColor = texture2D(uTexture, vUv);



  gl_FragColor = textureColor;
}
