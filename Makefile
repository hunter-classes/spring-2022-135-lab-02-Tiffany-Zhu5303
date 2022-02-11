main: main.o funcs.o
	g++ -o main main.o funcs.o
main.o: main.cpp funcs.h
	g++ -c main.cpp
funcs.o: funcs.cpp funcs.h
	g++ -c funcs.cpp
clean:
	rm main.o funcs.o main
help:
	@echo "Targets:"
	@echo " main"
	@echo " clean"
	@echo " help"
