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
	.import	_P_Thread_InitializeScheduler
	.import	_P_Thread_Run
	.import	_P_Thread_PrintReadyList
	.import	_P_Thread_ThreadStartMain
	.import	_P_Thread_ThreadFinish
	.import	_P_Thread_FatalError
	.import	_P_Thread_SetInterruptsTo
	.import	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from other packages
	.import	_P_Synch_Semaphore
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex2
! The following class and its methods are from other packages
	.import	_P_Synch_Condition
! The following class and its methods are from this package
	.export	_P_Main_SleepingBarber
	.export	_Method_P_Main_SleepingBarber_1
	.export	_Method_P_Main_SleepingBarber_2
	.export	_Method_P_Main_SleepingBarber_3
	.export	_Method_P_Main_SleepingBarber_4
	.export	_Method_P_Main_SleepingBarber_5
	.export	_Method_P_Main_SleepingBarber_6
	.export	_Method_P_Main_SleepingBarber_7
	.export	_Method_P_Main_SleepingBarber_8
	.export	_Method_P_Main_SleepingBarber_9
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_Thread_readyList
	.import	_P_Thread_currentThread
	.import	_P_Thread_mainThread
	.import	_P_Thread_idleThread
	.import	_P_Thread_threadsToBeDestroyed
	.import	_P_Thread_currentInterruptStatus
! Global variables in this package
	.data
	.export	_P_Main_customers
	.export	_P_Main_barbers
	.export	_P_Main_access_lock
	.export	_P_Main_barber_done
	.export	_P_Main_cut
_P_Main_customers:
	.skip	20
_P_Main_barbers:
	.skip	20
_P_Main_access_lock:
	.skip	20
_P_Main_barber_done:
	.skip	20
_P_Main_cut:
	.skip	20
_Global_sb:
	.skip	16
_Global_bStatus:
	.word	0x00000002		! decimal value = 2
_Global_cStatus:
! Static array
	.word	10		! number of elements
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.align
_Global_Barber:
	.skip	4092
	.align
! String constants
_StringConst_16:
	.word	7			! length
	.ascii	"      \t"
	.align
_StringConst_15:
	.word	4			! length
	.ascii	"End\n"
	.align
_StringConst_14:
	.word	6			! length
	.ascii	"Start\n"
	.align
_StringConst_13:
	.word	2			! length
	.ascii	"10"
	.align
_StringConst_12:
	.word	1			! length
	.ascii	"9"
	.align
_StringConst_11:
	.word	1			! length
	.ascii	"8"
	.align
_StringConst_10:
	.word	1			! length
	.ascii	"7"
	.align
_StringConst_9:
	.word	1			! length
	.ascii	"6"
	.align
_StringConst_8:
	.word	1			! length
	.ascii	"5"
	.align
_StringConst_7:
	.word	1			! length
	.ascii	"4"
	.align
_StringConst_6:
	.word	1			! length
	.ascii	"3"
	.align
_StringConst_5:
	.word	1			! length
	.ascii	"2"
	.align
_StringConst_4:
	.word	1			! length
	.ascii	"1"
	.align
_StringConst_3:
	.word	1			! length
	.ascii	"B"
	.align
_StringConst_2:
	.word	7			! length
	.ascii	"Barber\t"
	.align
_StringConst_1:
	.word	30			! length
	.ascii	"THE SLEEPING BARBER SIMULATION"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x253e20ac,r3		! .  hashVal = 624828588
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_20		! .
	ret				! .
_Label_20:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Task2.c\0"
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
	set	0x253e20ac,r4		! myHashVal = 624828588
	cmp	r3,r4
	be	_Label_21
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
_Label_21:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_22
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_22
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_22
! Make sure _P_Synch_ has hash value 0x8e356f6d (decimal -1909100691)
	set	_packageName,r2
	set	0x8e356f6d,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_22
_Label_22:
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
	mov	12,r13		! source line 12
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	13,r13		! source line 13
	mov	"\0\0CA",r10
	call	_P_Thread_InitializeScheduler
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CA",r10
	call	_function_17_sleepingbarber
! CALL STATEMENT...
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! RETURN STATEMENT...
	mov	15,r13		! source line 15
	mov	"\0\0RE",r10
	add	r15,4,r15
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
	.word	0		! frame size = 0
	.word	0
_Label_23:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION cust  ===============
! 
_function_19_cust:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_19_cust,r1
	push	r1
	mov	3,r1
_Label_644:
	push	r0
	sub	r1,1,r1
	bne	_Label_644
	mov	48,r13		! source line 48
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0SE",r10
!   _temp_24 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=Customer  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message customer
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_19_cust:
	.word	_sourceFileName
	.word	_Label_25
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_26
	.word	8
	.word	4
	.word	_Label_27
	.word	-12
	.word	4
	.word	0
_Label_25:
	.ascii	"cust\0"
	.align
_Label_26:
	.byte	'I'
	.ascii	"Customer\0"
	.align
_Label_27:
	.byte	'?'
	.ascii	"_temp_24\0"
	.align
! 
! ===============  FUNCTION barb  ===============
! 
_function_18_barb:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_18_barb,r1
	push	r1
	mov	3,r1
_Label_645:
	push	r0
	sub	r1,1,r1
	bne	_Label_645
	mov	52,r13		! source line 52
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0SE",r10
!   _temp_28 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=numofChair  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message barber
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_18_barb:
	.word	_sourceFileName
	.word	_Label_29
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_30
	.word	8
	.word	4
	.word	_Label_31
	.word	-12
	.word	4
	.word	0
_Label_29:
	.ascii	"barb\0"
	.align
_Label_30:
	.byte	'I'
	.ascii	"numofChair\0"
	.align
_Label_31:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
! 
! ===============  FUNCTION sleepingbarber  ===============
! 
_function_17_sleepingbarber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_17_sleepingbarber,r1
	push	r1
	mov	21579,r1
_Label_646:
	push	r0
	sub	r1,1,r1
	bne	_Label_646
	mov	56,r13		! source line 56
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! Customers
!   NEW ARRAY Constructor...
!   _temp_33 = &_temp_32
	set	-45380,r1
	add	r14,r1,r1
	store	r1,[r14+-4456]
!   _temp_33 = _temp_33 + 4
	load	[r14+-4456],r1
	add	r1,4,r1
	store	r1,[r14+-4456]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_35 = zeros  (sizeInBytes=4092)
	add	r14,-4448,r4
	mov	1023,r3
_Label_647:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_647
!   _temp_35 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4448]
	mov	10,r1
	store	r1,[r14+-4452]
_Label_37:
!   Data Move: *_temp_33 = _temp_35  (sizeInBytes=4092)
	add	r14,-4448,r5
	load	[r14+-4456],r4
	mov	1023,r3
_Label_648:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_648
!   _temp_33 = _temp_33 + 4092
	load	[r14+-4456],r1
	add	r1,4092,r1
	store	r1,[r14+-4456]
!   _temp_34 = _temp_34 + -1
	load	[r14+-4452],r1
	add	r1,-1,r1
	store	r1,[r14+-4452]
!   if intNotZero (_temp_34) then goto _Label_37
	load	[r14+-4452],r1
	cmp	r1,r0
	bne	_Label_37
!   Initialize the array size...
	mov	10,r1
	set	-45380,r2
	store	r1,[r14+r2]
!   _temp_38 = &_temp_32
	set	-45380,r1
	add	r14,r1,r1
	store	r1,[r14+-352]
!   make sure array has size 10
	load	[r14+-352],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: Customers = *_temp_38  (sizeInBytes=40924)
	load	[r14+-352],r5
	set	-86308,r4
	add	r14,r4,r4
	mov	10231,r3
_Label_649:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_649
! CALL STATEMENT...
!   _temp_39 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-348]
!   Prepare Argument: offset=8  value=_temp_39  sizeInBytes=4
	load	[r14+-348],r1
	store	r1,[r15+0]
!   Call the function
	mov	61,r13		! source line 61
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	62,r13		! source line 62
	mov	"\0\0CA",r10
	call	_P_System_nl
! FOR STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_44 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-344]
!   Calculate and save the FOR-LOOP ending value
!   _temp_45 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-340]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_44  (sizeInBytes=4)
	load	[r14+-344],r1
	set	-45384,r2
	store	r1,[r14+r2]
_Label_40:
!   Perform the FOR-LOOP termination test
!   if i > _temp_45 then goto _Label_43		
	set	-45384,r1
	load	[r14+r1],r1
	load	[r14+-340],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_43
_Label_41:
	mov	64,r13		! source line 64
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_42:
!   i = i + 1
	set	-45384,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45384,r2
	store	r1,[r14+r2]
	jmp	_Label_40
! END FOR
_Label_43:
! CALL STATEMENT...
!   _temp_46 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-336]
!   Prepare Argument: offset=8  value=_temp_46  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+0]
!   Call the function
	mov	67,r13		! source line 67
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_51 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-332]
!   Calculate and save the FOR-LOOP ending value
!   _temp_52 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-328]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_51  (sizeInBytes=4)
	load	[r14+-332],r1
	set	-45384,r2
	store	r1,[r14+r2]
_Label_47:
!   Perform the FOR-LOOP termination test
!   if i > _temp_52 then goto _Label_50		
	set	-45384,r1
	load	[r14+r1],r1
	load	[r14+-328],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_50
_Label_48:
	mov	68,r13		! source line 68
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_53 = i + 1		(int)
	set	-45384,r1
	load	[r14+r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-324]
!   Prepare Argument: offset=8  value=_temp_53  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+0]
!   Call the function
	mov	69,r13		! source line 69
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=9  sizeInBytes=1
	mov	9,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	70,r13		! source line 70
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_49:
!   i = i + 1
	set	-45384,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45384,r2
	store	r1,[r14+r2]
	jmp	_Label_47
! END FOR
_Label_50:
! CALL STATEMENT...
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_sb = zeros  (sizeInBytes=16)
	set	_Global_sb,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   _Global_sb = _P_Main_SleepingBarber
	set	_P_Main_SleepingBarber,r1
	set	_Global_sb,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0SE",r10
!   _temp_55 = &_Global_cStatus
	set	_Global_cStatus,r1
	store	r1,[r14+-316]
!   _temp_56 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-312]
!   Prepare Argument: offset=12  value=_Global_bStatus  sizeInBytes=4
	set	_Global_bStatus,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_55  sizeInBytes=4
	load	[r14+-316],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+12]
!   Send message Init
	load	[r14+-312],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Main_cut = zeros  (sizeInBytes=20)
	set	_P_Main_cut,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _P_Main_cut = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_P_Main_cut,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0SE",r10
!   _temp_58 = &_P_Main_cut
	set	_P_Main_cut,r1
	store	r1,[r14+-304]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-304],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Main_customers = zeros  (sizeInBytes=20)
	set	_P_Main_customers,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _P_Main_customers = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_P_Main_customers,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_60 = &_P_Main_customers
	set	_P_Main_customers,r1
	store	r1,[r14+-296]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-296],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Main_barbers = zeros  (sizeInBytes=20)
	set	_P_Main_barbers,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _P_Main_barbers = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_P_Main_barbers,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_62 = &_P_Main_barbers
	set	_P_Main_barbers,r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-288],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Main_access_lock = zeros  (sizeInBytes=20)
	set	_P_Main_access_lock,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _P_Main_access_lock = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	set	_P_Main_access_lock,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0SE",r10
!   _temp_64 = &_P_Main_access_lock
	set	_P_Main_access_lock,r1
	store	r1,[r14+-280]
!   Send message Init
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Main_barber_done = zeros  (sizeInBytes=20)
	set	_P_Main_barber_done,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _P_Main_barber_done = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_P_Main_barber_done,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_66 = &_P_Main_barber_done
	set	_P_Main_barber_done,r1
	store	r1,[r14+-272]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_Barber = zeros  (sizeInBytes=4092)
	set	_Global_Barber,r4
	mov	1023,r3
_Label_650:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_650
!   _Global_Barber = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_Global_Barber,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0SE",r10
!   _temp_68 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-264]
!   _temp_69 = &_Global_Barber
	set	_Global_Barber,r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=12  value=_temp_68  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0SE",r10
!   _temp_70 = _function_18_barb
	set	_function_18_barb,r1
	store	r1,[r14+-256]
!   _temp_71 = &_Global_Barber
	set	_Global_Barber,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=12  value=_temp_70  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	97,r13		! source line 97
	mov	"\0\0SE",r10
!   _temp_72 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-248]
!   _temp_73 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-244]
!   Move address of _temp_73 [0 ] into _temp_74
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-244],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-240]
!   Prepare Argument: offset=12  value=_temp_72  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-240],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	98,r13		! source line 98
	mov	"\0\0SE",r10
!   _temp_75 = _function_19_cust
	set	_function_19_cust,r1
	store	r1,[r14+-236]
!   _temp_76 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-232]
!   Move address of _temp_76 [0 ] into _temp_77
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-232],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-228]
!   Prepare Argument: offset=12  value=_temp_75  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0SE",r10
!   _temp_78 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-224]
!   _temp_79 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-220]
!   Move address of _temp_79 [1 ] into _temp_80
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-220],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   Prepare Argument: offset=12  value=_temp_78  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0SE",r10
!   _temp_81 = _function_19_cust
	set	_function_19_cust,r1
	store	r1,[r14+-212]
!   _temp_82 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-208]
!   Move address of _temp_82 [1 ] into _temp_83
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-208],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-204]
!   Prepare Argument: offset=12  value=_temp_81  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0SE",r10
!   _temp_84 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-200]
!   _temp_85 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-196]
!   Move address of _temp_85 [2 ] into _temp_86
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-196],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-192]
!   Prepare Argument: offset=12  value=_temp_84  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0SE",r10
!   _temp_87 = _function_19_cust
	set	_function_19_cust,r1
	store	r1,[r14+-188]
!   _temp_88 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-184]
!   Move address of _temp_88 [2 ] into _temp_89
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Prepare Argument: offset=12  value=_temp_87  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0SE",r10
!   _temp_90 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-176]
!   _temp_91 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-172]
!   Move address of _temp_91 [3 ] into _temp_92
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-172],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_90  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0SE",r10
!   _temp_93 = _function_19_cust
	set	_function_19_cust,r1
	store	r1,[r14+-164]
!   _temp_94 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-160]
!   Move address of _temp_94 [3 ] into _temp_95
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_93  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0SE",r10
!   _temp_96 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-152]
!   _temp_97 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-148]
!   Move address of _temp_97 [4 ] into _temp_98
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_96  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_99 = _function_19_cust
	set	_function_19_cust,r1
	store	r1,[r14+-140]
!   _temp_100 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-136]
!   Move address of _temp_100 [4 ] into _temp_101
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_99  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_102 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-128]
!   _temp_103 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-124]
!   Move address of _temp_103 [5 ] into _temp_104
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_102  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_105 = _function_19_cust
	set	_function_19_cust,r1
	store	r1,[r14+-116]
!   _temp_106 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-112]
!   Move address of _temp_106 [5 ] into _temp_107
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_105  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0SE",r10
!   _temp_108 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-104]
!   _temp_109 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-100]
!   Move address of _temp_109 [6 ] into _temp_110
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_108  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	110,r13		! source line 110
	mov	"\0\0SE",r10
!   _temp_111 = _function_19_cust
	set	_function_19_cust,r1
	store	r1,[r14+-92]
!   _temp_112 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-88]
!   Move address of _temp_112 [6 ] into _temp_113
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_111  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0SE",r10
!   _temp_114 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-80]
!   _temp_115 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-76]
!   Move address of _temp_115 [7 ] into _temp_116
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_114  sizeInBytes=4
	load	[r14+-80],r1
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
	mov	112,r13		! source line 112
	mov	"\0\0SE",r10
!   _temp_117 = _function_19_cust
	set	_function_19_cust,r1
	store	r1,[r14+-68]
!   _temp_118 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-64]
!   Move address of _temp_118 [7 ] into _temp_119
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_117  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0SE",r10
!   _temp_120 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-56]
!   _temp_121 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-52]
!   Move address of _temp_121 [8 ] into _temp_122
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_120  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0SE",r10
!   _temp_123 = _function_19_cust
	set	_function_19_cust,r1
	store	r1,[r14+-44]
!   _temp_124 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-40]
!   Move address of _temp_124 [8 ] into _temp_125
!     make sure index expr is >= 0
	mov	8,r2
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
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_123  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0SE",r10
!   _temp_126 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-32]
!   _temp_127 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-28]
!   Move address of _temp_127 [9 ] into _temp_128
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_126  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0SE",r10
!   _temp_129 = _function_19_cust
	set	_function_19_cust,r1
	store	r1,[r14+-20]
!   _temp_130 = &Customers
	set	-86308,r1
	add	r14,r1,r1
	store	r1,[r14+-16]
!   Move address of _temp_130 [9 ] into _temp_131
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_129  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0RE",r10
	set	86320,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_17_sleepingbarber:
	.word	_sourceFileName
	.word	_Label_132
	.word	0		! total size of parameters
	.word	86316		! frame size = 86316
	.word	_Label_133
	.word	-12
	.word	4
	.word	_Label_134
	.word	-16
	.word	4
	.word	_Label_135
	.word	-20
	.word	4
	.word	_Label_136
	.word	-24
	.word	4
	.word	_Label_137
	.word	-28
	.word	4
	.word	_Label_138
	.word	-32
	.word	4
	.word	_Label_139
	.word	-36
	.word	4
	.word	_Label_140
	.word	-40
	.word	4
	.word	_Label_141
	.word	-44
	.word	4
	.word	_Label_142
	.word	-48
	.word	4
	.word	_Label_143
	.word	-52
	.word	4
	.word	_Label_144
	.word	-56
	.word	4
	.word	_Label_145
	.word	-60
	.word	4
	.word	_Label_146
	.word	-64
	.word	4
	.word	_Label_147
	.word	-68
	.word	4
	.word	_Label_148
	.word	-72
	.word	4
	.word	_Label_149
	.word	-76
	.word	4
	.word	_Label_150
	.word	-80
	.word	4
	.word	_Label_151
	.word	-84
	.word	4
	.word	_Label_152
	.word	-88
	.word	4
	.word	_Label_153
	.word	-92
	.word	4
	.word	_Label_154
	.word	-96
	.word	4
	.word	_Label_155
	.word	-100
	.word	4
	.word	_Label_156
	.word	-104
	.word	4
	.word	_Label_157
	.word	-108
	.word	4
	.word	_Label_158
	.word	-112
	.word	4
	.word	_Label_159
	.word	-116
	.word	4
	.word	_Label_160
	.word	-120
	.word	4
	.word	_Label_161
	.word	-124
	.word	4
	.word	_Label_162
	.word	-128
	.word	4
	.word	_Label_163
	.word	-132
	.word	4
	.word	_Label_164
	.word	-136
	.word	4
	.word	_Label_165
	.word	-140
	.word	4
	.word	_Label_166
	.word	-144
	.word	4
	.word	_Label_167
	.word	-148
	.word	4
	.word	_Label_168
	.word	-152
	.word	4
	.word	_Label_169
	.word	-156
	.word	4
	.word	_Label_170
	.word	-160
	.word	4
	.word	_Label_171
	.word	-164
	.word	4
	.word	_Label_172
	.word	-168
	.word	4
	.word	_Label_173
	.word	-172
	.word	4
	.word	_Label_174
	.word	-176
	.word	4
	.word	_Label_175
	.word	-180
	.word	4
	.word	_Label_176
	.word	-184
	.word	4
	.word	_Label_177
	.word	-188
	.word	4
	.word	_Label_178
	.word	-192
	.word	4
	.word	_Label_179
	.word	-196
	.word	4
	.word	_Label_180
	.word	-200
	.word	4
	.word	_Label_181
	.word	-204
	.word	4
	.word	_Label_182
	.word	-208
	.word	4
	.word	_Label_183
	.word	-212
	.word	4
	.word	_Label_184
	.word	-216
	.word	4
	.word	_Label_185
	.word	-220
	.word	4
	.word	_Label_186
	.word	-224
	.word	4
	.word	_Label_187
	.word	-228
	.word	4
	.word	_Label_188
	.word	-232
	.word	4
	.word	_Label_189
	.word	-236
	.word	4
	.word	_Label_190
	.word	-240
	.word	4
	.word	_Label_191
	.word	-244
	.word	4
	.word	_Label_192
	.word	-248
	.word	4
	.word	_Label_193
	.word	-252
	.word	4
	.word	_Label_194
	.word	-256
	.word	4
	.word	_Label_195
	.word	-260
	.word	4
	.word	_Label_196
	.word	-264
	.word	4
	.word	_Label_197
	.word	-268
	.word	4
	.word	_Label_198
	.word	-272
	.word	4
	.word	_Label_199
	.word	-276
	.word	4
	.word	_Label_200
	.word	-280
	.word	4
	.word	_Label_201
	.word	-284
	.word	4
	.word	_Label_202
	.word	-288
	.word	4
	.word	_Label_203
	.word	-292
	.word	4
	.word	_Label_204
	.word	-296
	.word	4
	.word	_Label_205
	.word	-300
	.word	4
	.word	_Label_206
	.word	-304
	.word	4
	.word	_Label_207
	.word	-308
	.word	4
	.word	_Label_208
	.word	-312
	.word	4
	.word	_Label_209
	.word	-316
	.word	4
	.word	_Label_210
	.word	-320
	.word	4
	.word	_Label_211
	.word	-324
	.word	4
	.word	_Label_212
	.word	-328
	.word	4
	.word	_Label_213
	.word	-332
	.word	4
	.word	_Label_214
	.word	-336
	.word	4
	.word	_Label_215
	.word	-340
	.word	4
	.word	_Label_216
	.word	-344
	.word	4
	.word	_Label_217
	.word	-348
	.word	4
	.word	_Label_218
	.word	-352
	.word	4
	.word	_Label_219
	.word	-356
	.word	4
	.word	_Label_220
	.word	-4448
	.word	4092
	.word	_Label_221
	.word	-4452
	.word	4
	.word	_Label_222
	.word	-4456
	.word	4
	.word	_Label_223
	.word	-45380
	.word	40924
	.word	_Label_224
	.word	-45384
	.word	4
	.word	_Label_225
	.word	-86308
	.word	40924
	.word	0
_Label_132:
	.ascii	"sleepingbarber\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_125\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_124\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_97\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_96\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_53\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_44\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_39\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_36\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_35\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_34\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_33\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_32\0"
	.align
_Label_224:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_225:
	.byte	'A'
	.ascii	"Customers\0"
	.align
! 
! ===============  CLASS SleepingBarber  ===============
! 
! Dispatch Table:
! 
_P_Main_SleepingBarber:
	.word	_Label_226
	jmp	_Method_P_Main_SleepingBarber_1	! 4:	Init
	jmp	_Method_P_Main_SleepingBarber_2	! 8:	barber
	jmp	_Method_P_Main_SleepingBarber_3	! 12:	cut_hair
	jmp	_Method_P_Main_SleepingBarber_4	! 16:	customer
	jmp	_Method_P_Main_SleepingBarber_5	! 20:	get_haircut
	jmp	_Method_P_Main_SleepingBarber_6	! 24:	printExample
	jmp	_Method_P_Main_SleepingBarber_7	! 28:	printBarberStatus
	jmp	_Method_P_Main_SleepingBarber_8	! 32:	printCustomerStatus
	jmp	_Method_P_Main_SleepingBarber_9	! 36:	printChairs
	.word	0
! 
! Class descriptor:
! 
_Label_226:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_227
	.word	_sourceFileName
	.word	19		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Main_SleepingBarber
	.word	_P_System_Object
	.word	0
_Label_227:
	.ascii	"SleepingBarber\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_SleepingBarber_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_1,r1
	push	r1
	mov	6,r1
_Label_651:
	push	r0
	sub	r1,1,r1
	bne	_Label_651
	mov	124,r13		! source line 124
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_228) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_229 = _temp_228 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_229 = bStat  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-28],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_230) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_231 = _temp_230 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_231 = cStat  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_232) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_233 = _temp_232 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_233 = numOfChair  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_1:
	.word	_sourceFileName
	.word	_Label_234
	.word	16		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_235
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_236
	.word	12
	.word	4
	.word	_Label_237
	.word	16
	.word	4
	.word	_Label_238
	.word	20
	.word	4
	.word	_Label_239
	.word	-12
	.word	4
	.word	_Label_240
	.word	-16
	.word	4
	.word	_Label_241
	.word	-20
	.word	4
	.word	_Label_242
	.word	-24
	.word	4
	.word	_Label_243
	.word	-28
	.word	4
	.word	_Label_244
	.word	-32
	.word	4
	.word	0
_Label_234:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_235:
	.ascii	"Pself\0"
	.align
_Label_236:
	.byte	'I'
	.ascii	"bStat\0"
	.align
_Label_237:
	.byte	'P'
	.ascii	"cStat\0"
	.align
_Label_238:
	.byte	'I'
	.ascii	"numOfChair\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
! 
! ===============  METHOD barber  ===============
! 
_Method_P_Main_SleepingBarber_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_2,r1
	push	r1
	mov	19,r1
_Label_652:
	push	r0
	sub	r1,1,r1
	bne	_Label_652
	mov	130,r13		! source line 130
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0WH",r10
_Label_245:
!	jmp	_Label_246
_Label_246:
	mov	131,r13		! source line 131
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0SE",r10
!   _temp_248 = &_P_Main_customers
	set	_P_Main_customers,r1
	store	r1,[r14+-80]
!   Send message Down
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0SE",r10
!   _temp_249 = &_P_Main_access_lock
	set	_P_Main_access_lock,r1
	store	r1,[r14+-76]
!   Send message Lock
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_250) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_251 = _temp_250 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_254) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_255 = _temp_254 + 12
	load	[r14+-56],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_253 = *_temp_255  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_252 = _temp_253 + 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Data Move: *_temp_251 = _temp_252  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r14+-68],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0SE",r10
!   _temp_256 = &_P_Main_access_lock
	set	_P_Main_access_lock,r1
	store	r1,[r14+-48]
!   Send message Unlock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_257) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_258 = _temp_257 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_258 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_259) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! SEND STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0SE",r10
!   _temp_260 = &_P_Main_barbers
	set	_P_Main_barbers,r1
	store	r1,[r14+-32]
!   Send message Up
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_261) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message cut_hair
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	141,r13		! source line 141
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_262) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_263 = _temp_262 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_263 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	142,r13		! source line 142
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_264) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! SEND STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0SE",r10
!   _temp_265 = &_P_Main_barber_done
	set	_P_Main_barber_done,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END WHILE...
	jmp	_Label_245
_Label_247:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_2:
	.word	_sourceFileName
	.word	_Label_266
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_267
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_268
	.word	12
	.word	4
	.word	_Label_269
	.word	-12
	.word	4
	.word	_Label_270
	.word	-16
	.word	4
	.word	_Label_271
	.word	-20
	.word	4
	.word	_Label_272
	.word	-24
	.word	4
	.word	_Label_273
	.word	-28
	.word	4
	.word	_Label_274
	.word	-32
	.word	4
	.word	_Label_275
	.word	-36
	.word	4
	.word	_Label_276
	.word	-40
	.word	4
	.word	_Label_277
	.word	-44
	.word	4
	.word	_Label_278
	.word	-48
	.word	4
	.word	_Label_279
	.word	-52
	.word	4
	.word	_Label_280
	.word	-56
	.word	4
	.word	_Label_281
	.word	-60
	.word	4
	.word	_Label_282
	.word	-64
	.word	4
	.word	_Label_283
	.word	-68
	.word	4
	.word	_Label_284
	.word	-72
	.word	4
	.word	_Label_285
	.word	-76
	.word	4
	.word	_Label_286
	.word	-80
	.word	4
	.word	0
_Label_266:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"barber\0"
	.align
_Label_267:
	.ascii	"Pself\0"
	.align
_Label_268:
	.byte	'I'
	.ascii	"numOfChair\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
! 
! ===============  METHOD cut_hair  ===============
! 
_Method_P_Main_SleepingBarber_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_3,r1
	push	r1
	mov	3,r1
_Label_653:
	push	r0
	sub	r1,1,r1
	bne	_Label_653
	mov	148,r13		! source line 148
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   _temp_287 = &_P_Main_cut
	set	_P_Main_cut,r1
	store	r1,[r14+-16]
!   Send message Down
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0SE",r10
!   _temp_288 = &_P_Main_cut
	set	_P_Main_cut,r1
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
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_3:
	.word	_sourceFileName
	.word	_Label_289
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_290
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_291
	.word	-12
	.word	4
	.word	_Label_292
	.word	-16
	.word	4
	.word	0
_Label_289:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"cut_hair\0"
	.align
_Label_290:
	.ascii	"Pself\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
! 
! ===============  METHOD customer  ===============
! 
_Method_P_Main_SleepingBarber_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_4,r1
	push	r1
	mov	35,r1
_Label_654:
	push	r0
	sub	r1,1,r1
	bne	_Label_654
	mov	154,r13		! source line 154
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	158,r13		! source line 158
	mov	"\0\0AS",r10
!   cutsReceived = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-140]
! ASSIGNMENT STATEMENT...
	mov	159,r13		! source line 159
	mov	"\0\0AS",r10
!   numCuts = 3		(4 bytes)
	mov	3,r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0WH",r10
_Label_293:
!   if cutsReceived >= numCuts then goto _Label_295		(int)
	load	[r14+-140],r1
	load	[r14+-136],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_295
!	jmp	_Label_294
_Label_294:
	mov	160,r13		! source line 160
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0SE",r10
!   _temp_296 = &_P_Main_access_lock
	set	_P_Main_access_lock,r1
	store	r1,[r14+-132]
!   Send message Lock
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_298) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_299 = _temp_298 + 8
	load	[r14+-124],r1
	add	r1,8,r1
	store	r1,[r14+-120]
!   Data Move: _temp_297 = *_temp_299  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (_temp_297) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_297 [Customer ] into _temp_300
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
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
	store	r2,[r14+-116]
!   Data Move: *_temp_300 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-116],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	163,r13		! source line 163
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_301) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=Customer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! IF STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_305) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_306 = _temp_305 + 12
	load	[r14+-104],r1
	add	r1,12,r1
	store	r1,[r14+-100]
!   Data Move: _temp_304 = *_temp_306  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if _temp_304 <= 0 then goto _Label_303		(int)
	load	[r14+-108],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_303
!	jmp	_Label_302
_Label_302:
! THEN...
	mov	165,r13		! source line 165
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_307) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_308 = _temp_307 + 12
	load	[r14+-96],r1
	add	r1,12,r1
	store	r1,[r14+-92]
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_311) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_312 = _temp_311 + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-76]
!   Data Move: _temp_310 = *_temp_312  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   _temp_309 = _temp_310 - 1		(int)
	load	[r14+-84],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
!   Data Move: *_temp_308 = _temp_309  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_314) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_315 = _temp_314 + 8
	load	[r14+-68],r1
	add	r1,8,r1
	store	r1,[r14+-64]
!   Data Move: _temp_313 = *_temp_315  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_313) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_313 [Customer ] into _temp_316
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
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
	store	r2,[r14+-60]
!   Data Move: *_temp_316 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_317) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=Customer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! SEND STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0SE",r10
!   _temp_318 = &_P_Main_access_lock
	set	_P_Main_access_lock,r1
	store	r1,[r14+-52]
!   Send message Unlock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0SE",r10
!   _temp_319 = &_P_Main_customers
	set	_P_Main_customers,r1
	store	r1,[r14+-48]
!   Send message Up
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	170,r13		! source line 170
	mov	"\0\0SE",r10
!   _temp_320 = &_P_Main_barbers
	set	_P_Main_barbers,r1
	store	r1,[r14+-44]
!   Send message Down
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	171,r13		! source line 171
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_321) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=Customer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message get_haircut
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	172,r13		! source line 172
	mov	"\0\0SE",r10
!   _temp_322 = &_P_Main_barber_done
	set	_P_Main_barber_done,r1
	store	r1,[r14+-36]
!   Send message Down
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0AS",r10
!   cutsReceived = cutsReceived + 1		(int)
	load	[r14+-140],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
	jmp	_Label_323
_Label_303:
! ELSE...
	mov	175,r13		! source line 175
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0SE",r10
!   _temp_324 = &_P_Main_access_lock
	set	_P_Main_access_lock,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_323:
! ASSIGNMENT STATEMENT...
	mov	177,r13		! source line 177
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_326) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_327 = _temp_326 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: _temp_325 = *_temp_327  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_325) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_325 [Customer ] into _temp_328
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
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
!   Data Move: *_temp_328 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	178,r13		! source line 178
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_329) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=Customer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! END WHILE...
	jmp	_Label_293
_Label_295:
! RETURN STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_4:
	.word	_sourceFileName
	.word	_Label_330
	.word	8		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_331
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_332
	.word	12
	.word	4
	.word	_Label_333
	.word	-12
	.word	4
	.word	_Label_334
	.word	-16
	.word	4
	.word	_Label_335
	.word	-20
	.word	4
	.word	_Label_336
	.word	-24
	.word	4
	.word	_Label_337
	.word	-28
	.word	4
	.word	_Label_338
	.word	-32
	.word	4
	.word	_Label_339
	.word	-36
	.word	4
	.word	_Label_340
	.word	-40
	.word	4
	.word	_Label_341
	.word	-44
	.word	4
	.word	_Label_342
	.word	-48
	.word	4
	.word	_Label_343
	.word	-52
	.word	4
	.word	_Label_344
	.word	-56
	.word	4
	.word	_Label_345
	.word	-60
	.word	4
	.word	_Label_346
	.word	-64
	.word	4
	.word	_Label_347
	.word	-68
	.word	4
	.word	_Label_348
	.word	-72
	.word	4
	.word	_Label_349
	.word	-76
	.word	4
	.word	_Label_350
	.word	-80
	.word	4
	.word	_Label_351
	.word	-84
	.word	4
	.word	_Label_352
	.word	-88
	.word	4
	.word	_Label_353
	.word	-92
	.word	4
	.word	_Label_354
	.word	-96
	.word	4
	.word	_Label_355
	.word	-100
	.word	4
	.word	_Label_356
	.word	-104
	.word	4
	.word	_Label_357
	.word	-108
	.word	4
	.word	_Label_358
	.word	-112
	.word	4
	.word	_Label_359
	.word	-116
	.word	4
	.word	_Label_360
	.word	-120
	.word	4
	.word	_Label_361
	.word	-124
	.word	4
	.word	_Label_362
	.word	-128
	.word	4
	.word	_Label_363
	.word	-132
	.word	4
	.word	_Label_364
	.word	-136
	.word	4
	.word	_Label_365
	.word	-140
	.word	4
	.word	0
_Label_330:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"customer\0"
	.align
_Label_331:
	.ascii	"Pself\0"
	.align
_Label_332:
	.byte	'I'
	.ascii	"Customer\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_364:
	.byte	'I'
	.ascii	"numCuts\0"
	.align
_Label_365:
	.byte	'I'
	.ascii	"cutsReceived\0"
	.align
! 
! ===============  METHOD get_haircut  ===============
! 
_Method_P_Main_SleepingBarber_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_5,r1
	push	r1
	mov	14,r1
_Label_655:
	push	r0
	sub	r1,1,r1
	bne	_Label_655
	mov	182,r13		! source line 182
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0SE",r10
!   _temp_366 = &_P_Main_cut
	set	_P_Main_cut,r1
	store	r1,[r14+-56]
!   Send message Up
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_368) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_369 = _temp_368 + 8
	load	[r14+-48],r1
	add	r1,8,r1
	store	r1,[r14+-44]
!   Data Move: _temp_367 = *_temp_369  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_367) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_367 [Customer ] into _temp_370
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
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
!   Data Move: *_temp_370 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-40],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	185,r13		! source line 185
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_371) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=Customer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! SEND STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_373) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_374 = _temp_373 + 8
	load	[r14+-28],r1
	add	r1,8,r1
	store	r1,[r14+-24]
!   Data Move: _temp_372 = *_temp_374  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_372) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_372 [Customer ] into _temp_375
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: *_temp_375 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_376) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=Customer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! SEND STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0SE",r10
!   _temp_377 = &_P_Main_cut
	set	_P_Main_cut,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_5:
	.word	_sourceFileName
	.word	_Label_378
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_379
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_380
	.word	12
	.word	4
	.word	_Label_381
	.word	-12
	.word	4
	.word	_Label_382
	.word	-16
	.word	4
	.word	_Label_383
	.word	-20
	.word	4
	.word	_Label_384
	.word	-24
	.word	4
	.word	_Label_385
	.word	-28
	.word	4
	.word	_Label_386
	.word	-32
	.word	4
	.word	_Label_387
	.word	-36
	.word	4
	.word	_Label_388
	.word	-40
	.word	4
	.word	_Label_389
	.word	-44
	.word	4
	.word	_Label_390
	.word	-48
	.word	4
	.word	_Label_391
	.word	-52
	.word	4
	.word	_Label_392
	.word	-56
	.word	4
	.word	0
_Label_378:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"get_haircut\0"
	.align
_Label_379:
	.ascii	"Pself\0"
	.align
_Label_380:
	.byte	'I'
	.ascii	"Customer\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
! 
! ===============  METHOD printExample  ===============
! 
_Method_P_Main_SleepingBarber_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_6,r1
	push	r1
	mov	88,r1
_Label_656:
	push	r0
	sub	r1,1,r1
	bne	_Label_656
	mov	192,r13		! source line 192
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-348]
!   if intIsZero (_temp_394) then goto _runtimeErrorNullPointer
	load	[r14+-348],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_395 = _temp_394 + 8
	load	[r14+-348],r1
	add	r1,8,r1
	store	r1,[r14+-344]
!   Data Move: _temp_393 = *_temp_395  (sizeInBytes=4)
	load	[r14+-344],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   if intIsZero (_temp_393) then goto _runtimeErrorNullPointer
	load	[r14+-352],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_393 [0 ] into _temp_396
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-352],r1
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
	store	r2,[r14+-340]
!   Data Move: *_temp_396 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-340],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-336]
!   if intIsZero (_temp_397) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-336],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-328]
!   if intIsZero (_temp_399) then goto _runtimeErrorNullPointer
	load	[r14+-328],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_400 = _temp_399 + 8
	load	[r14+-328],r1
	add	r1,8,r1
	store	r1,[r14+-324]
!   Data Move: _temp_398 = *_temp_400  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r1],r1
	store	r1,[r14+-332]
!   if intIsZero (_temp_398) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_398 [0 ] into _temp_401
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-332],r1
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
	store	r2,[r14+-320]
!   Data Move: *_temp_401 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-320],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-316]
!   if intIsZero (_temp_402) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_403 = _temp_402 + 12
	load	[r14+-316],r1
	add	r1,12,r1
	store	r1,[r14+-312]
	load	[r14+8],r1
	store	r1,[r14+-300]
!   if intIsZero (_temp_406) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_407 = _temp_406 + 12
	load	[r14+-300],r1
	add	r1,12,r1
	store	r1,[r14+-296]
!   Data Move: _temp_405 = *_temp_407  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   _temp_404 = _temp_405 - 1		(int)
	load	[r14+-304],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-308]
!   Data Move: *_temp_403 = _temp_404  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r14+-312],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-292]
!   if intIsZero (_temp_408) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-292],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	207,r13		! source line 207
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-284]
!   if intIsZero (_temp_410) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_411 = _temp_410 + 8
	load	[r14+-284],r1
	add	r1,8,r1
	store	r1,[r14+-280]
!   Data Move: _temp_409 = *_temp_411  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_409) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_409 [1 ] into _temp_412
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-288],r1
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
	store	r2,[r14+-276]
!   Data Move: *_temp_412 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-276],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-272]
!   if intIsZero (_temp_413) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_415) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_416 = _temp_415 + 8
	load	[r14+-264],r1
	add	r1,8,r1
	store	r1,[r14+-260]
!   Data Move: _temp_414 = *_temp_416  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-268]
!   if intIsZero (_temp_414) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_414 [1 ] into _temp_417
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-268],r1
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
	store	r2,[r14+-256]
!   Data Move: *_temp_417 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-256],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_418) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_419 = _temp_418 + 12
	load	[r14+-252],r1
	add	r1,12,r1
	store	r1,[r14+-248]
	load	[r14+8],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_422) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_423 = _temp_422 + 12
	load	[r14+-236],r1
	add	r1,12,r1
	store	r1,[r14+-232]
!   Data Move: _temp_421 = *_temp_423  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   _temp_420 = _temp_421 - 1		(int)
	load	[r14+-240],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
!   Data Move: *_temp_419 = _temp_420  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r14+-248],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-228]
!   if intIsZero (_temp_424) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_425) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_426 = _temp_425 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Data Move: *_temp_426 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-220],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_427) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_428 = _temp_427 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
	load	[r14+8],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_431) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_432 = _temp_431 + 12
	load	[r14+-200],r1
	add	r1,12,r1
	store	r1,[r14+-196]
!   Data Move: _temp_430 = *_temp_432  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   _temp_429 = _temp_430 + 1		(int)
	load	[r14+-204],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   Data Move: *_temp_428 = _temp_429  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r14+-212],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_433) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_435) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_436 = _temp_435 + 8
	load	[r14+-184],r1
	add	r1,8,r1
	store	r1,[r14+-180]
!   Data Move: _temp_434 = *_temp_436  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_434) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_434 [0 ] into _temp_437
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-188],r1
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
	store	r2,[r14+-176]
!   Data Move: *_temp_437 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-176],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	222,r13		! source line 222
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_438) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_439) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_440 = _temp_439 + 4
	load	[r14+-168],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_440 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-164],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_441) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_443) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_444 = _temp_443 + 8
	load	[r14+-152],r1
	add	r1,8,r1
	store	r1,[r14+-148]
!   Data Move: _temp_442 = *_temp_444  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_442) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_442 [0 ] into _temp_445
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-156],r1
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
	store	r2,[r14+-144]
!   Data Move: *_temp_445 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-144],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_446) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_448) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = _temp_448 + 8
	load	[r14+-132],r1
	add	r1,8,r1
	store	r1,[r14+-128]
!   Data Move: _temp_447 = *_temp_449  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_447) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_447 [0 ] into _temp_450
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
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
	store	r2,[r14+-124]
!   Data Move: *_temp_450 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-124],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_451) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_452) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_453 = _temp_452 + 4
	load	[r14+-116],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Data Move: *_temp_453 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-112],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_454) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_455 = _temp_454 + 12
	load	[r14+-108],r1
	add	r1,12,r1
	store	r1,[r14+-104]
	load	[r14+8],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_458) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_459 = _temp_458 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_457 = *_temp_459  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   _temp_456 = _temp_457 + 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
!   Data Move: *_temp_455 = _temp_456  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r14+-104],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_460) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_462) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_463 = _temp_462 + 8
	load	[r14+-76],r1
	add	r1,8,r1
	store	r1,[r14+-72]
!   Data Move: _temp_461 = *_temp_463  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_461) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_461 [1 ] into _temp_464
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
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
	store	r2,[r14+-68]
!   Data Move: *_temp_464 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_465) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_466) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_467 = _temp_466 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_467 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-56],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_468) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_470) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_471 = _temp_470 + 8
	load	[r14+-44],r1
	add	r1,8,r1
	store	r1,[r14+-40]
!   Data Move: _temp_469 = *_temp_471  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_469) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_469 [1 ] into _temp_472
!     make sure index expr is >= 0
	mov	1,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: *_temp_472 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_473) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_475) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_476 = _temp_475 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: _temp_474 = *_temp_476  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_474) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_474 [1 ] into _temp_477
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
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
!   Data Move: *_temp_477 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_478) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! RETURN STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0RE",r10
	add	r15,356,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_6:
	.word	_sourceFileName
	.word	_Label_479
	.word	4		! total size of parameters
	.word	352		! frame size = 352
	.word	_Label_480
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_481
	.word	-12
	.word	4
	.word	_Label_482
	.word	-16
	.word	4
	.word	_Label_483
	.word	-20
	.word	4
	.word	_Label_484
	.word	-24
	.word	4
	.word	_Label_485
	.word	-28
	.word	4
	.word	_Label_486
	.word	-32
	.word	4
	.word	_Label_487
	.word	-36
	.word	4
	.word	_Label_488
	.word	-40
	.word	4
	.word	_Label_489
	.word	-44
	.word	4
	.word	_Label_490
	.word	-48
	.word	4
	.word	_Label_491
	.word	-52
	.word	4
	.word	_Label_492
	.word	-56
	.word	4
	.word	_Label_493
	.word	-60
	.word	4
	.word	_Label_494
	.word	-64
	.word	4
	.word	_Label_495
	.word	-68
	.word	4
	.word	_Label_496
	.word	-72
	.word	4
	.word	_Label_497
	.word	-76
	.word	4
	.word	_Label_498
	.word	-80
	.word	4
	.word	_Label_499
	.word	-84
	.word	4
	.word	_Label_500
	.word	-88
	.word	4
	.word	_Label_501
	.word	-92
	.word	4
	.word	_Label_502
	.word	-96
	.word	4
	.word	_Label_503
	.word	-100
	.word	4
	.word	_Label_504
	.word	-104
	.word	4
	.word	_Label_505
	.word	-108
	.word	4
	.word	_Label_506
	.word	-112
	.word	4
	.word	_Label_507
	.word	-116
	.word	4
	.word	_Label_508
	.word	-120
	.word	4
	.word	_Label_509
	.word	-124
	.word	4
	.word	_Label_510
	.word	-128
	.word	4
	.word	_Label_511
	.word	-132
	.word	4
	.word	_Label_512
	.word	-136
	.word	4
	.word	_Label_513
	.word	-140
	.word	4
	.word	_Label_514
	.word	-144
	.word	4
	.word	_Label_515
	.word	-148
	.word	4
	.word	_Label_516
	.word	-152
	.word	4
	.word	_Label_517
	.word	-156
	.word	4
	.word	_Label_518
	.word	-160
	.word	4
	.word	_Label_519
	.word	-164
	.word	4
	.word	_Label_520
	.word	-168
	.word	4
	.word	_Label_521
	.word	-172
	.word	4
	.word	_Label_522
	.word	-176
	.word	4
	.word	_Label_523
	.word	-180
	.word	4
	.word	_Label_524
	.word	-184
	.word	4
	.word	_Label_525
	.word	-188
	.word	4
	.word	_Label_526
	.word	-192
	.word	4
	.word	_Label_527
	.word	-196
	.word	4
	.word	_Label_528
	.word	-200
	.word	4
	.word	_Label_529
	.word	-204
	.word	4
	.word	_Label_530
	.word	-208
	.word	4
	.word	_Label_531
	.word	-212
	.word	4
	.word	_Label_532
	.word	-216
	.word	4
	.word	_Label_533
	.word	-220
	.word	4
	.word	_Label_534
	.word	-224
	.word	4
	.word	_Label_535
	.word	-228
	.word	4
	.word	_Label_536
	.word	-232
	.word	4
	.word	_Label_537
	.word	-236
	.word	4
	.word	_Label_538
	.word	-240
	.word	4
	.word	_Label_539
	.word	-244
	.word	4
	.word	_Label_540
	.word	-248
	.word	4
	.word	_Label_541
	.word	-252
	.word	4
	.word	_Label_542
	.word	-256
	.word	4
	.word	_Label_543
	.word	-260
	.word	4
	.word	_Label_544
	.word	-264
	.word	4
	.word	_Label_545
	.word	-268
	.word	4
	.word	_Label_546
	.word	-272
	.word	4
	.word	_Label_547
	.word	-276
	.word	4
	.word	_Label_548
	.word	-280
	.word	4
	.word	_Label_549
	.word	-284
	.word	4
	.word	_Label_550
	.word	-288
	.word	4
	.word	_Label_551
	.word	-292
	.word	4
	.word	_Label_552
	.word	-296
	.word	4
	.word	_Label_553
	.word	-300
	.word	4
	.word	_Label_554
	.word	-304
	.word	4
	.word	_Label_555
	.word	-308
	.word	4
	.word	_Label_556
	.word	-312
	.word	4
	.word	_Label_557
	.word	-316
	.word	4
	.word	_Label_558
	.word	-320
	.word	4
	.word	_Label_559
	.word	-324
	.word	4
	.word	_Label_560
	.word	-328
	.word	4
	.word	_Label_561
	.word	-332
	.word	4
	.word	_Label_562
	.word	-336
	.word	4
	.word	_Label_563
	.word	-340
	.word	4
	.word	_Label_564
	.word	-344
	.word	4
	.word	_Label_565
	.word	-348
	.word	4
	.word	_Label_566
	.word	-352
	.word	4
	.word	0
_Label_479:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printExample\0"
	.align
_Label_480:
	.ascii	"Pself\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_476\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
! 
! ===============  METHOD printBarberStatus  ===============
! 
_Method_P_Main_SleepingBarber_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_7,r1
	push	r1
	mov	8,r1
_Label_657:
	push	r0
	sub	r1,1,r1
	bne	_Label_657
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! SEND STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_567) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printChairs
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
! IF STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_571) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_572 = _temp_571 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: _temp_570 = *_temp_572  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_570 != 1 then goto _Label_569		(int)
	load	[r14+-28],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_569
!	jmp	_Label_568
_Label_568:
! THEN...
	mov	265,r13		! source line 265
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_573 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_573  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	265,r13		! source line 265
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_574
_Label_569:
! ELSE...
	mov	267,r13		! source line 267
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_575 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_575  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	267,r13		! source line 267
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_574:
! ASSIGNMENT STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	269,r13		! source line 269
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! RETURN STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_7:
	.word	_sourceFileName
	.word	_Label_576
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_577
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_578
	.word	-12
	.word	4
	.word	_Label_579
	.word	-16
	.word	4
	.word	_Label_580
	.word	-20
	.word	4
	.word	_Label_581
	.word	-24
	.word	4
	.word	_Label_582
	.word	-28
	.word	4
	.word	_Label_583
	.word	-32
	.word	4
	.word	_Label_584
	.word	-36
	.word	4
	.word	0
_Label_576:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printBarberStatus\0"
	.align
_Label_577:
	.ascii	"Pself\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_584:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD printCustomerStatus  ===============
! 
_Method_P_Main_SleepingBarber_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_8,r1
	push	r1
	mov	12,r1
_Label_658:
	push	r0
	sub	r1,1,r1
	bne	_Label_658
	mov	272,r13		! source line 272
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_585) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printChairs
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
! CALL STATEMENT...
!   _temp_586 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_586  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	277,r13		! source line 277
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_591 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_592 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_591  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_587:
!   Perform the FOR-LOOP termination test
!   if i > _temp_592 then goto _Label_590		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_590
_Label_588:
	mov	278,r13		! source line 278
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	279,r13		! source line 279
	mov	"\0\0IF",r10
!   if i == customer then goto _Label_594		(int)
	load	[r14+-48],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_594
!	jmp	_Label_593
_Label_593:
! THEN...
	mov	280,r13		! source line 280
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	280,r13		! source line 280
	mov	"\0\0CE",r10
	call	printChar
	jmp	_Label_595
_Label_594:
! ELSE...
	mov	282,r13		! source line 282
	mov	"\0\0EL",r10
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_598) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = _temp_598 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: _temp_597 = *_temp_599  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_597) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_597 [i ] into _temp_600
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
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
!   Data Move: _temp_596 = *_temp_600  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Prepare Argument: offset=8  value=_temp_596  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	282,r13		! source line 282
	mov	"\0\0CE",r10
	call	printChar
! END IF...
_Label_595:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=9  sizeInBytes=1
	mov	9,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	284,r13		! source line 284
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_589:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_587
! END FOR
_Label_590:
! CALL STATEMENT...
!   Call the function
	mov	286,r13		! source line 286
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	287,r13		! source line 287
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	287,r13		! source line 287
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	287,r13		! source line 287
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_8:
	.word	_sourceFileName
	.word	_Label_601
	.word	8		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_602
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_603
	.word	12
	.word	4
	.word	_Label_604
	.word	-16
	.word	4
	.word	_Label_605
	.word	-20
	.word	4
	.word	_Label_606
	.word	-24
	.word	4
	.word	_Label_607
	.word	-28
	.word	4
	.word	_Label_608
	.word	-9
	.word	1
	.word	_Label_609
	.word	-32
	.word	4
	.word	_Label_610
	.word	-36
	.word	4
	.word	_Label_611
	.word	-40
	.word	4
	.word	_Label_612
	.word	-44
	.word	4
	.word	_Label_613
	.word	-48
	.word	4
	.word	_Label_614
	.word	-52
	.word	4
	.word	0
_Label_601:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printCustomerStatus\0"
	.align
_Label_602:
	.ascii	"Pself\0"
	.align
_Label_603:
	.byte	'I'
	.ascii	"customer\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_608:
	.byte	'C'
	.ascii	"_temp_596\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_613:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_614:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD printChairs  ===============
! 
_Method_P_Main_SleepingBarber_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_9,r1
	push	r1
	mov	11,r1
_Label_659:
	push	r0
	sub	r1,1,r1
	bne	_Label_659
	mov	290,r13		! source line 290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_621) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = _temp_621 + 12
	load	[r14+-36],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: _temp_620 = *_temp_622  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_619 = _temp_620 + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_623 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_619  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-48]
_Label_615:
!   Perform the FOR-LOOP termination test
!   if i > _temp_623 then goto _Label_618		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_618
_Label_616:
	mov	292,r13		! source line 292
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=88  sizeInBytes=1
	mov	88,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	293,r13		! source line 293
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_617:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_615
! END FOR
_Label_618:
! FOR STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_628 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_630) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_631 = _temp_630 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_629 = *_temp_631  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_628  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-48]
_Label_624:
!   Perform the FOR-LOOP termination test
!   if i > _temp_629 then goto _Label_627		
	load	[r14+-48],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_627
_Label_625:
	mov	295,r13		! source line 295
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=45  sizeInBytes=1
	mov	45,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	296,r13		! source line 296
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_626:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_624
! END FOR
_Label_627:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	298,r13		! source line 298
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_9:
	.word	_sourceFileName
	.word	_Label_632
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_633
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_634
	.word	-12
	.word	4
	.word	_Label_635
	.word	-16
	.word	4
	.word	_Label_636
	.word	-20
	.word	4
	.word	_Label_637
	.word	-24
	.word	4
	.word	_Label_638
	.word	-28
	.word	4
	.word	_Label_639
	.word	-32
	.word	4
	.word	_Label_640
	.word	-36
	.word	4
	.word	_Label_641
	.word	-40
	.word	4
	.word	_Label_642
	.word	-44
	.word	4
	.word	_Label_643
	.word	-48
	.word	4
	.word	0
_Label_632:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printChairs\0"
	.align
_Label_633:
	.ascii	"Pself\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_643:
	.byte	'I'
	.ascii	"i\0"
	.align
