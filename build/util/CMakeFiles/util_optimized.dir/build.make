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
include util/CMakeFiles/util_optimized.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include util/CMakeFiles/util_optimized.dir/compiler_depend.make

# Include the progress variables for this target.
include util/CMakeFiles/util_optimized.dir/progress.make

# Include the compile flags for this target's objects.
include util/CMakeFiles/util_optimized.dir/flags.make

util/CMakeFiles/util_optimized.dir/address.cc.o: util/CMakeFiles/util_optimized.dir/flags.make
util/CMakeFiles/util_optimized.dir/address.cc.o: /home/sniffstherose/cs144/minnow/util/address.cc
util/CMakeFiles/util_optimized.dir/address.cc.o: util/CMakeFiles/util_optimized.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sniffstherose/cs144/minnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object util/CMakeFiles/util_optimized.dir/address.cc.o"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT util/CMakeFiles/util_optimized.dir/address.cc.o -MF CMakeFiles/util_optimized.dir/address.cc.o.d -o CMakeFiles/util_optimized.dir/address.cc.o -c /home/sniffstherose/cs144/minnow/util/address.cc

util/CMakeFiles/util_optimized.dir/address.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/util_optimized.dir/address.cc.i"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sniffstherose/cs144/minnow/util/address.cc > CMakeFiles/util_optimized.dir/address.cc.i

util/CMakeFiles/util_optimized.dir/address.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/util_optimized.dir/address.cc.s"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sniffstherose/cs144/minnow/util/address.cc -o CMakeFiles/util_optimized.dir/address.cc.s

util/CMakeFiles/util_optimized.dir/eventloop.cc.o: util/CMakeFiles/util_optimized.dir/flags.make
util/CMakeFiles/util_optimized.dir/eventloop.cc.o: /home/sniffstherose/cs144/minnow/util/eventloop.cc
util/CMakeFiles/util_optimized.dir/eventloop.cc.o: util/CMakeFiles/util_optimized.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sniffstherose/cs144/minnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object util/CMakeFiles/util_optimized.dir/eventloop.cc.o"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT util/CMakeFiles/util_optimized.dir/eventloop.cc.o -MF CMakeFiles/util_optimized.dir/eventloop.cc.o.d -o CMakeFiles/util_optimized.dir/eventloop.cc.o -c /home/sniffstherose/cs144/minnow/util/eventloop.cc

util/CMakeFiles/util_optimized.dir/eventloop.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/util_optimized.dir/eventloop.cc.i"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sniffstherose/cs144/minnow/util/eventloop.cc > CMakeFiles/util_optimized.dir/eventloop.cc.i

util/CMakeFiles/util_optimized.dir/eventloop.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/util_optimized.dir/eventloop.cc.s"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sniffstherose/cs144/minnow/util/eventloop.cc -o CMakeFiles/util_optimized.dir/eventloop.cc.s

util/CMakeFiles/util_optimized.dir/file_descriptor.cc.o: util/CMakeFiles/util_optimized.dir/flags.make
util/CMakeFiles/util_optimized.dir/file_descriptor.cc.o: /home/sniffstherose/cs144/minnow/util/file_descriptor.cc
util/CMakeFiles/util_optimized.dir/file_descriptor.cc.o: util/CMakeFiles/util_optimized.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sniffstherose/cs144/minnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object util/CMakeFiles/util_optimized.dir/file_descriptor.cc.o"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT util/CMakeFiles/util_optimized.dir/file_descriptor.cc.o -MF CMakeFiles/util_optimized.dir/file_descriptor.cc.o.d -o CMakeFiles/util_optimized.dir/file_descriptor.cc.o -c /home/sniffstherose/cs144/minnow/util/file_descriptor.cc

util/CMakeFiles/util_optimized.dir/file_descriptor.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/util_optimized.dir/file_descriptor.cc.i"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sniffstherose/cs144/minnow/util/file_descriptor.cc > CMakeFiles/util_optimized.dir/file_descriptor.cc.i

util/CMakeFiles/util_optimized.dir/file_descriptor.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/util_optimized.dir/file_descriptor.cc.s"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sniffstherose/cs144/minnow/util/file_descriptor.cc -o CMakeFiles/util_optimized.dir/file_descriptor.cc.s

util/CMakeFiles/util_optimized.dir/ipv4_header.cc.o: util/CMakeFiles/util_optimized.dir/flags.make
util/CMakeFiles/util_optimized.dir/ipv4_header.cc.o: /home/sniffstherose/cs144/minnow/util/ipv4_header.cc
util/CMakeFiles/util_optimized.dir/ipv4_header.cc.o: util/CMakeFiles/util_optimized.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sniffstherose/cs144/minnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object util/CMakeFiles/util_optimized.dir/ipv4_header.cc.o"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT util/CMakeFiles/util_optimized.dir/ipv4_header.cc.o -MF CMakeFiles/util_optimized.dir/ipv4_header.cc.o.d -o CMakeFiles/util_optimized.dir/ipv4_header.cc.o -c /home/sniffstherose/cs144/minnow/util/ipv4_header.cc

util/CMakeFiles/util_optimized.dir/ipv4_header.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/util_optimized.dir/ipv4_header.cc.i"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sniffstherose/cs144/minnow/util/ipv4_header.cc > CMakeFiles/util_optimized.dir/ipv4_header.cc.i

util/CMakeFiles/util_optimized.dir/ipv4_header.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/util_optimized.dir/ipv4_header.cc.s"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sniffstherose/cs144/minnow/util/ipv4_header.cc -o CMakeFiles/util_optimized.dir/ipv4_header.cc.s

util/CMakeFiles/util_optimized.dir/random.cc.o: util/CMakeFiles/util_optimized.dir/flags.make
util/CMakeFiles/util_optimized.dir/random.cc.o: /home/sniffstherose/cs144/minnow/util/random.cc
util/CMakeFiles/util_optimized.dir/random.cc.o: util/CMakeFiles/util_optimized.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sniffstherose/cs144/minnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object util/CMakeFiles/util_optimized.dir/random.cc.o"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT util/CMakeFiles/util_optimized.dir/random.cc.o -MF CMakeFiles/util_optimized.dir/random.cc.o.d -o CMakeFiles/util_optimized.dir/random.cc.o -c /home/sniffstherose/cs144/minnow/util/random.cc

util/CMakeFiles/util_optimized.dir/random.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/util_optimized.dir/random.cc.i"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sniffstherose/cs144/minnow/util/random.cc > CMakeFiles/util_optimized.dir/random.cc.i

util/CMakeFiles/util_optimized.dir/random.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/util_optimized.dir/random.cc.s"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sniffstherose/cs144/minnow/util/random.cc -o CMakeFiles/util_optimized.dir/random.cc.s

util/CMakeFiles/util_optimized.dir/socket.cc.o: util/CMakeFiles/util_optimized.dir/flags.make
util/CMakeFiles/util_optimized.dir/socket.cc.o: /home/sniffstherose/cs144/minnow/util/socket.cc
util/CMakeFiles/util_optimized.dir/socket.cc.o: util/CMakeFiles/util_optimized.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sniffstherose/cs144/minnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object util/CMakeFiles/util_optimized.dir/socket.cc.o"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT util/CMakeFiles/util_optimized.dir/socket.cc.o -MF CMakeFiles/util_optimized.dir/socket.cc.o.d -o CMakeFiles/util_optimized.dir/socket.cc.o -c /home/sniffstherose/cs144/minnow/util/socket.cc

util/CMakeFiles/util_optimized.dir/socket.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/util_optimized.dir/socket.cc.i"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sniffstherose/cs144/minnow/util/socket.cc > CMakeFiles/util_optimized.dir/socket.cc.i

util/CMakeFiles/util_optimized.dir/socket.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/util_optimized.dir/socket.cc.s"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sniffstherose/cs144/minnow/util/socket.cc -o CMakeFiles/util_optimized.dir/socket.cc.s

util/CMakeFiles/util_optimized.dir/tun.cc.o: util/CMakeFiles/util_optimized.dir/flags.make
util/CMakeFiles/util_optimized.dir/tun.cc.o: /home/sniffstherose/cs144/minnow/util/tun.cc
util/CMakeFiles/util_optimized.dir/tun.cc.o: util/CMakeFiles/util_optimized.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/sniffstherose/cs144/minnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object util/CMakeFiles/util_optimized.dir/tun.cc.o"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT util/CMakeFiles/util_optimized.dir/tun.cc.o -MF CMakeFiles/util_optimized.dir/tun.cc.o.d -o CMakeFiles/util_optimized.dir/tun.cc.o -c /home/sniffstherose/cs144/minnow/util/tun.cc

util/CMakeFiles/util_optimized.dir/tun.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/util_optimized.dir/tun.cc.i"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sniffstherose/cs144/minnow/util/tun.cc > CMakeFiles/util_optimized.dir/tun.cc.i

util/CMakeFiles/util_optimized.dir/tun.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/util_optimized.dir/tun.cc.s"
	cd /home/sniffstherose/cs144/minnow/build/util && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sniffstherose/cs144/minnow/util/tun.cc -o CMakeFiles/util_optimized.dir/tun.cc.s

# Object files for target util_optimized
util_optimized_OBJECTS = \
"CMakeFiles/util_optimized.dir/address.cc.o" \
"CMakeFiles/util_optimized.dir/eventloop.cc.o" \
"CMakeFiles/util_optimized.dir/file_descriptor.cc.o" \
"CMakeFiles/util_optimized.dir/ipv4_header.cc.o" \
"CMakeFiles/util_optimized.dir/random.cc.o" \
"CMakeFiles/util_optimized.dir/socket.cc.o" \
"CMakeFiles/util_optimized.dir/tun.cc.o"

# External object files for target util_optimized
util_optimized_EXTERNAL_OBJECTS =

util/libutil_optimized.a: util/CMakeFiles/util_optimized.dir/address.cc.o
util/libutil_optimized.a: util/CMakeFiles/util_optimized.dir/eventloop.cc.o
util/libutil_optimized.a: util/CMakeFiles/util_optimized.dir/file_descriptor.cc.o
util/libutil_optimized.a: util/CMakeFiles/util_optimized.dir/ipv4_header.cc.o
util/libutil_optimized.a: util/CMakeFiles/util_optimized.dir/random.cc.o
util/libutil_optimized.a: util/CMakeFiles/util_optimized.dir/socket.cc.o
util/libutil_optimized.a: util/CMakeFiles/util_optimized.dir/tun.cc.o
util/libutil_optimized.a: util/CMakeFiles/util_optimized.dir/build.make
util/libutil_optimized.a: util/CMakeFiles/util_optimized.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/sniffstherose/cs144/minnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library libutil_optimized.a"
	cd /home/sniffstherose/cs144/minnow/build/util && $(CMAKE_COMMAND) -P CMakeFiles/util_optimized.dir/cmake_clean_target.cmake
	cd /home/sniffstherose/cs144/minnow/build/util && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/util_optimized.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
util/CMakeFiles/util_optimized.dir/build: util/libutil_optimized.a
.PHONY : util/CMakeFiles/util_optimized.dir/build

util/CMakeFiles/util_optimized.dir/clean:
	cd /home/sniffstherose/cs144/minnow/build/util && $(CMAKE_COMMAND) -P CMakeFiles/util_optimized.dir/cmake_clean.cmake
.PHONY : util/CMakeFiles/util_optimized.dir/clean

util/CMakeFiles/util_optimized.dir/depend:
	cd /home/sniffstherose/cs144/minnow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sniffstherose/cs144/minnow /home/sniffstherose/cs144/minnow/util /home/sniffstherose/cs144/minnow/build /home/sniffstherose/cs144/minnow/build/util /home/sniffstherose/cs144/minnow/build/util/CMakeFiles/util_optimized.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : util/CMakeFiles/util_optimized.dir/depend

