# Running Smoothed-Particle Hydrodynamics simulations in Vulkan on Arm devices

This repository is 

## Dependencies

### For Linux

> Not expecting other OS's than Linux
> You're going to need CMake no matter what OS

#### Vulkan Packages (for apt)

- vulkan-tools
- libvulkan-dev
- vulkan-validationlayers-dev
- spirv-tools

#### GLFW

- libglfw3-dev

#### GLM

- libglm-dev

#### Shader Compiler (manual install)

See <https://vulkan-tutorial.com/Development_environment#page_Linux>

## SPIR-V Shaders

This program generally only uses SPIR-V shaders, meaning you have to compile your HLSL into SPIR-V.

```sh
glslc shaders/my_shader.comp -o build/shaders/my_shader.comp.spv
```

SPIR-V shaders should be placed in `build/shaders`.
> In general, all file resources used by the program should be in the `build` directory
