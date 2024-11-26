#version 450

layout(location = 0) in vec2 inPosition;
layout(location = 1) in vec2 inVelocity;

layout(location = 0) out vec3 fragColor;

void main() {

    gl_PointSize = 14.0;
    gl_Position = vec4(inPosition.xy, 1.0, 1.0);
    fragColor = normalize(vec3(inVelocity.xy, 0.0)) * 2.0;
}
