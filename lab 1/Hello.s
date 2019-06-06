! Hello World
!
! Harry Porter, 11/20/02
!
! This program prints a short message on the BLITZ terminal output and
! then executes the DEBUG instruction.
!
! This program does not use interrupts; it uses busy-waiting for waiting
! for the output to become ready.
!
        .text
_entry:



!
! Here is the interrupt vector, which will be loaded at address 0x00000000.
! Each entry is 4 bytes.  They are located at fixed, pre-defined addresses.
! This program will ignore all interrupts.  None of the interrupts should
! occur; if they do, this program will get stuck in an infinite loop. 
!
PowerOnReset:
        jmp     main
TimerInterrupt:
        jmp	TimerInterrupt
DiskInterrupt:
        jmp	DiskInterrupt
SerialInterrupt:
        jmp	SerialInterrupt
HardwareFault:
        jmp     HardwareFault
IllegalInstruction:
        jmp     IllegalInstruction
ArithmeticException:
        jmp     ArithmeticException
AddressException:
        jmp     AddressException
PageInvalidException:
        jmp     PageInvalidException
PageReadonlyException:
        jmp     PageReadonlyException
PrivilegedInstruction:
        jmp     PrivilegedInstruction
AlignmentException:
        jmp     AlignmentException
ExceptionDuringInterrupt:
        jmp     ExceptionDuringInterrupt
SyscallTrap:
        jmp     SyscallTrap


!
! main - This program prints a message and then terminates.
!
! The algorithm is:
!        Loop forever
!          Initialize pointers
!          Repeat the following in a loop:
!            Wait (in a busy loop) until the output is ready
!            Get the next character
!            If it is '\0' then break
!            Send the character to the terminal
!          Execute the 'debug' instruction
!        EndLoop
!
! Here is how the registers are used:
!   r1  = ptr to SERIAL_STAT
!   r2  = ptr to SERIAL_DATA
!   r3  = serial status word
!   r4  = ptr to next character to be printed
!   r5  = character
!   r15 = stack pointer
!
main:					! MAIN LOOP:
		set	STACK_START,r15	!   Initialize the stack reg
		set	SERIAL_STAT,r1	!   Initialize ptr to SERIAL_STAT word
		set	SERIAL_DATA,r2	!   Initialize ptr to SERIAL_DATA word
		set	message,r4	!   r4 := & message
loop:					!   LOOP:
busywait:				!     BUSYWAIT:
		load	[r1],r3		!       r3 := serial status word
		btst	0x00000002,r3   !       if status[outputReady] == 0 then
		be	busywait	!       .    goto BUSYWAIT
		loadb	[r4],r5		!     r5 := the next character ( := *r4)
		cmp	r5,0		!     if (char == \0)
		be	loopExit	!     .  then break
		add	r4,1,r4		!     r4 := r4 + 1
		store	r5,[r2]		!     send char in r5 to serial output
		jmp	loop		!   END LOOP
loopExit:
		debug			!   return to emulator
		jmp	main		! END MAIN LOOP


message:	.ascii	"Hello, world!\n\r\0"

STACK_START	=	0x00ffff00
SERIAL_STAT	=	0x00ffff00
SERIAL_DATA	=	0x00ffff04
