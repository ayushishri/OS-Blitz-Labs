#
# Type 'make' with this 'makefile' file to build the BLITZ OS kernel
# It will execute the following commands as needed, based on files'
# most-recent-update times.
# 

all: os

Runtime.o: Runtime.s
	asm Runtime.s

Switch.o: Switch.s
	asm Switch.s

System.s: System.h System.c
	kpl System -unsafe

System.o: System.s
	asm System.s

List.s: System.h List.h List.c
	kpl List -unsafe

List.o: List.s
	asm List.s

BitMap.s: System.h BitMap.h BitMap.c
	kpl BitMap -unsafe

BitMap.o: BitMap.s
	asm BitMap.s

Kernel.s: System.h List.h BitMap.h Kernel.h Kernel.c
	kpl Kernel -unsafe

Kernel.o: Kernel.s
	asm Kernel.s

Main.s: System.h List.h BitMap.h Kernel.h Main.h Main.c
	kpl Main -unsafe

Main.o: Main.s
	asm Main.s

os: Runtime.o Switch.o System.o List.o BitMap.o Kernel.o Main.o
	lddd Runtime.o Switch.o System.o List.o BitMap.o Kernel.o Main.o -o os

clean:
	rm -f os *.o BitMap.s Kernel.s List.s Main.s System.s
