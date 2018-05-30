add_library(mylib src/mylib.cpp)

# define all headers in the include directory public
target_include_directories(mylib PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
    PRIVATE src)

# add compiler requirements for this library (cpp14)
target_compile_features(mylib PUBLIC cxx_std_14)

# Every library has unit tests, of course
add_executable(mylibtest
    test/testmylib.cpp)

# link against mylib
target_link_libraries(mylibtest
    mylib
    ${GTEST_BOTH_LIBRARIES}
    stdc++)

add_test(test test)
