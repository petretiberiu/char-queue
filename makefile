all: tema1

bin/main.o bin/charQueue.o: src/main.cpp src/charQueue.cpp
	g++ -c -std=c++11 -o bin/main.o src/main.cpp
	g++ -c -std=c++11 -o bin/charQueue.o src/charQueue.cpp
tema1: bin/main.o bin/charQueue.o
	g++ -o tema1 bin/main.o bin/charQueue.o
clean: 
	rm bin/*.o tema1
