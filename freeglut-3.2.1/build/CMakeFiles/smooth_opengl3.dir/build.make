# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\CMake\bin\cmake.exe

# The command to remove a file.
RM = C:\CMake\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\build

# Include any dependencies generated for this target.
include CMakeFiles/smooth_opengl3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/smooth_opengl3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/smooth_opengl3.dir/flags.make

CMakeFiles/smooth_opengl3.dir/progs/demos/smooth_opengl3/smooth_opengl3.c.obj: CMakeFiles/smooth_opengl3.dir/flags.make
CMakeFiles/smooth_opengl3.dir/progs/demos/smooth_opengl3/smooth_opengl3.c.obj: CMakeFiles/smooth_opengl3.dir/includes_C.rsp
CMakeFiles/smooth_opengl3.dir/progs/demos/smooth_opengl3/smooth_opengl3.c.obj: ../progs/demos/smooth_opengl3/smooth_opengl3.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/smooth_opengl3.dir/progs/demos/smooth_opengl3/smooth_opengl3.c.obj"
	C:\PROGRA~1\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\smooth_opengl3.dir\progs\demos\smooth_opengl3\smooth_opengl3.c.obj   -c C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\progs\demos\smooth_opengl3\smooth_opengl3.c

CMakeFiles/smooth_opengl3.dir/progs/demos/smooth_opengl3/smooth_opengl3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/smooth_opengl3.dir/progs/demos/smooth_opengl3/smooth_opengl3.c.i"
	C:\PROGRA~1\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\progs\demos\smooth_opengl3\smooth_opengl3.c > CMakeFiles\smooth_opengl3.dir\progs\demos\smooth_opengl3\smooth_opengl3.c.i

CMakeFiles/smooth_opengl3.dir/progs/demos/smooth_opengl3/smooth_opengl3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/smooth_opengl3.dir/progs/demos/smooth_opengl3/smooth_opengl3.c.s"
	C:\PROGRA~1\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\progs\demos\smooth_opengl3\smooth_opengl3.c -o CMakeFiles\smooth_opengl3.dir\progs\demos\smooth_opengl3\smooth_opengl3.c.s

# Object files for target smooth_opengl3
smooth_opengl3_OBJECTS = \
"CMakeFiles/smooth_opengl3.dir/progs/demos/smooth_opengl3/smooth_opengl3.c.obj"

# External object files for target smooth_opengl3
smooth_opengl3_EXTERNAL_OBJECTS =

bin/smooth_opengl3.exe: CMakeFiles/smooth_opengl3.dir/progs/demos/smooth_opengl3/smooth_opengl3.c.obj
bin/smooth_opengl3.exe: CMakeFiles/smooth_opengl3.dir/build.make
bin/smooth_opengl3.exe: lib/libfreeglut.dll.a
bin/smooth_opengl3.exe: CMakeFiles/smooth_opengl3.dir/linklibs.rsp
bin/smooth_opengl3.exe: CMakeFiles/smooth_opengl3.dir/objects1.rsp
bin/smooth_opengl3.exe: CMakeFiles/smooth_opengl3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bin\smooth_opengl3.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\smooth_opengl3.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/smooth_opengl3.dir/build: bin/smooth_opengl3.exe

.PHONY : CMakeFiles/smooth_opengl3.dir/build

CMakeFiles/smooth_opengl3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\smooth_opengl3.dir\cmake_clean.cmake
.PHONY : CMakeFiles/smooth_opengl3.dir/clean

CMakeFiles/smooth_opengl3.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1 C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1 C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\build C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\build C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\build\CMakeFiles\smooth_opengl3.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/smooth_opengl3.dir/depend

