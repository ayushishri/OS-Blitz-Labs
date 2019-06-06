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
	.import	_P_Kernel_InitFirstProcess
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
! The following class and its methods are from other packages
	.import	_P_Kernel_DiskDriver
! The following class and its methods are from other packages
	.import	_P_Kernel_FileManager
! The following class and its methods are from other packages
	.import	_P_Kernel_FileControlBlock
! The following class and its methods are from other packages
	.import	_P_Kernel_OpenFile
! The following class and its methods are from other packages
	.import	_P_Kernel_SerialDriver
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
	.import	_P_Kernel_diskDriver
	.import	_P_Kernel_serialDriver
	.import	_P_Kernel_fileManager
	.import	_P_Kernel_serialHasBeenInitialized
! Global variables in this package
	.data
	.align
! String constants
_StringConst_2:
	.word	60			! length
	.ascii	"AllocateRandomFrames called.  NUMBER_OF_PHYSICAL_PAGE_FRAMES"
	.align
_StringConst_1:
	.word	45			! length
	.ascii	"The main thread should never reach this point"
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
	be	_Label_4		! .
	ret				! .
_Label_4:				! .
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
	be	_Label_5
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
_Label_5:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_6
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_6
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_6
! Make sure _P_Kernel_ has hash value 0xebad7129 (decimal -340954839)
	set	_packageName,r2
	set	0xebad7129,r3
	call	_CheckVersion_P_Kernel_
	.import	_CheckVersion_P_Kernel_
	cmp	r1,0
	bne	_Label_6
_Label_6:
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
	mov	23,r1
_Label_97:
	push	r0
	sub	r1,1,r1
	bne	_Label_97
	mov	5,r13		! source line 5
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! freeze
!   NEW CLASS Constructor...
!   ZeroMemory: freeze = zeros  (sizeInBytes=20)
	add	r14,-92,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   freeze = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	store	r1,[r14+-92]
! CALL STATEMENT...
!   Call the function
	mov	13,r13		! source line 13
	mov	"\0\0CA",r10
	call	_P_Kernel_InitializeScheduler
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_processManager = zeros  (sizeInBytes=1756)
	set	_P_Kernel_processManager,r4
	mov	439,r3
_Label_98:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_98
!   _P_Kernel_processManager = _P_Kernel_ProcessManager
	set	_P_Kernel_ProcessManager,r1
	set	_P_Kernel_processManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0SE",r10
!   _temp_9 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
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
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadManager = zeros  (sizeInBytes=41696)
	set	_P_Kernel_threadManager,r4
	mov	10424,r3
_Label_99:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_99
!   _P_Kernel_threadManager = _P_Kernel_ThreadManager
	set	_P_Kernel_ThreadManager,r1
	set	_P_Kernel_threadManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0SE",r10
!   _temp_11 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_frameManager = zeros  (sizeInBytes=56)
	set	_P_Kernel_frameManager,r4
	mov	14,r3
_Label_100:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_100
!   _P_Kernel_frameManager = _P_Kernel_FrameManager
	set	_P_Kernel_FrameManager,r1
	set	_P_Kernel_frameManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0SE",r10
!   _temp_13 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-48]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	28,r13		! source line 28
	mov	"\0\0CA",r10
	call	_function_3_AllocateRandomFrames
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_diskDriver = zeros  (sizeInBytes=68)
	set	_P_Kernel_diskDriver,r4
	mov	17,r3
_Label_101:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_101
!   _P_Kernel_diskDriver = _P_Kernel_DiskDriver
	set	_P_Kernel_DiskDriver,r1
	set	_P_Kernel_diskDriver,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_15 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_serialDriver = zeros  (sizeInBytes=4308)
	set	_P_Kernel_serialDriver,r4
	mov	1077,r3
_Label_102:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_102
!   _P_Kernel_serialDriver = _P_Kernel_SerialDriver
	set	_P_Kernel_SerialDriver,r1
	set	_P_Kernel_serialDriver,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0SE",r10
!   _temp_17 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-32]
!   Send message Init
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_fileManager = zeros  (sizeInBytes=800)
	set	_P_Kernel_fileManager,r4
	mov	200,r3
_Label_103:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_103
!   _P_Kernel_fileManager = _P_Kernel_FileManager
	set	_P_Kernel_FileManager,r1
	set	_P_Kernel_fileManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	40,r13		! source line 40
	mov	"\0\0SE",r10
!   _temp_19 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_InitFirstProcess
! SEND STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   _temp_20 = &freeze
	add	r14,-92,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0SE",r10
!   _temp_21 = &freeze
	add	r14,-92,r1
	store	r1,[r14+-16]
!   Send message Down
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_22 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_22  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	50,r13		! source line 50
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_23
	.word	0		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_24
	.word	-12
	.word	4
	.word	_Label_25
	.word	-16
	.word	4
	.word	_Label_26
	.word	-20
	.word	4
	.word	_Label_27
	.word	-24
	.word	4
	.word	_Label_28
	.word	-28
	.word	4
	.word	_Label_29
	.word	-32
	.word	4
	.word	_Label_30
	.word	-36
	.word	4
	.word	_Label_31
	.word	-40
	.word	4
	.word	_Label_32
	.word	-44
	.word	4
	.word	_Label_33
	.word	-48
	.word	4
	.word	_Label_34
	.word	-52
	.word	4
	.word	_Label_35
	.word	-56
	.word	4
	.word	_Label_36
	.word	-60
	.word	4
	.word	_Label_37
	.word	-64
	.word	4
	.word	_Label_38
	.word	-68
	.word	4
	.word	_Label_39
	.word	-72
	.word	4
	.word	_Label_40
	.word	-92
	.word	20
	.word	0
_Label_23:
	.ascii	"main\0"
	.align
_Label_24:
	.byte	'?'
	.ascii	"_temp_22\0"
	.align
_Label_25:
	.byte	'?'
	.ascii	"_temp_21\0"
	.align
_Label_26:
	.byte	'?'
	.ascii	"_temp_20\0"
	.align
_Label_27:
	.byte	'?'
	.ascii	"_temp_19\0"
	.align
_Label_28:
	.byte	'?'
	.ascii	"_temp_18\0"
	.align
_Label_29:
	.byte	'?'
	.ascii	"_temp_17\0"
	.align
_Label_30:
	.byte	'?'
	.ascii	"_temp_16\0"
	.align
_Label_31:
	.byte	'?'
	.ascii	"_temp_15\0"
	.align
_Label_32:
	.byte	'?'
	.ascii	"_temp_14\0"
	.align
_Label_33:
	.byte	'?'
	.ascii	"_temp_13\0"
	.align
_Label_34:
	.byte	'?'
	.ascii	"_temp_12\0"
	.align
_Label_35:
	.byte	'?'
	.ascii	"_temp_11\0"
	.align
_Label_36:
	.byte	'?'
	.ascii	"_temp_10\0"
	.align
_Label_37:
	.byte	'?'
	.ascii	"_temp_9\0"
	.align
_Label_38:
	.byte	'?'
	.ascii	"_temp_8\0"
	.align
_Label_39:
	.byte	'?'
	.ascii	"_temp_7\0"
	.align
_Label_40:
	.byte	'O'
	.ascii	"freeze\0"
	.align
! 
! ===============  FUNCTION AllocateRandomFrames  ===============
! 
_function_3_AllocateRandomFrames:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_3_AllocateRandomFrames,r1
	push	r1
	mov	23601,r1
_Label_104:
	push	r0
	sub	r1,1,r1
	bne	_Label_104
	mov	56,r13		! source line 56
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_41 = _StringConst_2
	set	_StringConst_2,r1
	set	-47288,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_41  sizeInBytes=4
	set	-47288,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=512  sizeInBytes=4
	mov	512,r1
	store	r1,[r15+4]
!   Call the function
	mov	68,r13		! source line 68
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! ASSIGNMENT STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0AS",r10
!   _temp_42 = &a
	set	-94400,r1
	add	r14,r1,r1
	set	-47284,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_44 = &_temp_43
	set	-47280,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   _temp_44 = _temp_44 + 4
	load	[r14+-172],r1
	add	r1,4,r1
	store	r1,[r14+-172]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_46 = zeros  (sizeInBytes=92)
	add	r14,-164,r4
	mov	23,r3
_Label_105:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_105
!   _temp_46 = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-164]
	mov	512,r1
	store	r1,[r14+-168]
_Label_48:
!   Data Move: *_temp_44 = _temp_46  (sizeInBytes=92)
	add	r14,-164,r5
	load	[r14+-172],r4
	mov	23,r3
_Label_106:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_106
!   _temp_44 = _temp_44 + 92
	load	[r14+-172],r1
	add	r1,92,r1
	store	r1,[r14+-172]
!   _temp_45 = _temp_45 + -1
	load	[r14+-168],r1
	add	r1,-1,r1
	store	r1,[r14+-168]
!   if intNotZero (_temp_45) then goto _Label_48
	load	[r14+-168],r1
	cmp	r1,r0
	bne	_Label_48
!   Initialize the array size...
	mov	512,r1
	set	-47280,r2
	store	r1,[r14+r2]
!   _temp_49 = &_temp_43
	set	-47280,r1
	add	r14,r1,r1
	store	r1,[r14+-68]
!   make sure array has size 512
	set	-47284,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,0
	be	_Label_107
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_107:
!   make sure array has size 512
	load	[r14+-68],r1
	load	[r1],r1
	set	512, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_42 = *_temp_49  (sizeInBytes=47108)
	load	[r14+-68],r5
	set	-47284,r4
	load	[r14+r4],r4
	mov	11777,r3
_Label_108:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_108
! FOR STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_54 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_55 = 511		(4 bytes)
	mov	511,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_54  (sizeInBytes=4)
	load	[r14+-64],r1
	set	-47292,r2
	store	r1,[r14+r2]
_Label_50:
!   Perform the FOR-LOOP termination test
!   if i > _temp_55 then goto _Label_53		
	set	-47292,r1
	load	[r14+r1],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_53
_Label_51:
	mov	71,r13		! source line 71
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   _temp_56 = &a
	set	-94400,r1
	add	r14,r1,r1
	store	r1,[r14+-56]
!   Move address of _temp_56 [i ] into _temp_57
!     make sure index expr is >= 0
	set	-47292,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	92,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0SE",r10
!   _temp_59 = &a
	set	-94400,r1
	add	r14,r1,r1
	store	r1,[r14+-44]
!   Move address of _temp_59 [i ] into _temp_60
!     make sure index expr is >= 0
	set	-47292,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	92,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_58 = _temp_60		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_61 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_58  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_52:
!   i = i + 1
	set	-47292,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-47292,r2
	store	r1,[r14+r2]
	jmp	_Label_50
! END FOR
_Label_53:
! FOR STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_66 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_67 = 511		(4 bytes)
	mov	511,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_66  (sizeInBytes=4)
	load	[r14+-32],r1
	set	-47292,r2
	store	r1,[r14+r2]
_Label_62:
!   Perform the FOR-LOOP termination test
!   if i > _temp_67 then goto _Label_65		
	set	-47292,r1
	load	[r14+r1],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_65
_Label_63:
	mov	75,r13		! source line 75
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0SE",r10
!   _temp_69 = &a
	set	-94400,r1
	add	r14,r1,r1
	store	r1,[r14+-20]
!   Move address of _temp_69 [i ] into _temp_70
!     make sure index expr is >= 0
	set	-47292,r2
	load	[r14+r2],r2
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
	set	92,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_68 = _temp_70		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_71 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_68  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_64:
!   i = i + 2
	set	-47292,r1
	load	[r14+r1],r1
	add	r1,2,r1
	bvs	_runtimeErrorOverflow
	set	-47292,r2
	store	r1,[r14+r2]
	jmp	_Label_62
! END FOR
_Label_65:
! RETURN STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0RE",r10
	set	94408,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_3_AllocateRandomFrames:
	.word	_sourceFileName
	.word	_Label_72
	.word	0		! total size of parameters
	.word	94404		! frame size = 94404
	.word	_Label_73
	.word	-12
	.word	4
	.word	_Label_74
	.word	-16
	.word	4
	.word	_Label_75
	.word	-20
	.word	4
	.word	_Label_76
	.word	-24
	.word	4
	.word	_Label_77
	.word	-28
	.word	4
	.word	_Label_78
	.word	-32
	.word	4
	.word	_Label_79
	.word	-36
	.word	4
	.word	_Label_80
	.word	-40
	.word	4
	.word	_Label_81
	.word	-44
	.word	4
	.word	_Label_82
	.word	-48
	.word	4
	.word	_Label_83
	.word	-52
	.word	4
	.word	_Label_84
	.word	-56
	.word	4
	.word	_Label_85
	.word	-60
	.word	4
	.word	_Label_86
	.word	-64
	.word	4
	.word	_Label_87
	.word	-68
	.word	4
	.word	_Label_88
	.word	-72
	.word	4
	.word	_Label_89
	.word	-164
	.word	92
	.word	_Label_90
	.word	-168
	.word	4
	.word	_Label_91
	.word	-172
	.word	4
	.word	_Label_92
	.word	-47280
	.word	47108
	.word	_Label_93
	.word	-47284
	.word	4
	.word	_Label_94
	.word	-47288
	.word	4
	.word	_Label_95
	.word	-47292
	.word	4
	.word	_Label_96
	.word	-94400
	.word	47108
	.word	0
_Label_72:
	.ascii	"AllocateRandomFrames\0"
	.align
_Label_73:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_74:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_75:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_76:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_78:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_79:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_80:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_44\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_41\0"
	.align
_Label_95:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_96:
	.byte	'A'
	.ascii	"a\0"
	.align
