cmake_minimum_required (VERSION 2.6)

project (strategy_pattern)

set (CMAKE_VERBOSE_MAKEFILE ON)
set (CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -rdynamic -o0 -g -std=c++11 -Wall -Wno-unused-function")

file (GLOB SRC_LIST ${PROJECT_SOURCE_DIR}/src/*.cpp)
include_directories (${PROJECT_SOURCE_DIR}/include)

add_library (strategy SHARED ${SRC_LIST})
#add_library (strategy_static STATIC ${SRC_LIST})
#set_target_properties (strategy_static PROPERTIES OUTPUT_NAME "strategy")

add_executable (strategy_test test.cc)
add_dependencies (strategy_test strategy)
target_link_libraries (strategy_test strategy)

set (EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set (LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)
