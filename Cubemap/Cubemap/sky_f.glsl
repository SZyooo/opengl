#version 330 core

in vec3 tCoord;
uniform samplerCube cubemap;

out vec4 color;
void main(){
	color = texture(cubemap,tCoord);
}