# Define a shared library
add_library(hello
        include/hello/say_hello.hpp
        src/say_hello.cpp)

# define all headers in the include directory public
target_include_directories(hello PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
    PRIVATE src)

# define test executable
add_executable(hello-test
        test/testmylib.cpp)

# link against hello
target_link_libraries(hello-test
    hello
    ${GTEST_BOTH_LIBRARIES})

add_test(test hello-test)
