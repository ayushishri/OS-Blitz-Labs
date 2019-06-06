#
# Type 'make' with this 'makefile' file to build the Project 2 code.
# It will execute the following commands as needed, based on files'
# most-recent-update times.
# 

all: task1 task2 task3

Runtime.o: Runtime.s
	asm Runtime.s

Switch.o: Switch.s
	asm Switch.s

System.s: System.h System.c
	kpl System -unsafe

System.o: System.s
	asm System.s

List.s: List.h List.c System.h
	kpl List -unsafe

List.o: List.s
	asm List.s

Thread.s: Thread.h Thread.c System.h List.h
	kpl Thread -unsafe

Thread.o: Thread.s
	asm Thread.s

Synch.s: Synch.h Synch.c Thread.h List.h System.h
	kpl Synch

Synch.o: Synch.s
	asm Synch.s

Task1.s: Task1.h Task1.c Thread.h List.h System.h Synch.h
	kpl Task1 -unsafe

Task1.o: Task1.s
	asm Task1.s

Task2.s: Task2.h Task2.c Thread.h List.h System.h Synch.h
	kpl Task2 -unsafe

Task2.o: Task2.s
	asm Task2.s

Task3.s: Task3.h Task3.c Thread.h List.h System.h Synch.h
	kpl Task3 -unsafe

Task3.o: Task3.s
	asm Task3.s


task1: System.o List.o Thread.o Switch.o Synch.o Task1.o Runtime.o
	lddd System.o List.o Thread.o Switch.o Synch.o Task1.o Runtime.o -o task1

task2: System.o List.o Thread.o Switch.o Synch.o Task2.o Runtime.o
	lddd System.o List.o Thread.o Switch.o Synch.o Task2.o Runtime.o -o task2

task3: System.o List.o Thread.o Switch.o Synch.o Task3.o Runtime.o
	lddd System.o List.o Thread.o Switch.o Synch.o Task3.o Runtime.o -o task3

clean:
	rm -f *.o task1 task2 task3 System.s List.s Thread.s Synch.s Task1.s Task2.s Task3.s *~ .*~


