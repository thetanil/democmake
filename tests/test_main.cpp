#include <gtest/gtest.h>

TEST(HelloTest, BasicOutput)
{
    EXPECT_EQ(1, 1); // Example test
}

int main(int argc, char **argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}