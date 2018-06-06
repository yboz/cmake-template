# Define a shared library
add_library(hello
        include/hello/say_hello.hpp
        src/say_hello.cpp)

# Define all headers in the include directory public
target_include_directories(hello PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
    PRIVATE src)

# Define a test executable
add_executable(hello-test
        test/testmylib.cpp)

# Link against hello and gtest
target_link_libraries(hello-test
    hello
    ${GTEST_BOTH_LIBRARIES})

# Add test executable to test target so we can use ctest
add_test(test hello-test)
