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
CMAKE_SOURCE_DIR = /home/nagomi/CS144/sponge

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nagomi/CS144/sponge/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/fsm_stream_reassembler_holes.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/fsm_stream_reassembler_holes.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/fsm_stream_reassembler_holes.dir/flags.make

tests/CMakeFiles/fsm_stream_reassembler_holes.dir/fsm_stream_reassembler_holes.cc.o: tests/CMakeFiles/fsm_stream_reassembler_holes.dir/flags.make
tests/CMakeFiles/fsm_stream_reassembler_holes.dir/fsm_stream_reassembler_holes.cc.o: ../tests/fsm_stream_reassembler_holes.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nagomi/CS144/sponge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/fsm_stream_reassembler_holes.dir/fsm_stream_reassembler_holes.cc.o"
	cd /home/nagomi/CS144/sponge/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fsm_stream_reassembler_holes.dir/fsm_stream_reassembler_holes.cc.o -c /home/nagomi/CS144/sponge/tests/fsm_stream_reassembler_holes.cc

tests/CMakeFiles/fsm_stream_reassembler_holes.dir/fsm_stream_reassembler_holes.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fsm_stream_reassembler_holes.dir/fsm_stream_reassembler_holes.cc.i"
	cd /home/nagomi/CS144/sponge/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nagomi/CS144/sponge/tests/fsm_stream_reassembler_holes.cc > CMakeFiles/fsm_stream_reassembler_holes.dir/fsm_stream_reassembler_holes.cc.i

tests/CMakeFiles/fsm_stream_reassembler_holes.dir/fsm_stream_reassembler_holes.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fsm_stream_reassembler_holes.dir/fsm_stream_reassembler_holes.cc.s"
	cd /home/nagomi/CS144/sponge/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nagomi/CS144/sponge/tests/fsm_stream_reassembler_holes.cc -o CMakeFiles/fsm_stream_reassembler_holes.dir/fsm_stream_reassembler_holes.cc.s

# Object files for target fsm_stream_reassembler_holes
fsm_stream_reassembler_holes_OBJECTS = \
"CMakeFiles/fsm_stream_reassembler_holes.dir/fsm_stream_reassembler_holes.cc.o"

# External object files for target fsm_stream_reassembler_holes
fsm_stream_reassembler_holes_EXTERNAL_OBJECTS =

tests/fsm_stream_reassembler_holes: tests/CMakeFiles/fsm_stream_reassembler_holes.dir/fsm_stream_reassembler_holes.cc.o
tests/fsm_stream_reassembler_holes: tests/CMakeFiles/fsm_stream_reassembler_holes.dir/build.make
tests/fsm_stream_reassembler_holes: tests/libspongechecks.a
tests/fsm_stream_reassembler_holes: libsponge/libsponge.a
tests/fsm_stream_reassembler_holes: tests/CMakeFiles/fsm_stream_reassembler_holes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nagomi/CS144/sponge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fsm_stream_reassembler_holes"
	cd /home/nagomi/CS144/sponge/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fsm_stream_reassembler_holes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/fsm_stream_reassembler_holes.dir/build: tests/fsm_stream_reassembler_holes

.PHONY : tests/CMakeFiles/fsm_stream_reassembler_holes.dir/build

tests/CMakeFiles/fsm_stream_reassembler_holes.dir/clean:
	cd /home/nagomi/CS144/sponge/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/fsm_stream_reassembler_holes.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/fsm_stream_reassembler_holes.dir/clean

tests/CMakeFiles/fsm_stream_reassembler_holes.dir/depend:
	cd /home/nagomi/CS144/sponge/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nagomi/CS144/sponge /home/nagomi/CS144/sponge/tests /home/nagomi/CS144/sponge/build /home/nagomi/CS144/sponge/build/tests /home/nagomi/CS144/sponge/build/tests/CMakeFiles/fsm_stream_reassembler_holes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/fsm_stream_reassembler_holes.dir/depend

