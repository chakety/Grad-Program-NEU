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
CMAKE_SOURCE_DIR = /home/pi/Desktop/Final-Project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/Final-Project/build

# Include any dependencies generated for this target.
include CMakeFiles/CameraControl.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CameraControl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CameraControl.dir/flags.make

CMakeFiles/CameraControl.dir/CameraControl.cpp.o: CMakeFiles/CameraControl.dir/flags.make
CMakeFiles/CameraControl.dir/CameraControl.cpp.o: ../CameraControl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Final-Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CameraControl.dir/CameraControl.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CameraControl.dir/CameraControl.cpp.o -c /home/pi/Desktop/Final-Project/CameraControl.cpp

CMakeFiles/CameraControl.dir/CameraControl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CameraControl.dir/CameraControl.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/Final-Project/CameraControl.cpp > CMakeFiles/CameraControl.dir/CameraControl.cpp.i

CMakeFiles/CameraControl.dir/CameraControl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CameraControl.dir/CameraControl.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/Final-Project/CameraControl.cpp -o CMakeFiles/CameraControl.dir/CameraControl.cpp.s

# Object files for target CameraControl
CameraControl_OBJECTS = \
"CMakeFiles/CameraControl.dir/CameraControl.cpp.o"

# External object files for target CameraControl
CameraControl_EXTERNAL_OBJECTS =

CameraControl: CMakeFiles/CameraControl.dir/CameraControl.cpp.o
CameraControl: CMakeFiles/CameraControl.dir/build.make
CameraControl: /usr/local/lib/libopencv_gapi.so.4.7.0
CameraControl: /usr/local/lib/libopencv_highgui.so.4.7.0
CameraControl: /usr/local/lib/libopencv_ml.so.4.7.0
CameraControl: /usr/local/lib/libopencv_objdetect.so.4.7.0
CameraControl: /usr/local/lib/libopencv_photo.so.4.7.0
CameraControl: /usr/local/lib/libopencv_stitching.so.4.7.0
CameraControl: /usr/local/lib/libopencv_video.so.4.7.0
CameraControl: /usr/local/lib/libopencv_videoio.so.4.7.0
CameraControl: /usr/local/lib/libpaho-mqttpp3.so.1.2.0
CameraControl: /usr/local/lib/libopencv_imgcodecs.so.4.7.0
CameraControl: /usr/local/lib/libopencv_dnn.so.4.7.0
CameraControl: /usr/local/lib/libopencv_calib3d.so.4.7.0
CameraControl: /usr/local/lib/libopencv_features2d.so.4.7.0
CameraControl: /usr/local/lib/libopencv_flann.so.4.7.0
CameraControl: /usr/local/lib/libopencv_imgproc.so.4.7.0
CameraControl: /usr/local/lib/libopencv_core.so.4.7.0
CameraControl: /usr/local/lib/libpaho-mqtt3as.so
CameraControl: /usr/lib/arm-linux-gnueabihf/libssl.so
CameraControl: /usr/lib/arm-linux-gnueabihf/libcrypto.so
CameraControl: CMakeFiles/CameraControl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Desktop/Final-Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CameraControl"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CameraControl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CameraControl.dir/build: CameraControl

.PHONY : CMakeFiles/CameraControl.dir/build

CMakeFiles/CameraControl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CameraControl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CameraControl.dir/clean

CMakeFiles/CameraControl.dir/depend:
	cd /home/pi/Desktop/Final-Project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/Final-Project /home/pi/Desktop/Final-Project /home/pi/Desktop/Final-Project/build /home/pi/Desktop/Final-Project/build /home/pi/Desktop/Final-Project/build/CMakeFiles/CameraControl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CameraControl.dir/depend
