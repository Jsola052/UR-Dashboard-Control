# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/robotics/Projects/UR16/UR-Dashboard-Control

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robotics/Projects/UR16/UR-Dashboard-Control/build

# Include any dependencies generated for this target.
include CMakeFiles/ur16_move.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ur16_move.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ur16_move.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ur16_move.dir/flags.make

CMakeFiles/ur16_move.dir/main.cpp.o: CMakeFiles/ur16_move.dir/flags.make
CMakeFiles/ur16_move.dir/main.cpp.o: ../main.cpp
CMakeFiles/ur16_move.dir/main.cpp.o: CMakeFiles/ur16_move.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robotics/Projects/UR16/UR-Dashboard-Control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ur16_move.dir/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ur16_move.dir/main.cpp.o -MF CMakeFiles/ur16_move.dir/main.cpp.o.d -o CMakeFiles/ur16_move.dir/main.cpp.o -c /home/robotics/Projects/UR16/UR-Dashboard-Control/main.cpp

CMakeFiles/ur16_move.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ur16_move.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robotics/Projects/UR16/UR-Dashboard-Control/main.cpp > CMakeFiles/ur16_move.dir/main.cpp.i

CMakeFiles/ur16_move.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ur16_move.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robotics/Projects/UR16/UR-Dashboard-Control/main.cpp -o CMakeFiles/ur16_move.dir/main.cpp.s

CMakeFiles/ur16_move.dir/URRobot.cpp.o: CMakeFiles/ur16_move.dir/flags.make
CMakeFiles/ur16_move.dir/URRobot.cpp.o: ../URRobot.cpp
CMakeFiles/ur16_move.dir/URRobot.cpp.o: CMakeFiles/ur16_move.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/robotics/Projects/UR16/UR-Dashboard-Control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ur16_move.dir/URRobot.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ur16_move.dir/URRobot.cpp.o -MF CMakeFiles/ur16_move.dir/URRobot.cpp.o.d -o CMakeFiles/ur16_move.dir/URRobot.cpp.o -c /home/robotics/Projects/UR16/UR-Dashboard-Control/URRobot.cpp

CMakeFiles/ur16_move.dir/URRobot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ur16_move.dir/URRobot.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robotics/Projects/UR16/UR-Dashboard-Control/URRobot.cpp > CMakeFiles/ur16_move.dir/URRobot.cpp.i

CMakeFiles/ur16_move.dir/URRobot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ur16_move.dir/URRobot.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robotics/Projects/UR16/UR-Dashboard-Control/URRobot.cpp -o CMakeFiles/ur16_move.dir/URRobot.cpp.s

# Object files for target ur16_move
ur16_move_OBJECTS = \
"CMakeFiles/ur16_move.dir/main.cpp.o" \
"CMakeFiles/ur16_move.dir/URRobot.cpp.o"

# External object files for target ur16_move
ur16_move_EXTERNAL_OBJECTS =

ur16_move: CMakeFiles/ur16_move.dir/main.cpp.o
ur16_move: CMakeFiles/ur16_move.dir/URRobot.cpp.o
ur16_move: CMakeFiles/ur16_move.dir/build.make
ur16_move: /opt/ros/humble/lib/x86_64-linux-gnu/liburcl.so
ur16_move: CMakeFiles/ur16_move.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/robotics/Projects/UR16/UR-Dashboard-Control/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ur16_move"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ur16_move.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ur16_move.dir/build: ur16_move
.PHONY : CMakeFiles/ur16_move.dir/build

CMakeFiles/ur16_move.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ur16_move.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ur16_move.dir/clean

CMakeFiles/ur16_move.dir/depend:
	cd /home/robotics/Projects/UR16/UR-Dashboard-Control/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robotics/Projects/UR16/UR-Dashboard-Control /home/robotics/Projects/UR16/UR-Dashboard-Control /home/robotics/Projects/UR16/UR-Dashboard-Control/build /home/robotics/Projects/UR16/UR-Dashboard-Control/build /home/robotics/Projects/UR16/UR-Dashboard-Control/build/CMakeFiles/ur16_move.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ur16_move.dir/depend

