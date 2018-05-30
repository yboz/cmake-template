#include "mylib/mylib.hpp"
#include <gtest/gtest.h>

TEST(TestMyLib, ContainsGreeting)
{
    ASSERT_EQ(lib::sayhello(), "Hello World!");
}
