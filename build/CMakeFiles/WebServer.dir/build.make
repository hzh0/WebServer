# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/hanzhh/WebServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hanzhh/WebServer/build

# Include any dependencies generated for this target.
include CMakeFiles/WebServer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/WebServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/WebServer.dir/flags.make

CMakeFiles/WebServer.dir/httpserver/Httpserver.cpp.o: CMakeFiles/WebServer.dir/flags.make
CMakeFiles/WebServer.dir/httpserver/Httpserver.cpp.o: ../httpserver/Httpserver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanzhh/WebServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/WebServer.dir/httpserver/Httpserver.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WebServer.dir/httpserver/Httpserver.cpp.o -c /home/hanzhh/WebServer/httpserver/Httpserver.cpp

CMakeFiles/WebServer.dir/httpserver/Httpserver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WebServer.dir/httpserver/Httpserver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hanzhh/WebServer/httpserver/Httpserver.cpp > CMakeFiles/WebServer.dir/httpserver/Httpserver.cpp.i

CMakeFiles/WebServer.dir/httpserver/Httpserver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WebServer.dir/httpserver/Httpserver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hanzhh/WebServer/httpserver/Httpserver.cpp -o CMakeFiles/WebServer.dir/httpserver/Httpserver.cpp.s

CMakeFiles/WebServer.dir/socket/Socket.cpp.o: CMakeFiles/WebServer.dir/flags.make
CMakeFiles/WebServer.dir/socket/Socket.cpp.o: ../socket/Socket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanzhh/WebServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/WebServer.dir/socket/Socket.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WebServer.dir/socket/Socket.cpp.o -c /home/hanzhh/WebServer/socket/Socket.cpp

CMakeFiles/WebServer.dir/socket/Socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WebServer.dir/socket/Socket.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hanzhh/WebServer/socket/Socket.cpp > CMakeFiles/WebServer.dir/socket/Socket.cpp.i

CMakeFiles/WebServer.dir/socket/Socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WebServer.dir/socket/Socket.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hanzhh/WebServer/socket/Socket.cpp -o CMakeFiles/WebServer.dir/socket/Socket.cpp.s

# Object files for target WebServer
WebServer_OBJECTS = \
"CMakeFiles/WebServer.dir/httpserver/Httpserver.cpp.o" \
"CMakeFiles/WebServer.dir/socket/Socket.cpp.o"

# External object files for target WebServer
WebServer_EXTERNAL_OBJECTS =

libWebServer.so: CMakeFiles/WebServer.dir/httpserver/Httpserver.cpp.o
libWebServer.so: CMakeFiles/WebServer.dir/socket/Socket.cpp.o
libWebServer.so: CMakeFiles/WebServer.dir/build.make
libWebServer.so: CMakeFiles/WebServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hanzhh/WebServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libWebServer.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/WebServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/WebServer.dir/build: libWebServer.so

.PHONY : CMakeFiles/WebServer.dir/build

CMakeFiles/WebServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/WebServer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/WebServer.dir/clean

CMakeFiles/WebServer.dir/depend:
	cd /home/hanzhh/WebServer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hanzhh/WebServer /home/hanzhh/WebServer /home/hanzhh/WebServer/build /home/hanzhh/WebServer/build /home/hanzhh/WebServer/build/CMakeFiles/WebServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/WebServer.dir/depend
