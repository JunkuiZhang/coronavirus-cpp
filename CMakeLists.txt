cmake_minimum_required(VERSION 3.16)
project(Covid_Cpp)

set(CMAKE_CXX_STANDARD 20)

find_package(PkgConfig REQUIRED)

pkg_search_module(SFML REQUIRED sfml-all)

include_directories(${SFML_INCLUDE_DIRS})
link_directories(${SFML_LIBRARY_DIRS})

add_executable(Covid_Cpp main.cpp Game.cpp Game.h Entity.cpp Entity.h Components.h Settings.h)
target_link_libraries(${PROJECT_NAME} ${SFML_LIBRARIES})
