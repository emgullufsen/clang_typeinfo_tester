cmake_minimum_required(VERSION 3.22)
project(clang_test)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

add_subdirectory(core)
add_subdirectory(interface)
add_subdirectory(shared_types_impl)
add_subdirectory(plugins)
