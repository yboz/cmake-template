add_library(mylib src/mylib.cpp)

# define all headers in the include directory public
target_include_directories(mylib PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
    PRIVATE src)

# add compiler requirements for this library (cpp14)
target_compile_features(mylib PUBLIC cxx_std_14)

# Comment in to add link time dependencies
#target_link_libraries(mylib boost)

# 'make install' to the correct locations (provided by GNUInstallDirs).
# install(TARGETS lib EXPORT MyLibraryConfig
#     ARCHIVE  DESTINATION ${CMAKE_INSTALL_LIBDIR}
#     LIBRARY  DESTINATION ${CMAKE_INSTALL_LIBDIR}
#     RUNTIME  DESTINATION ${CMAKE_INSTALL_BINDIR})  # This is for Windows
# install(DIRECTORY include/ DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

# # This makes the project importable from the install directory
# # Put config file in per-project dir (name MUST match), can also
# # just go into 'cmake'.
# install(EXPORT MyLibraryConfig DESTINATION share/MyLibrary/cmake)

# This makes the project importable from the build directory
export(TARGETS mylib FILE MyLibraryConfig.cmake)

# Every library has unit tests, of course
add_executable(mylibtest
    test/testmylib.cpp)

# link against mylib
target_link_libraries(mylibtest
    mylib
    ${GTEST_BOTH_LIBRARIES})

add_test(test test)
