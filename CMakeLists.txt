cmake_minimum_required(VERSION 3.10)
project(VulkanTest)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Set compile options (equivalent to CFLAGS)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2")

# Specify source files
set(SOURCES main.cpp)

# Specify the executable
add_executable(VulkanTest ${SOURCES})

# Link libraries (equivalent to LDFLAGS)
target_link_libraries(VulkanTest glfw vulkan dl pthread X11 Xxf86vm Xrandr Xi)

# Add custom target for testing
add_custom_target(test
    COMMAND VulkanTest
    DEPENDS VulkanTest
    COMMENT "Running VulkanTest"
)

