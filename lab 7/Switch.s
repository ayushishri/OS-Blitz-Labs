! BLITZ OS - Switch.s
!
! Harry Porter  -  12/07/03
!                  03/24/09
!
! The following functions are implemented in this file:
!
	.export	Switch
	.export	ThreadStartUp
	.export	GetOldUserPCFromSystemStack
	.export	LoadPageTableRegs
	.export SaveUserRegs
	.export RestoreUserRegs
	.export BecomeUserThread
!
! The following functions are imported:
!
	.import	_P_Kernel_ThreadStartMain
	.import	_P_Kernel_ThreadFinish
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
		call	_P_Kernel_ThreadStartMain	! Call ThreadStartMain
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



! 
! ===============  GetOldUserPCFromSystemStack  ===============
! 
! external GetOldUserPCFromSystemStack () returns int
!
! This routine is called by the kernel after a syscall has occurred.  It expects
! the assembly SyscallTrapHandler to have called the high-level SyscallTrapHandler,
! which then called Handle_Sys_Fork.  It expects to be called from Handle_Sys_Fork,
! and will not work properly otherwise.
!
! This routine looks down into stuff buried in the system stack and finds the
! exception block that was pushed onto the stack at the time of the syscall.
! From that, it retrieves the user-mode PC, which points to the instruction
! the kernel must return to after the syscall.
! 
GetOldUserPCFromSystemStack:
		load	[r14],r1		! r1 = ptr to frame of SyscallTrapHandler
		load	[r1+28],r1		! r1 = pc from interrupt block
		store	r1,[r15+4]
		ret



! 
! =====================  LoadPageTableRegs  =====================
! 
! external LoadPageTableRegs (ptbr, ptlr: int)
!
! This routine will load the Page Table Base Register (PTBR) and the
! Page Table Length Register (PTLR).
! 
LoadPageTableRegs:
		load	[r15+4],r1	! Get arg1
		ldptbr	r1		! Move it to PTBR
		load	[r15+8],r1	! Get arg2
		ldptlr	r1		! Move it to PTLR
		ret			! return



! 
! =====================  SaveUserRegs  =====================
! 
! external SaveUserRegs (ptr to int)
!
! This routine is passed a pointer to a block of memory.  It is called
! while in System Mode.  It copies the user registers to the block of memory.
!
SaveUserRegs:
		load	[r15+4],r1		! Move ptr to memory into r1
		readu	r1,[r1+0]		! Copy user registers to memory
		readu	r2,[r1+4]		! .
		readu	r3,[r1+8]		! .
		readu	r4,[r1+12]		! .
		readu	r5,[r1+16]		! .
		readu	r6,[r1+20]		! .
		readu	r7,[r1+24]		! .
		readu	r8,[r1+28]		! .
		readu	r9,[r1+32]		! .
		readu	r10,[r1+36]		! .
		readu	r11,[r1+40]		! .
		readu	r12,[r1+44]		! .
		readu	r13,[r1+48]		! .
		readu	r14,[r1+52]		! .
		readu	r15,[r1+56]		! .
		ret				! Return



! 
! =====================  RestoreUserRegs  =====================
! 
! external RestoreUserRegs (ptr to int)
!
! This routine is passed a pointer to a block of memory.  It is called
! while in System Mode.  It copies data from memory into the user registers.
!
RestoreUserRegs:
		load	[r15+4],r1		! Move ptr to memory into r1
		writeu	[r1+0],r1		! Copy data to user registers
		writeu	[r1+4],r2		! .
		writeu	[r1+8],r3		! .
		writeu	[r1+12],r4		! .
		writeu	[r1+16],r5		! .
		writeu	[r1+20],r6		! .
		writeu	[r1+24],r7		! .
		writeu	[r1+28],r8		! .
		writeu	[r1+32],r9		! .
		writeu	[r1+36],r10		! .
		writeu	[r1+40],r11		! .
		writeu	[r1+44],r12		! .
		writeu	[r1+48],r13		! .
		writeu	[r1+52],r14		! .
		writeu	[r1+56],r15		! .
		ret				! Return



! 
! =====================  BecomeUserThread  =====================
! 
! external BecomeUserThread (initStack, initPC, initSystemStack: int)
!
! This routine changes the mode from system-mode to user-mode.  It
! also enables interrupts and paging.  It is passed the initial value
! for the user stack and the initial address to branch to.  The user
! thread will never "return" (it must execute something like
! Syscall_Exit).  However, the user thread will execute syscalls from
! time to time.  Thus, the system stack as it exists now will be pushed
! onto when ever this thread does a syscall.
!
! Note that 0x00000020 is a StatusRegister (interrupts, user mode, paging off).
! Note that 0x00000028 is a StatusRegister (interrupts, user mode, paging on).
!
BecomeUserThread:
		load	[r15+4],r3		! r3 := initStack
		writeu	r3,r15			! Store stack-ptr in user reg r15
		load	[r15+8],r2		! Move initPC into r2
		load	[r15+12],r15		! Move initSystemStack into r15
		push	r0			! Push a fake interrupt block
		mov	0x00000028,r4		! .  onto the system stack
		push	r4			! .
		push	r2			! .
		clr	r1			! Set user reg r1 to zero
		writeu	r1,r1			! .
		reti				! "return" from interrupt
