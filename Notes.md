# Notes for shaders

* gl_Position is a reserved keyword. it defines the position of the shader on the screen

```glsl
attribute vec3 position;
void main(){
    // gl_Position only takes a vec4(), but from above we can see that position is a vec3(), so we change it here to vec4()
    gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
}

```
