cmake_minimum_required(VERSION 3.10)
project(cmake-template)

set(CMAKE_CXX_STANDARD 14)

# Require GTest on the system as it is not packaged
enable_testing()
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

add_subdirectory(hello)
add_subdirectory(app)