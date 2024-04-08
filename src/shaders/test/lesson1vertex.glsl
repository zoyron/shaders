uniform vec2 uFrequency;
uniform float uTime;

attribute float aRandom;

varying vec2 vUv;

void main(){
  vec4 modelPosition = modelMatrix * vec4(position, 1.0);
  modelPosition.z += sin(modelPosition.y * uFrequency.y - uTime) * 0.05 ;
  modelPosition.z += sin(modelPosition.x * uFrequency.x - uTime) * 0.05 ;
  //modelPosition.z += aRandom * 0.05;

  vec4 viewPosition = viewMatrix * modelPosition;
  vec4 projectedPosition = projectionMatrix * viewPosition;

  gl_Position = projectedPosition;

  vUv = uv;
}
