cmake_minimum_required(VERSION 3.17)
project(21S_CS3377_Project_Template)

set(CMAKE_CXX_STANDARD 14)

add_executable(21S_CS3377_Project_Template main.cpp FileModifierFactory.cpp Part1SimpleFileModifier.cpp Part2MultiProcessModifier.cpp Part3ThreadedModifier.cpp Part4SocketModifier.cpp PipeMaker.cpp Util.cpp FileReader.cpp FileWriter.cpp)
