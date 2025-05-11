project(HelloCLI C)
cmake_minimum_required(VERSION 3.10)

set(SOURCES main.cpp)

# Enable clang-tidy
set(CMAKE_C_CLANG_TIDY "clang-tidy;-checks=*")

# Enable coverage flags
if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    target_compile_options(hello-cli PRIVATE --coverage)
    target_link_libraries(hello-cli PRIVATE --coverage)
endif()

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_executable(hello-cli ${SOURCES})