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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ricky/code/clang_typeinfo_tester

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ricky/code/clang_typeinfo_tester/build_clang

# Include any dependencies generated for this target.
include shared_types_impl/CMakeFiles/shared-types-impl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include shared_types_impl/CMakeFiles/shared-types-impl.dir/compiler_depend.make

# Include the progress variables for this target.
include shared_types_impl/CMakeFiles/shared-types-impl.dir/progress.make

# Include the compile flags for this target's objects.
include shared_types_impl/CMakeFiles/shared-types-impl.dir/flags.make

shared_types_impl/CMakeFiles/shared-types-impl.dir/types_impl.cpp.o: shared_types_impl/CMakeFiles/shared-types-impl.dir/flags.make
shared_types_impl/CMakeFiles/shared-types-impl.dir/types_impl.cpp.o: ../shared_types_impl/types_impl.cpp
shared_types_impl/CMakeFiles/shared-types-impl.dir/types_impl.cpp.o: shared_types_impl/CMakeFiles/shared-types-impl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ricky/code/clang_typeinfo_tester/build_clang/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object shared_types_impl/CMakeFiles/shared-types-impl.dir/types_impl.cpp.o"
	cd /home/ricky/code/clang_typeinfo_tester/build_clang/shared_types_impl && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT shared_types_impl/CMakeFiles/shared-types-impl.dir/types_impl.cpp.o -MF CMakeFiles/shared-types-impl.dir/types_impl.cpp.o.d -o CMakeFiles/shared-types-impl.dir/types_impl.cpp.o -c /home/ricky/code/clang_typeinfo_tester/shared_types_impl/types_impl.cpp

shared_types_impl/CMakeFiles/shared-types-impl.dir/types_impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shared-types-impl.dir/types_impl.cpp.i"
	cd /home/ricky/code/clang_typeinfo_tester/build_clang/shared_types_impl && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ricky/code/clang_typeinfo_tester/shared_types_impl/types_impl.cpp > CMakeFiles/shared-types-impl.dir/types_impl.cpp.i

shared_types_impl/CMakeFiles/shared-types-impl.dir/types_impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shared-types-impl.dir/types_impl.cpp.s"
	cd /home/ricky/code/clang_typeinfo_tester/build_clang/shared_types_impl && /usr/local/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ricky/code/clang_typeinfo_tester/shared_types_impl/types_impl.cpp -o CMakeFiles/shared-types-impl.dir/types_impl.cpp.s

# Object files for target shared-types-impl
shared__types__impl_OBJECTS = \
"CMakeFiles/shared-types-impl.dir/types_impl.cpp.o"

# External object files for target shared-types-impl
shared__types__impl_EXTERNAL_OBJECTS =

shared_types_impl/libshared-types-impl.so: shared_types_impl/CMakeFiles/shared-types-impl.dir/types_impl.cpp.o
shared_types_impl/libshared-types-impl.so: shared_types_impl/CMakeFiles/shared-types-impl.dir/build.make
shared_types_impl/libshared-types-impl.so: shared_types_impl/CMakeFiles/shared-types-impl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ricky/code/clang_typeinfo_tester/build_clang/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libshared-types-impl.so"
	cd /home/ricky/code/clang_typeinfo_tester/build_clang/shared_types_impl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shared-types-impl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
shared_types_impl/CMakeFiles/shared-types-impl.dir/build: shared_types_impl/libshared-types-impl.so
.PHONY : shared_types_impl/CMakeFiles/shared-types-impl.dir/build

shared_types_impl/CMakeFiles/shared-types-impl.dir/clean:
	cd /home/ricky/code/clang_typeinfo_tester/build_clang/shared_types_impl && $(CMAKE_COMMAND) -P CMakeFiles/shared-types-impl.dir/cmake_clean.cmake
.PHONY : shared_types_impl/CMakeFiles/shared-types-impl.dir/clean

shared_types_impl/CMakeFiles/shared-types-impl.dir/depend:
	cd /home/ricky/code/clang_typeinfo_tester/build_clang && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ricky/code/clang_typeinfo_tester /home/ricky/code/clang_typeinfo_tester/shared_types_impl /home/ricky/code/clang_typeinfo_tester/build_clang /home/ricky/code/clang_typeinfo_tester/build_clang/shared_types_impl /home/ricky/code/clang_typeinfo_tester/build_clang/shared_types_impl/CMakeFiles/shared-types-impl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : shared_types_impl/CMakeFiles/shared-types-impl.dir/depend
