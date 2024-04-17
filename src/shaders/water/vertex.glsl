uniform float uBigWavesElevation;
uniform vec2 uBigWavesFrequency;
uniform float uTime;
uniform float uBigWavesSpeed;

varying vec2 vUv;

void main(){
  vec4 modelPosition = modelMatrix * vec4(position, 1.0);

  float elevation = sin(modelPosition.x * uBigWavesFrequency.x + uTime * uBigWavesSpeed) * sin(modelPosition.z * uBigWavesFrequency.y + uTime * uBigWavesSpeed) * uBigWavesElevation;

  modelPosition.y += elevation;

  vec4 viewPostition = viewMatrix * modelPosition;
  vec4 projectedPosition = projectionMatrix * viewPostition;
  gl_Position = projectedPosition;

  vec2 vUv = uv;
}
