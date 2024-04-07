# Notes for shaders

* gl_Position is a reserved keyword. it defines the position of the shader on the screen

```glsl
// VERTEX SHADER

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;
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

```glsl
// FRAGMENT SHADER

precision mediump float;

void main(){
  gl_FragColor = vec4(1.0, 1.0, 0.0, 1.0);
}
```

### Matricies

* modelMatrix applies transformations relative to the Mesh(the mesh of threejs)
* viewMatrix applies transformations relative to the camera
* projectionMatrix transforms the co-ordinates into the clip-space co-ordinates
* the order of the above multiplication matters a lot, for eg the following order for multiplication won't work
> gl_Position = modelMatrix * projectionMatrix * viewMatrix * vec4(position, 1.0); this order won't work

* but the following order for matrix multiplication would work perfectly fine since it follows the default order
> gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);


### Attributes

* By default 3 attributes are sent **from** threejs **to** the vertex shader. Those 3 are position, uv and normal
* We used the *position* attribute in the vertex shader like this `attribute vec3 position`
* Not just the default ones, we can also create and send our own custom attributes from threejs to vertex shader
* We cannot send data or attributes from threejs to fragment shader like we sent in the vertex shader, but we can send data from vertex
    shader to fragment shader using **varying** by <pre>varying <b>datatype</b> variableName</pre>
