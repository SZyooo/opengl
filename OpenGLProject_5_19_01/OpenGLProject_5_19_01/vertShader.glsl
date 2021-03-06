#version 430

uniform float offset;
mat4 buildRotateX(float);
void main(void)
{
	if(gl_VertexID==0)
	{
		gl_Position = vec4(0.25+offset,-0.25,0.0,1.0);
		gl_Position *= buildRotateX(30);
	}
	else if(gl_VertexID == 1)
	{
		gl_Position = vec4(-0.25+offset,-0.25,0.0,1);
		gl_Position *= buildRotateX(60);
	}
	else
	{
		gl_Position = vec4(0.25+offset,0.25,0.0,1.0);
		gl_Position *= buildRotateX(90);
	}

}	
mat4 buildRotateX(float rad)
{
	mat4 xrot = mat4(1,0,0,0,0,cos(rad),-sin(rad),0,0,sin(rad),cos(rad),0,0,0,0,1);
	return xrot;
}