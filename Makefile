.PHONY: all run clean

all: hello

hello: hello.o func.o
	@echo ">> Making hello"
	c++ hello.o func.o -o hello

func.o: func.cpp func.h
	@echo ">> Making func.o"
	c++ -c func.cpp

hello.o: hello.cpp
	@echo ">> Making hello.o"
	c++ -c hello.cpp

run: hello
	@echo ">> Running hello"
	./hello

clean:
	@echo ">> Cleaning all files"
	rm *.o hello
