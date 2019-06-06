! Name of package being compiled: TestProgram2
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_UserSystem_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	_P_UserSystem_Sys_Exit
	.import	_P_UserSystem_Sys_Shutdown
	.import	_P_UserSystem_Sys_Yield
	.import	_P_UserSystem_Sys_Fork
	.import	_P_UserSystem_Sys_Join
	.import	_P_UserSystem_Sys_Exec
	.import	_P_UserSystem_Sys_Create
	.import	_P_UserSystem_Sys_Open
	.import	_P_UserSystem_Sys_Read
	.import	_P_UserSystem_Sys_Write
	.import	_P_UserSystem_Sys_Seek
	.import	_P_UserSystem_Sys_Close
	.import	DoSyscall
	.import	TerminateWithError
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	printDouble
	.import	_P_UserSystem_StrEqual
	.import	_P_UserSystem_StrCopy
	.import	_P_UserSystem_StrCmp
	.import	_P_UserSystem_Min
	.import	_P_UserSystem_Max
	.import	_P_UserSystem_printIntVar
	.import	_P_UserSystem_printHexVar
	.import	_P_UserSystem_printBoolVar
	.import	_P_UserSystem_printCharVar
	.import	_P_UserSystem_printPtr
	.import	_P_UserSystem_nl
	.import	_P_UserSystem_MemoryEqual
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_UserSystem_KPLSystemInitialize
	.import	_P_UserSystem_KPLMemoryAlloc
	.import	_P_UserSystem_KPLMemoryFree
	.import	_P_UserSystem_KPLUncaughtThrow
	.import	_P_UserSystem_KPLIsKindOf
	.import	_P_UserSystem_KPLSystemError
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_UserSystem_Object
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
! Global variables in this package
	.data
	.align
! String constants
_StringConst_5:
	.word	69			! length
	.ascii	"\n*************** ERROR: Execution should not continue after Shutdown\n"
	.align
_StringConst_4:
	.word	104			! length
	.ascii	"*****     FATAL ERROR in UserProgram: \"Syscall \'Shutdown\' was invoked by a user thread\" -- TERMINATING!\n"
	.align
_StringConst_3:
	.word	20			! length
	.ascii	"***** Should print:\n"
	.align
_StringConst_2:
	.word	37			! length
	.ascii	"\n***** About to call Sys_Shutdown...\n"
	.align
_StringConst_1:
	.word	46			! length
	.ascii	"User-level program \'TestProgram2\' is running!\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x9ba9d27c,r3		! .  hashVal = -1683369348
	call	_CheckVersion_P_TestProgram2_	! .
	cmp	r1,0			! .
	be	_Label_6		! .
	ret				! .
_Label_6:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"TestProgram2.c\0"
_packageName:
	.ascii	"TestProgram2\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_TestProgram2_:
	.export	_CheckVersion_P_TestProgram2_
	set	0x9ba9d27c,r4		! myHashVal = -1683369348
	cmp	r3,r4
	be	_Label_7
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_7:
	mov	0,r1
! Make sure _P_UserSystem_ has hash value 0xd3ed0851 (decimal -739440559)
	set	_packageName,r2
	set	0xd3ed0851,r3
	call	_CheckVersion_P_UserSystem_
	.import	_CheckVersion_P_UserSystem_
	cmp	r1,0
	bne	_Label_8
_Label_8:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	6,r1
_Label_20:
	push	r0
	sub	r1,1,r1
	bne	_Label_20
	mov	5,r13		! source line 5
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_9 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_9  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	7,r13		! source line 7
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_10 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_10  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	9,r13		! source line 9
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_11 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_11  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	10,r13		! source line 10
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_12 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_12  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	11,r13		! source line 11
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	13,r13		! source line 13
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Shutdown
! CALL STATEMENT...
!   _temp_13 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_13  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	15,r13		! source line 15
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_14
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_15
	.word	-12
	.word	4
	.word	_Label_16
	.word	-16
	.word	4
	.word	_Label_17
	.word	-20
	.word	4
	.word	_Label_18
	.word	-24
	.word	4
	.word	_Label_19
	.word	-28
	.word	4
	.word	0
_Label_14:
	.ascii	"main\0"
	.align
_Label_15:
	.byte	'?'
	.ascii	"_temp_13\0"
	.align
_Label_16:
	.byte	'?'
	.ascii	"_temp_12\0"
	.align
_Label_17:
	.byte	'?'
	.ascii	"_temp_11\0"
	.align
_Label_18:
	.byte	'?'
	.ascii	"_temp_10\0"
	.align
_Label_19:
	.byte	'?'
	.ascii	"_temp_9\0"
	.align
