uniform mat4 modelMatrix;
uniform mat4 viewMatrix;
uniform mat4 projectionMatrix;

attribute vec3 position;
attribute float aRandom;

varying float vRandom;

void main(){
  vec4 modelPosition = modelMatrix * vec4(position, 1.0);
  //modelPosition.z += sin(modelPosition.x * 20.0) * 0.05 * aRandom;
  modelPosition.z += aRandom * 0.05;

  vec4 viewPosition = viewMatrix * modelPosition;
  vec4 projectedPosition = projectionMatrix * viewPosition;

  gl_Position = projectedPosition;

  vRandom = aRandom;
}
