#version  330 core
layout(location = 0) in vec3 vertPos;

uniform mat4 P;
uniform mat4 M;
uniform mat4 V;

out vec2 texLoc;

vec2 tempCoord = vertPos.xy + vec2(1, 1);

void main()
{
   
	texLoc = tempCoord / 2.0;
   
   gl_Position = P * V * M * vec4(vertPos, 1);
   
}
