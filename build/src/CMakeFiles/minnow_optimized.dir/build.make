# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_SOURCE_DIR = /home/sniffstherose/cs144/minnow

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sniffstherose/cs144/minnow/build

# Include any dependencies generated for this target.
include src/CMakeFiles/minnow_optimized.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/minnow_optimized.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/minnow_optimized.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/minnow_optimized.dir/flags.make

src/CMakeFiles/minnow_optimized.dir/byte_stream.cc.o: src/CMakeFiles/minnow_optimized.dir/flags.make
src/CMakeFiles/minnow_optimized.dir/byte_stream.cc.o: /home/sniffstherose/cs144/minnow/src/byte_stream.cc
src/CMakeFiles/minnow_optimized.dir/byte_stream.cc.o: src/CMakeFiles/minnow_optimized.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sniffstherose/cs144/minnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/minnow_optimized.dir/byte_stream.cc.o"
	cd /home/sniffstherose/cs144/minnow/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/minnow_optimized.dir/byte_stream.cc.o -MF CMakeFiles/minnow_optimized.dir/byte_stream.cc.o.d -o CMakeFiles/minnow_optimized.dir/byte_stream.cc.o -c /home/sniffstherose/cs144/minnow/src/byte_stream.cc

src/CMakeFiles/minnow_optimized.dir/byte_stream.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/minnow_optimized.dir/byte_stream.cc.i"
	cd /home/sniffstherose/cs144/minnow/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sniffstherose/cs144/minnow/src/byte_stream.cc > CMakeFiles/minnow_optimized.dir/byte_stream.cc.i

src/CMakeFiles/minnow_optimized.dir/byte_stream.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/minnow_optimized.dir/byte_stream.cc.s"
	cd /home/sniffstherose/cs144/minnow/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sniffstherose/cs144/minnow/src/byte_stream.cc -o CMakeFiles/minnow_optimized.dir/byte_stream.cc.s

src/CMakeFiles/minnow_optimized.dir/byte_stream_helpers.cc.o: src/CMakeFiles/minnow_optimized.dir/flags.make
src/CMakeFiles/minnow_optimized.dir/byte_stream_helpers.cc.o: /home/sniffstherose/cs144/minnow/src/byte_stream_helpers.cc
src/CMakeFiles/minnow_optimized.dir/byte_stream_helpers.cc.o: src/CMakeFiles/minnow_optimized.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sniffstherose/cs144/minnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/minnow_optimized.dir/byte_stream_helpers.cc.o"
	cd /home/sniffstherose/cs144/minnow/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/minnow_optimized.dir/byte_stream_helpers.cc.o -MF CMakeFiles/minnow_optimized.dir/byte_stream_helpers.cc.o.d -o CMakeFiles/minnow_optimized.dir/byte_stream_helpers.cc.o -c /home/sniffstherose/cs144/minnow/src/byte_stream_helpers.cc

src/CMakeFiles/minnow_optimized.dir/byte_stream_helpers.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/minnow_optimized.dir/byte_stream_helpers.cc.i"
	cd /home/sniffstherose/cs144/minnow/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sniffstherose/cs144/minnow/src/byte_stream_helpers.cc > CMakeFiles/minnow_optimized.dir/byte_stream_helpers.cc.i

src/CMakeFiles/minnow_optimized.dir/byte_stream_helpers.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/minnow_optimized.dir/byte_stream_helpers.cc.s"
	cd /home/sniffstherose/cs144/minnow/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sniffstherose/cs144/minnow/src/byte_stream_helpers.cc -o CMakeFiles/minnow_optimized.dir/byte_stream_helpers.cc.s

src/CMakeFiles/minnow_optimized.dir/reassembler.cc.o: src/CMakeFiles/minnow_optimized.dir/flags.make
src/CMakeFiles/minnow_optimized.dir/reassembler.cc.o: /home/sniffstherose/cs144/minnow/src/reassembler.cc
src/CMakeFiles/minnow_optimized.dir/reassembler.cc.o: src/CMakeFiles/minnow_optimized.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sniffstherose/cs144/minnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/minnow_optimized.dir/reassembler.cc.o"
	cd /home/sniffstherose/cs144/minnow/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/minnow_optimized.dir/reassembler.cc.o -MF CMakeFiles/minnow_optimized.dir/reassembler.cc.o.d -o CMakeFiles/minnow_optimized.dir/reassembler.cc.o -c /home/sniffstherose/cs144/minnow/src/reassembler.cc

src/CMakeFiles/minnow_optimized.dir/reassembler.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/minnow_optimized.dir/reassembler.cc.i"
	cd /home/sniffstherose/cs144/minnow/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sniffstherose/cs144/minnow/src/reassembler.cc > CMakeFiles/minnow_optimized.dir/reassembler.cc.i

src/CMakeFiles/minnow_optimized.dir/reassembler.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/minnow_optimized.dir/reassembler.cc.s"
	cd /home/sniffstherose/cs144/minnow/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sniffstherose/cs144/minnow/src/reassembler.cc -o CMakeFiles/minnow_optimized.dir/reassembler.cc.s

# Object files for target minnow_optimized
minnow_optimized_OBJECTS = \
"CMakeFiles/minnow_optimized.dir/byte_stream.cc.o" \
"CMakeFiles/minnow_optimized.dir/byte_stream_helpers.cc.o" \
"CMakeFiles/minnow_optimized.dir/reassembler.cc.o"

# External object files for target minnow_optimized
minnow_optimized_EXTERNAL_OBJECTS =

src/libminnow_optimized.a: src/CMakeFiles/minnow_optimized.dir/byte_stream.cc.o
src/libminnow_optimized.a: src/CMakeFiles/minnow_optimized.dir/byte_stream_helpers.cc.o
src/libminnow_optimized.a: src/CMakeFiles/minnow_optimized.dir/reassembler.cc.o
src/libminnow_optimized.a: src/CMakeFiles/minnow_optimized.dir/build.make
src/libminnow_optimized.a: src/CMakeFiles/minnow_optimized.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/sniffstherose/cs144/minnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libminnow_optimized.a"
	cd /home/sniffstherose/cs144/minnow/build/src && $(CMAKE_COMMAND) -P CMakeFiles/minnow_optimized.dir/cmake_clean_target.cmake
	cd /home/sniffstherose/cs144/minnow/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/minnow_optimized.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/minnow_optimized.dir/build: src/libminnow_optimized.a
.PHONY : src/CMakeFiles/minnow_optimized.dir/build

src/CMakeFiles/minnow_optimized.dir/clean:
	cd /home/sniffstherose/cs144/minnow/build/src && $(CMAKE_COMMAND) -P CMakeFiles/minnow_optimized.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/minnow_optimized.dir/clean

src/CMakeFiles/minnow_optimized.dir/depend:
	cd /home/sniffstherose/cs144/minnow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sniffstherose/cs144/minnow /home/sniffstherose/cs144/minnow/src /home/sniffstherose/cs144/minnow/build /home/sniffstherose/cs144/minnow/build/src /home/sniffstherose/cs144/minnow/build/src/CMakeFiles/minnow_optimized.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/minnow_optimized.dir/depend

