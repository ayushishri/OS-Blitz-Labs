! BLITZ OS - Switch.s
!
! Harry Porter  -  12/07/03
!                  03/24/09
!
! The following functions are implemented in this file:
!
	.export	Switch
	.export	ThreadStartUp
!
! The following functions are imported:
!
	.import	_P_Thread_ThreadStartMain
	.import	_P_Thread_ThreadFinish
!
	.text


! 
! ===============  ThreadStartUp  ===============
! 
! external ThreadStartUp ()
!
! This routine is where each Thread begins execution.  The Fork function
! will place the starting address of this routine into the Thread object
! so that Switch will "return" to this address, thereby making a jump to
! the first instruction of this routine.  This routine will initialize
! all registers needed by high-level KPL code (namely r12 & r14) and will
! then call the KPL function "ThreadStartMain".  ThreadStartMain will invoke
! the "main" function of the thread. ThreadStartMain  will never return.
! 
ThreadStartUp:
		mov	r0,r14				! Clear the FP register
		mov	r0,r12				! Clear the Catch Stack pointer
		call	_P_Thread_ThreadStartMain	! Call ThreadStartMain
ThreadHang:	debug					! Should never reach this point
		jmp	ThreadHang			! .



! 
! ===============  Switch  ===============
! 
! external Switch (prevThread, nextThread: ptr to Thread)
!
! This routine is passed ptrs to 2 Thread objects.  Each Thread object
! contains a place to store the state of the machine.  This includes:
!    r2-r14
!    stackTop (r15)
! This routine switches the state from one thread to the next and returns.
! Of course it will be returning to a different invocation, since the thread
! will have been switched.
!
! This routine trashes r1.
! 
Switch:
		load	[r15+4],r1		! Move the prevThread into r1
		add	r1,16,r1		! Make r1 point to r1.regs
		store	r2,[r1+0]		! Save r2..r14 in r1.regs
		store	r3,[r1+4]		! .
		store	r4,[r1+8]		! .
		store	r5,[r1+12]		! .
		store	r6,[r1+16]		! .
		store	r7,[r1+20]		! .
		store	r8,[r1+24]		! .
		store	r9,[r1+28]		! .
		store	r10,[r1+32]		! .
		store	r11,[r1+36]		! .
		store	r12,[r1+40]		! .
		store	r13,[r1+44]		! .
		store	r14,[r1+48]		! .
		store	r15,[r1+52]		! Save r15 in r1.stackTop

		load	[r15+8],r1		! Move the nextThread into r1
		add	r1,16,r1		! Make r1 point to r1.regs
		load	[r1+0],r2		! Restore r2..r14 from r1.regs
		load	[r1+4],r3		! .
		load	[r1+8],r4		! .
		load	[r1+12],r5		! .
		load	[r1+16],r6		! .
		load	[r1+20],r7		! .
		load	[r1+24],r8		! .
		load	[r1+28],r9		! .
		load	[r1+32],r10		! .
		load	[r1+36],r11		! .
		load	[r1+40],r12		! .
		load	[r1+44],r13		! .
		load	[r1+48],r14		! .
		load	[r1+52],r15		! Restore r15 from r1.stackTop
		ret
