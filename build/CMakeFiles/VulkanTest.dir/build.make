# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/danielyh/NTNU/SPH-on-Vulkan-Arm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/danielyh/NTNU/SPH-on-Vulkan-Arm/build

# Include any dependencies generated for this target.
include CMakeFiles/VulkanTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/VulkanTest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/VulkanTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/VulkanTest.dir/flags.make

CMakeFiles/VulkanTest.dir/main.cpp.o: CMakeFiles/VulkanTest.dir/flags.make
CMakeFiles/VulkanTest.dir/main.cpp.o: main.cpp
CMakeFiles/VulkanTest.dir/main.cpp.o: CMakeFiles/VulkanTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/danielyh/NTNU/SPH-on-Vulkan-Arm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/VulkanTest.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VulkanTest.dir/main.cpp.o -MF CMakeFiles/VulkanTest.dir/main.cpp.o.d -o CMakeFiles/VulkanTest.dir/main.cpp.o -c /home/danielyh/NTNU/SPH-on-Vulkan-Arm/build/main.cpp

CMakeFiles/VulkanTest.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VulkanTest.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/danielyh/NTNU/SPH-on-Vulkan-Arm/build/main.cpp > CMakeFiles/VulkanTest.dir/main.cpp.i

CMakeFiles/VulkanTest.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VulkanTest.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/danielyh/NTNU/SPH-on-Vulkan-Arm/build/main.cpp -o CMakeFiles/VulkanTest.dir/main.cpp.s

# Object files for target VulkanTest
VulkanTest_OBJECTS = \
"CMakeFiles/VulkanTest.dir/main.cpp.o"

# External object files for target VulkanTest
VulkanTest_EXTERNAL_OBJECTS =

VulkanTest: CMakeFiles/VulkanTest.dir/main.cpp.o
VulkanTest: CMakeFiles/VulkanTest.dir/build.make
VulkanTest: CMakeFiles/VulkanTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/danielyh/NTNU/SPH-on-Vulkan-Arm/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable VulkanTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VulkanTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/VulkanTest.dir/build: VulkanTest
.PHONY : CMakeFiles/VulkanTest.dir/build

CMakeFiles/VulkanTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/VulkanTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/VulkanTest.dir/clean

CMakeFiles/VulkanTest.dir/depend:
	cd /home/danielyh/NTNU/SPH-on-Vulkan-Arm/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/danielyh/NTNU/SPH-on-Vulkan-Arm /home/danielyh/NTNU/SPH-on-Vulkan-Arm /home/danielyh/NTNU/SPH-on-Vulkan-Arm/build /home/danielyh/NTNU/SPH-on-Vulkan-Arm/build /home/danielyh/NTNU/SPH-on-Vulkan-Arm/build/CMakeFiles/VulkanTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/VulkanTest.dir/depend
