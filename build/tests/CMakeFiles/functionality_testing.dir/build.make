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

# Utility rule file for functionality_testing.

# Include any custom commands dependencies for this target.
include tests/CMakeFiles/functionality_testing.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/functionality_testing.dir/progress.make

functionality_testing: tests/CMakeFiles/functionality_testing.dir/build.make
.PHONY : functionality_testing

# Rule to build all files generated by this target.
tests/CMakeFiles/functionality_testing.dir/build: functionality_testing
.PHONY : tests/CMakeFiles/functionality_testing.dir/build

tests/CMakeFiles/functionality_testing.dir/clean:
	cd /home/cat/exing/CS144/minnow/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/functionality_testing.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/functionality_testing.dir/clean

tests/CMakeFiles/functionality_testing.dir/depend:
	cd /home/cat/exing/CS144/minnow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cat/exing/CS144/minnow /home/cat/exing/CS144/minnow/tests /home/cat/exing/CS144/minnow/build /home/cat/exing/CS144/minnow/build/tests /home/cat/exing/CS144/minnow/build/tests/CMakeFiles/functionality_testing.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/functionality_testing.dir/depend

