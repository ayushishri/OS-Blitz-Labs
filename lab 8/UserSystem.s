! Name of package being compiled: UserSystem
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
	.export	_Error_P_UserSystem_UncaughtThrowError
_Error_P_UserSystem_UncaughtThrowError:
	.ascii	"_Error_P_UserSystem_UncaughtThrowError\0"
	.align
! Functions imported from other packages
! Externally visible functions in this package
	.export	_P_UserSystem_Sys_Exit
	.export	_P_UserSystem_Sys_Shutdown
	.export	_P_UserSystem_Sys_Yield
	.export	_P_UserSystem_Sys_Fork
	.export	_P_UserSystem_Sys_Join
	.export	_P_UserSystem_Sys_Exec
	.export	_P_UserSystem_Sys_Create
	.export	_P_UserSystem_Sys_Open
	.export	_P_UserSystem_Sys_Read
	.export	_P_UserSystem_Sys_Write
	.export	_P_UserSystem_Sys_Seek
	.export	_P_UserSystem_Sys_Close
	.import	DoSyscall
	.import	TerminateWithError
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	printDouble
	.export	_P_UserSystem_StrEqual
	.export	_P_UserSystem_StrCopy
	.export	_P_UserSystem_StrCmp
	.export	_P_UserSystem_Min
	.export	_P_UserSystem_Max
	.export	_P_UserSystem_printIntVar
	.export	_P_UserSystem_printHexVar
	.export	_P_UserSystem_printBoolVar
	.export	_P_UserSystem_printCharVar
	.export	_P_UserSystem_printPtr
	.export	_P_UserSystem_nl
	.export	_P_UserSystem_MemoryEqual
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.export	_P_UserSystem_KPLSystemInitialize
	.export	_P_UserSystem_KPLMemoryAlloc
	.export	_P_UserSystem_KPLMemoryFree
	.export	_P_UserSystem_KPLUncaughtThrow
	.export	_P_UserSystem_KPLIsKindOf
	.export	_P_UserSystem_KPLSystemError
! The following class and its methods are from this package
	.export	_P_UserSystem_Object
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
! Global variables in this package
	.data
_Global_memoryArea:
	.skip	20004
_Global_nextCharToUse:
	.word	0
_Global_alreadyInAlloc:
	.byte	0
	.align
! String constants
_StringConst_23:
	.word	2			! length
	.ascii	":\t"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_21:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_20:
	.word	28			! length
	.ascii	"   Here is the CATCH STACK:\n"
	.align
_StringConst_19:
	.word	63			! length
	.ascii	"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n"
	.align
_StringConst_18:
	.word	41			! length
	.ascii	"   Currently active method or function = "
	.align
_StringConst_17:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_16:
	.word	31			! length
	.ascii	"   Location at time of THROW = "
	.align
_StringConst_15:
	.word	16			! length
	.ascii	"   Error Name = "
	.align
_StringConst_14:
	.word	64			! length
	.ascii	"\n\n++++++++++ An error has been thrown but not caught ++++++++++\n"
	.align
_StringConst_13:
	.word	36			! length
	.ascii	"WITHIN KPLIsKindOf: Bad Magic Number"
	.align
_StringConst_12:
	.word	34			! length
	.ascii	"WITHIN KPLIsKindOf: objPtr is NULL"
	.align
_StringConst_11:
	.word	43			! length
	.ascii	"\n\nFATAL KPL RUNTIME ERROR IN USER PROGRAM: "
	.align
_StringConst_10:
	.word	36			! length
	.ascii	"WITHIN KPLMemoryAlloc: Out of memory"
	.align
_StringConst_9:
	.word	49			! length
	.ascii	"WITHIN KPLMemoryAlloc: byte count is not positive"
	.align
_StringConst_8:
	.word	18			! length
	.ascii	"\n\nBad byteCount = "
	.align
_StringConst_7:
	.word	32			! length
	.ascii	"WITHIN KPLMemoryAlloc: Reentered"
	.align
_StringConst_6:
	.word	3			! length
	.ascii	" = "
	.align
_StringConst_5:
	.word	2			! length
	.ascii	"\'\n"
	.align
_StringConst_4:
	.word	4			! length
	.ascii	" = \'"
	.align
_StringConst_3:
	.word	3			! length
	.ascii	" = "
	.align
_StringConst_2:
	.word	3			! length
	.ascii	" = "
	.align
_StringConst_1:
	.word	3			! length
	.ascii	" = "
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"UserSystem.c\0"
_packageName:
	.ascii	"UserSystem\0"
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
_CheckVersion_P_UserSystem_:
	.export	_CheckVersion_P_UserSystem_
	set	0xd3ed0851,r4		! myHashVal = -739440559
	cmp	r3,r4
	be	_Label_26
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
_Label_26:
	mov	0,r1
_Label_27:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION Sys_Exit  ===============
! 
_P_UserSystem_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Exit,r1
	push	r1
	mov	6,r1
_Label_396:
	push	r0
	sub	r1,1,r1
	bne	_Label_396
	mov	13,r13		! source line 13
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	21,r13		! source line 21
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
! RETURN STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_28
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_29
	.word	8
	.word	4
	.word	_Label_30
	.word	-12
	.word	4
	.word	0
_Label_28:
	.ascii	"Sys_Exit\0"
	.align
_Label_29:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_30:
	.byte	'I'
	.ascii	"ignore\0"
	.align
! 
! ===============  FUNCTION Sys_Shutdown  ===============
! 
_P_UserSystem_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Shutdown,r1
	push	r1
	mov	6,r1
_Label_397:
	push	r0
	sub	r1,1,r1
	bne	_Label_397
	mov	26,r13		! source line 26
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	32,r13		! source line 32
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
! RETURN STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_31
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_32
	.word	-12
	.word	4
	.word	0
_Label_31:
	.ascii	"Sys_Shutdown\0"
	.align
_Label_32:
	.byte	'I'
	.ascii	"ignore\0"
	.align
! 
! ===============  FUNCTION Sys_Yield  ===============
! 
_P_UserSystem_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Yield,r1
	push	r1
	mov	6,r1
_Label_398:
	push	r0
	sub	r1,1,r1
	bne	_Label_398
	mov	37,r13		! source line 37
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	44,r13		! source line 44
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
! RETURN STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_33
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_34
	.word	-12
	.word	4
	.word	0
_Label_33:
	.ascii	"Sys_Yield\0"
	.align
_Label_34:
	.byte	'I'
	.ascii	"ignore\0"
	.align
! 
! ===============  FUNCTION Sys_Fork  ===============
! 
_P_UserSystem_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Fork,r1
	push	r1
	mov	6,r1
_Label_399:
	push	r0
	sub	r1,1,r1
	bne	_Label_399
	mov	49,r13		! source line 49
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	58,r13		! source line 58
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_35  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   ReturnResult: _temp_35  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_36
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_37
	.word	-12
	.word	4
	.word	0
_Label_36:
	.ascii	"Sys_Fork\0"
	.align
_Label_37:
	.byte	'?'
	.ascii	"_temp_35\0"
	.align
! 
! ===============  FUNCTION Sys_Join  ===============
! 
_P_UserSystem_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Join,r1
	push	r1
	mov	6,r1
_Label_400:
	push	r0
	sub	r1,1,r1
	bne	_Label_400
	mov	63,r13		! source line 63
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_38  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   ReturnResult: _temp_38  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Join:
	.word	_sourceFileName
	.word	_Label_39
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_40
	.word	8
	.word	4
	.word	_Label_41
	.word	-12
	.word	4
	.word	0
_Label_39:
	.ascii	"Sys_Join\0"
	.align
_Label_40:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_41:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
! 
! ===============  FUNCTION Sys_Exec  ===============
! 
_P_UserSystem_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Exec,r1
	push	r1
	mov	7,r1
_Label_401:
	push	r0
	sub	r1,1,r1
	bne	_Label_401
	mov	78,r13		! source line 78
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0RE",r10
!   _temp_43 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_43  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	88,r13		! source line 88
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_42  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_42  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_44
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_45
	.word	8
	.word	4
	.word	_Label_46
	.word	-12
	.word	4
	.word	_Label_47
	.word	-16
	.word	4
	.word	0
_Label_44:
	.ascii	"Sys_Exec\0"
	.align
_Label_45:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_46:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_47:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
! 
! ===============  FUNCTION Sys_Create  ===============
! 
_P_UserSystem_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Create,r1
	push	r1
	mov	7,r1
_Label_402:
	push	r0
	sub	r1,1,r1
	bne	_Label_402
	mov	93,r13		! source line 93
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0RE",r10
!   _temp_49 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_49  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	100,r13		! source line 100
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_48  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_48  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Create:
	.word	_sourceFileName
	.word	_Label_50
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_51
	.word	8
	.word	4
	.word	_Label_52
	.word	-12
	.word	4
	.word	_Label_53
	.word	-16
	.word	4
	.word	0
_Label_50:
	.ascii	"Sys_Create\0"
	.align
_Label_51:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_52:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_53:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
! 
! ===============  FUNCTION Sys_Open  ===============
! 
_P_UserSystem_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Open,r1
	push	r1
	mov	7,r1
_Label_403:
	push	r0
	sub	r1,1,r1
	bne	_Label_403
	mov	105,r13		! source line 105
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0RE",r10
!   _temp_55 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_55  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_54  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_54  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Open:
	.word	_sourceFileName
	.word	_Label_56
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_57
	.word	8
	.word	4
	.word	_Label_58
	.word	-12
	.word	4
	.word	_Label_59
	.word	-16
	.word	4
	.word	0
_Label_56:
	.ascii	"Sys_Open\0"
	.align
_Label_57:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_58:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_59:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
! 
! ===============  FUNCTION Sys_Read  ===============
! 
_P_UserSystem_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Read,r1
	push	r1
	mov	7,r1
_Label_404:
	push	r0
	sub	r1,1,r1
	bne	_Label_404
	mov	117,r13		! source line 117
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0RE",r10
!   _temp_61 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_61  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	136,r13		! source line 136
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_60  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_60  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Read:
	.word	_sourceFileName
	.word	_Label_62
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_63
	.word	8
	.word	4
	.word	_Label_64
	.word	12
	.word	4
	.word	_Label_65
	.word	16
	.word	4
	.word	_Label_66
	.word	-12
	.word	4
	.word	_Label_67
	.word	-16
	.word	4
	.word	0
_Label_62:
	.ascii	"Sys_Read\0"
	.align
_Label_63:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_64:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_65:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_66:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_67:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
! 
! ===============  FUNCTION Sys_Write  ===============
! 
_P_UserSystem_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Write,r1
	push	r1
	mov	7,r1
_Label_405:
	push	r0
	sub	r1,1,r1
	bne	_Label_405
	mov	141,r13		! source line 141
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0RE",r10
!   _temp_69 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_69  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	161,r13		! source line 161
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_68  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_68  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Write:
	.word	_sourceFileName
	.word	_Label_70
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_71
	.word	8
	.word	4
	.word	_Label_72
	.word	12
	.word	4
	.word	_Label_73
	.word	16
	.word	4
	.word	_Label_74
	.word	-12
	.word	4
	.word	_Label_75
	.word	-16
	.word	4
	.word	0
_Label_70:
	.ascii	"Sys_Write\0"
	.align
_Label_71:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_72:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_73:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_74:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_75:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
! 
! ===============  FUNCTION Sys_Seek  ===============
! 
_P_UserSystem_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Seek,r1
	push	r1
	mov	6,r1
_Label_406:
	push	r0
	sub	r1,1,r1
	bne	_Label_406
	mov	166,r13		! source line 166
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=11  sizeInBytes=4
	mov	11,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	187,r13		! source line 187
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=_temp_76  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   ReturnResult: _temp_76  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_77
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_78
	.word	8
	.word	4
	.word	_Label_79
	.word	12
	.word	4
	.word	_Label_80
	.word	-12
	.word	4
	.word	0
_Label_77:
	.ascii	"Sys_Seek\0"
	.align
_Label_78:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_79:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_80:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
! 
! ===============  FUNCTION Sys_Close  ===============
! 
_P_UserSystem_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Sys_Close,r1
	push	r1
	mov	6,r1
_Label_407:
	push	r0
	sub	r1,1,r1
	bne	_Label_407
	mov	192,r13		! source line 192
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=12  sizeInBytes=4
	mov	12,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+16]
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	DoSyscall
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
! RETURN STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Sys_Close:
	.word	_sourceFileName
	.word	_Label_81
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_82
	.word	8
	.word	4
	.word	_Label_83
	.word	-12
	.word	4
	.word	0
_Label_81:
	.ascii	"Sys_Close\0"
	.align
_Label_82:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_83:
	.byte	'I'
	.ascii	"ignore\0"
	.align
! 
! ===============  FUNCTION StrEqual  ===============
! 
_P_UserSystem_StrEqual:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_StrEqual,r1
	push	r1
	mov	9,r1
_Label_408:
	push	r0
	sub	r1,1,r1
	bne	_Label_408
	mov	204,r13		! source line 204
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	210,r13		! source line 210
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_86 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_87 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if _temp_86 == _temp_87 then goto _Label_85		(int)
	load	[r14+-40],r1
	load	[r14+-36],r2
	cmp	r1,r2
	be	_Label_85
!	jmp	_Label_84
_Label_84:
! THEN...
	mov	211,r13		! source line 211
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_85:
! FOR STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_92 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_94 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_93 = _temp_94 - 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_92  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-44]
_Label_88:
!   Perform the FOR-LOOP termination test
!   if i > _temp_93 then goto _Label_91		
	load	[r14+-44],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_91
_Label_89:
	mov	213,r13		! source line 213
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	214,r13		! source line 214
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s1 [i ] into _temp_98
!     make sure index expr is >= 0
	load	[r14+-44],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: _temp_97 = *_temp_98  (sizeInBytes=1)
	load	[r14+-20],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s2 [i ] into _temp_100
!     make sure index expr is >= 0
	load	[r14+-44],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_99 = *_temp_100  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_101 = _temp_97 XOR _temp_99		(bool)
	loadb	[r14+-11],r1
	loadb	[r14+-10],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_101 then goto _Label_95 else goto _Label_96
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_96
	jmp	_Label_95
_Label_95:
! THEN...
	mov	215,r13		! source line 215
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_96:
!   Increment the FOR-LOOP index variable and jump back
_Label_90:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_88
! END FOR
_Label_91:
! RETURN STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_StrEqual:
	.word	_sourceFileName
	.word	_Label_102
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_103
	.word	8
	.word	4
	.word	_Label_104
	.word	12
	.word	4
	.word	_Label_105
	.word	-9
	.word	1
	.word	_Label_106
	.word	-16
	.word	4
	.word	_Label_107
	.word	-10
	.word	1
	.word	_Label_108
	.word	-20
	.word	4
	.word	_Label_109
	.word	-11
	.word	1
	.word	_Label_110
	.word	-24
	.word	4
	.word	_Label_111
	.word	-28
	.word	4
	.word	_Label_112
	.word	-32
	.word	4
	.word	_Label_113
	.word	-36
	.word	4
	.word	_Label_114
	.word	-40
	.word	4
	.word	_Label_115
	.word	-44
	.word	4
	.word	0
_Label_102:
	.ascii	"StrEqual\0"
	.align
_Label_103:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_104:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_105:
	.byte	'C'
	.ascii	"_temp_101\0"
	.align
_Label_106:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_107:
	.byte	'C'
	.ascii	"_temp_99\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_109:
	.byte	'C'
	.ascii	"_temp_97\0"
	.align
_Label_110:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_111:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_112:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_113:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_114:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_115:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION StrCopy  ===============
! 
_P_UserSystem_StrCopy:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_StrCopy,r1
	push	r1
	mov	11,r1
_Label_409:
	push	r0
	sub	r1,1,r1
	bne	_Label_409
	mov	223,r13		! source line 223
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_116 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_117 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_116  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_117  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Call the function
	mov	237,r13		! source line 237
	mov	"\0\0CA",r10
	call	_P_UserSystem_Min
!   Retrieve Result: targetName=sz  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! FOR STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_122 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_123 = sz - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_122  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-40]
_Label_118:
!   Perform the FOR-LOOP termination test
!   if i > _temp_123 then goto _Label_121		
	load	[r14+-40],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_121
_Label_119:
	mov	238,r13		! source line 238
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0AS",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s1 [i ] into _temp_124
!     make sure index expr is >= 0
	load	[r14+-40],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s2 [i ] into _temp_126
!     make sure index expr is >= 0
	load	[r14+-40],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_125 = *_temp_126  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_124 = _temp_125  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_120:
!   i = i + 1
	load	[r14+-40],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
	jmp	_Label_118
! END FOR
_Label_121:
! RETURN STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_StrCopy:
	.word	_sourceFileName
	.word	_Label_127
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_128
	.word	8
	.word	4
	.word	_Label_129
	.word	12
	.word	4
	.word	_Label_130
	.word	-16
	.word	4
	.word	_Label_131
	.word	-9
	.word	1
	.word	_Label_132
	.word	-20
	.word	4
	.word	_Label_133
	.word	-24
	.word	4
	.word	_Label_134
	.word	-28
	.word	4
	.word	_Label_135
	.word	-32
	.word	4
	.word	_Label_136
	.word	-36
	.word	4
	.word	_Label_137
	.word	-40
	.word	4
	.word	_Label_138
	.word	-44
	.word	4
	.word	0
_Label_127:
	.ascii	"StrCopy\0"
	.align
_Label_128:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_129:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_131:
	.byte	'C'
	.ascii	"_temp_125\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_124\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_137:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_138:
	.byte	'I'
	.ascii	"sz\0"
	.align
! 
! ===============  FUNCTION StrCmp  ===============
! 
_P_UserSystem_StrCmp:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_StrCmp,r1
	push	r1
	mov	21,r1
_Label_410:
	push	r0
	sub	r1,1,r1
	bne	_Label_410
	mov	245,r13		! source line 245
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! sz
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_139 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_140 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_139  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_140  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_UserSystem_Min
!   Retrieve Result: targetName=sz  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! FOR STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_145 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_146 = sz - 1		(int)
	load	[r14+-80],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_145  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-84]
_Label_141:
!   Perform the FOR-LOOP termination test
!   if i > _temp_146 then goto _Label_144		
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_144
_Label_142:
	mov	256,r13		! source line 256
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s1 [i ] into _temp_151
!     make sure index expr is >= 0
	load	[r14+-84],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: _temp_150 = *_temp_151  (sizeInBytes=1)
	load	[r14+-56],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   _temp_149 = charToInt (_temp_150)
	loadb	[r14+-12],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-60]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s2 [i ] into _temp_154
!     make sure index expr is >= 0
	load	[r14+-84],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Data Move: _temp_153 = *_temp_154  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   _temp_152 = charToInt (_temp_153)
	loadb	[r14+-11],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-52]
!   if _temp_149 >= _temp_152 then goto _Label_148		(int)
	load	[r14+-60],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_148
!	jmp	_Label_147
_Label_147:
! THEN...
	mov	258,r13		! source line 258
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_155
_Label_148:
! ELSE...
	mov	259,r13		! source line 259
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s1 [i ] into _temp_160
!     make sure index expr is >= 0
	load	[r14+-84],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Data Move: _temp_159 = *_temp_160  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_158 = charToInt (_temp_159)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-44]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s2 [i ] into _temp_163
!     make sure index expr is >= 0
	load	[r14+-84],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_162 = *_temp_163  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   _temp_161 = charToInt (_temp_162)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-36]
!   if _temp_158 <= _temp_161 then goto _Label_157		(int)
	load	[r14+-44],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_157
!	jmp	_Label_156
_Label_156:
! THEN...
	mov	260,r13		! source line 260
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_157:
! END IF...
_Label_155:
!   Increment the FOR-LOOP index variable and jump back
_Label_143:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_141
! END FOR
_Label_144:
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_166 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_167 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_166 >= _temp_167 then goto _Label_165		(int)
	load	[r14+-28],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_165
!	jmp	_Label_164
_Label_164:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_168
_Label_165:
! ELSE...
	mov	265,r13		! source line 265
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_171 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_172 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if _temp_171 <= _temp_172 then goto _Label_170		(int)
	load	[r14+-20],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_170
!	jmp	_Label_169
_Label_169:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_173
_Label_170:
! ELSE...
	mov	268,r13		! source line 268
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_173:
! END IF...
_Label_168:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_StrCmp:
	.word	_sourceFileName
	.word	_Label_174
	.word	8		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_175
	.word	8
	.word	4
	.word	_Label_176
	.word	12
	.word	4
	.word	_Label_177
	.word	-16
	.word	4
	.word	_Label_178
	.word	-20
	.word	4
	.word	_Label_179
	.word	-24
	.word	4
	.word	_Label_180
	.word	-28
	.word	4
	.word	_Label_181
	.word	-32
	.word	4
	.word	_Label_182
	.word	-9
	.word	1
	.word	_Label_183
	.word	-36
	.word	4
	.word	_Label_184
	.word	-40
	.word	4
	.word	_Label_185
	.word	-10
	.word	1
	.word	_Label_186
	.word	-44
	.word	4
	.word	_Label_187
	.word	-48
	.word	4
	.word	_Label_188
	.word	-11
	.word	1
	.word	_Label_189
	.word	-52
	.word	4
	.word	_Label_190
	.word	-56
	.word	4
	.word	_Label_191
	.word	-12
	.word	1
	.word	_Label_192
	.word	-60
	.word	4
	.word	_Label_193
	.word	-64
	.word	4
	.word	_Label_194
	.word	-68
	.word	4
	.word	_Label_195
	.word	-72
	.word	4
	.word	_Label_196
	.word	-76
	.word	4
	.word	_Label_197
	.word	-80
	.word	4
	.word	_Label_198
	.word	-84
	.word	4
	.word	0
_Label_174:
	.ascii	"StrCmp\0"
	.align
_Label_175:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_176:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_163\0"
	.align
_Label_182:
	.byte	'C'
	.ascii	"_temp_162\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_160\0"
	.align
_Label_185:
	.byte	'C'
	.ascii	"_temp_159\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_188:
	.byte	'C'
	.ascii	"_temp_153\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_191:
	.byte	'C'
	.ascii	"_temp_150\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_197:
	.byte	'I'
	.ascii	"sz\0"
	.align
_Label_198:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Min  ===============
! 
_P_UserSystem_Min:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Min,r1
	push	r1
	mov	274,r13		! source line 274
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0IF",r10
!   if i >= j then goto _Label_200		(int)
	load	[r14+8],r1
	load	[r14+12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_200
!	jmp	_Label_199
_Label_199:
! THEN...
	mov	276,r13		! source line 276
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+8],r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_201
_Label_200:
! ELSE...
	mov	278,r13		! source line 278
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0RE",r10
!   ReturnResult: j  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_201:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Min:
	.word	_sourceFileName
	.word	_Label_202
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_203
	.word	8
	.word	4
	.word	_Label_204
	.word	12
	.word	4
	.word	0
_Label_202:
	.ascii	"Min\0"
	.align
_Label_203:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_204:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  FUNCTION Max  ===============
! 
_P_UserSystem_Max:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_Max,r1
	push	r1
	mov	284,r13		! source line 284
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	285,r13		! source line 285
	mov	"\0\0IF",r10
!   if i <= j then goto _Label_206		(int)
	load	[r14+8],r1
	load	[r14+12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_206
!	jmp	_Label_205
_Label_205:
! THEN...
	mov	286,r13		! source line 286
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+8],r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_207
_Label_206:
! ELSE...
	mov	288,r13		! source line 288
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	288,r13		! source line 288
	mov	"\0\0RE",r10
!   ReturnResult: j  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_207:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_Max:
	.word	_sourceFileName
	.word	_Label_208
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_209
	.word	8
	.word	4
	.word	_Label_210
	.word	12
	.word	4
	.word	0
_Label_208:
	.ascii	"Max\0"
	.align
_Label_209:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_210:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  FUNCTION printIntVar  ===============
! 
_P_UserSystem_printIntVar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_printIntVar,r1
	push	r1
	mov	2,r1
_Label_411:
	push	r0
	sub	r1,1,r1
	bne	_Label_411
	mov	294,r13		! source line 294
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=s  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	302,r13		! source line 302
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_211 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_211  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	304,r13		! source line 304
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	305,r13		! source line 305
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! RETURN STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_printIntVar:
	.word	_sourceFileName
	.word	_Label_212
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_213
	.word	8
	.word	4
	.word	_Label_214
	.word	12
	.word	4
	.word	_Label_215
	.word	-12
	.word	4
	.word	0
_Label_212:
	.ascii	"printIntVar\0"
	.align
_Label_213:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_214:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
! 
! ===============  FUNCTION printHexVar  ===============
! 
_P_UserSystem_printHexVar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_printHexVar,r1
	push	r1
	mov	2,r1
_Label_412:
	push	r0
	sub	r1,1,r1
	bne	_Label_412
	mov	310,r13		! source line 310
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=s  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	318,r13		! source line 318
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_216 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_216  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	319,r13		! source line 319
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	320,r13		! source line 320
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	321,r13		! source line 321
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! RETURN STATEMENT...
	mov	321,r13		! source line 321
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_printHexVar:
	.word	_sourceFileName
	.word	_Label_217
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_218
	.word	8
	.word	4
	.word	_Label_219
	.word	12
	.word	4
	.word	_Label_220
	.word	-12
	.word	4
	.word	0
_Label_217:
	.ascii	"printHexVar\0"
	.align
_Label_218:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_219:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
! 
! ===============  FUNCTION printBoolVar  ===============
! 
_P_UserSystem_printBoolVar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_printBoolVar,r1
	push	r1
	mov	2,r1
_Label_413:
	push	r0
	sub	r1,1,r1
	bne	_Label_413
	mov	326,r13		! source line 326
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=s  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_221 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_221  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	335,r13		! source line 335
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=b  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	337,r13		! source line 337
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! RETURN STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_printBoolVar:
	.word	_sourceFileName
	.word	_Label_222
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_223
	.word	8
	.word	4
	.word	_Label_224
	.word	12
	.word	1
	.word	_Label_225
	.word	-12
	.word	4
	.word	0
_Label_222:
	.ascii	"printBoolVar\0"
	.align
_Label_223:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_224:
	.byte	'B'
	.ascii	"b\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
! 
! ===============  FUNCTION printCharVar  ===============
! 
_P_UserSystem_printCharVar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_printCharVar,r1
	push	r1
	mov	3,r1
_Label_414:
	push	r0
	sub	r1,1,r1
	bne	_Label_414
	mov	342,r13		! source line 342
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=s  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	350,r13		! source line 350
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_226 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_226  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	351,r13		! source line 351
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=c  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	352,r13		! source line 352
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_227 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_227  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	353,r13		! source line 353
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_printCharVar:
	.word	_sourceFileName
	.word	_Label_228
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_229
	.word	8
	.word	4
	.word	_Label_230
	.word	12
	.word	1
	.word	_Label_231
	.word	-12
	.word	4
	.word	_Label_232
	.word	-16
	.word	4
	.word	0
_Label_228:
	.ascii	"printCharVar\0"
	.align
_Label_229:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_230:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
! 
! ===============  FUNCTION printPtr  ===============
! 
_P_UserSystem_printPtr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_printPtr,r1
	push	r1
	mov	3,r1
_Label_415:
	push	r0
	sub	r1,1,r1
	bne	_Label_415
	mov	358,r13		! source line 358
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=s  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	366,r13		! source line 366
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_233 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_233  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	367,r13		! source line 367
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_234 = p		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_234  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	368,r13		! source line 368
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	369,r13		! source line 369
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! RETURN STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_printPtr:
	.word	_sourceFileName
	.word	_Label_235
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_236
	.word	8
	.word	4
	.word	_Label_237
	.word	12
	.word	4
	.word	_Label_238
	.word	-12
	.word	4
	.word	_Label_239
	.word	-16
	.word	4
	.word	0
_Label_235:
	.ascii	"printPtr\0"
	.align
_Label_236:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_237:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
! 
! ===============  FUNCTION nl  ===============
! 
_P_UserSystem_nl:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_nl,r1
	push	r1
	mov	1,r1
_Label_416:
	push	r0
	sub	r1,1,r1
	bne	_Label_416
	mov	374,r13		! source line 374
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=10  sizeInBytes=1
	mov	10,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	375,r13		! source line 375
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_nl:
	.word	_sourceFileName
	.word	_Label_240
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_240:
	.ascii	"nl\0"
	.align
! 
! ===============  FUNCTION printNullTerminatedString  ===============
! 
_function_25_printNullTerminatedString:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_25_printNullTerminatedString,r1
	push	r1
	mov	2,r1
_Label_417:
	push	r0
	sub	r1,1,r1
	bne	_Label_417
	mov	380,r13		! source line 380
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	386,r13		! source line 386
	mov	"\0\0WH",r10
_Label_241:
!	jmp	_Label_242
_Label_242:
	mov	386,r13		! source line 386
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: ch = *p  (sizeInBytes=1)
	load	[r14+8],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
! IF STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0IF",r10
!   _temp_246 = ch XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_246 then goto _Label_245 else goto _Label_244
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_244
	jmp	_Label_245
_Label_244:
! THEN...
	mov	389,r13		! source line 389
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_245:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ch  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	391,r13		! source line 391
	mov	"\0\0CE",r10
	call	printChar
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   p = p + 1		(int)
	load	[r14+8],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! END WHILE...
	jmp	_Label_241
_Label_243:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_25_printNullTerminatedString:
	.word	_sourceFileName
	.word	_Label_247
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_248
	.word	8
	.word	4
	.word	_Label_249
	.word	-9
	.word	1
	.word	_Label_250
	.word	-10
	.word	1
	.word	0
_Label_247:
	.ascii	"printNullTerminatedString\0"
	.align
_Label_248:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_249:
	.byte	'C'
	.ascii	"_temp_246\0"
	.align
_Label_250:
	.byte	'C'
	.ascii	"ch\0"
	.align
! 
! ===============  FUNCTION MemoryEqual  ===============
! 
_P_UserSystem_MemoryEqual:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_MemoryEqual,r1
	push	r1
	mov	4,r1
_Label_418:
	push	r0
	sub	r1,1,r1
	bne	_Label_418
	mov	398,r13		! source line 398
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_255 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_256 = len - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_255  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-24]
_Label_251:
!   Perform the FOR-LOOP termination test
!   if i > _temp_256 then goto _Label_254		
	load	[r14+-24],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_254
_Label_252:
	mov	403,r13		! source line 403
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_259 = *s1  (sizeInBytes=1)
	load	[r14+8],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_260 = *s2  (sizeInBytes=1)
	load	[r14+12],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_261 = _temp_259 XOR _temp_260		(bool)
	loadb	[r14+-11],r1
	loadb	[r14+-10],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_261 then goto _Label_257 else goto _Label_258
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_258
	jmp	_Label_257
_Label_257:
! THEN...
	mov	405,r13		! source line 405
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_258:
! ASSIGNMENT STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0AS",r10
!   s1 = s1 + 1		(int)
	load	[r14+8],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! ASSIGNMENT STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0AS",r10
!   s2 = s2 + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_253:
!   i = i + 1
	load	[r14+-24],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
	jmp	_Label_251
! END FOR
_Label_254:
! RETURN STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_MemoryEqual:
	.word	_sourceFileName
	.word	_Label_262
	.word	12		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_263
	.word	8
	.word	4
	.word	_Label_264
	.word	12
	.word	4
	.word	_Label_265
	.word	16
	.word	4
	.word	_Label_266
	.word	-9
	.word	1
	.word	_Label_267
	.word	-10
	.word	1
	.word	_Label_268
	.word	-11
	.word	1
	.word	_Label_269
	.word	-16
	.word	4
	.word	_Label_270
	.word	-20
	.word	4
	.word	_Label_271
	.word	-24
	.word	4
	.word	0
_Label_262:
	.ascii	"MemoryEqual\0"
	.align
_Label_263:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_264:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_265:
	.byte	'I'
	.ascii	"len\0"
	.align
_Label_266:
	.byte	'C'
	.ascii	"_temp_261\0"
	.align
_Label_267:
	.byte	'C'
	.ascii	"_temp_260\0"
	.align
_Label_268:
	.byte	'C'
	.ascii	"_temp_259\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_271:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION KPLSystemInitialize  ===============
! 
_P_UserSystem_KPLSystemInitialize:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_KPLSystemInitialize,r1
	push	r1
	mov	1,r1
_Label_419:
	push	r0
	sub	r1,1,r1
	bne	_Label_419
	mov	436,r13		! source line 436
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! p
!   p = &_Global_memoryArea
	set	_Global_memoryArea,r1
	store	r1,[r14+-12]
! ASSIGNMENT STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = 20000  (sizeInBytes=4)
	mov	20000,r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_KPLSystemInitialize:
	.word	_sourceFileName
	.word	_Label_272
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_273
	.word	-12
	.word	4
	.word	0
_Label_272:
	.ascii	"KPLSystemInitialize\0"
	.align
_Label_273:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  FUNCTION KPLMemoryAlloc  ===============
! 
_P_UserSystem_KPLMemoryAlloc:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_KPLMemoryAlloc,r1
	push	r1
	mov	13,r1
_Label_420:
	push	r0
	sub	r1,1,r1
	bne	_Label_420
	mov	446,r13		! source line 446
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0IF",r10
!   if _Global_alreadyInAlloc then goto _Label_274 else goto _Label_275
	set	_Global_alreadyInAlloc,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_275
	jmp	_Label_274
_Label_274:
! THEN...
	mov	465,r13		! source line 465
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_276 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_276  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	465,r13		! source line 465
	mov	"\0\0CA",r10
	call	_P_UserSystem_KPLSystemError
! END IF...
_Label_275:
! ASSIGNMENT STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0AS",r10
!   _Global_alreadyInAlloc = 1		(1 byte)
	mov	1,r1
	set	_Global_alreadyInAlloc,r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0AS",r10
!   i = _Global_nextCharToUse		(4 bytes)
	set	_Global_nextCharToUse,r1
	load	[r1],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	470,r13		! source line 470
	mov	"\0\0IF",r10
!   if byteCount > 0 then goto _Label_278		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_278
!	jmp	_Label_277
_Label_277:
! THEN...
	mov	471,r13		! source line 471
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_279 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	471,r13		! source line 471
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=byteCount  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	472,r13		! source line 472
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_280 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	473,r13		! source line 473
	mov	"\0\0CA",r10
	call	_P_UserSystem_KPLSystemError
! END IF...
_Label_278:
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   byteCount = byteCount + 4		(int)
	load	[r14+8],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! IF STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0IF",r10
!   _temp_283 = byteCount rem 8		(int)
	load	[r14+8],r1
	mov	8,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if _temp_283 <= 0 then goto _Label_282		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_282
!	jmp	_Label_281
_Label_281:
! THEN...
	mov	481,r13		! source line 481
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
!   _temp_285 = byteCount div 8		(int)
	load	[r14+8],r1
	mov	8,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   _temp_284 = _temp_285 + 1		(int)
	load	[r14+-28],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   byteCount = _temp_284 * 8		(int)
	load	[r14+-32],r1
	mov	8,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! END IF...
_Label_282:
! ASSIGNMENT STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0AS",r10
!   _Global_nextCharToUse = _Global_nextCharToUse + byteCount		(int)
	set	_Global_nextCharToUse,r1
	load	[r1],r1
	load	[r14+8],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_nextCharToUse,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0IF",r10
!   if _Global_nextCharToUse <= 20000 then goto _Label_287		(int)
	set	_Global_nextCharToUse,r1
	load	[r1],r1
	mov	20000,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_287
!	jmp	_Label_286
_Label_286:
! THEN...
	mov	497,r13		! source line 497
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_288 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	497,r13		! source line 497
	mov	"\0\0CA",r10
	call	_P_UserSystem_KPLSystemError
! END IF...
_Label_287:
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   _temp_289 = &_Global_memoryArea
	set	_Global_memoryArea,r1
	store	r1,[r14+-20]
!   Move address of _temp_289 [i ] into _temp_290
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   p = _temp_290		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = byteCount  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-56],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   _Global_alreadyInAlloc = 0		(1 byte)
	mov	0,r1
	set	_Global_alreadyInAlloc,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0RE",r10
!   _temp_291 = p + 4		(int)
	load	[r14+-56],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   ReturnResult: _temp_291  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_KPLMemoryAlloc:
	.word	_sourceFileName
	.word	_Label_292
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_293
	.word	8
	.word	4
	.word	_Label_294
	.word	-12
	.word	4
	.word	_Label_295
	.word	-16
	.word	4
	.word	_Label_296
	.word	-20
	.word	4
	.word	_Label_297
	.word	-24
	.word	4
	.word	_Label_298
	.word	-28
	.word	4
	.word	_Label_299
	.word	-32
	.word	4
	.word	_Label_300
	.word	-36
	.word	4
	.word	_Label_301
	.word	-40
	.word	4
	.word	_Label_302
	.word	-44
	.word	4
	.word	_Label_303
	.word	-48
	.word	4
	.word	_Label_304
	.word	-52
	.word	4
	.word	_Label_305
	.word	-56
	.word	4
	.word	0
_Label_292:
	.ascii	"KPLMemoryAlloc\0"
	.align
_Label_293:
	.byte	'I'
	.ascii	"byteCount\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_304:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_305:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  FUNCTION KPLMemoryFree  ===============
! 
_P_UserSystem_KPLMemoryFree:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_KPLMemoryFree,r1
	push	r1
	mov	510,r13		! source line 510
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_KPLMemoryFree:
	.word	_sourceFileName
	.word	_Label_306
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_307
	.word	8
	.word	4
	.word	0
_Label_306:
	.ascii	"KPLMemoryFree\0"
	.align
_Label_307:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  FUNCTION KPLSystemError  ===============
! 
_P_UserSystem_KPLSystemError:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_KPLSystemError,r1
	push	r1
	mov	2,r1
_Label_421:
	push	r0
	sub	r1,1,r1
	bne	_Label_421
	mov	524,r13		! source line 524
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_308 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	531,r13		! source line 531
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=message  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	532,r13		! source line 532
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	533,r13		! source line 533
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! CALL STATEMENT...
!   Call the function
	mov	534,r13		! source line 534
	mov	"\0\0CE",r10
	call	TerminateWithError
! RETURN STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_KPLSystemError:
	.word	_sourceFileName
	.word	_Label_309
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_310
	.word	8
	.word	4
	.word	_Label_311
	.word	-12
	.word	4
	.word	0
_Label_309:
	.ascii	"KPLSystemError\0"
	.align
_Label_310:
	.byte	'P'
	.ascii	"message\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
! 
! ===============  FUNCTION KPLIsKindOf  ===============
! 
_P_UserSystem_KPLIsKindOf:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_KPLIsKindOf,r1
	push	r1
	mov	13,r1
_Label_422:
	push	r0
	sub	r1,1,r1
	bne	_Label_422
	mov	589,r13		! source line 589
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	603,r13		! source line 603
	mov	"\0\0IF",r10
!   if intIsZero (objPtr) then goto _Label_312
	load	[r14+8],r1
	cmp	r1,r0
	be	_Label_312
	jmp	_Label_313
_Label_312:
! THEN...
	mov	604,r13		! source line 604
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_314 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CA",r10
	call	_P_UserSystem_KPLSystemError
! END IF...
_Label_313:
! ASSIGNMENT STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0AS",r10
!   if intIsZero (objPtr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_315 = objPtr + 0
	load	[r14+8],r1
	add	r1,0,r1
	store	r1,[r14+-40]
!   Data Move: dispTable = *_temp_315  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0IF",r10
!   if intIsZero (dispTable) then goto _Label_316
	load	[r14+-48],r1
	cmp	r1,r0
	be	_Label_316
	jmp	_Label_317
_Label_316:
! THEN...
	mov	610,r13		! source line 610
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_317:
! ASSIGNMENT STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0AS",r10
!   if intIsZero (dispTable) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_318 = dispTable + 0
	load	[r14+-48],r1
	add	r1,0,r1
	store	r1,[r14+-36]
!   Data Move: classDesc = *_temp_318  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0IF",r10
!   if intIsZero (classDesc) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_322 = classDesc + 0
	load	[r14+-52],r1
	add	r1,0,r1
	store	r1,[r14+-28]
!   Data Move: _temp_321 = *_temp_322  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_321 == 1129070931 then goto _Label_320		(int)
	load	[r14+-32],r1
	set	1129070931,r2
	cmp	r1,r2
	be	_Label_320
!	jmp	_Label_319
_Label_319:
! THEN...
	mov	617,r13		! source line 617
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_323 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CA",r10
	call	_P_UserSystem_KPLSystemError
! END IF...
_Label_320:
! ASSIGNMENT STATEMENT...
	mov	621,r13		! source line 621
	mov	"\0\0AS",r10
!   if intIsZero (classDesc) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_324 = classDesc + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   next = _temp_324		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-56]
! WHILE STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0WH",r10
_Label_325:
!	jmp	_Label_326
_Label_326:
	mov	622,r13		! source line 622
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	623,r13		! source line 623
	mov	"\0\0IF",r10
!   if intIsZero (next) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_330 = *next  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_330) then goto _Label_328
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_328
	jmp	_Label_329
_Label_328:
! THEN...
	mov	624,r13		! source line 624
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	624,r13		! source line 624
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_331
_Label_329:
! ELSE...
	mov	625,r13		! source line 625
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0IF",r10
!   if intIsZero (next) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_334 = *next  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-12]
!   if _temp_334 != typeDesc then goto _Label_333		(int)
	load	[r14+-12],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_333
!	jmp	_Label_332
_Label_332:
! THEN...
	mov	626,r13		! source line 626
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	626,r13		! source line 626
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_333:
! END IF...
_Label_331:
! ASSIGNMENT STATEMENT...
	mov	628,r13		! source line 628
	mov	"\0\0AS",r10
!   next = next + 4		(int)
	load	[r14+-56],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! END WHILE...
	jmp	_Label_325
_Label_327:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_KPLIsKindOf:
	.word	_sourceFileName
	.word	_Label_335
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_336
	.word	8
	.word	4
	.word	_Label_337
	.word	12
	.word	4
	.word	_Label_338
	.word	-12
	.word	4
	.word	_Label_339
	.word	-16
	.word	4
	.word	_Label_340
	.word	-20
	.word	4
	.word	_Label_341
	.word	-24
	.word	4
	.word	_Label_342
	.word	-28
	.word	4
	.word	_Label_343
	.word	-32
	.word	4
	.word	_Label_344
	.word	-36
	.word	4
	.word	_Label_345
	.word	-40
	.word	4
	.word	_Label_346
	.word	-44
	.word	4
	.word	_Label_347
	.word	-48
	.word	4
	.word	_Label_348
	.word	-52
	.word	4
	.word	_Label_349
	.word	-56
	.word	4
	.word	0
_Label_335:
	.ascii	"KPLIsKindOf\0"
	.align
_Label_336:
	.byte	'P'
	.ascii	"objPtr\0"
	.align
_Label_337:
	.byte	'P'
	.ascii	"typeDesc\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_347:
	.byte	'P'
	.ascii	"dispTable\0"
	.align
_Label_348:
	.byte	'P'
	.ascii	"classDesc\0"
	.align
_Label_349:
	.byte	'P'
	.ascii	"next\0"
	.align
! 
! ===============  FUNCTION KPLUncaughtThrow  ===============
! 
_P_UserSystem_KPLUncaughtThrow:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_UserSystem_KPLUncaughtThrow,r1
	push	r1
	mov	10,r1
_Label_423:
	push	r0
	sub	r1,1,r1
	bne	_Label_423
	mov	634,r13		! source line 634
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_350 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_351 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CA",r10
	call	_function_25_printNullTerminatedString
! CALL STATEMENT...
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! CALL STATEMENT...
!   _temp_352 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0AS",r10
!   if intIsZero (rPtr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: charPtr = *rPtr  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-36]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=charPtr  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CA",r10
	call	_function_25_printNullTerminatedString
! CALL STATEMENT...
!   _temp_353 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=line  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! CALL STATEMENT...
!   _temp_354 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0AS",r10
!   rPtr = rPtr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	657,r13		! source line 657
	mov	"\0\0AS",r10
!   if intIsZero (rPtr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: charPtr = *rPtr  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r1],r1
	store	r1,[r14+-36]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=charPtr  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CA",r10
	call	_function_25_printNullTerminatedString
! CALL STATEMENT...
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! CALL STATEMENT...
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CA",r10
	call	_function_24_printCatchStack
! CALL STATEMENT...
!   _temp_355 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! THROW STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0TH",r10
!   Prepare Argument: offset=8  value=errorID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=line  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=rPtr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Throw 'UncaughtThrowError'...
	set	_Error_P_UserSystem_UncaughtThrowError,r4
	jmp	_PerformThrow
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_UserSystem_KPLUncaughtThrow:
	.word	_sourceFileName
	.word	_Label_356
	.word	12		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_357
	.word	8
	.word	4
	.word	_Label_358
	.word	12
	.word	4
	.word	_Label_359
	.word	16
	.word	4
	.word	_Label_360
	.word	-12
	.word	4
	.word	_Label_361
	.word	-16
	.word	4
	.word	_Label_362
	.word	-20
	.word	4
	.word	_Label_363
	.word	-24
	.word	4
	.word	_Label_364
	.word	-28
	.word	4
	.word	_Label_365
	.word	-32
	.word	4
	.word	_Label_366
	.word	-36
	.word	4
	.word	0
_Label_356:
	.ascii	"KPLUncaughtThrow\0"
	.align
_Label_357:
	.byte	'P'
	.ascii	"errorID\0"
	.align
_Label_358:
	.byte	'I'
	.ascii	"line\0"
	.align
_Label_359:
	.byte	'I'
	.ascii	"rPtr\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_366:
	.byte	'P'
	.ascii	"charPtr\0"
	.align
! 
! ===============  FUNCTION printCatchStack  ===============
! 
_function_24_printCatchStack:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_24_printCatchStack,r1
	push	r1
	mov	13,r1
_Label_424:
	push	r0
	sub	r1,1,r1
	bne	_Label_424
	mov	667,r13		! source line 667
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! p
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CE",r10
	call	getCatchStack
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_367 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_367  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	681,r13		! source line 681
	mov	"\0\0CE",r10
	call	print
! WHILE STATEMENT...
	mov	682,r13		! source line 682
	mov	"\0\0WH",r10
_Label_368:
!   if p == 0 then goto _Label_370		(int)
	load	[r14+-56],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_370
!	jmp	_Label_369
_Label_369:
	mov	682,r13		! source line 682
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_371 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	683,r13		! source line 683
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_373 = p + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_372 = *_temp_373  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	684,r13		! source line 684
	mov	"\0\0CA",r10
	call	_function_25_printNullTerminatedString
! CALL STATEMENT...
!   _temp_374 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_376 = p + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Data Move: _temp_375 = *_temp_376  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	686,r13		! source line 686
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_377 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_379 = p + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_378 = *_temp_379  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_378  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	688,r13		! source line 688
	mov	"\0\0CA",r10
	call	_function_25_printNullTerminatedString
! CALL STATEMENT...
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! ASSIGNMENT STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_380 = p + 0
	load	[r14+-56],r1
	add	r1,0,r1
	store	r1,[r14+-12]
!   Data Move: p = *_temp_380  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-56]
! END WHILE...
	jmp	_Label_368
_Label_370:
! RETURN STATEMENT...
	mov	682,r13		! source line 682
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_24_printCatchStack:
	.word	_sourceFileName
	.word	_Label_381
	.word	0		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_382
	.word	-12
	.word	4
	.word	_Label_383
	.word	-16
	.word	4
	.word	_Label_384
	.word	-20
	.word	4
	.word	_Label_385
	.word	-24
	.word	4
	.word	_Label_386
	.word	-28
	.word	4
	.word	_Label_387
	.word	-32
	.word	4
	.word	_Label_388
	.word	-36
	.word	4
	.word	_Label_389
	.word	-40
	.word	4
	.word	_Label_390
	.word	-44
	.word	4
	.word	_Label_391
	.word	-48
	.word	4
	.word	_Label_392
	.word	-52
	.word	4
	.word	_Label_393
	.word	-56
	.word	4
	.word	0
_Label_381:
	.ascii	"printCatchStack\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_393:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  CLASS Object  ===============
! 
! Dispatch Table:
! 
_P_UserSystem_Object:
	.word	_Label_394
	.word	0
! 
! Class descriptor:
! 
_Label_394:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_395
	.word	_sourceFileName
	.word	102		! line number
	.word	4		! size of instances, in bytes
	.word	_P_UserSystem_Object
	.word	0
_Label_395:
	.ascii	"Object\0"
	.align
