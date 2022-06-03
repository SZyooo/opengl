#version 330 core

layout(location = 0) in vec3 aPos;
layout(location = 1) in vec2 tCoord;

out vec2 texCoord;

void main()
{
	texCoord = tCoord;
	gl_Position = vec4(aPos.xy,0,1.0f);
}