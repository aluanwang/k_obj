uniform float K;
uniform vec4 noise;

float taylorInvSqrt(float r)
  {
  return ( 0.83666002653408 + 0.7*0.85373472095314 - 0.85373472095314 * r );
  }

void main()
{	
	float xs1 = sin((1.2+taylorInvSqrt(gl_Vertex.x))*(2.3+taylorInvSqrt(gl_Vertex.y)));
	float xs2 = sin(xs1*noise.x);
	float xs3 = K * sin(xs2*noise.y);

	float ys1 = sin((2.1 +taylorInvSqrt(gl_Vertex.x))*(3.2+taylorInvSqrt(gl_Vertex.y)));
	float ys2 = sin(ys1*noise.z);
	float ys3 = K * sin(ys2*noise.w);
		
	gl_Position = gl_ModelViewProjectionMatrix * (gl_Vertex + vec4(xs3,ys3,0.,0.));
	
}

