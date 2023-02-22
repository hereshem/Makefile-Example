.PHONY: all run clean

all: hello

hello: hello.o func.o
	@echo "Making hello"
	g++ -o hello hello.o func.o

func.o: func.cpp func.h
	@echo "Making func.o"
	g++ -c func.cpp

hello.o: hello.cpp
	@echo "Making hello.o"
	g++ -c hello.cpp

run: hello
	@echo "Running hello"
	./hello

clean:
	@echo "Cleaning all files"
	rm *.o hello
