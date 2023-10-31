#ifdef GL_ES
precision mediump float;
#endif

uniform float u_time; // here u_time is a reserved/inbuilt variable

void main() {
	gl_FragColor = vec4(abs(cos(u_time)), abs(sin(u_time)),0.0,1.0);
}

