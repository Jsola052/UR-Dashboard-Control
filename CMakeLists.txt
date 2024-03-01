cmake_minimum_required(VERSION 3.0.2)

project(
  ur16_move
  VERSION 1.0
  LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -pedantic")

find_package(ur_client_library REQUIRED)

add_executable(
  ${PROJECT_NAME}
  main.cpp
  URRobot.hpp
  URRobot.cpp
)

target_link_libraries(
  ${PROJECT_NAME} 
  ur_client_library::urcl
)