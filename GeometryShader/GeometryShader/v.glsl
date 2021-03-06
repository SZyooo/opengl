#version 330 core

layout(location = 0) in vec2 aPos;
layout(location = 1) in vec3 color;
out VS_OUT{
	vec3 _color;
} vs_out;
void main()
{
	gl_Position = vec4(aPos,0,1);
	vs_out._color = color;
}