! Name of package being compiled: Program2
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
_StringConst_10:
	.word	50			! length
	.ascii	"\n*****  ERROR: Unexpected value of counter  *****\n"
	.align
_StringConst_9:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_8:
	.word	60			! length
	.ascii	"\n*****  ERROR: Unexpected return value from Sys_Exec  *****\n"
	.align
_StringConst_7:
	.word	8			! length
	.ascii	"Program2"
	.align
_StringConst_6:
	.word	61			! length
	.ascii	"\n*****  ERROR: Unexpected return value from Sys_Write  *****\n"
	.align
_StringConst_5:
	.word	60			! length
	.ascii	"\n*****  ERROR: Unexpected return value from Sys_Seek  *****\n"
	.align
_StringConst_4:
	.word	60			! length
	.ascii	"\n*****  ERROR: Unexpected return value from Sys_Read  *****\n"
	.align
_StringConst_3:
	.word	9			! length
	.ascii	")  *****\n"
	.align
_StringConst_2:
	.word	54			! length
	.ascii	"\n*****  ERROR: Unexpected return value from Sys_Seek ("
	.align
_StringConst_1:
	.word	18			! length
	.ascii	"Hello, world      "
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x73b1f67b,r3		! .  hashVal = 1941042811
	call	_CheckVersion_P_Program2_	! .
	cmp	r1,0			! .
	be	_Label_11		! .
	ret				! .
_Label_11:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Program2.c\0"
_packageName:
	.ascii	"Program2\0"
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
_CheckVersion_P_Program2_:
	.export	_CheckVersion_P_Program2_
	set	0x73b1f67b,r4		! myHashVal = 1941042811
	cmp	r3,r4
	be	_Label_12
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
_Label_12:
	mov	0,r1
! Make sure _P_UserSystem_ has hash value 0xd3ed0851 (decimal -739440559)
	set	_packageName,r2
	set	0xd3ed0851,r3
	call	_CheckVersion_P_UserSystem_
	.import	_CheckVersion_P_UserSystem_
	cmp	r1,0
	bne	_Label_13
_Label_13:
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
	mov	17,r1
_Label_56:
	push	r0
	sub	r1,1,r1
	bne	_Label_56
	mov	18,r13		! source line 18
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_14 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_14  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	21,r13		! source line 21
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	24,r13		! source line 24
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! IF STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_16
	load	[r14+-60],r1
	cmp	r1,r0
	be	_Label_16
!	jmp	_Label_15
_Label_15:
! THEN...
	mov	26,r13		! source line 26
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_17 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_17  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	26,r13		! source line 26
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_18 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_18  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	28,r13		! source line 28
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	29,r13		! source line 29
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_16:
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   _temp_19 = &counter
	add	r14,-64,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_19  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Call the function
	mov	31,r13		! source line 31
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! IF STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0IF",r10
!   if i == 4 then goto _Label_21		(int)
	load	[r14+-60],r1
	mov	4,r2
	cmp	r1,r2
	be	_Label_21
!	jmp	_Label_20
_Label_20:
! THEN...
	mov	33,r13		! source line 33
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_22 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_22  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	33,r13		! source line 33
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	34,r13		! source line 34
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_21:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=counter  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	38,r13		! source line 38
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	39,r13		! source line 39
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! IF STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0IF",r10
!   if counter <= 0 then goto _Label_24		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_24
!	jmp	_Label_25
_Label_25:
!   if counter >= 20 then goto _Label_24		(int)
	load	[r14+-64],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_24
!	jmp	_Label_23
_Label_23:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0AS",r10
!   counter = counter + 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! IF STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_27
	load	[r14+-60],r1
	cmp	r1,r0
	be	_Label_27
!	jmp	_Label_26
_Label_26:
! THEN...
	mov	48,r13		! source line 48
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_28 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_28  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	48,r13		! source line 48
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_27:
! ASSIGNMENT STATEMENT...
	mov	51,r13		! source line 51
	mov	"\0\0AS",r10
!   _temp_29 = &counter
	add	r14,-64,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_29  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Call the function
	mov	51,r13		! source line 51
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! IF STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0IF",r10
!   if i == 4 then goto _Label_31		(int)
	load	[r14+-60],r1
	mov	4,r2
	cmp	r1,r2
	be	_Label_31
!	jmp	_Label_30
_Label_30:
! THEN...
	mov	53,r13		! source line 53
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_32 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_32  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	53,r13		! source line 53
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	54,r13		! source line 54
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_31:
! ASSIGNMENT STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0AS",r10
!   _temp_33 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_33  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	58,r13		! source line 58
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_34 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_34  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	59,r13		! source line 59
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	60,r13		! source line 60
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_35
_Label_24:
! ELSE...
	mov	63,r13		! source line 63
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0IF",r10
!   if counter != 20 then goto _Label_37		(int)
	load	[r14+-64],r1
	mov	20,r2
	cmp	r1,r2
	bne	_Label_37
!	jmp	_Label_36
_Label_36:
! THEN...
	mov	64,r13		! source line 64
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_38 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_38  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	64,r13		! source line 64
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_39
_Label_37:
! ELSE...
	mov	69,r13		! source line 69
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_40 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_40  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	69,r13		! source line 69
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	70,r13		! source line 70
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_39:
! END IF...
_Label_35:
! RETURN STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_41
	.word	0		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_42
	.word	-12
	.word	4
	.word	_Label_43
	.word	-16
	.word	4
	.word	_Label_44
	.word	-20
	.word	4
	.word	_Label_45
	.word	-24
	.word	4
	.word	_Label_46
	.word	-28
	.word	4
	.word	_Label_47
	.word	-32
	.word	4
	.word	_Label_48
	.word	-36
	.word	4
	.word	_Label_49
	.word	-40
	.word	4
	.word	_Label_50
	.word	-44
	.word	4
	.word	_Label_51
	.word	-48
	.word	4
	.word	_Label_52
	.word	-52
	.word	4
	.word	_Label_53
	.word	-56
	.word	4
	.word	_Label_54
	.word	-60
	.word	4
	.word	_Label_55
	.word	-64
	.word	4
	.word	0
_Label_41:
	.ascii	"main\0"
	.align
_Label_42:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_43:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
_Label_44:
	.byte	'?'
	.ascii	"_temp_34\0"
	.align
_Label_45:
	.byte	'?'
	.ascii	"_temp_33\0"
	.align
_Label_46:
	.byte	'?'
	.ascii	"_temp_32\0"
	.align
_Label_47:
	.byte	'?'
	.ascii	"_temp_29\0"
	.align
_Label_48:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
_Label_49:
	.byte	'?'
	.ascii	"_temp_22\0"
	.align
_Label_50:
	.byte	'?'
	.ascii	"_temp_19\0"
	.align
_Label_51:
	.byte	'?'
	.ascii	"_temp_18\0"
	.align
_Label_52:
	.byte	'?'
	.ascii	"_temp_17\0"
	.align
_Label_53:
	.byte	'?'
	.ascii	"_temp_14\0"
	.align
_Label_54:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_55:
	.byte	'I'
	.ascii	"counter\0"
	.align
