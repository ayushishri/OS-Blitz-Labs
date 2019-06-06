#
# Type 'make' with this 'makefile' file to build the BLITZ OS kernel
# It will execute the following commands as needed, based on files'
# most-recent-update times.
# 

all: os DISK

#
# Stuff related to user-level programs in general...
#

UserRuntime.o: UserRuntime.s
	asm UserRuntime.s

UserSystem.s: UserSystem.h UserSystem.c
	kpl UserSystem -unsafe

UserSystem.o: UserSystem.s
	asm UserSystem.s

#
# Stuff related to user-level program 'MyProgram'...
#

MyProgram.s: UserSystem.h MyProgram.h MyProgram.c
	kpl MyProgram -unsafe

MyProgram.o: MyProgram.s
	asm MyProgram.s

MyProgram: UserRuntime.o UserSystem.o MyProgram.o
	lddd UserRuntime.o UserSystem.o MyProgram.o -o MyProgram

#
# Stuff related to user-level program 'TestProgram1'...
#

TestProgram1.s: UserSystem.h TestProgram1.h TestProgram1.c
	kpl TestProgram1 -unsafe

TestProgram1.o: TestProgram1.s
	asm TestProgram1.s

TestProgram1: UserRuntime.o UserSystem.o TestProgram1.o
	lddd UserRuntime.o UserSystem.o TestProgram1.o -o TestProgram1

#
# Stuff related to user-level program 'TestProgram2'...
#

TestProgram2.s: UserSystem.h TestProgram2.h TestProgram2.c
	kpl TestProgram2 -unsafe

TestProgram2.o: TestProgram2.s
	asm TestProgram2.s

TestProgram2: UserRuntime.o UserSystem.o TestProgram2.o
	lddd UserRuntime.o UserSystem.o TestProgram2.o -o TestProgram2

#
# Stuff related to the os kernel...
#

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

#
# Stuff related to the DISK...
#

DISK: MyProgram TestProgram1 TestProgram2
	diskUtil -i
	diskUtil -a MyProgram MyProgram
	diskUtil -a TestProgram1 TestProgram1
	diskUtil -a TestProgram2 TestProgram2
#
# clean up
#

clean:
	rm -f os *.o BitMap.s Kernel.s List.s Main.s System.s \
        MyProgram MyProgram.s TestProgram1 TestProgram1.s \
        TestProgram2 TestProgram2.s UserSystem.s \

