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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/smallwhite/projects/CLionProjects/Covid_Cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/smallwhite/projects/CLionProjects/Covid_Cpp/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Covid_Cpp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Covid_Cpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Covid_Cpp.dir/flags.make

CMakeFiles/Covid_Cpp.dir/main.cpp.o: CMakeFiles/Covid_Cpp.dir/flags.make
CMakeFiles/Covid_Cpp.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/smallwhite/projects/CLionProjects/Covid_Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Covid_Cpp.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Covid_Cpp.dir/main.cpp.o -c /Users/smallwhite/projects/CLionProjects/Covid_Cpp/main.cpp

CMakeFiles/Covid_Cpp.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Covid_Cpp.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/smallwhite/projects/CLionProjects/Covid_Cpp/main.cpp > CMakeFiles/Covid_Cpp.dir/main.cpp.i

CMakeFiles/Covid_Cpp.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Covid_Cpp.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/smallwhite/projects/CLionProjects/Covid_Cpp/main.cpp -o CMakeFiles/Covid_Cpp.dir/main.cpp.s

CMakeFiles/Covid_Cpp.dir/Game.cpp.o: CMakeFiles/Covid_Cpp.dir/flags.make
CMakeFiles/Covid_Cpp.dir/Game.cpp.o: ../Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/smallwhite/projects/CLionProjects/Covid_Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Covid_Cpp.dir/Game.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Covid_Cpp.dir/Game.cpp.o -c /Users/smallwhite/projects/CLionProjects/Covid_Cpp/Game.cpp

CMakeFiles/Covid_Cpp.dir/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Covid_Cpp.dir/Game.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/smallwhite/projects/CLionProjects/Covid_Cpp/Game.cpp > CMakeFiles/Covid_Cpp.dir/Game.cpp.i

CMakeFiles/Covid_Cpp.dir/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Covid_Cpp.dir/Game.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/smallwhite/projects/CLionProjects/Covid_Cpp/Game.cpp -o CMakeFiles/Covid_Cpp.dir/Game.cpp.s

CMakeFiles/Covid_Cpp.dir/Entity.cpp.o: CMakeFiles/Covid_Cpp.dir/flags.make
CMakeFiles/Covid_Cpp.dir/Entity.cpp.o: ../Entity.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/smallwhite/projects/CLionProjects/Covid_Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Covid_Cpp.dir/Entity.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Covid_Cpp.dir/Entity.cpp.o -c /Users/smallwhite/projects/CLionProjects/Covid_Cpp/Entity.cpp

CMakeFiles/Covid_Cpp.dir/Entity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Covid_Cpp.dir/Entity.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/smallwhite/projects/CLionProjects/Covid_Cpp/Entity.cpp > CMakeFiles/Covid_Cpp.dir/Entity.cpp.i

CMakeFiles/Covid_Cpp.dir/Entity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Covid_Cpp.dir/Entity.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/smallwhite/projects/CLionProjects/Covid_Cpp/Entity.cpp -o CMakeFiles/Covid_Cpp.dir/Entity.cpp.s

CMakeFiles/Covid_Cpp.dir/TextureManager.cpp.o: CMakeFiles/Covid_Cpp.dir/flags.make
CMakeFiles/Covid_Cpp.dir/TextureManager.cpp.o: ../TextureManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/smallwhite/projects/CLionProjects/Covid_Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Covid_Cpp.dir/TextureManager.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Covid_Cpp.dir/TextureManager.cpp.o -c /Users/smallwhite/projects/CLionProjects/Covid_Cpp/TextureManager.cpp

CMakeFiles/Covid_Cpp.dir/TextureManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Covid_Cpp.dir/TextureManager.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/smallwhite/projects/CLionProjects/Covid_Cpp/TextureManager.cpp > CMakeFiles/Covid_Cpp.dir/TextureManager.cpp.i

CMakeFiles/Covid_Cpp.dir/TextureManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Covid_Cpp.dir/TextureManager.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/smallwhite/projects/CLionProjects/Covid_Cpp/TextureManager.cpp -o CMakeFiles/Covid_Cpp.dir/TextureManager.cpp.s

# Object files for target Covid_Cpp
Covid_Cpp_OBJECTS = \
"CMakeFiles/Covid_Cpp.dir/main.cpp.o" \
"CMakeFiles/Covid_Cpp.dir/Game.cpp.o" \
"CMakeFiles/Covid_Cpp.dir/Entity.cpp.o" \
"CMakeFiles/Covid_Cpp.dir/TextureManager.cpp.o"

# External object files for target Covid_Cpp
Covid_Cpp_EXTERNAL_OBJECTS =

Covid_Cpp: CMakeFiles/Covid_Cpp.dir/main.cpp.o
Covid_Cpp: CMakeFiles/Covid_Cpp.dir/Game.cpp.o
Covid_Cpp: CMakeFiles/Covid_Cpp.dir/Entity.cpp.o
Covid_Cpp: CMakeFiles/Covid_Cpp.dir/TextureManager.cpp.o
Covid_Cpp: CMakeFiles/Covid_Cpp.dir/build.make
Covid_Cpp: CMakeFiles/Covid_Cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/smallwhite/projects/CLionProjects/Covid_Cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Covid_Cpp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Covid_Cpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Covid_Cpp.dir/build: Covid_Cpp

.PHONY : CMakeFiles/Covid_Cpp.dir/build

CMakeFiles/Covid_Cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Covid_Cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Covid_Cpp.dir/clean

CMakeFiles/Covid_Cpp.dir/depend:
	cd /Users/smallwhite/projects/CLionProjects/Covid_Cpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/smallwhite/projects/CLionProjects/Covid_Cpp /Users/smallwhite/projects/CLionProjects/Covid_Cpp /Users/smallwhite/projects/CLionProjects/Covid_Cpp/cmake-build-debug /Users/smallwhite/projects/CLionProjects/Covid_Cpp/cmake-build-debug /Users/smallwhite/projects/CLionProjects/Covid_Cpp/cmake-build-debug/CMakeFiles/Covid_Cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Covid_Cpp.dir/depend
