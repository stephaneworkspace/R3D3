#version 330 core

layout (location = 0) in vec3 Position;
layout (location = 1) in vec3 Color;

uniform mat4 ViewProjection;

out VS_OUTPUT {
    vec3 Color;
} OUT;

void main()
{
    gl_Position = ViewProjection * vec4(Position, 1.0);
    OUT.Color = Color;
}
