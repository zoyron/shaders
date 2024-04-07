# Notes for shaders

* gl_Position is a reserved keyword. it defines the position of the shader on the screen

```glsl
uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform modelMatrix;
/*
* we use the uniform keyword here because the matricies are same for all the vertices
* To apply a matrix to a vector, we multipy it with the vector
* The matrix must have the same size as the co-ordinates, i.e. mat4 for vec4 or mat3 for vec3, etc.
*/

attribute vec3 position;
void main(){
    // gl_Position only takes a vec4(), but from above we can see that position is a vec3(), so we change it here to vec4()
    gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
}

```
