! Name of package being compiled: Main
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
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
	.import	_P_Kernel_TimerInterruptHandler
	.import	_P_Kernel_DiskInterruptHandler
	.import	_P_Kernel_SerialInterruptHandler
	.import	_P_Kernel_IllegalInstructionHandler
	.import	_P_Kernel_ArithmeticExceptionHandler
	.import	_P_Kernel_AddressExceptionHandler
	.import	_P_Kernel_PageInvalidExceptionHandler
	.import	_P_Kernel_PageReadonlyExceptionHandler
	.import	_P_Kernel_PrivilegedInstructionHandler
	.import	_P_Kernel_AlignmentExceptionHandler
	.import	_P_Kernel_SyscallTrapHandler
	.import	_P_Kernel_Handle_Sys_Fork
	.import	_P_Kernel_Handle_Sys_Yield
	.import	_P_Kernel_Handle_Sys_Exec
	.import	_P_Kernel_Handle_Sys_Join
	.import	_P_Kernel_Handle_Sys_Exit
	.import	_P_Kernel_Handle_Sys_Create
	.import	_P_Kernel_Handle_Sys_Open
	.import	_P_Kernel_Handle_Sys_Read
	.import	_P_Kernel_Handle_Sys_Write
	.import	_P_Kernel_Handle_Sys_Seek
	.import	_P_Kernel_Handle_Sys_Close
	.import	_P_Kernel_Handle_Sys_Shutdown
	.import	_P_Kernel_InitializeScheduler
	.import	_P_Kernel_Run
	.import	_P_Kernel_PrintReadyList
	.import	_P_Kernel_ThreadStartMain
	.import	_P_Kernel_ThreadFinish
	.import	_P_Kernel_FatalError_ThreadVersion
	.import	_P_Kernel_SetInterruptsTo
	.import	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Kernel_Semaphore
! The following class and its methods are from other packages
	.import	_P_Kernel_Mutex
! The following class and its methods are from other packages
	.import	_P_Kernel_Condition
! The following class and its methods are from other packages
	.import	_P_Kernel_Thread
! The following class and its methods are from other packages
	.import	_P_Kernel_ThreadManager
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessControlBlock
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessManager
! The following class and its methods are from other packages
	.import	_P_Kernel_FrameManager
! The following class and its methods are from other packages
	.import	_P_Kernel_AddrSpace
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
	.import	_P_Kernel_readyList
	.import	_P_Kernel_currentThread
	.import	_P_Kernel_mainThread
	.import	_P_Kernel_idleThread
	.import	_P_Kernel_threadsToBeDestroyed
	.import	_P_Kernel_currentInterruptStatus
	.import	_P_Kernel_processManager
	.import	_P_Kernel_threadManager
	.import	_P_Kernel_frameManager
! Global variables in this package
	.data
_Global_uniqueNumberLock:
! Static object
	.word	_P_Kernel_Mutex
	.word	0
	.word	0
	.word	0
	.word	0
_Global_nextUnique:
	.word	0x00000001		! decimal value = 1
_Global_allDone:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_freeze:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_allDone2:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_histogram:
! Static array
	.word	27		! number of elements
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align
	.align
! String constants
_StringConst_22:
	.word	49			! length
	.ascii	"Data corruption, indicating that frame was shared"
	.align
_StringConst_21:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_20:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_19:
	.word	43			! length
	.ascii	"Problems with bits in some page table entry"
	.align
_StringConst_18:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_17:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_16:
	.word	57			! length
	.ascii	"\n\n***** FRAME-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_15:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_14:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_13:
	.word	66			! length
	.ascii	"\n\nHere is a histogram showing how many times each frame was used:\n"
	.align
_StringConst_12:
	.word	16			! length
	.ascii	"TestFrameManager"
	.align
_StringConst_11:
	.word	36			! length
	.ascii	"\n\n*****  FRAME-MANAGER TEST  *****\n\n"
	.align
_StringConst_10:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_9:
	.word	59			! length
	.ascii	"\n\n***** PROCESS-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_8:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_7:
	.word	18			! length
	.ascii	"TestProcessManager"
	.align
_StringConst_6:
	.word	38			! length
	.ascii	"\n\n*****  PROCESS-MANAGER TEST  *****\n\n"
	.align
_StringConst_5:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_4:
	.word	58			! length
	.ascii	"\n\n***** THREAD-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_3:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_2:
	.word	17			! length
	.ascii	"TestThreadManager"
	.align
_StringConst_1:
	.word	37			! length
	.ascii	"\n\n*****  THREAD-MANAGER TEST  *****\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xeb2db4a8,r3		! .  hashVal = -349326168
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_32		! .
	ret				! .
_Label_32:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Main.c\0"
_packageName:
	.ascii	"Main\0"
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
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0xeb2db4a8,r4		! myHashVal = -349326168
	cmp	r3,r4
	be	_Label_33
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
_Label_33:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_34
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_34
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_34
! Make sure _P_Kernel_ has hash value 0x89d6f9cb (decimal -1982400053)
	set	_packageName,r2
	set	0x89d6f9cb,r3
	call	_CheckVersion_P_Kernel_
	.import	_CheckVersion_P_Kernel_
	cmp	r1,0
	bne	_Label_34
_Label_34:
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
	mov	8,r1
_Label_480:
	push	r0
	sub	r1,1,r1
	bne	_Label_480
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0SE",r10
!   _temp_35 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	20,r13		! source line 20
	mov	"\0\0CA",r10
	call	_P_Kernel_InitializeScheduler
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_processManager = zeros  (sizeInBytes=1316)
	set	_P_Kernel_processManager,r4
	mov	329,r3
_Label_481:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_481
!   _P_Kernel_processManager = _P_Kernel_ProcessManager
	set	_P_Kernel_ProcessManager,r1
	set	_P_Kernel_processManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_37 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadManager = zeros  (sizeInBytes=41696)
	set	_P_Kernel_threadManager,r4
	mov	10424,r3
_Label_482:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_482
!   _P_Kernel_threadManager = _P_Kernel_ThreadManager
	set	_P_Kernel_ThreadManager,r1
	set	_P_Kernel_threadManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_39 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_frameManager = zeros  (sizeInBytes=56)
	set	_P_Kernel_frameManager,r4
	mov	14,r3
_Label_483:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_483
!   _P_Kernel_frameManager = _P_Kernel_FrameManager
	set	_P_Kernel_FrameManager,r1
	set	_P_Kernel_frameManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_41 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CA",r10
	call	_function_30_RunThreadManagerTests
! CALL STATEMENT...
!   Call the function
	mov	113,r13		! source line 113
	mov	"\0\0CA",r10
	call	_function_28_RunProcessManagerTests
! CALL STATEMENT...
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CA",r10
	call	_function_26_RunFrameManagerTests
! CALL STATEMENT...
!   Call the function
	mov	116,r13		! source line 116
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_42
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_43
	.word	-12
	.word	4
	.word	_Label_44
	.word	-16
	.word	4
	.word	_Label_45
	.word	-20
	.word	4
	.word	_Label_46
	.word	-24
	.word	4
	.word	_Label_47
	.word	-28
	.word	4
	.word	_Label_48
	.word	-32
	.word	4
	.word	_Label_49
	.word	-36
	.word	4
	.word	0
_Label_42:
	.ascii	"main\0"
	.align
_Label_43:
	.byte	'?'
	.ascii	"_temp_41\0"
	.align
_Label_44:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_45:
	.byte	'?'
	.ascii	"_temp_39\0"
	.align
_Label_46:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
_Label_47:
	.byte	'?'
	.ascii	"_temp_37\0"
	.align
_Label_48:
	.byte	'?'
	.ascii	"_temp_36\0"
	.align
_Label_49:
	.byte	'?'
	.ascii	"_temp_35\0"
	.align
! 
! ===============  FUNCTION GetUniqueNumber  ===============
! 
_function_31_GetUniqueNumber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_31_GetUniqueNumber,r1
	push	r1
	mov	4,r1
_Label_484:
	push	r0
	sub	r1,1,r1
	bne	_Label_484
	mov	132,r13		! source line 132
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0SE",r10
!   _temp_50 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-16]
!   Send message Lock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0AS",r10
!   i = _Global_nextUnique		(4 bytes)
	set	_Global_nextUnique,r1
	load	[r1],r1
	store	r1,[r14+-20]
! ASSIGNMENT STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0AS",r10
!   _Global_nextUnique = _Global_nextUnique + count		(int)
	set	_Global_nextUnique,r1
	load	[r1],r1
	load	[r14+8],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_nextUnique,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0SE",r10
!   _temp_51 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_31_GetUniqueNumber:
	.word	_sourceFileName
	.word	_Label_52
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_53
	.word	8
	.word	4
	.word	_Label_54
	.word	-12
	.word	4
	.word	_Label_55
	.word	-16
	.word	4
	.word	_Label_56
	.word	-20
	.word	4
	.word	0
_Label_52:
	.ascii	"GetUniqueNumber\0"
	.align
_Label_53:
	.byte	'I'
	.ascii	"count\0"
	.align
_Label_54:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_55:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_56:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION RunThreadManagerTests  ===============
! 
_function_30_RunThreadManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_30_RunThreadManagerTests,r1
	push	r1
	mov	21,r1
_Label_485:
	push	r0
	sub	r1,1,r1
	bne	_Label_485
	mov	169,r13		! source line 169
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0SE",r10
!   _temp_57 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0SE",r10
!   _temp_58 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0SE",r10
!   _temp_59 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_60 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_60  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_65 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_66 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_65  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_61:
!   Perform the FOR-LOOP termination test
!   if i > _temp_66 then goto _Label_64		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_64
_Label_62:
	mov	180,r13		! source line 180
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_67)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_486:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_486
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	182,r13		! source line 182
	mov	"\0\0SE",r10
!   _temp_69 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_69  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0SE",r10
!   _temp_70 = _function_29_TestThreadManager
	set	_function_29_TestThreadManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_70  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_63:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_61
! END FOR
_Label_64:
! FOR STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_75 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_76 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_75  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_71:
!   Perform the FOR-LOOP termination test
!   if i > _temp_76 then goto _Label_74		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_74
_Label_72:
	mov	188,r13		! source line 188
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0SE",r10
!   _temp_77 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_73:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_71
! END FOR
_Label_74:
! IF STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CA",r10
	call	_function_31_GetUniqueNumber
!   Retrieve Result: targetName=_temp_80  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_80 == 401 then goto _Label_79		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_79
!	jmp	_Label_78
_Label_78:
! THEN...
	mov	193,r13		! source line 193
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_81 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_81  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	193,r13		! source line 193
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_79:
! CALL STATEMENT...
!   _temp_82 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_82  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	195,r13		! source line 195
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_30_RunThreadManagerTests:
	.word	_sourceFileName
	.word	_Label_83
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_84
	.word	-12
	.word	4
	.word	_Label_85
	.word	-16
	.word	4
	.word	_Label_86
	.word	-20
	.word	4
	.word	_Label_87
	.word	-24
	.word	4
	.word	_Label_88
	.word	-28
	.word	4
	.word	_Label_89
	.word	-32
	.word	4
	.word	_Label_90
	.word	-36
	.word	4
	.word	_Label_91
	.word	-40
	.word	4
	.word	_Label_92
	.word	-44
	.word	4
	.word	_Label_93
	.word	-48
	.word	4
	.word	_Label_94
	.word	-52
	.word	4
	.word	_Label_95
	.word	-56
	.word	4
	.word	_Label_96
	.word	-60
	.word	4
	.word	_Label_97
	.word	-64
	.word	4
	.word	_Label_98
	.word	-68
	.word	4
	.word	_Label_99
	.word	-72
	.word	4
	.word	_Label_100
	.word	-76
	.word	4
	.word	_Label_101
	.word	-80
	.word	4
	.word	0
_Label_83:
	.ascii	"RunThreadManagerTests\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_100:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_101:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestThreadManager  ===============
! 
_function_29_TestThreadManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_29_TestThreadManager,r1
	push	r1
	mov	22,r1
_Label_487:
	push	r0
	sub	r1,1,r1
	bne	_Label_487
	mov	207,r13		! source line 207
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_106 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_107 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_106  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-76]
_Label_102:
!   Perform the FOR-LOOP termination test
!   if i > _temp_107 then goto _Label_105		
	load	[r14+-76],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_105
_Label_103:
	mov	211,r13		! source line 211
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CA",r10
	call	_function_31_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	214,r13		! source line 214
	mov	"\0\0AS",r10
	mov	214,r13		! source line 214
	mov	"\0\0SE",r10
!   _temp_108 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-64]
!   Send message GetANewThread
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_109 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Move address of _temp_109 [0 ] into _temp_110
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: *_temp_110 = e  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-56],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_115 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_116 = 10 + i		(int)
	mov	10,r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_115  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-80]
_Label_111:
!   Perform the FOR-LOOP termination test
!   if j > _temp_116 then goto _Label_114		
	load	[r14+-80],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_114
_Label_112:
	mov	216,r13		! source line 216
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_113:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_111
! END FOR
_Label_114:
! IF STATEMENT...
	mov	219,r13		! source line 219
	mov	"\0\0IF",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_120 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Move address of _temp_120 [0 ] into _temp_121
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_119 = *_temp_121  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if e == _temp_119 then goto _Label_118		(int)
	load	[r14+-84],r1
	load	[r14+-44],r2
	cmp	r1,r2
	be	_Label_118
!	jmp	_Label_117
_Label_117:
! THEN...
	mov	220,r13		! source line 220
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_122 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_122  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	220,r13		! source line 220
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_118:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	222,r13		! source line 222
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	223,r13		! source line 223
	mov	"\0\0SE",r10
!   _temp_123 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_128 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_129 = 10 - i		(int)
	mov	10,r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_128  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-80]
_Label_124:
!   Perform the FOR-LOOP termination test
!   if j > _temp_129 then goto _Label_127		
	load	[r14+-80],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_127
_Label_125:
	mov	224,r13		! source line 224
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_126:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_124
! END FOR
_Label_127:
!   Increment the FOR-LOOP index variable and jump back
_Label_104:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_102
! END FOR
_Label_105:
! SEND STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0SE",r10
!   _temp_130 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0SE",r10
!   _temp_131 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_29_TestThreadManager:
	.word	_sourceFileName
	.word	_Label_132
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_133
	.word	8
	.word	4
	.word	_Label_134
	.word	-12
	.word	4
	.word	_Label_135
	.word	-16
	.word	4
	.word	_Label_136
	.word	-20
	.word	4
	.word	_Label_137
	.word	-24
	.word	4
	.word	_Label_138
	.word	-28
	.word	4
	.word	_Label_139
	.word	-32
	.word	4
	.word	_Label_140
	.word	-36
	.word	4
	.word	_Label_141
	.word	-40
	.word	4
	.word	_Label_142
	.word	-44
	.word	4
	.word	_Label_143
	.word	-48
	.word	4
	.word	_Label_144
	.word	-52
	.word	4
	.word	_Label_145
	.word	-56
	.word	4
	.word	_Label_146
	.word	-60
	.word	4
	.word	_Label_147
	.word	-64
	.word	4
	.word	_Label_148
	.word	-68
	.word	4
	.word	_Label_149
	.word	-72
	.word	4
	.word	_Label_150
	.word	-76
	.word	4
	.word	_Label_151
	.word	-80
	.word	4
	.word	_Label_152
	.word	-84
	.word	4
	.word	_Label_153
	.word	-88
	.word	4
	.word	0
_Label_132:
	.ascii	"TestThreadManager\0"
	.align
_Label_133:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_150:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_151:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_152:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_153:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION RunProcessManagerTests  ===============
! 
_function_28_RunProcessManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_28_RunProcessManagerTests,r1
	push	r1
	mov	21,r1
_Label_488:
	push	r0
	sub	r1,1,r1
	bne	_Label_488
	mov	249,r13		! source line 249
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_154 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_155 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
!   _temp_156 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_157 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_157  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	258,r13		! source line 258
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_162 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_163 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_162  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_158:
!   Perform the FOR-LOOP termination test
!   if i > _temp_163 then goto _Label_161		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_161
_Label_159:
	mov	260,r13		! source line 260
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_164)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_489:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_489
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0SE",r10
!   _temp_166 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_166  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0SE",r10
!   _temp_167 = _function_27_TestProcessManager
	set	_function_27_TestProcessManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_167  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_160:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_158
! END FOR
_Label_161:
! FOR STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_172 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_173 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_172  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_168:
!   Perform the FOR-LOOP termination test
!   if i > _temp_173 then goto _Label_171		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_171
_Label_169:
	mov	268,r13		! source line 268
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   _temp_174 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_170:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_168
! END FOR
_Label_171:
! IF STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	272,r13		! source line 272
	mov	"\0\0CA",r10
	call	_function_31_GetUniqueNumber
!   Retrieve Result: targetName=_temp_177  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_177 == 401 then goto _Label_176		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_176
!	jmp	_Label_175
_Label_175:
! THEN...
	mov	273,r13		! source line 273
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_178 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_178  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	273,r13		! source line 273
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_176:
! CALL STATEMENT...
!   _temp_179 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_179  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_28_RunProcessManagerTests:
	.word	_sourceFileName
	.word	_Label_180
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_181
	.word	-12
	.word	4
	.word	_Label_182
	.word	-16
	.word	4
	.word	_Label_183
	.word	-20
	.word	4
	.word	_Label_184
	.word	-24
	.word	4
	.word	_Label_185
	.word	-28
	.word	4
	.word	_Label_186
	.word	-32
	.word	4
	.word	_Label_187
	.word	-36
	.word	4
	.word	_Label_188
	.word	-40
	.word	4
	.word	_Label_189
	.word	-44
	.word	4
	.word	_Label_190
	.word	-48
	.word	4
	.word	_Label_191
	.word	-52
	.word	4
	.word	_Label_192
	.word	-56
	.word	4
	.word	_Label_193
	.word	-60
	.word	4
	.word	_Label_194
	.word	-64
	.word	4
	.word	_Label_195
	.word	-68
	.word	4
	.word	_Label_196
	.word	-72
	.word	4
	.word	_Label_197
	.word	-76
	.word	4
	.word	_Label_198
	.word	-80
	.word	4
	.word	0
_Label_180:
	.ascii	"RunProcessManagerTests\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_177\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_163\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_157\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_156\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_197:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_198:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestProcessManager  ===============
! 
_function_27_TestProcessManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_27_TestProcessManager,r1
	push	r1
	mov	20,r1
_Label_490:
	push	r0
	sub	r1,1,r1
	bne	_Label_490
	mov	288,r13		! source line 288
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_203 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_204 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_203  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-68]
_Label_199:
!   Perform the FOR-LOOP termination test
!   if i > _temp_204 then goto _Label_202		
	load	[r14+-68],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_202
_Label_200:
	mov	292,r13		! source line 292
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	293,r13		! source line 293
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	294,r13		! source line 294
	mov	"\0\0CA",r10
	call	_function_31_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
	mov	295,r13		! source line 295
	mov	"\0\0SE",r10
!   _temp_205 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   Send message GetANewProcess
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_206 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_206 = e  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-52],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_211 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_212 = 10 + i		(int)
	mov	10,r1
	load	[r14+-68],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_211  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-72]
_Label_207:
!   Perform the FOR-LOOP termination test
!   if j > _temp_212 then goto _Label_210		
	load	[r14+-72],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_210
_Label_208:
	mov	297,r13		! source line 297
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_209:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_207
! END FOR
_Label_210:
! IF STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_216 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: _temp_215 = *_temp_216  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if e == _temp_215 then goto _Label_214		(int)
	load	[r14+-76],r1
	load	[r14+-40],r2
	cmp	r1,r2
	be	_Label_214
!	jmp	_Label_213
_Label_213:
! THEN...
	mov	301,r13		! source line 301
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_217 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_217  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	301,r13		! source line 301
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_214:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0SE",r10
!   _temp_218 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_223 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_224 = 10 - i		(int)
	mov	10,r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_223  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-72]
_Label_219:
!   Perform the FOR-LOOP termination test
!   if j > _temp_224 then goto _Label_222		
	load	[r14+-72],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_222
_Label_220:
	mov	305,r13		! source line 305
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_221:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_219
! END FOR
_Label_222:
!   Increment the FOR-LOOP index variable and jump back
_Label_201:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_199
! END FOR
_Label_202:
! SEND STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0SE",r10
!   _temp_225 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_226 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_27_TestProcessManager:
	.word	_sourceFileName
	.word	_Label_227
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_228
	.word	8
	.word	4
	.word	_Label_229
	.word	-12
	.word	4
	.word	_Label_230
	.word	-16
	.word	4
	.word	_Label_231
	.word	-20
	.word	4
	.word	_Label_232
	.word	-24
	.word	4
	.word	_Label_233
	.word	-28
	.word	4
	.word	_Label_234
	.word	-32
	.word	4
	.word	_Label_235
	.word	-36
	.word	4
	.word	_Label_236
	.word	-40
	.word	4
	.word	_Label_237
	.word	-44
	.word	4
	.word	_Label_238
	.word	-48
	.word	4
	.word	_Label_239
	.word	-52
	.word	4
	.word	_Label_240
	.word	-56
	.word	4
	.word	_Label_241
	.word	-60
	.word	4
	.word	_Label_242
	.word	-64
	.word	4
	.word	_Label_243
	.word	-68
	.word	4
	.word	_Label_244
	.word	-72
	.word	4
	.word	_Label_245
	.word	-76
	.word	4
	.word	_Label_246
	.word	-80
	.word	4
	.word	0
_Label_227:
	.ascii	"TestProcessManager\0"
	.align
_Label_228:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_243:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_244:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_245:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_246:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION RunFrameManagerTests  ===============
! 
_function_26_RunFrameManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_26_RunFrameManagerTests,r1
	push	r1
	mov	28,r1
_Label_491:
	push	r0
	sub	r1,1,r1
	bne	_Label_491
	mov	331,r13		! source line 331
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0SE",r10
!   _temp_247 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0SE",r10
!   _temp_248 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   _temp_249 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_249  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	338,r13		! source line 338
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_254 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_255 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_254  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-100]
_Label_250:
!   Perform the FOR-LOOP termination test
!   if i > _temp_255 then goto _Label_253		
	load	[r14+-100],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_253
_Label_251:
	mov	340,r13		! source line 340
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-76]
!   th = alloc (_temp_256)
	load	[r14+-76],r1
	call	_heapAlloc
	store	r1,[r14+-108]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-108],r4
	mov	1041,r3
_Label_492:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_492
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-108],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0SE",r10
!   _temp_258 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-68]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_258  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0SE",r10
!   _temp_259 = _function_25_TestFrameManager
	set	_function_25_TestFrameManager,r1
	store	r1,[r14+-64]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_259  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_252:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_250
! END FOR
_Label_253:
! FOR STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_264 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_265 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_264  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-100]
_Label_260:
!   Perform the FOR-LOOP termination test
!   if i > _temp_265 then goto _Label_263		
	load	[r14+-100],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_263
_Label_261:
	mov	348,r13		! source line 348
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0SE",r10
!   _temp_266 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-52]
!   Send message Down
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_262:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_260
! END FOR
_Label_263:
! CALL STATEMENT...
!   _temp_267 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	352,r13		! source line 352
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_272 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_273 = 26		(4 bytes)
	mov	26,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_272  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-100]
_Label_268:
!   Perform the FOR-LOOP termination test
!   if i > _temp_273 then goto _Label_271		
	load	[r14+-100],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_271
_Label_269:
	mov	353,r13		! source line 353
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_274 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_274  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	354,r13		! source line 354
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	355,r13		! source line 355
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_275 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_275  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	356,r13		! source line 356
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	357,r13		! source line 357
	mov	"\0\0CA",r10
	call	_P_System_nl
! FOR STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_280 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_282 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-20]
!   Move address of _temp_282 [i ] into _temp_283
!     make sure index expr is >= 0
	load	[r14+-100],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_281 = *_temp_283  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_280  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_276:
!   Perform the FOR-LOOP termination test
!   if j > _temp_281 then goto _Label_279		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_279
_Label_277:
	mov	358,r13		! source line 358
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=42  sizeInBytes=1
	mov	42,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	359,r13		! source line 359
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_278:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_276
! END FOR
_Label_279:
! CALL STATEMENT...
!   Call the function
	mov	361,r13		! source line 361
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_270:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_268
! END FOR
_Label_271:
! CALL STATEMENT...
!   _temp_284 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	364,r13		! source line 364
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	364,r13		! source line 364
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_26_RunFrameManagerTests:
	.word	_sourceFileName
	.word	_Label_285
	.word	0		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_286
	.word	-12
	.word	4
	.word	_Label_287
	.word	-16
	.word	4
	.word	_Label_288
	.word	-20
	.word	4
	.word	_Label_289
	.word	-24
	.word	4
	.word	_Label_290
	.word	-28
	.word	4
	.word	_Label_291
	.word	-32
	.word	4
	.word	_Label_292
	.word	-36
	.word	4
	.word	_Label_293
	.word	-40
	.word	4
	.word	_Label_294
	.word	-44
	.word	4
	.word	_Label_295
	.word	-48
	.word	4
	.word	_Label_296
	.word	-52
	.word	4
	.word	_Label_297
	.word	-56
	.word	4
	.word	_Label_298
	.word	-60
	.word	4
	.word	_Label_299
	.word	-64
	.word	4
	.word	_Label_300
	.word	-68
	.word	4
	.word	_Label_301
	.word	-72
	.word	4
	.word	_Label_302
	.word	-76
	.word	4
	.word	_Label_303
	.word	-80
	.word	4
	.word	_Label_304
	.word	-84
	.word	4
	.word	_Label_305
	.word	-88
	.word	4
	.word	_Label_306
	.word	-92
	.word	4
	.word	_Label_307
	.word	-96
	.word	4
	.word	_Label_308
	.word	-100
	.word	4
	.word	_Label_309
	.word	-104
	.word	4
	.word	_Label_310
	.word	-108
	.word	4
	.word	0
_Label_285:
	.ascii	"RunFrameManagerTests\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_308:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_309:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_310:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestFrameManager  ===============
! 
_function_25_TestFrameManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_25_TestFrameManager,r1
	push	r1
	mov	30,r1
_Label_493:
	push	r0
	sub	r1,1,r1
	bne	_Label_493
	mov	388,r13		! source line 388
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
	mov	392,r13		! source line 392
	mov	"\0\0SE",r10
!   _temp_311 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Send message GetANewProcess
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! FOR STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_316 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_317 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_316  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-100]
_Label_312:
!   Perform the FOR-LOOP termination test
!   if i > _temp_317 then goto _Label_315		
	load	[r14+-100],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_315
_Label_313:
	mov	393,r13		! source line 393
	mov	"\0\0FB",r10
! FOR STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_322 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_323 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: sz = _temp_322  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-112]
_Label_318:
!   Perform the FOR-LOOP termination test
!   if sz > _temp_323 then goto _Label_321		
	load	[r14+-112],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_321
_Label_319:
	mov	394,r13		! source line 394
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	396,r13		! source line 396
	mov	"\0\0CA",r10
	call	_function_31_GetUniqueNumber
!   Retrieve Result: targetName=newData  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_325 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_324 = _temp_325		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-76]
!   _temp_326 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_324  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_328 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_327 = _temp_328		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CA",r10
	call	_function_24_CheckAddrSpace
! FOR STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_333 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_334 = 10 + i		(int)
	mov	10,r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_333  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-104]
_Label_329:
!   Perform the FOR-LOOP termination test
!   if j > _temp_334 then goto _Label_332		
	load	[r14+-104],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_332
_Label_330:
	mov	399,r13		! source line 399
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_331:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_329
! END FOR
_Label_332:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_336 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_335 = _temp_336		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	403,r13		! source line 403
	mov	"\0\0CA",r10
	call	_function_23_CheckAddrSpace2
! SEND STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_338 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_337 = _temp_338		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-40]
!   _temp_339 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_337  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_344 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_345 = 10 - i		(int)
	mov	10,r1
	load	[r14+-100],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_344  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_340:
!   Perform the FOR-LOOP termination test
!   if j > _temp_345 then goto _Label_343		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_343
_Label_341:
	mov	405,r13		! source line 405
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_342:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_340
! END FOR
_Label_343:
!   Increment the FOR-LOOP index variable and jump back
_Label_320:
!   sz = sz + 1
	load	[r14+-112],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
	jmp	_Label_318
! END FOR
_Label_321:
!   Increment the FOR-LOOP index variable and jump back
_Label_314:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_312
! END FOR
_Label_315:
! SEND STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_346 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0SE",r10
!   _temp_347 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0SE",r10
!   _temp_348 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_25_TestFrameManager:
	.word	_sourceFileName
	.word	_Label_349
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_350
	.word	8
	.word	4
	.word	_Label_351
	.word	-12
	.word	4
	.word	_Label_352
	.word	-16
	.word	4
	.word	_Label_353
	.word	-20
	.word	4
	.word	_Label_354
	.word	-24
	.word	4
	.word	_Label_355
	.word	-28
	.word	4
	.word	_Label_356
	.word	-32
	.word	4
	.word	_Label_357
	.word	-36
	.word	4
	.word	_Label_358
	.word	-40
	.word	4
	.word	_Label_359
	.word	-44
	.word	4
	.word	_Label_360
	.word	-48
	.word	4
	.word	_Label_361
	.word	-52
	.word	4
	.word	_Label_362
	.word	-56
	.word	4
	.word	_Label_363
	.word	-60
	.word	4
	.word	_Label_364
	.word	-64
	.word	4
	.word	_Label_365
	.word	-68
	.word	4
	.word	_Label_366
	.word	-72
	.word	4
	.word	_Label_367
	.word	-76
	.word	4
	.word	_Label_368
	.word	-80
	.word	4
	.word	_Label_369
	.word	-84
	.word	4
	.word	_Label_370
	.word	-88
	.word	4
	.word	_Label_371
	.word	-92
	.word	4
	.word	_Label_372
	.word	-96
	.word	4
	.word	_Label_373
	.word	-100
	.word	4
	.word	_Label_374
	.word	-104
	.word	4
	.word	_Label_375
	.word	-108
	.word	4
	.word	_Label_376
	.word	-112
	.word	4
	.word	_Label_377
	.word	-116
	.word	4
	.word	0
_Label_349:
	.ascii	"TestFrameManager\0"
	.align
_Label_350:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_373:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_374:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_375:
	.byte	'I'
	.ascii	"newData\0"
	.align
_Label_376:
	.byte	'I'
	.ascii	"sz\0"
	.align
_Label_377:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace  ===============
! 
_function_24_CheckAddrSpace:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_24_CheckAddrSpace,r1
	push	r1
	mov	23,r1
_Label_494:
	push	r0
	sub	r1,1,r1
	bne	_Label_494
	mov	420,r13		! source line 420
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_381 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_380 = *_temp_381  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_380 == n then goto _Label_379		(int)
	load	[r14+-80],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_379
!	jmp	_Label_378
_Label_378:
! THEN...
	mov	423,r13		! source line 423
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_382 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_382  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	423,r13		! source line 423
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_379:
! FOR STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_387 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_388 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_387  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-84]
_Label_383:
!   Perform the FOR-LOOP termination test
!   if i > _temp_388 then goto _Label_386		
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_386
_Label_384:
	mov	425,r13		! source line 425
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0AS",r10
	mov	426,r13		! source line 426
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   _temp_389 = frameAddr - 1048576		(int)
	load	[r14+-88],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   frameNumber = _temp_389 div 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_393		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_393
	jmp	_Label_390
_Label_393:
!   if frameNumber < 27 then goto _Label_392		(int)
	load	[r14+-92],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_392
	jmp	_Label_390
_Label_392:
!   _temp_394 = frameAddr rem 8192		(int)
	load	[r14+-88],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   if intIsZero (_temp_394) then goto _Label_391
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_391
!	jmp	_Label_390
_Label_390:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_395 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	432,r13		! source line 432
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_391:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   _temp_396 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-48]
!   Move address of _temp_396 [frameNumber ] into _temp_397
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   _temp_400 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-32]
!   Move address of _temp_400 [frameNumber ] into _temp_401
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: _temp_399 = *_temp_401  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_398 = _temp_399 + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_397 = _temp_398  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0IF",r10
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_408  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_408) then goto _Label_407
	load	[r14+-24],r1
	cmp	r1,r0
	be	_Label_407
	jmp	_Label_402
_Label_407:
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_402 else goto _Label_406
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_406
	jmp	_Label_402
_Label_406:
	mov	437,r13		! source line 437
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_402 else goto _Label_405
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_405
	jmp	_Label_402
_Label_405:
	mov	438,r13		! source line 438
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_409  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_409 then goto _Label_404 else goto _Label_402
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_402
	jmp	_Label_404
_Label_404:
	mov	439,r13		! source line 439
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_410  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_410 then goto _Label_403 else goto _Label_402
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_402
	jmp	_Label_403
_Label_402:
! THEN...
	mov	440,r13		! source line 440
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_411 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_411  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	440,r13		! source line 440
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_403:
! ASSIGNMENT STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0AS",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_412 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-84],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Data Move: *frameAddr = _temp_412  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-88],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_385:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_383
! END FOR
_Label_386:
! RETURN STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_24_CheckAddrSpace:
	.word	_sourceFileName
	.word	_Label_413
	.word	12		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_414
	.word	8
	.word	4
	.word	_Label_415
	.word	12
	.word	4
	.word	_Label_416
	.word	16
	.word	4
	.word	_Label_417
	.word	-16
	.word	4
	.word	_Label_418
	.word	-20
	.word	4
	.word	_Label_419
	.word	-9
	.word	1
	.word	_Label_420
	.word	-10
	.word	1
	.word	_Label_421
	.word	-24
	.word	4
	.word	_Label_422
	.word	-28
	.word	4
	.word	_Label_423
	.word	-32
	.word	4
	.word	_Label_424
	.word	-36
	.word	4
	.word	_Label_425
	.word	-40
	.word	4
	.word	_Label_426
	.word	-44
	.word	4
	.word	_Label_427
	.word	-48
	.word	4
	.word	_Label_428
	.word	-52
	.word	4
	.word	_Label_429
	.word	-56
	.word	4
	.word	_Label_430
	.word	-60
	.word	4
	.word	_Label_431
	.word	-64
	.word	4
	.word	_Label_432
	.word	-68
	.word	4
	.word	_Label_433
	.word	-72
	.word	4
	.word	_Label_434
	.word	-76
	.word	4
	.word	_Label_435
	.word	-80
	.word	4
	.word	_Label_436
	.word	-84
	.word	4
	.word	_Label_437
	.word	-88
	.word	4
	.word	_Label_438
	.word	-92
	.word	4
	.word	0
_Label_413:
	.ascii	"CheckAddrSpace\0"
	.align
_Label_414:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_415:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_416:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_419:
	.byte	'C'
	.ascii	"_temp_410\0"
	.align
_Label_420:
	.byte	'C'
	.ascii	"_temp_409\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_436:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_437:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_438:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace2  ===============
! 
_function_23_CheckAddrSpace2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_23_CheckAddrSpace2,r1
	push	r1
	mov	16,r1
_Label_495:
	push	r0
	sub	r1,1,r1
	bne	_Label_495
	mov	453,r13		! source line 453
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_442 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Data Move: _temp_441 = *_temp_442  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_441 == n then goto _Label_440		(int)
	load	[r14+-52],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_440
!	jmp	_Label_439
_Label_439:
! THEN...
	mov	456,r13		! source line 456
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_443 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_443  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	456,r13		! source line 456
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_440:
! FOR STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_448 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_449 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_448  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-56]
_Label_444:
!   Perform the FOR-LOOP termination test
!   if i > _temp_449 then goto _Label_447		
	load	[r14+-56],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_447
_Label_445:
	mov	458,r13		! source line 458
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
	mov	459,r13		! source line 459
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_450 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameNumber = _temp_450 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! IF STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_454		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_454
	jmp	_Label_451
_Label_454:
!   if frameNumber < 27 then goto _Label_453		(int)
	load	[r14+-64],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_453
	jmp	_Label_451
_Label_453:
!   _temp_455 = frameAddr rem 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_455) then goto _Label_452
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_452
!	jmp	_Label_451
_Label_451:
! THEN...
	mov	465,r13		! source line 465
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_456 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_456  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	465,r13		! source line 465
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_452:
! IF STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0IF",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_459 = *frameAddr  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_460 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if _temp_459 == _temp_460 then goto _Label_458		(int)
	load	[r14+-20],r1
	load	[r14+-16],r2
	cmp	r1,r2
	be	_Label_458
!	jmp	_Label_457
_Label_457:
! THEN...
	mov	468,r13		! source line 468
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_461 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_461  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	468,r13		! source line 468
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_458:
!   Increment the FOR-LOOP index variable and jump back
_Label_446:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_444
! END FOR
_Label_447:
! RETURN STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_23_CheckAddrSpace2:
	.word	_sourceFileName
	.word	_Label_462
	.word	12		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_463
	.word	8
	.word	4
	.word	_Label_464
	.word	12
	.word	4
	.word	_Label_465
	.word	16
	.word	4
	.word	_Label_466
	.word	-12
	.word	4
	.word	_Label_467
	.word	-16
	.word	4
	.word	_Label_468
	.word	-20
	.word	4
	.word	_Label_469
	.word	-24
	.word	4
	.word	_Label_470
	.word	-28
	.word	4
	.word	_Label_471
	.word	-32
	.word	4
	.word	_Label_472
	.word	-36
	.word	4
	.word	_Label_473
	.word	-40
	.word	4
	.word	_Label_474
	.word	-44
	.word	4
	.word	_Label_475
	.word	-48
	.word	4
	.word	_Label_476
	.word	-52
	.word	4
	.word	_Label_477
	.word	-56
	.word	4
	.word	_Label_478
	.word	-60
	.word	4
	.word	_Label_479
	.word	-64
	.word	4
	.word	0
_Label_462:
	.ascii	"CheckAddrSpace2\0"
	.align
_Label_463:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_464:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_465:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_477:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_478:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_479:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
