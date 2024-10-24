cmake_minimum_required(VERSION 3.10)
project(VulkanComputeSPH)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Set compile options (equivalent to CFLAGS)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2")

# Specify source files
set(SOURCES  src/constants.hpp src/sph_program.hpp) # header files
# other source files
set(SOURCES ${SOURCES} src/main.cpp) # main file

# Specify the executable
add_executable(VulkanComputeSPH ${SOURCES})

# Link libraries (equivalent to LDFLAGS)
target_link_libraries(VulkanComputeSPH glfw vulkan dl pthread X11 Xxf86vm Xrandr Xi)

# Add custom target for testing
add_custom_target(run
    COMMAND VulkanComputeSPH
    DEPENDS VulkanComputeSPH
    COMMENT "Running VulkanComputeSPH"
)

# ============= Shader Commands =============

# Set directories for shaders
set(SHADER_SOURCE_DIR ${CMAKE_SOURCE_DIR}/../shaders)
set(SHADER_BUILD_DIR ${CMAKE_SOURCE_DIR}/shaders)

# Collect all .frag, .vert and .comp files from the shader souce dir
file(GLOB SHADER_FILES "${SHADER_SOURCE_DIR}/*.frag" "${SHADER_SOURCE_DIR}/*.vert" "${SHADER_SOURCE_DIR}/*.frag")

# Add custom command to comile shaders to SPIR-V
foreach(SHADER_FILE ${SHADER_FILES})
	#Extract filename and output target
	get_filename_component(SHADER_NAME ${SHADER_FILE} NAME)
	set(OUTPUT_SHADER ${SHADER_BUILD_DIR}/$[SHADER_NAME}.spv)

	# Create custom command to run GLSLC foreach
	add_custom_command(
        OUTPUT ${OUTPUT_SHADER}
        COMMAND ${CMAKE_COMMAND} -E make_directory ${SHADER_BUILD_DIR}
        COMMAND glslc ${SHADER_FILE} -o ${OUTPUT_SHADER}
        DEPENDS ${SHADER_FILE}
        COMMENT "Compiling ${SHADER_NAME} to SPIR-V"
    )

    # Add the output shader to a custom target to ensure it is built
    list(APPEND SPIRV_SHADERS ${OUTPUT_SHADER})
endforeach()

# Create a custom target that depends on all compiled SPIR-V shaders
add_custom_target(compile_shaders ALL DEPENDS ${SPIRV_SHADERS})
