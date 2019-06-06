! Name of package being compiled: BitMap
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
! Externally visible functions in this package
	.export	_P_BitMap_TestBitMap
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from this package
	.export	_P_BitMap_BitMap
	.export	_Method_P_BitMap_BitMap_1
	.export	_Method_P_BitMap_BitMap_2
	.export	_Method_P_BitMap_BitMap_3
	.export	_Method_P_BitMap_BitMap_4
	.export	_Method_P_BitMap_BitMap_5
	.export	_Method_P_BitMap_BitMap_6
	.export	_Method_P_BitMap_BitMap_7
	.export	_Method_P_BitMap_BitMap_8
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.align
! String constants
_StringConst_18:
	.word	38			! length
	.ascii	"Within BitMap.IsBitSet: invalid bitNum"
	.align
_StringConst_17:
	.word	38			! length
	.ascii	"Within BitMap.ClearBit: invalid bitNum"
	.align
_StringConst_16:
	.word	36			! length
	.ascii	"Within BitMap.SetBit: invalid bitNum"
	.align
_StringConst_15:
	.word	1			! length
	.ascii	"0"
	.align
_StringConst_14:
	.word	1			! length
	.ascii	"1"
	.align
_StringConst_13:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_12:
	.word	7			! length
	.ascii	"BitMap:"
	.align
_StringConst_11:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_10:
	.word	35			! length
	.ascii	"BitMap with the following bits set:"
	.align
_StringConst_9:
	.word	48			! length
	.ascii	"In BitMap.Init, the numberOfBits is zero or less"
	.align
_StringConst_8:
	.word	15			! length
	.ascii	"number clear = "
	.align
_StringConst_7:
	.word	24			! length
	.ascii	"Set each of the bits...\n"
	.align
_StringConst_6:
	.word	15			! length
	.ascii	"number clear = "
	.align
_StringConst_5:
	.word	26			! length
	.ascii	"Clear each of the bits...\n"
	.align
_StringConst_4:
	.word	15			! length
	.ascii	"    returns... "
	.align
_StringConst_3:
	.word	4			! length
	.ascii	")..."
	.align
_StringConst_2:
	.word	23			! length
	.ascii	"Calling FindZeroAndSet("
	.align
_StringConst_1:
	.word	35			! length
	.ascii	"Running test of \'BitMap\' class....\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"BitMap.c\0"
_packageName:
	.ascii	"BitMap\0"
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
_CheckVersion_P_BitMap_:
	.export	_CheckVersion_P_BitMap_
	set	0xa596b1b5,r4		! myHashVal = -1516850763
	cmp	r3,r4
	be	_Label_19
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
_Label_19:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_20
_Label_20:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION TestBitMap  ===============
! 
_P_BitMap_TestBitMap:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_BitMap_TestBitMap,r1
	push	r1
	mov	41,r1
_Label_281:
	push	r0
	sub	r1,1,r1
	bne	_Label_281
	mov	143,r13		! source line 143
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! bm
!   NEW CLASS Constructor...
!   ZeroMemory: bm = zeros  (sizeInBytes=12)
	add	r14,-156,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   bm = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	store	r1,[r14+-156]
! CALL STATEMENT...
!   _temp_22 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_22  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	146,r13		! source line 146
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0SE",r10
!   _temp_23 = &bm
	add	r14,-156,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=12  value=40  sizeInBytes=4
	mov	40,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   _temp_24 = &bm
	add	r14,-156,r1
	store	r1,[r14+-132]
!   Send message Print2
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! FOR STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_29 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-128]
!   Calculate and save the FOR-LOOP ending value
!   _temp_30 = 40		(4 bytes)
	mov	40,r1
	store	r1,[r14+-124]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_29  (sizeInBytes=4)
	load	[r14+-128],r1
	store	r1,[r14+-160]
_Label_25:
!   Perform the FOR-LOOP termination test
!   if i > _temp_30 then goto _Label_28		
	load	[r14+-160],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_28
_Label_26:
	mov	150,r13		! source line 150
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_31 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_31  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	151,r13		! source line 151
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	151,r13		! source line 151
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_32 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_32  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	151,r13		! source line 151
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0AS",r10
	mov	152,r13		! source line 152
	mov	"\0\0SE",r10
!   _temp_33 = &bm
	add	r14,-156,r1
	store	r1,[r14+-112]
!   Send message FindZeroAndSet
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-164]
! CALL STATEMENT...
!   _temp_34 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_34  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	153,r13		! source line 153
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=j  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	154,r13		! source line 154
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	155,r13		! source line 155
	mov	"\0\0CA",r10
	call	_P_System_nl
! SEND STATEMENT...
	mov	156,r13		! source line 156
	mov	"\0\0SE",r10
!   _temp_35 = &bm
	add	r14,-156,r1
	store	r1,[r14+-104]
!   Send message Print2
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_27:
!   i = i + 1
	load	[r14+-160],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
	jmp	_Label_25
! END FOR
_Label_28:
! CALL STATEMENT...
!   _temp_36 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_36  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	159,r13		! source line 159
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_41 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   _temp_42 = 39		(4 bytes)
	mov	39,r1
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_41  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-160]
_Label_37:
!   Perform the FOR-LOOP termination test
!   if i > _temp_42 then goto _Label_40		
	load	[r14+-160],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_40
_Label_38:
	mov	160,r13		! source line 160
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0SE",r10
!   _temp_43 = &bm
	add	r14,-156,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0SE",r10
!   _temp_44 = &bm
	add	r14,-156,r1
	store	r1,[r14+-84]
!   Send message Print2
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_39:
!   i = i + 1
	load	[r14+-160],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
	jmp	_Label_37
! END FOR
_Label_40:
! CALL STATEMENT...
!   _temp_45 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_45  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0SE",r10
!   _temp_47 = &bm
	add	r14,-156,r1
	store	r1,[r14+-72]
!   Send message NumberOfClearBits
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_46  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_46  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_48 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_48  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_53 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_54 = 39		(4 bytes)
	mov	39,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_53  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-160]
_Label_49:
!   Perform the FOR-LOOP termination test
!   if i > _temp_54 then goto _Label_52		
	load	[r14+-160],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_52
_Label_50:
	mov	168,r13		! source line 168
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0SE",r10
!   _temp_55 = &bm
	add	r14,-156,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Send message SetBit
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	170,r13		! source line 170
	mov	"\0\0SE",r10
!   _temp_56 = &bm
	add	r14,-156,r1
	store	r1,[r14+-52]
!   Send message Print2
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   _temp_57 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_57  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	171,r13		! source line 171
	mov	"\0\0SE",r10
!   _temp_59 = &bm
	add	r14,-156,r1
	store	r1,[r14+-40]
!   Send message NumberOfClearBits
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_58  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_58  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_51:
!   i = i + 1
	load	[r14+-160],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
	jmp	_Label_49
! END FOR
_Label_52:
! SEND STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0SE",r10
!   _temp_60 = &bm
	add	r14,-156,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0SE",r10
!   _temp_61 = &bm
	add	r14,-156,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0SE",r10
!   _temp_62 = &bm
	add	r14,-156,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	177,r13		! source line 177
	mov	"\0\0SE",r10
!   _temp_63 = &bm
	add	r14,-156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	178,r13		! source line 178
	mov	"\0\0SE",r10
!   _temp_64 = &bm
	add	r14,-156,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=32  sizeInBytes=4
	mov	32,r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	179,r13		! source line 179
	mov	"\0\0SE",r10
!   _temp_65 = &bm
	add	r14,-156,r1
	store	r1,[r14+-16]
!   Send message Print2
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0SE",r10
!   _temp_66 = &bm
	add	r14,-156,r1
	store	r1,[r14+-12]
!   Send message Print
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0RE",r10
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_BitMap_TestBitMap:
	.word	_sourceFileName
	.word	_Label_67
	.word	0		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_68
	.word	-12
	.word	4
	.word	_Label_69
	.word	-16
	.word	4
	.word	_Label_70
	.word	-20
	.word	4
	.word	_Label_71
	.word	-24
	.word	4
	.word	_Label_72
	.word	-28
	.word	4
	.word	_Label_73
	.word	-32
	.word	4
	.word	_Label_74
	.word	-36
	.word	4
	.word	_Label_75
	.word	-40
	.word	4
	.word	_Label_76
	.word	-44
	.word	4
	.word	_Label_77
	.word	-48
	.word	4
	.word	_Label_78
	.word	-52
	.word	4
	.word	_Label_79
	.word	-56
	.word	4
	.word	_Label_80
	.word	-60
	.word	4
	.word	_Label_81
	.word	-64
	.word	4
	.word	_Label_82
	.word	-68
	.word	4
	.word	_Label_83
	.word	-72
	.word	4
	.word	_Label_84
	.word	-76
	.word	4
	.word	_Label_85
	.word	-80
	.word	4
	.word	_Label_86
	.word	-84
	.word	4
	.word	_Label_87
	.word	-88
	.word	4
	.word	_Label_88
	.word	-92
	.word	4
	.word	_Label_89
	.word	-96
	.word	4
	.word	_Label_90
	.word	-100
	.word	4
	.word	_Label_91
	.word	-104
	.word	4
	.word	_Label_92
	.word	-108
	.word	4
	.word	_Label_93
	.word	-112
	.word	4
	.word	_Label_94
	.word	-116
	.word	4
	.word	_Label_95
	.word	-120
	.word	4
	.word	_Label_96
	.word	-124
	.word	4
	.word	_Label_97
	.word	-128
	.word	4
	.word	_Label_98
	.word	-132
	.word	4
	.word	_Label_99
	.word	-136
	.word	4
	.word	_Label_100
	.word	-140
	.word	4
	.word	_Label_101
	.word	-144
	.word	4
	.word	_Label_102
	.word	-156
	.word	12
	.word	_Label_103
	.word	-160
	.word	4
	.word	_Label_104
	.word	-164
	.word	4
	.word	0
_Label_67:
	.ascii	"TestBitMap\0"
	.align
_Label_68:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_71:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_72:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_73:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_74:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_75:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_76:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_78:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_79:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_80:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_53\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_44\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_41\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_36\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_35\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_34\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_33\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_32\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_31\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_30\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_29\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_24\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_23\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_22\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_21\0"
	.align
_Label_102:
	.byte	'O'
	.ascii	"bm\0"
	.align
_Label_103:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_104:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  CLASS BitMap  ===============
! 
! Dispatch Table:
! 
_P_BitMap_BitMap:
	.word	_Label_105
	jmp	_Method_P_BitMap_BitMap_1	! 4:	Init
	jmp	_Method_P_BitMap_BitMap_5	! 8:	SetBit
	jmp	_Method_P_BitMap_BitMap_6	! 12:	ClearBit
	jmp	_Method_P_BitMap_BitMap_7	! 16:	IsBitSet
	jmp	_Method_P_BitMap_BitMap_2	! 20:	Print
	jmp	_Method_P_BitMap_BitMap_3	! 24:	Print2
	jmp	_Method_P_BitMap_BitMap_4	! 28:	NumberOfClearBits
	jmp	_Method_P_BitMap_BitMap_8	! 32:	FindZeroAndSet
	.word	0
! 
! Class descriptor:
! 
_Label_105:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_106
	.word	_sourceFileName
	.word	20		! line number
	.word	12		! size of instances, in bytes
	.word	_P_BitMap_BitMap
	.word	_P_System_Object
	.word	0
_Label_106:
	.ascii	"BitMap\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_BitMap_BitMap_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_BitMap_BitMap_1,r1
	push	r1
	mov	8,r1
_Label_282:
	push	r0
	sub	r1,1,r1
	bne	_Label_282
	mov	7,r13		! source line 7
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! numWords
!   _temp_107 = numberOfBits div 32		(int)
	load	[r14+12],r1
	mov	32,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   numWords = _temp_107 + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0IF",r10
!   if numberOfBits > 0 then goto _Label_109		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_109
!	jmp	_Label_108
_Label_108:
! THEN...
	mov	20,r13		! source line 20
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_110 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_110  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	20,r13		! source line 20
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_109:
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
!   numBits = numberOfBits		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   ALLOC ARRAY Constructor...
	mov	0,r1
	store	r1,[r14+-24]
!   Evaluate any count and value expressions...
!   _temp_111 = _temp_111 + numWords		(int)
	load	[r14+-24],r1
	load	[r14+-36],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Compute size in bytes and call alloc...
!   _temp_112 = _temp_111 * 4
	load	[r14+-24],r1
	mul	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   _temp_112 = _temp_112 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   arrayOfWords = alloc (_temp_112)
	load	[r14+-20],r1
	call	_heapAlloc
	load	[r14+8],r2
	store	r1,[r2+8]
!   Data Move: _temp_113 = arrayOfWords  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+8],r1
	store	r1,[r14+-16]
!   Data Move: *_temp_113 = _temp_111  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-16],r2
	store	r1,[r2]
!   _temp_113 = _temp_113 + 4
	load	[r14+-16],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Initialize many entries in a loop...
!   Data Move: _temp_114 = numWords  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-12]
!   if _temp_114 <= 0 then goto _runtimeErrorArrayCountNotPositive
	load	[r14+-12],r1
	cmp	r1,r0
	ble	_runtimeErrorArrayCountNotPositive
_Label_115:
!   Data Move: *_temp_113 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
!   _temp_113 = _temp_113 + 4
	load	[r14+-16],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   _temp_114 = _temp_114 + -1
	load	[r14+-12],r1
	add	r1,-1,r1
	store	r1,[r14+-12]
!   if intNotZero (_temp_114) then goto _Label_115
	load	[r14+-12],r1
	cmp	r1,r0
	bne	_Label_115
! RETURN STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_BitMap_BitMap_1:
	.word	_sourceFileName
	.word	_Label_116
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_117
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_118
	.word	12
	.word	4
	.word	_Label_119
	.word	-12
	.word	4
	.word	_Label_120
	.word	-16
	.word	4
	.word	_Label_121
	.word	-20
	.word	4
	.word	_Label_122
	.word	-24
	.word	4
	.word	_Label_123
	.word	-28
	.word	4
	.word	_Label_124
	.word	-32
	.word	4
	.word	_Label_125
	.word	-36
	.word	4
	.word	0
_Label_116:
	.ascii	"BitMap"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_117:
	.ascii	"Pself\0"
	.align
_Label_118:
	.byte	'I'
	.ascii	"numberOfBits\0"
	.align
_Label_119:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_120:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_121:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_122:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_123:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_125:
	.byte	'I'
	.ascii	"numWords\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_BitMap_BitMap_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_BitMap_BitMap_2,r1
	push	r1
	mov	8,r1
_Label_283:
	push	r0
	sub	r1,1,r1
	bne	_Label_283
	mov	26,r13		! source line 26
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_126 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_126  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	32,r13		! source line 32
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_131 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_132 = numBits - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_131  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-32]
_Label_127:
!   Perform the FOR-LOOP termination test
!   if i > _temp_132 then goto _Label_130		
	load	[r14+-32],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_130
_Label_128:
	mov	33,r13		! source line 33
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0IF",r10
	mov	34,r13		! source line 34
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_135) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message IsBitSet
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_133 else goto _Label_134
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_134
	jmp	_Label_133
_Label_133:
! THEN...
	mov	35,r13		! source line 35
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_136 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_136  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	35,r13		! source line 35
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	36,r13		! source line 36
	mov	"\0\0CE",r10
	call	printInt
! END IF...
_Label_134:
!   Increment the FOR-LOOP index variable and jump back
_Label_129:
!   i = i + 1
	load	[r14+-32],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
	jmp	_Label_127
! END FOR
_Label_130:
! CALL STATEMENT...
!   Call the function
	mov	39,r13		! source line 39
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_BitMap_BitMap_2:
	.word	_sourceFileName
	.word	_Label_137
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_138
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_139
	.word	-12
	.word	4
	.word	_Label_140
	.word	-16
	.word	4
	.word	_Label_141
	.word	-20
	.word	4
	.word	_Label_142
	.word	-24
	.word	4
	.word	_Label_143
	.word	-28
	.word	4
	.word	_Label_144
	.word	-32
	.word	4
	.word	0
_Label_137:
	.ascii	"BitMap"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_138:
	.ascii	"Pself\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_144:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print2  ===============
! 
_Method_P_BitMap_BitMap_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_BitMap_BitMap_3,r1
	push	r1
	mov	11,r1
_Label_284:
	push	r0
	sub	r1,1,r1
	bne	_Label_284
	mov	42,r13		! source line 42
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_145 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_145  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	48,r13		! source line 48
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_150 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_151 = numBits - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_150  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-44]
_Label_146:
!   Perform the FOR-LOOP termination test
!   if i > _temp_151 then goto _Label_149		
	load	[r14+-44],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_149
_Label_147:
	mov	49,r13		! source line 49
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0IF",r10
!   _temp_154 = i rem 8		(int)
	load	[r14+-44],r1
	mov	8,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_154) then goto _Label_152
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_152
	jmp	_Label_153
_Label_152:
! THEN...
	mov	51,r13		! source line 51
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_155 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_155  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	51,r13		! source line 51
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_153:
! IF STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0IF",r10
	mov	53,r13		! source line 53
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_158) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message IsBitSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_156 else goto _Label_157
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_157
	jmp	_Label_156
_Label_156:
! THEN...
	mov	54,r13		! source line 54
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_159 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_159  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	54,r13		! source line 54
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_160
_Label_157:
! ELSE...
	mov	56,r13		! source line 56
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_161 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_161  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	56,r13		! source line 56
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_160:
!   Increment the FOR-LOOP index variable and jump back
_Label_148:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_146
! END FOR
_Label_149:
! CALL STATEMENT...
!   Call the function
	mov	59,r13		! source line 59
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_BitMap_BitMap_3:
	.word	_sourceFileName
	.word	_Label_162
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_163
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_164
	.word	-12
	.word	4
	.word	_Label_165
	.word	-16
	.word	4
	.word	_Label_166
	.word	-20
	.word	4
	.word	_Label_167
	.word	-24
	.word	4
	.word	_Label_168
	.word	-28
	.word	4
	.word	_Label_169
	.word	-32
	.word	4
	.word	_Label_170
	.word	-36
	.word	4
	.word	_Label_171
	.word	-40
	.word	4
	.word	_Label_172
	.word	-44
	.word	4
	.word	0
_Label_162:
	.ascii	"BitMap"
	.ascii	"::"
	.ascii	"Print2\0"
	.align
_Label_163:
	.ascii	"Pself\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_159\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_172:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD NumberOfClearBits  ===============
! 
_Method_P_BitMap_BitMap_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_BitMap_BitMap_4,r1
	push	r1
	mov	8,r1
_Label_285:
	push	r0
	sub	r1,1,r1
	bne	_Label_285
	mov	62,r13		! source line 62
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   count = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
! FOR STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_177 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_178 = numBits - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_177  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-28]
_Label_173:
!   Perform the FOR-LOOP termination test
!   if i > _temp_178 then goto _Label_176		
	load	[r14+-28],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_176
_Label_174:
	mov	66,r13		! source line 66
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0IF",r10
	mov	67,r13		! source line 67
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_182) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message IsBitSet
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_181  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_181 then goto _Label_180 else goto _Label_179
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_179
	jmp	_Label_180
_Label_179:
! THEN...
	mov	68,r13		! source line 68
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! END IF...
_Label_180:
!   Increment the FOR-LOOP index variable and jump back
_Label_175:
!   i = i + 1
	load	[r14+-28],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
	jmp	_Label_173
! END FOR
_Label_176:
! RETURN STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0RE",r10
!   ReturnResult: count  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_BitMap_BitMap_4:
	.word	_sourceFileName
	.word	_Label_183
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_184
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_185
	.word	-16
	.word	4
	.word	_Label_186
	.word	-9
	.word	1
	.word	_Label_187
	.word	-20
	.word	4
	.word	_Label_188
	.word	-24
	.word	4
	.word	_Label_189
	.word	-28
	.word	4
	.word	_Label_190
	.word	-32
	.word	4
	.word	0
_Label_183:
	.ascii	"BitMap"
	.ascii	"::"
	.ascii	"NumberOfClearBits\0"
	.align
_Label_184:
	.ascii	"Pself\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_186:
	.byte	'C'
	.ascii	"_temp_181\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_177\0"
	.align
_Label_189:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_190:
	.byte	'I'
	.ascii	"count\0"
	.align
! 
! ===============  METHOD SetBit  ===============
! 
_Method_P_BitMap_BitMap_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_BitMap_BitMap_5,r1
	push	r1
	mov	9,r1
_Label_286:
	push	r0
	sub	r1,1,r1
	bne	_Label_286
	mov	74,r13		! source line 74
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0IF",r10
!   if bitNum >= 0 then goto _Label_193		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_193
	jmp	_Label_191
_Label_193:
!   if bitNum < numBits then goto _Label_192		(int)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_192
!	jmp	_Label_191
_Label_191:
! THEN...
	mov	79,r13		! source line 79
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_194 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_194  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	79,r13		! source line 79
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_192:
! ASSIGNMENT STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0AS",r10
!   word = bitNum div 32		(int)
	load	[r14+12],r1
	mov	32,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0AS",r10
!   if intIsZero (arrayOfWords) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of arrayOfWords [word ] into _temp_195
!     make sure index expr is >= 0
	load	[r14+-40],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1+8],r1
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
	store	r2,[r14+-32]
!   if intIsZero (arrayOfWords) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of arrayOfWords [word ] into _temp_198
!     make sure index expr is >= 0
	load	[r14+-40],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1+8],r1
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
	store	r2,[r14+-20]
!   Data Move: _temp_197 = *_temp_198  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_200 = bitNum rem 32		(int)
	load	[r14+12],r1
	mov	32,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   _temp_199 = 1 sll _temp_200		(int)
	mov	1,r1
	load	[r14+-12],r2
	sll	r1,r2,r1
	store	r1,[r14+-16]
!   _temp_196 = _temp_197 OR _temp_199		(int)
	load	[r14+-24],r1
	load	[r14+-16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_195 = _temp_196  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_BitMap_BitMap_5:
	.word	_sourceFileName
	.word	_Label_201
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_202
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_203
	.word	12
	.word	4
	.word	_Label_204
	.word	-12
	.word	4
	.word	_Label_205
	.word	-16
	.word	4
	.word	_Label_206
	.word	-20
	.word	4
	.word	_Label_207
	.word	-24
	.word	4
	.word	_Label_208
	.word	-28
	.word	4
	.word	_Label_209
	.word	-32
	.word	4
	.word	_Label_210
	.word	-36
	.word	4
	.word	_Label_211
	.word	-40
	.word	4
	.word	0
_Label_201:
	.ascii	"BitMap"
	.ascii	"::"
	.ascii	"SetBit\0"
	.align
_Label_202:
	.ascii	"Pself\0"
	.align
_Label_203:
	.byte	'I'
	.ascii	"bitNum\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_211:
	.byte	'I'
	.ascii	"word\0"
	.align
! 
! ===============  METHOD ClearBit  ===============
! 
_Method_P_BitMap_BitMap_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_BitMap_BitMap_6,r1
	push	r1
	mov	10,r1
_Label_287:
	push	r0
	sub	r1,1,r1
	bne	_Label_287
	mov	85,r13		! source line 85
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if bitNum >= 0 then goto _Label_214		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_214
	jmp	_Label_212
_Label_214:
!   if bitNum < numBits then goto _Label_213		(int)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_213
!	jmp	_Label_212
_Label_212:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_215 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_215  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	90,r13		! source line 90
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_213:
! ASSIGNMENT STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0AS",r10
!   word = bitNum div 32		(int)
	load	[r14+12],r1
	mov	32,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0AS",r10
!   if intIsZero (arrayOfWords) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of arrayOfWords [word ] into _temp_216
!     make sure index expr is >= 0
	load	[r14+-44],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1+8],r1
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
!   if intIsZero (arrayOfWords) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of arrayOfWords [word ] into _temp_219
!     make sure index expr is >= 0
	load	[r14+-44],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1+8],r1
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
	store	r2,[r14+-24]
!   Data Move: _temp_218 = *_temp_219  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_222 = bitNum rem 32		(int)
	load	[r14+12],r1
	mov	32,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   _temp_221 = 1 sll _temp_222		(int)
	mov	1,r1
	load	[r14+-12],r2
	sll	r1,r2,r1
	store	r1,[r14+-16]
!   _temp_220 = NOT _temp_221		(int)
	load	[r14+-16],r1
	not	r1
	store	r1,[r14+-20]
!   _temp_217 = _temp_218 AND _temp_220		(int)
	load	[r14+-28],r1
	load	[r14+-20],r2
	and	r1,r2,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_216 = _temp_217  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r14+-36],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_BitMap_BitMap_6:
	.word	_sourceFileName
	.word	_Label_223
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_224
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_225
	.word	12
	.word	4
	.word	_Label_226
	.word	-12
	.word	4
	.word	_Label_227
	.word	-16
	.word	4
	.word	_Label_228
	.word	-20
	.word	4
	.word	_Label_229
	.word	-24
	.word	4
	.word	_Label_230
	.word	-28
	.word	4
	.word	_Label_231
	.word	-32
	.word	4
	.word	_Label_232
	.word	-36
	.word	4
	.word	_Label_233
	.word	-40
	.word	4
	.word	_Label_234
	.word	-44
	.word	4
	.word	0
_Label_223:
	.ascii	"BitMap"
	.ascii	"::"
	.ascii	"ClearBit\0"
	.align
_Label_224:
	.ascii	"Pself\0"
	.align
_Label_225:
	.byte	'I'
	.ascii	"bitNum\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_234:
	.byte	'I'
	.ascii	"word\0"
	.align
! 
! ===============  METHOD IsBitSet  ===============
! 
_Method_P_BitMap_BitMap_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_BitMap_BitMap_7,r1
	push	r1
	mov	9,r1
_Label_288:
	push	r0
	sub	r1,1,r1
	bne	_Label_288
	mov	96,r13		! source line 96
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0IF",r10
!   if bitNum >= 0 then goto _Label_237		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_237
	jmp	_Label_235
_Label_237:
!   if bitNum < numBits then goto _Label_236		(int)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_236
!	jmp	_Label_235
_Label_235:
! THEN...
	mov	101,r13		! source line 101
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_238 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_238  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	101,r13		! source line 101
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_236:
! ASSIGNMENT STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0AS",r10
!   word = bitNum div 32		(int)
	load	[r14+12],r1
	mov	32,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0RE",r10
!   if intIsZero (arrayOfWords) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of arrayOfWords [word ] into _temp_243
!     make sure index expr is >= 0
	load	[r14+-40],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1+8],r1
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
	store	r2,[r14+-20]
!   Data Move: _temp_242 = *_temp_243  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_244 = bitNum rem 32		(int)
	load	[r14+12],r1
	mov	32,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   _temp_241 = _temp_242 sra _temp_244		(int)
	load	[r14+-24],r1
	load	[r14+-16],r2
	sra	r1,r2,r1
	store	r1,[r14+-28]
!   _temp_240 = _temp_241 AND 1		(int)
	load	[r14+-28],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_240) then goto _Label_245
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_245
!   _temp_239 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_246
_Label_245:
!   _temp_239 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_246:
!   ReturnResult: _temp_239  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_BitMap_BitMap_7:
	.word	_sourceFileName
	.word	_Label_247
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_248
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_249
	.word	12
	.word	4
	.word	_Label_250
	.word	-16
	.word	4
	.word	_Label_251
	.word	-20
	.word	4
	.word	_Label_252
	.word	-24
	.word	4
	.word	_Label_253
	.word	-28
	.word	4
	.word	_Label_254
	.word	-32
	.word	4
	.word	_Label_255
	.word	-9
	.word	1
	.word	_Label_256
	.word	-36
	.word	4
	.word	_Label_257
	.word	-40
	.word	4
	.word	0
_Label_247:
	.ascii	"BitMap"
	.ascii	"::"
	.ascii	"IsBitSet\0"
	.align
_Label_248:
	.ascii	"Pself\0"
	.align
_Label_249:
	.byte	'I'
	.ascii	"bitNum\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_255:
	.byte	'C'
	.ascii	"_temp_239\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_257:
	.byte	'I'
	.ascii	"word\0"
	.align
! 
! ===============  METHOD FindZeroAndSet  ===============
! 
_Method_P_BitMap_BitMap_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_BitMap_BitMap_8,r1
	push	r1
	mov	9,r1
_Label_289:
	push	r0
	sub	r1,1,r1
	bne	_Label_289
	mov	107,r13		! source line 107
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	119,r13		! source line 119
	mov	"\0\0WH",r10
_Label_258:
!   if intIsZero (arrayOfWords) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of arrayOfWords [i ] into _temp_262
!     make sure index expr is >= 0
	load	[r14+-32],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1+8],r1
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
	store	r2,[r14+-24]
!   Data Move: _temp_261 = *_temp_262  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_261 != -1 then goto _Label_260		(int)
	load	[r14+-28],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_260
!	jmp	_Label_259
_Label_259:
	mov	119,r13		! source line 119
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	120,r13		! source line 120
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! END WHILE...
	jmp	_Label_258
_Label_260:
! ASSIGNMENT STATEMENT...
	mov	123,r13		! source line 123
	mov	"\0\0AS",r10
!   if intIsZero (arrayOfWords) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of arrayOfWords [i ] into _temp_263
!     make sure index expr is >= 0
	load	[r14+-32],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+8],r1
	load	[r1+8],r1
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
	store	r2,[r14+-20]
!   Data Move: word = *_temp_263  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   i = i * 32		(int)
	load	[r14+-32],r1
	mov	32,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0WH",r10
_Label_264:
!   _temp_267 = word AND 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_267) then goto _Label_266
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_266
!	jmp	_Label_265
_Label_265:
	mov	125,r13		! source line 125
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
!   i = i + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0AS",r10
!   word = word sra 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	sra	r1,r2,r1
	store	r1,[r14+-36]
! END WHILE...
	jmp	_Label_264
_Label_266:
! IF STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0IF",r10
!   if i < numBits then goto _Label_269		(int)
	load	[r14+-32],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_269
!	jmp	_Label_268
_Label_268:
! THEN...
	mov	131,r13		! source line 131
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_270
_Label_269:
! ELSE...
	mov	133,r13		! source line 133
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_271) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message SetBit
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_270:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_BitMap_BitMap_8:
	.word	_sourceFileName
	.word	_Label_272
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_273
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_274
	.word	-12
	.word	4
	.word	_Label_275
	.word	-16
	.word	4
	.word	_Label_276
	.word	-20
	.word	4
	.word	_Label_277
	.word	-24
	.word	4
	.word	_Label_278
	.word	-28
	.word	4
	.word	_Label_279
	.word	-32
	.word	4
	.word	_Label_280
	.word	-36
	.word	4
	.word	0
_Label_272:
	.ascii	"BitMap"
	.ascii	"::"
	.ascii	"FindZeroAndSet\0"
	.align
_Label_273:
	.ascii	"Pself\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_279:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_280:
	.byte	'I'
	.ascii	"word\0"
	.align
