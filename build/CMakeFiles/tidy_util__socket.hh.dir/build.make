# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/cat/exing/CS144/minnow

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cat/exing/CS144/minnow/build

# Utility rule file for tidy_util__socket.hh.

# Include any custom commands dependencies for this target.
include CMakeFiles/tidy_util__socket.hh.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tidy_util__socket.hh.dir/progress.make

CMakeFiles/tidy_util__socket.hh:
	clang-tidy --quiet -header-filter=.* -p=/home/cat/exing/CS144/minnow/build /home/cat/exing/CS144/minnow/util/socket.hh

tidy_util__socket.hh: CMakeFiles/tidy_util__socket.hh
tidy_util__socket.hh: CMakeFiles/tidy_util__socket.hh.dir/build.make
.PHONY : tidy_util__socket.hh

# Rule to build all files generated by this target.
CMakeFiles/tidy_util__socket.hh.dir/build: tidy_util__socket.hh
.PHONY : CMakeFiles/tidy_util__socket.hh.dir/build

CMakeFiles/tidy_util__socket.hh.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tidy_util__socket.hh.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tidy_util__socket.hh.dir/clean

CMakeFiles/tidy_util__socket.hh.dir/depend:
	cd /home/cat/exing/CS144/minnow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cat/exing/CS144/minnow /home/cat/exing/CS144/minnow /home/cat/exing/CS144/minnow/build /home/cat/exing/CS144/minnow/build /home/cat/exing/CS144/minnow/build/CMakeFiles/tidy_util__socket.hh.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/tidy_util__socket.hh.dir/depend

