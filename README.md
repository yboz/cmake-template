# cmake-template
A project template for open source C++ projects built with CMake
## Project structure
The important files are
* [build.sh](build.sh) - a convenience script for cmake && make calls
* [CMakeLists.txt](CMakeLists.txt) - top level CMake script which manages all sub projects
* [app/CMakeLists.txt](app/CMakeLists.txt) - CMake script for an executable
* [hello/CMakeLists.txt](hello/CMakeLists.txt) - CMake script to build libraries and tests with gtest/gmock dependencies

## Building Eclipse project files
CMake can build your eclipse project import files.
```
mkdir build;cd build
cmake -G "Eclipse CDT4 - Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_ECLIPSE_MAKE_ARGUMENTS=-j8 ../
```
To import such CMake project into eclipse, the [cmake4eclipse plugin](https://marketplace.eclipse.org/content/cmake4eclipse/metrics) is recommended.


