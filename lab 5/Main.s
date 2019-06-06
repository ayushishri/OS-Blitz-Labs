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
	.import	_P_Kernel_fileManager
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
! Make sure _P_Kernel_ has hash value 0x82832c48 (decimal -2105332664)
	set	_packageName,r2
	set	0x82832c48,r3
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
	mov	21,r1
_Label_93:
	push	r0
	sub	r1,1,r1
	bne	_Label_93
	mov	5,r13		! source line 5
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! freeze
!   NEW CLASS Constructor...
!   ZeroMemory: freeze = zeros  (sizeInBytes=20)
	add	r14,-84,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   freeze = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	store	r1,[r14+-84]
! CALL STATEMENT...
!   Call the function
	mov	13,r13		! source line 13
	mov	"\0\0CA",r10
	call	_P_Kernel_InitializeScheduler
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_processManager = zeros  (sizeInBytes=1316)
	set	_P_Kernel_processManager,r4
	mov	329,r3
_Label_94:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_94
!   _P_Kernel_processManager = _P_Kernel_ProcessManager
	set	_P_Kernel_ProcessManager,r1
	set	_P_Kernel_processManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0SE",r10
!   _temp_9 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
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
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadManager = zeros  (sizeInBytes=41696)
	set	_P_Kernel_threadManager,r4
	mov	10424,r3
_Label_95:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_95
!   _P_Kernel_threadManager = _P_Kernel_ThreadManager
	set	_P_Kernel_ThreadManager,r1
	set	_P_Kernel_threadManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0SE",r10
!   _temp_11 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-48]
!   Send message Init
	load	[r14+-48],r1
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
_Label_96:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_96
!   _P_Kernel_frameManager = _P_Kernel_FrameManager
	set	_P_Kernel_FrameManager,r1
	set	_P_Kernel_frameManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0SE",r10
!   _temp_13 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
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
_Label_97:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_97
!   _P_Kernel_diskDriver = _P_Kernel_DiskDriver
	set	_P_Kernel_DiskDriver,r1
	set	_P_Kernel_diskDriver,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_15 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
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
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_fileManager = zeros  (sizeInBytes=800)
	set	_P_Kernel_fileManager,r4
	mov	200,r3
_Label_98:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_98
!   _P_Kernel_fileManager = _P_Kernel_FileManager
	set	_P_Kernel_FileManager,r1
	set	_P_Kernel_fileManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0SE",r10
!   _temp_17 = &_P_Kernel_fileManager
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
	mov	39,r13		! source line 39
	mov	"\0\0CA",r10
	call	_P_Kernel_InitFirstProcess
! SEND STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_18 = &freeze
	add	r14,-84,r1
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
	mov	45,r13		! source line 45
	mov	"\0\0SE",r10
!   _temp_19 = &freeze
	add	r14,-84,r1
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
!   _temp_20 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_20  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	46,r13		! source line 46
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_21
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_22
	.word	-12
	.word	4
	.word	_Label_23
	.word	-16
	.word	4
	.word	_Label_24
	.word	-20
	.word	4
	.word	_Label_25
	.word	-24
	.word	4
	.word	_Label_26
	.word	-28
	.word	4
	.word	_Label_27
	.word	-32
	.word	4
	.word	_Label_28
	.word	-36
	.word	4
	.word	_Label_29
	.word	-40
	.word	4
	.word	_Label_30
	.word	-44
	.word	4
	.word	_Label_31
	.word	-48
	.word	4
	.word	_Label_32
	.word	-52
	.word	4
	.word	_Label_33
	.word	-56
	.word	4
	.word	_Label_34
	.word	-60
	.word	4
	.word	_Label_35
	.word	-64
	.word	4
	.word	_Label_36
	.word	-84
	.word	20
	.word	0
_Label_21:
	.ascii	"main\0"
	.align
_Label_22:
	.byte	'?'
	.ascii	"_temp_20\0"
	.align
_Label_23:
	.byte	'?'
	.ascii	"_temp_19\0"
	.align
_Label_24:
	.byte	'?'
	.ascii	"_temp_18\0"
	.align
_Label_25:
	.byte	'?'
	.ascii	"_temp_17\0"
	.align
_Label_26:
	.byte	'?'
	.ascii	"_temp_16\0"
	.align
_Label_27:
	.byte	'?'
	.ascii	"_temp_15\0"
	.align
_Label_28:
	.byte	'?'
	.ascii	"_temp_14\0"
	.align
_Label_29:
	.byte	'?'
	.ascii	"_temp_13\0"
	.align
_Label_30:
	.byte	'?'
	.ascii	"_temp_12\0"
	.align
_Label_31:
	.byte	'?'
	.ascii	"_temp_11\0"
	.align
_Label_32:
	.byte	'?'
	.ascii	"_temp_10\0"
	.align
_Label_33:
	.byte	'?'
	.ascii	"_temp_9\0"
	.align
_Label_34:
	.byte	'?'
	.ascii	"_temp_8\0"
	.align
_Label_35:
	.byte	'?'
	.ascii	"_temp_7\0"
	.align
_Label_36:
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
	mov	4649,r1
_Label_99:
	push	r0
	sub	r1,1,r1
	bne	_Label_99
	mov	52,r13		! source line 52
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_37 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-9384]
!   Prepare Argument: offset=8  value=_temp_37  sizeInBytes=4
	load	[r14+-9384],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Call the function
	mov	64,r13		! source line 64
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! ASSIGNMENT STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0AS",r10
!   _temp_38 = &a
	add	r14,-18592,r1
	store	r1,[r14+-9380]
!   NEW ARRAY Constructor...
!   _temp_40 = &_temp_39
	add	r14,-9376,r1
	store	r1,[r14+-172]
!   _temp_40 = _temp_40 + 4
	load	[r14+-172],r1
	add	r1,4,r1
	store	r1,[r14+-172]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_42 = zeros  (sizeInBytes=92)
	add	r14,-164,r4
	mov	23,r3
_Label_100:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_100
!   _temp_42 = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-164]
	mov	100,r1
	store	r1,[r14+-168]
_Label_44:
!   Data Move: *_temp_40 = _temp_42  (sizeInBytes=92)
	add	r14,-164,r5
	load	[r14+-172],r4
	mov	23,r3
_Label_101:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_101
!   _temp_40 = _temp_40 + 92
	load	[r14+-172],r1
	add	r1,92,r1
	store	r1,[r14+-172]
!   _temp_41 = _temp_41 + -1
	load	[r14+-168],r1
	add	r1,-1,r1
	store	r1,[r14+-168]
!   if intNotZero (_temp_41) then goto _Label_44
	load	[r14+-168],r1
	cmp	r1,r0
	bne	_Label_44
!   Initialize the array size...
	mov	100,r1
	store	r1,[r14+-9376]
!   _temp_45 = &_temp_39
	add	r14,-9376,r1
	store	r1,[r14+-68]
!   make sure array has size 100
	load	[r14+-9380],r1
	load	[r1],r1
	set	100, r2
	cmp	r1,0
	be	_Label_102
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_102:
!   make sure array has size 100
	load	[r14+-68],r1
	load	[r1],r1
	set	100, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_38 = *_temp_45  (sizeInBytes=9204)
	load	[r14+-68],r5
	load	[r14+-9380],r4
	mov	2301,r3
_Label_103:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_103
! FOR STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_50 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_51 = 99		(4 bytes)
	mov	99,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_50  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-9388]
_Label_46:
!   Perform the FOR-LOOP termination test
!   if i > _temp_51 then goto _Label_49		
	load	[r14+-9388],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_49
_Label_47:
	mov	67,r13		! source line 67
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   _temp_52 = &a
	add	r14,-18592,r1
	store	r1,[r14+-56]
!   Move address of _temp_52 [i ] into _temp_53
!     make sure index expr is >= 0
	load	[r14+-9388],r2
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
	mov	69,r13		! source line 69
	mov	"\0\0SE",r10
!   _temp_55 = &a
	add	r14,-18592,r1
	store	r1,[r14+-44]
!   Move address of _temp_55 [i ] into _temp_56
!     make sure index expr is >= 0
	load	[r14+-9388],r2
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
!   _temp_54 = _temp_56		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_57 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_54  sizeInBytes=4
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
_Label_48:
!   i = i + 1
	load	[r14+-9388],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-9388]
	jmp	_Label_46
! END FOR
_Label_49:
! FOR STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_62 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_63 = 99		(4 bytes)
	mov	99,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_62  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-9388]
_Label_58:
!   Perform the FOR-LOOP termination test
!   if i > _temp_63 then goto _Label_61		
	load	[r14+-9388],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_61
_Label_59:
	mov	71,r13		! source line 71
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   _temp_65 = &a
	add	r14,-18592,r1
	store	r1,[r14+-20]
!   Move address of _temp_65 [i ] into _temp_66
!     make sure index expr is >= 0
	load	[r14+-9388],r2
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
!   _temp_64 = _temp_66		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_67 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_64  sizeInBytes=4
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
_Label_60:
!   i = i + 2
	load	[r14+-9388],r1
	add	r1,2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-9388]
	jmp	_Label_58
! END FOR
_Label_61:
! RETURN STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0RE",r10
	add	r15,18600,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_3_AllocateRandomFrames:
	.word	_sourceFileName
	.word	_Label_68
	.word	0		! total size of parameters
	.word	18596		! frame size = 18596
	.word	_Label_69
	.word	-12
	.word	4
	.word	_Label_70
	.word	-16
	.word	4
	.word	_Label_71
	.word	-20
	.word	4
	.word	_Label_72
	.word	-24
	.word	4
	.word	_Label_73
	.word	-28
	.word	4
	.word	_Label_74
	.word	-32
	.word	4
	.word	_Label_75
	.word	-36
	.word	4
	.word	_Label_76
	.word	-40
	.word	4
	.word	_Label_77
	.word	-44
	.word	4
	.word	_Label_78
	.word	-48
	.word	4
	.word	_Label_79
	.word	-52
	.word	4
	.word	_Label_80
	.word	-56
	.word	4
	.word	_Label_81
	.word	-60
	.word	4
	.word	_Label_82
	.word	-64
	.word	4
	.word	_Label_83
	.word	-68
	.word	4
	.word	_Label_84
	.word	-72
	.word	4
	.word	_Label_85
	.word	-164
	.word	92
	.word	_Label_86
	.word	-168
	.word	4
	.word	_Label_87
	.word	-172
	.word	4
	.word	_Label_88
	.word	-9376
	.word	9204
	.word	_Label_89
	.word	-9380
	.word	4
	.word	_Label_90
	.word	-9384
	.word	4
	.word	_Label_91
	.word	-9388
	.word	4
	.word	_Label_92
	.word	-18592
	.word	9204
	.word	0
_Label_68:
	.ascii	"AllocateRandomFrames\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_71:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_72:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_73:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_74:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_75:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_76:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_78:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_79:
	.byte	'?'
	.ascii	"_temp_53\0"
	.align
_Label_80:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_41\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_39\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_37\0"
	.align
_Label_91:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_92:
	.byte	'A'
	.ascii	"a\0"
	.align
