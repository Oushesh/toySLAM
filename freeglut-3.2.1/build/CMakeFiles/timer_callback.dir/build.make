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
include CMakeFiles/timer_callback.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/timer_callback.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/timer_callback.dir/flags.make

CMakeFiles/timer_callback.dir/progs/demos/timer_callback/timer.c.obj: CMakeFiles/timer_callback.dir/flags.make
CMakeFiles/timer_callback.dir/progs/demos/timer_callback/timer.c.obj: CMakeFiles/timer_callback.dir/includes_C.rsp
CMakeFiles/timer_callback.dir/progs/demos/timer_callback/timer.c.obj: ../progs/demos/timer_callback/timer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/timer_callback.dir/progs/demos/timer_callback/timer.c.obj"
	C:\PROGRA~1\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\timer_callback.dir\progs\demos\timer_callback\timer.c.obj   -c C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\progs\demos\timer_callback\timer.c

CMakeFiles/timer_callback.dir/progs/demos/timer_callback/timer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/timer_callback.dir/progs/demos/timer_callback/timer.c.i"
	C:\PROGRA~1\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\progs\demos\timer_callback\timer.c > CMakeFiles\timer_callback.dir\progs\demos\timer_callback\timer.c.i

CMakeFiles/timer_callback.dir/progs/demos/timer_callback/timer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/timer_callback.dir/progs/demos/timer_callback/timer.c.s"
	C:\PROGRA~1\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\progs\demos\timer_callback\timer.c -o CMakeFiles\timer_callback.dir\progs\demos\timer_callback\timer.c.s

# Object files for target timer_callback
timer_callback_OBJECTS = \
"CMakeFiles/timer_callback.dir/progs/demos/timer_callback/timer.c.obj"

# External object files for target timer_callback
timer_callback_EXTERNAL_OBJECTS =

bin/timer_callback.exe: CMakeFiles/timer_callback.dir/progs/demos/timer_callback/timer.c.obj
bin/timer_callback.exe: CMakeFiles/timer_callback.dir/build.make
bin/timer_callback.exe: lib/libfreeglut.dll.a
bin/timer_callback.exe: CMakeFiles/timer_callback.dir/linklibs.rsp
bin/timer_callback.exe: CMakeFiles/timer_callback.dir/objects1.rsp
bin/timer_callback.exe: CMakeFiles/timer_callback.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable bin\timer_callback.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\timer_callback.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/timer_callback.dir/build: bin/timer_callback.exe

.PHONY : CMakeFiles/timer_callback.dir/build

CMakeFiles/timer_callback.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\timer_callback.dir\cmake_clean.cmake
.PHONY : CMakeFiles/timer_callback.dir/clean

CMakeFiles/timer_callback.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1 C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1 C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\build C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\build C:\Users\Oushesh\Documents\WORKSPACE\toySLAM\freeglut-3.2.1\build\CMakeFiles\timer_callback.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/timer_callback.dir/depend

