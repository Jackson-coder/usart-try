# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/linyihong/usart

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/linyihong/usart/build

# Include any dependencies generated for this target.
include CMakeFiles/usart.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/usart.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/usart.dir/flags.make

CMakeFiles/usart.dir/main.cpp.o: CMakeFiles/usart.dir/flags.make
CMakeFiles/usart.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/linyihong/usart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/usart.dir/main.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/usart.dir/main.cpp.o -c /home/linyihong/usart/main.cpp

CMakeFiles/usart.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usart.dir/main.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/linyihong/usart/main.cpp > CMakeFiles/usart.dir/main.cpp.i

CMakeFiles/usart.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usart.dir/main.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/linyihong/usart/main.cpp -o CMakeFiles/usart.dir/main.cpp.s

CMakeFiles/usart.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/usart.dir/main.cpp.o.requires

CMakeFiles/usart.dir/main.cpp.o.provides: CMakeFiles/usart.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/usart.dir/build.make CMakeFiles/usart.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/usart.dir/main.cpp.o.provides

CMakeFiles/usart.dir/main.cpp.o.provides.build: CMakeFiles/usart.dir/main.cpp.o


# Object files for target usart
usart_OBJECTS = \
"CMakeFiles/usart.dir/main.cpp.o"

# External object files for target usart
usart_EXTERNAL_OBJECTS =

usart: CMakeFiles/usart.dir/main.cpp.o
usart: CMakeFiles/usart.dir/build.make
usart: CMakeFiles/usart.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/linyihong/usart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable usart"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/usart.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/usart.dir/build: usart

.PHONY : CMakeFiles/usart.dir/build

CMakeFiles/usart.dir/requires: CMakeFiles/usart.dir/main.cpp.o.requires

.PHONY : CMakeFiles/usart.dir/requires

CMakeFiles/usart.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/usart.dir/cmake_clean.cmake
.PHONY : CMakeFiles/usart.dir/clean

CMakeFiles/usart.dir/depend:
	cd /home/linyihong/usart/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/linyihong/usart /home/linyihong/usart /home/linyihong/usart/build /home/linyihong/usart/build /home/linyihong/usart/build/CMakeFiles/usart.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/usart.dir/depend

