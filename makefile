testPartOne: clean compile testSimple
testPartTwo: clean compile testMultiProcess
testPartThree: clean compile testThreaded
testPartFour: clean compile testSocket

clean:
	rm -f cmake-build-debug/test

compile: main.cpp
	g++ -I . -o cmake-build-debug/test main.cpp FileModifierFactory.cpp Part1SimpleFileModifier.cpp Part2MultiProcessModifier.cpp Part3ThreadedModifier.cpp Part4SocketModifier.cpp PipeMaker.cpp Util.cpp

testSimple:
	cmake-build-debug/test 1

testMultiProcess:
	cmake-build-debug/test 2 2

testThreaded:
	cmake-build-debug/test 3

testSocket:
	cmake-build-debug/test 4 2
