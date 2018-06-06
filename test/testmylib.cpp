#include "hello/say_hello.hpp"
#include <gtest/gtest.h>

TEST(TestMyLib, ContainsGreeting)
{
    ASSERT_EQ(lib::say_hello(), "Hello World!");
}
