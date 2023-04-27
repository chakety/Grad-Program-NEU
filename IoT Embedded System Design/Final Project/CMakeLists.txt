cmake_minimum_required(VERSION 3.5)
project(CameraControl)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(OpenCV REQUIRED)
find_package(PahoMqttCpp REQUIRED)

include_directories(${OpenCV_INCLUDE_DIRS})
include_directories(${PahoMqttCpp_INCLUDE_DIRS})

add_executable(CameraControl CameraControl.cpp)

target_link_libraries(CameraControl ${OpenCV_LIBS} PahoMqttCpp::paho-mqttpp3 wiringPi)

