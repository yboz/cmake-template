# Use a reasonably new CMake version
cmake_minimum_required(VERSION 3.2 FATAL_ERROR)
project(cmake-template VERSION 1.0 LANGUAGES CXX)

# Require GTest on the system as we don't package it
enable_testing()
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

add_subdirectory(mylib)
add_subdirectory(app)
