cmake_minimum_required(VERSION 2.8)
project(WebServer)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

include_directories(
    httpserver/
    socket/
)

add_library(WebServer SHARED httpserver/Httpserver.cpp socket/Socket.cpp)

add_executable(a main.cpp)
add_dependencies(a WebServer)
target_link_libraries(a WebServer)