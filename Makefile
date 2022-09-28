all: math.exe
main.o : main.c
	gcc -c -o main.o main.c
add.o: add.c
	gcc -c -o add.o add.c
div.o:div.c
	gcc -c -o div.o div.c
mul.o:mul.c	
	gcc -c -o mul.o mul.c
sub.o:sub.c	
	gcc -c -o sub.o sub.c
math.exe: main.o add.o mul.o sub.o div.o	
	gcc  -o math.exe main.o add.o mul.o sub.o div.o
	
clean:
	del *.o *.exe