#version 330 core

//in vec2 texCoord;
in vec2 _texCoord;

uniform sampler2D tex;

out vec4 color;
void main()
{
	color = texture(tex,_texCoord);
}