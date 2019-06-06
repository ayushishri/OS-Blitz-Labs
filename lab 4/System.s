! Name of package being compiled: System
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
	.export	_Error_P_System_UncaughtThrowError
_Error_P_System_UncaughtThrowError:
	.ascii	"_Error_P_System_UncaughtThrowError\0"
	.align
! Functions imported from other packages
! Externally visible functions in this package
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.export	_P_System_MemoryEqual
	.export	_P_System_StrEqual
	.export	_P_System_StrCopy
	.export	_P_System_StrCmp
	.export	_P_System_Min
	.export	_P_System_Max
	.export	_P_System_printIntVar
	.export	_P_System_printHexVar
	.export	_P_System_printBoolVar
	.export	_P_System_printCharVar
	.export	_P_System_printPtr
	.export	_P_System_nl
	.export	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.export	_P_System_KPLSystemInitialize
	.export	_P_System_KPLMemoryAlloc
	.export	_P_System_KPLMemoryFree
	.export	_P_System_KPLUncaughtThrow
	.export	_P_System_KPLIsKindOf
	.export	_P_System_KPLSystemError
! The following class and its methods are from this package
	.export	_P_System_Object
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
! Global variables in this package
	.data
	.export	_P_System_FatalError
_P_System_FatalError:
	.skip	4
_Global_memoryArea:
	.skip	500004
_Global_nextCharToUse:
	.word	0
_Global_alreadyInAlloc:
	.byte	0
	.align
! String constants
_StringConst_28:
	.word	2			! length
	.ascii	":\t"
	.align
_StringConst_27:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_26:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_25:
	.word	28			! length
	.ascii	"   Here is the CATCH STACK:\n"
	.align
_StringConst_24:
	.word	63			! length
	.ascii	"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n"
	.align
_StringConst_23:
	.word	41			! length
	.ascii	"   Currently active method or function = "
	.align
_StringConst_22:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_21:
	.word	31			! length
	.ascii	"   Location at time of THROW = "
	.align
_StringConst_20:
	.word	16			! length
	.ascii	"   Error Name = "
	.align
_StringConst_19:
	.word	64			! length
	.ascii	"\n\n++++++++++ An error has been thrown but not caught ++++++++++\n"
	.align
_StringConst_18:
	.word	36			! length
	.ascii	"WITHIN KPLIsKindOf: Bad Magic Number"
	.align
_StringConst_17:
	.word	34			! length
	.ascii	"WITHIN KPLIsKindOf: objPtr is NULL"
	.align
_StringConst_16:
	.word	27			! length
	.ascii	"\n\nFATAL KPL RUNTIME ERROR: "
	.align
_StringConst_15:
	.word	36			! length
	.ascii	"WITHIN KPLMemoryAlloc: Out of memory"
	.align
_StringConst_14:
	.word	49			! length
	.ascii	"WITHIN KPLMemoryAlloc: byte count is not positive"
	.align
_StringConst_13:
	.word	18			! length
	.ascii	"\n\nBad byteCount = "
	.align
_StringConst_12:
	.word	32			! length
	.ascii	"WITHIN KPLMemoryAlloc: Reentered"
	.align
_StringConst_11:
	.word	18			! length
	.ascii	"\" -- TERMINATING!\n"
	.align
_StringConst_10:
	.word	15			! length
	.ascii	"\nFATAL ERROR: \""
	.align
_StringConst_9:
	.word	59			! length
	.ascii	"\n\n--------------------------------------------------------\n"
	.align
_StringConst_8:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_7:
	.word	59			! length
	.ascii	"\n\n--------------------------------------------------------\n"
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
	.ascii	"System.c\0"
_packageName:
	.ascii	"System\0"
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
_CheckVersion_P_System_:
	.export	_CheckVersion_P_System_
	set	0x9e9d23b6,r4		! myHashVal = -1633868874
	cmp	r3,r4
	be	_Label_32
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
_Label_32:
	mov	0,r1
_Label_33:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION MemoryEqual  ===============
! 
_P_System_MemoryEqual:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_MemoryEqual,r1
	push	r1
	mov	4,r1
_Label_398:
	push	r0
	sub	r1,1,r1
	bne	_Label_398
	mov	12,r13		! source line 12
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_38 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_39 = len - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_38  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-24]
_Label_34:
!   Perform the FOR-LOOP termination test
!   if i > _temp_39 then goto _Label_37		
	load	[r14+-24],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_37
_Label_35:
	mov	17,r13		! source line 17
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_42 = *s1  (sizeInBytes=1)
	load	[r14+8],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_43 = *s2  (sizeInBytes=1)
	load	[r14+12],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_44 = _temp_42 XOR _temp_43		(bool)
	loadb	[r14+-11],r1
	loadb	[r14+-10],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_44 then goto _Label_40 else goto _Label_41
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_41
	jmp	_Label_40
_Label_40:
! THEN...
	mov	19,r13		! source line 19
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_41:
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   s1 = s1 + 1		(int)
	load	[r14+8],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
!   s2 = s2 + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_36:
!   i = i + 1
	load	[r14+-24],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
	jmp	_Label_34
! END FOR
_Label_37:
! RETURN STATEMENT...
	mov	24,r13		! source line 24
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
_RoutineDescriptor__P_System_MemoryEqual:
	.word	_sourceFileName
	.word	_Label_45
	.word	12		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_46
	.word	8
	.word	4
	.word	_Label_47
	.word	12
	.word	4
	.word	_Label_48
	.word	16
	.word	4
	.word	_Label_49
	.word	-9
	.word	1
	.word	_Label_50
	.word	-10
	.word	1
	.word	_Label_51
	.word	-11
	.word	1
	.word	_Label_52
	.word	-16
	.word	4
	.word	_Label_53
	.word	-20
	.word	4
	.word	_Label_54
	.word	-24
	.word	4
	.word	0
_Label_45:
	.ascii	"MemoryEqual\0"
	.align
_Label_46:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_47:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_48:
	.byte	'I'
	.ascii	"len\0"
	.align
_Label_49:
	.byte	'C'
	.ascii	"_temp_44\0"
	.align
_Label_50:
	.byte	'C'
	.ascii	"_temp_43\0"
	.align
_Label_51:
	.byte	'C'
	.ascii	"_temp_42\0"
	.align
_Label_52:
	.byte	'?'
	.ascii	"_temp_39\0"
	.align
_Label_53:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
_Label_54:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION StrEqual  ===============
! 
_P_System_StrEqual:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_StrEqual,r1
	push	r1
	mov	9,r1
_Label_399:
	push	r0
	sub	r1,1,r1
	bne	_Label_399
	mov	29,r13		! source line 29
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_57 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_58 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if _temp_57 == _temp_58 then goto _Label_56		(int)
	load	[r14+-40],r1
	load	[r14+-36],r2
	cmp	r1,r2
	be	_Label_56
!	jmp	_Label_55
_Label_55:
! THEN...
	mov	36,r13		! source line 36
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_56:
! FOR STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_63 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_65 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_64 = _temp_65 - 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_63  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-44]
_Label_59:
!   Perform the FOR-LOOP termination test
!   if i > _temp_64 then goto _Label_62		
	load	[r14+-44],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_62
_Label_60:
	mov	38,r13		! source line 38
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s1 [i ] into _temp_69
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
!   Data Move: _temp_68 = *_temp_69  (sizeInBytes=1)
	load	[r14+-20],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s2 [i ] into _temp_71
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
!   Data Move: _temp_70 = *_temp_71  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_72 = _temp_68 XOR _temp_70		(bool)
	loadb	[r14+-11],r1
	loadb	[r14+-10],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_72 then goto _Label_66 else goto _Label_67
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_67
	jmp	_Label_66
_Label_66:
! THEN...
	mov	40,r13		! source line 40
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	40,r13		! source line 40
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_67:
!   Increment the FOR-LOOP index variable and jump back
_Label_61:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_59
! END FOR
_Label_62:
! RETURN STATEMENT...
	mov	43,r13		! source line 43
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
_RoutineDescriptor__P_System_StrEqual:
	.word	_sourceFileName
	.word	_Label_73
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_74
	.word	8
	.word	4
	.word	_Label_75
	.word	12
	.word	4
	.word	_Label_76
	.word	-9
	.word	1
	.word	_Label_77
	.word	-16
	.word	4
	.word	_Label_78
	.word	-10
	.word	1
	.word	_Label_79
	.word	-20
	.word	4
	.word	_Label_80
	.word	-11
	.word	1
	.word	_Label_81
	.word	-24
	.word	4
	.word	_Label_82
	.word	-28
	.word	4
	.word	_Label_83
	.word	-32
	.word	4
	.word	_Label_84
	.word	-36
	.word	4
	.word	_Label_85
	.word	-40
	.word	4
	.word	_Label_86
	.word	-44
	.word	4
	.word	0
_Label_73:
	.ascii	"StrEqual\0"
	.align
_Label_74:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_75:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_76:
	.byte	'C'
	.ascii	"_temp_72\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_78:
	.byte	'C'
	.ascii	"_temp_70\0"
	.align
_Label_79:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_80:
	.byte	'C'
	.ascii	"_temp_68\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_86:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION StrCopy  ===============
! 
_P_System_StrCopy:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_StrCopy,r1
	push	r1
	mov	11,r1
_Label_400:
	push	r0
	sub	r1,1,r1
	bne	_Label_400
	mov	48,r13		! source line 48
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0AS",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_87 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_88 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_87  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_88  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Call the function
	mov	62,r13		! source line 62
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=sz  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! FOR STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_93 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_94 = sz - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_93  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-40]
_Label_89:
!   Perform the FOR-LOOP termination test
!   if i > _temp_94 then goto _Label_92		
	load	[r14+-40],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_92
_Label_90:
	mov	63,r13		! source line 63
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0AS",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s1 [i ] into _temp_95
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
!   Move address of s2 [i ] into _temp_97
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
!   Data Move: _temp_96 = *_temp_97  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_95 = _temp_96  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_91:
!   i = i + 1
	load	[r14+-40],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
	jmp	_Label_89
! END FOR
_Label_92:
! RETURN STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_StrCopy:
	.word	_sourceFileName
	.word	_Label_98
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_99
	.word	8
	.word	4
	.word	_Label_100
	.word	12
	.word	4
	.word	_Label_101
	.word	-16
	.word	4
	.word	_Label_102
	.word	-9
	.word	1
	.word	_Label_103
	.word	-20
	.word	4
	.word	_Label_104
	.word	-24
	.word	4
	.word	_Label_105
	.word	-28
	.word	4
	.word	_Label_106
	.word	-32
	.word	4
	.word	_Label_107
	.word	-36
	.word	4
	.word	_Label_108
	.word	-40
	.word	4
	.word	_Label_109
	.word	-44
	.word	4
	.word	0
_Label_98:
	.ascii	"StrCopy\0"
	.align
_Label_99:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_100:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_97\0"
	.align
_Label_102:
	.byte	'C'
	.ascii	"_temp_96\0"
	.align
_Label_103:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_104:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_105:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_106:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_108:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_109:
	.byte	'I'
	.ascii	"sz\0"
	.align
! 
! ===============  FUNCTION StrCmp  ===============
! 
_P_System_StrCmp:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_StrCmp,r1
	push	r1
	mov	21,r1
_Label_401:
	push	r0
	sub	r1,1,r1
	bne	_Label_401
	mov	70,r13		! source line 70
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! sz
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_110 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_111 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_110  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_111  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Call the function
	mov	79,r13		! source line 79
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=sz  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! FOR STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_116 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_117 = sz - 1		(int)
	load	[r14+-80],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_116  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-84]
_Label_112:
!   Perform the FOR-LOOP termination test
!   if i > _temp_117 then goto _Label_115		
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_115
_Label_113:
	mov	81,r13		! source line 81
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s1 [i ] into _temp_122
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
!   Data Move: _temp_121 = *_temp_122  (sizeInBytes=1)
	load	[r14+-56],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   _temp_120 = charToInt (_temp_121)
	loadb	[r14+-12],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-60]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s2 [i ] into _temp_125
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
!   Data Move: _temp_124 = *_temp_125  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   _temp_123 = charToInt (_temp_124)
	loadb	[r14+-11],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-52]
!   if _temp_120 >= _temp_123 then goto _Label_119		(int)
	load	[r14+-60],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_119
!	jmp	_Label_118
_Label_118:
! THEN...
	mov	83,r13		! source line 83
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_126
_Label_119:
! ELSE...
	mov	84,r13		! source line 84
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s1 [i ] into _temp_131
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
!   Data Move: _temp_130 = *_temp_131  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_129 = charToInt (_temp_130)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-44]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s2 [i ] into _temp_134
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
!   Data Move: _temp_133 = *_temp_134  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   _temp_132 = charToInt (_temp_133)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-36]
!   if _temp_129 <= _temp_132 then goto _Label_128		(int)
	load	[r14+-44],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_128
!	jmp	_Label_127
_Label_127:
! THEN...
	mov	85,r13		! source line 85
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_128:
! END IF...
_Label_126:
!   Increment the FOR-LOOP index variable and jump back
_Label_114:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_112
! END FOR
_Label_115:
! IF STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_137 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_138 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_137 >= _temp_138 then goto _Label_136		(int)
	load	[r14+-28],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_136
!	jmp	_Label_135
_Label_135:
! THEN...
	mov	89,r13		! source line 89
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_139
_Label_136:
! ELSE...
	mov	90,r13		! source line 90
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_142 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_143 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if _temp_142 <= _temp_143 then goto _Label_141		(int)
	load	[r14+-20],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_141
!	jmp	_Label_140
_Label_140:
! THEN...
	mov	91,r13		! source line 91
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_144
_Label_141:
! ELSE...
	mov	93,r13		! source line 93
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_144:
! END IF...
_Label_139:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_StrCmp:
	.word	_sourceFileName
	.word	_Label_145
	.word	8		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_146
	.word	8
	.word	4
	.word	_Label_147
	.word	12
	.word	4
	.word	_Label_148
	.word	-16
	.word	4
	.word	_Label_149
	.word	-20
	.word	4
	.word	_Label_150
	.word	-24
	.word	4
	.word	_Label_151
	.word	-28
	.word	4
	.word	_Label_152
	.word	-32
	.word	4
	.word	_Label_153
	.word	-9
	.word	1
	.word	_Label_154
	.word	-36
	.word	4
	.word	_Label_155
	.word	-40
	.word	4
	.word	_Label_156
	.word	-10
	.word	1
	.word	_Label_157
	.word	-44
	.word	4
	.word	_Label_158
	.word	-48
	.word	4
	.word	_Label_159
	.word	-11
	.word	1
	.word	_Label_160
	.word	-52
	.word	4
	.word	_Label_161
	.word	-56
	.word	4
	.word	_Label_162
	.word	-12
	.word	1
	.word	_Label_163
	.word	-60
	.word	4
	.word	_Label_164
	.word	-64
	.word	4
	.word	_Label_165
	.word	-68
	.word	4
	.word	_Label_166
	.word	-72
	.word	4
	.word	_Label_167
	.word	-76
	.word	4
	.word	_Label_168
	.word	-80
	.word	4
	.word	_Label_169
	.word	-84
	.word	4
	.word	0
_Label_145:
	.ascii	"StrCmp\0"
	.align
_Label_146:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_147:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_153:
	.byte	'C'
	.ascii	"_temp_133\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_156:
	.byte	'C'
	.ascii	"_temp_130\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_125\0"
	.align
_Label_159:
	.byte	'C'
	.ascii	"_temp_124\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_162:
	.byte	'C'
	.ascii	"_temp_121\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_168:
	.byte	'I'
	.ascii	"sz\0"
	.align
_Label_169:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Min  ===============
! 
_P_System_Min:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_Min,r1
	push	r1
	mov	99,r13		! source line 99
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0IF",r10
!   if i >= j then goto _Label_171		(int)
	load	[r14+8],r1
	load	[r14+12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_171
!	jmp	_Label_170
_Label_170:
! THEN...
	mov	104,r13		! source line 104
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+8],r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_172
_Label_171:
! ELSE...
	mov	106,r13		! source line 106
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0RE",r10
!   ReturnResult: j  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_172:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_Min:
	.word	_sourceFileName
	.word	_Label_173
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_174
	.word	8
	.word	4
	.word	_Label_175
	.word	12
	.word	4
	.word	0
_Label_173:
	.ascii	"Min\0"
	.align
_Label_174:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_175:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  FUNCTION Max  ===============
! 
_P_System_Max:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_Max,r1
	push	r1
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0IF",r10
!   if i <= j then goto _Label_177		(int)
	load	[r14+8],r1
	load	[r14+12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_177
!	jmp	_Label_176
_Label_176:
! THEN...
	mov	117,r13		! source line 117
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+8],r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_178
_Label_177:
! ELSE...
	mov	119,r13		! source line 119
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	119,r13		! source line 119
	mov	"\0\0RE",r10
!   ReturnResult: j  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_178:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_Max:
	.word	_sourceFileName
	.word	_Label_179
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_180
	.word	8
	.word	4
	.word	_Label_181
	.word	12
	.word	4
	.word	0
_Label_179:
	.ascii	"Max\0"
	.align
_Label_180:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_181:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  FUNCTION printIntVar  ===============
! 
_P_System_printIntVar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_printIntVar,r1
	push	r1
	mov	2,r1
_Label_402:
	push	r0
	sub	r1,1,r1
	bne	_Label_402
	mov	125,r13		! source line 125
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=s  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	133,r13		! source line 133
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_182 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_182  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	134,r13		! source line 134
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	135,r13		! source line 135
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	136,r13		! source line 136
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_printIntVar:
	.word	_sourceFileName
	.word	_Label_183
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_184
	.word	8
	.word	4
	.word	_Label_185
	.word	12
	.word	4
	.word	_Label_186
	.word	-12
	.word	4
	.word	0
_Label_183:
	.ascii	"printIntVar\0"
	.align
_Label_184:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_185:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
! 
! ===============  FUNCTION printHexVar  ===============
! 
_P_System_printHexVar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_printHexVar,r1
	push	r1
	mov	2,r1
_Label_403:
	push	r0
	sub	r1,1,r1
	bne	_Label_403
	mov	141,r13		! source line 141
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=s  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	149,r13		! source line 149
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_187 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_187  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	150,r13		! source line 150
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	151,r13		! source line 151
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	152,r13		! source line 152
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_printHexVar:
	.word	_sourceFileName
	.word	_Label_188
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_189
	.word	8
	.word	4
	.word	_Label_190
	.word	12
	.word	4
	.word	_Label_191
	.word	-12
	.word	4
	.word	0
_Label_188:
	.ascii	"printHexVar\0"
	.align
_Label_189:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_190:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
! 
! ===============  FUNCTION printBoolVar  ===============
! 
_P_System_printBoolVar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_printBoolVar,r1
	push	r1
	mov	2,r1
_Label_404:
	push	r0
	sub	r1,1,r1
	bne	_Label_404
	mov	157,r13		! source line 157
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=s  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_192 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_192  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=b  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_printBoolVar:
	.word	_sourceFileName
	.word	_Label_193
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_194
	.word	8
	.word	4
	.word	_Label_195
	.word	12
	.word	1
	.word	_Label_196
	.word	-12
	.word	4
	.word	0
_Label_193:
	.ascii	"printBoolVar\0"
	.align
_Label_194:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_195:
	.byte	'B'
	.ascii	"b\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
! 
! ===============  FUNCTION printCharVar  ===============
! 
_P_System_printCharVar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_printCharVar,r1
	push	r1
	mov	3,r1
_Label_405:
	push	r0
	sub	r1,1,r1
	bne	_Label_405
	mov	173,r13		! source line 173
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=s  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	181,r13		! source line 181
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_197 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_197  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	182,r13		! source line 182
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=c  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	183,r13		! source line 183
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_198 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_198  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	184,r13		! source line 184
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_printCharVar:
	.word	_sourceFileName
	.word	_Label_199
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_200
	.word	8
	.word	4
	.word	_Label_201
	.word	12
	.word	1
	.word	_Label_202
	.word	-12
	.word	4
	.word	_Label_203
	.word	-16
	.word	4
	.word	0
_Label_199:
	.ascii	"printCharVar\0"
	.align
_Label_200:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_201:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
! 
! ===============  FUNCTION printPtr  ===============
! 
_P_System_printPtr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_printPtr,r1
	push	r1
	mov	3,r1
_Label_406:
	push	r0
	sub	r1,1,r1
	bne	_Label_406
	mov	189,r13		! source line 189
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=s  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	197,r13		! source line 197
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_204 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_204  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	198,r13		! source line 198
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_205 = p		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_205  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	200,r13		! source line 200
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	200,r13		! source line 200
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_printPtr:
	.word	_sourceFileName
	.word	_Label_206
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_207
	.word	8
	.word	4
	.word	_Label_208
	.word	12
	.word	4
	.word	_Label_209
	.word	-12
	.word	4
	.word	_Label_210
	.word	-16
	.word	4
	.word	0
_Label_206:
	.ascii	"printPtr\0"
	.align
_Label_207:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_208:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
! 
! ===============  FUNCTION nl  ===============
! 
_P_System_nl:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_nl,r1
	push	r1
	mov	1,r1
_Label_407:
	push	r0
	sub	r1,1,r1
	bne	_Label_407
	mov	205,r13		! source line 205
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=10  sizeInBytes=1
	mov	10,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	206,r13		! source line 206
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_nl:
	.word	_sourceFileName
	.word	_Label_211
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_211:
	.ascii	"nl\0"
	.align
! 
! ===============  FUNCTION printNullTerminatedString  ===============
! 
_function_31_printNullTerminatedString:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_31_printNullTerminatedString,r1
	push	r1
	mov	2,r1
_Label_408:
	push	r0
	sub	r1,1,r1
	bne	_Label_408
	mov	211,r13		! source line 211
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0WH",r10
_Label_212:
!	jmp	_Label_213
_Label_213:
	mov	217,r13		! source line 217
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	218,r13		! source line 218
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
	mov	219,r13		! source line 219
	mov	"\0\0IF",r10
!   _temp_217 = ch XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_217 then goto _Label_216 else goto _Label_215
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_215
	jmp	_Label_216
_Label_215:
! THEN...
	mov	220,r13		! source line 220
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	220,r13		! source line 220
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_216:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ch  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	222,r13		! source line 222
	mov	"\0\0CE",r10
	call	printChar
! ASSIGNMENT STATEMENT...
	mov	223,r13		! source line 223
	mov	"\0\0AS",r10
!   p = p + 1		(int)
	load	[r14+8],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! END WHILE...
	jmp	_Label_212
_Label_214:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_31_printNullTerminatedString:
	.word	_sourceFileName
	.word	_Label_218
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_219
	.word	8
	.word	4
	.word	_Label_220
	.word	-9
	.word	1
	.word	_Label_221
	.word	-10
	.word	1
	.word	0
_Label_218:
	.ascii	"printNullTerminatedString\0"
	.align
_Label_219:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_220:
	.byte	'C'
	.ascii	"_temp_217\0"
	.align
_Label_221:
	.byte	'C'
	.ascii	"ch\0"
	.align
! 
! ===============  FUNCTION PrintMemory  ===============
! 
_P_System_PrintMemory:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_PrintMemory,r1
	push	r1
	mov	13,r1
_Label_409:
	push	r0
	sub	r1,1,r1
	bne	_Label_409
	mov	229,r13		! source line 229
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   _temp_222 = startingAddr div 32		(int)
	load	[r14+8],r1
	mov	32,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   charPtr = _temp_222 * 32		(int)
	load	[r14+-48],r1
	mov	32,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! FOR STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_227 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_228 = numBytes + 31		(int)
	load	[r14+12],r1
	mov	31,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_227  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_223:
!   Perform the FOR-LOOP termination test
!   if i > _temp_228 then goto _Label_226		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_226
_Label_224:
	mov	237,r13		! source line 237
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0IF",r10
!   _temp_231 = i rem 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_231) then goto _Label_229
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_229
	jmp	_Label_230
_Label_229:
! THEN...
	mov	240,r13		! source line 240
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_232 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_232  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_230:
! IF STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0IF",r10
!   _temp_235 = i rem 32		(int)
	load	[r14+-52],r1
	mov	32,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_235) then goto _Label_233
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_233
	jmp	_Label_234
_Label_233:
! THEN...
	mov	243,r13		! source line 243
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	243,r13		! source line 243
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_236 = charPtr		(4 bytes)
	load	[r14+-56],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_237 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_237  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_234:
! CALL STATEMENT...
!   if intIsZero (charPtr) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_238 = *charPtr  (sizeInBytes=1)
	load	[r14+-56],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Prepare Argument: offset=8  value=_temp_238  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	250,r13		! source line 250
	mov	"\0\0CE",r10
	call	printChar
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   charPtr = charPtr + 1		(int)
	load	[r14+-56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   Increment the FOR-LOOP index variable and jump back
_Label_225:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_223
! END FOR
_Label_226:
! CALL STATEMENT...
!   _temp_239 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	253,r13		! source line 253
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_PrintMemory:
	.word	_sourceFileName
	.word	_Label_240
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_241
	.word	8
	.word	4
	.word	_Label_242
	.word	12
	.word	4
	.word	_Label_243
	.word	-16
	.word	4
	.word	_Label_244
	.word	-9
	.word	1
	.word	_Label_245
	.word	-20
	.word	4
	.word	_Label_246
	.word	-24
	.word	4
	.word	_Label_247
	.word	-28
	.word	4
	.word	_Label_248
	.word	-32
	.word	4
	.word	_Label_249
	.word	-36
	.word	4
	.word	_Label_250
	.word	-40
	.word	4
	.word	_Label_251
	.word	-44
	.word	4
	.word	_Label_252
	.word	-48
	.word	4
	.word	_Label_253
	.word	-52
	.word	4
	.word	_Label_254
	.word	-56
	.word	4
	.word	0
_Label_240:
	.ascii	"PrintMemory\0"
	.align
_Label_241:
	.byte	'I'
	.ascii	"startingAddr\0"
	.align
_Label_242:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_244:
	.byte	'C'
	.ascii	"_temp_238\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_253:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_254:
	.byte	'P'
	.ascii	"charPtr\0"
	.align
! 
! ===============  FUNCTION KPLSystemInitialize  ===============
! 
_P_System_KPLSystemInitialize:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_KPLSystemInitialize,r1
	push	r1
	mov	6,r1
_Label_410:
	push	r0
	sub	r1,1,r1
	bne	_Label_410
	mov	279,r13		! source line 279
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! p
!   p = &_Global_memoryArea
	set	_Global_memoryArea,r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0AS",r10
!   _P_System_FatalError = _function_30_FatalError_SimpleVersion
	set	_function_30_FatalError_SimpleVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = 500000  (sizeInBytes=4)
	set	500000,r1
	load	[r14+-28],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_259 = p + 4		(int)
	load	[r14+-28],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_262 = p + 4		(int)
	load	[r14+-28],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   _temp_261 = _temp_262 + 500000		(int)
	load	[r14+-12],r1
	set	500000,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   _temp_260 = _temp_261 - 1		(int)
	load	[r14+-16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: p2 = _temp_259  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-32]
_Label_255:
!   Perform the FOR-LOOP termination test
!   if p2 > _temp_260 then goto _Label_258		
	load	[r14+-32],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_258
_Label_256:
	mov	294,r13		! source line 294
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   if intIsZero (p2) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p2 = 1212498256  (sizeInBytes=4)
	set	1212498256,r1
	load	[r14+-32],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_257:
!   p2 = p2 + 100
	load	[r14+-32],r1
	add	r1,100,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
	jmp	_Label_255
! END FOR
_Label_258:
! RETURN STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_KPLSystemInitialize:
	.word	_sourceFileName
	.word	_Label_263
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_264
	.word	-12
	.word	4
	.word	_Label_265
	.word	-16
	.word	4
	.word	_Label_266
	.word	-20
	.word	4
	.word	_Label_267
	.word	-24
	.word	4
	.word	_Label_268
	.word	-28
	.word	4
	.word	_Label_269
	.word	-32
	.word	4
	.word	0
_Label_263:
	.ascii	"KPLSystemInitialize\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_268:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_269:
	.byte	'P'
	.ascii	"p2\0"
	.align
! 
! ===============  FUNCTION FatalError_SimpleVersion  ===============
! 
_function_30_FatalError_SimpleVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_30_FatalError_SimpleVersion,r1
	push	r1
	mov	3,r1
_Label_411:
	push	r0
	sub	r1,1,r1
	bne	_Label_411
	mov	301,r13		! source line 301
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_270 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_270  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	302,r13		! source line 302
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_271 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_271  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	304,r13		! source line 304
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	305,r13		! source line 305
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_30_FatalError_SimpleVersion:
	.word	_sourceFileName
	.word	_Label_272
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_273
	.word	8
	.word	4
	.word	_Label_274
	.word	-12
	.word	4
	.word	_Label_275
	.word	-16
	.word	4
	.word	0
_Label_272:
	.ascii	"FatalError_SimpleVersion\0"
	.align
_Label_273:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
! 
! ===============  FUNCTION KPLMemoryAlloc  ===============
! 
_P_System_KPLMemoryAlloc:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_KPLMemoryAlloc,r1
	push	r1
	mov	13,r1
_Label_412:
	push	r0
	sub	r1,1,r1
	bne	_Label_412
	mov	310,r13		! source line 310
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0IF",r10
!   if _Global_alreadyInAlloc then goto _Label_276 else goto _Label_277
	set	_Global_alreadyInAlloc,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_277
	jmp	_Label_276
_Label_276:
! THEN...
	mov	329,r13		! source line 329
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_278 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_278  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	329,r13		! source line 329
	mov	"\0\0CA",r10
	call	_P_System_KPLSystemError
! END IF...
_Label_277:
! ASSIGNMENT STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0AS",r10
!   _Global_alreadyInAlloc = 1		(1 byte)
	mov	1,r1
	set	_Global_alreadyInAlloc,r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0AS",r10
!   i = _Global_nextCharToUse		(4 bytes)
	set	_Global_nextCharToUse,r1
	load	[r1],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0IF",r10
!   if byteCount > 0 then goto _Label_280		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_280
!	jmp	_Label_279
_Label_279:
! THEN...
	mov	335,r13		! source line 335
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_281 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	335,r13		! source line 335
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=byteCount  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_282 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	337,r13		! source line 337
	mov	"\0\0CA",r10
	call	_P_System_KPLSystemError
! END IF...
_Label_280:
! ASSIGNMENT STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0AS",r10
!   byteCount = byteCount + 4		(int)
	load	[r14+8],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! IF STATEMENT...
	mov	344,r13		! source line 344
	mov	"\0\0IF",r10
!   _temp_285 = byteCount rem 8		(int)
	load	[r14+8],r1
	mov	8,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if _temp_285 <= 0 then goto _Label_284		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_284
!	jmp	_Label_283
_Label_283:
! THEN...
	mov	345,r13		! source line 345
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0AS",r10
!   _temp_287 = byteCount div 8		(int)
	load	[r14+8],r1
	mov	8,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   _temp_286 = _temp_287 + 1		(int)
	load	[r14+-28],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   byteCount = _temp_286 * 8		(int)
	load	[r14+-32],r1
	mov	8,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! END IF...
_Label_284:
! ASSIGNMENT STATEMENT...
	mov	359,r13		! source line 359
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
	mov	360,r13		! source line 360
	mov	"\0\0IF",r10
!   if _Global_nextCharToUse <= 500000 then goto _Label_289		(int)
	set	_Global_nextCharToUse,r1
	load	[r1],r1
	set	500000,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_289
!	jmp	_Label_288
_Label_288:
! THEN...
	mov	361,r13		! source line 361
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_290 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	361,r13		! source line 361
	mov	"\0\0CA",r10
	call	_P_System_KPLSystemError
! END IF...
_Label_289:
! ASSIGNMENT STATEMENT...
	mov	363,r13		! source line 363
	mov	"\0\0AS",r10
!   _temp_291 = &_Global_memoryArea
	set	_Global_memoryArea,r1
	store	r1,[r14+-20]
!   Move address of _temp_291 [i ] into _temp_292
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
!   p = _temp_292		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	364,r13		! source line 364
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
	mov	366,r13		! source line 366
	mov	"\0\0AS",r10
!   _Global_alreadyInAlloc = 0		(1 byte)
	mov	0,r1
	set	_Global_alreadyInAlloc,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0RE",r10
!   _temp_293 = p + 4		(int)
	load	[r14+-56],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   ReturnResult: _temp_293  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_KPLMemoryAlloc:
	.word	_sourceFileName
	.word	_Label_294
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_295
	.word	8
	.word	4
	.word	_Label_296
	.word	-12
	.word	4
	.word	_Label_297
	.word	-16
	.word	4
	.word	_Label_298
	.word	-20
	.word	4
	.word	_Label_299
	.word	-24
	.word	4
	.word	_Label_300
	.word	-28
	.word	4
	.word	_Label_301
	.word	-32
	.word	4
	.word	_Label_302
	.word	-36
	.word	4
	.word	_Label_303
	.word	-40
	.word	4
	.word	_Label_304
	.word	-44
	.word	4
	.word	_Label_305
	.word	-48
	.word	4
	.word	_Label_306
	.word	-52
	.word	4
	.word	_Label_307
	.word	-56
	.word	4
	.word	0
_Label_294:
	.ascii	"KPLMemoryAlloc\0"
	.align
_Label_295:
	.byte	'I'
	.ascii	"byteCount\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_306:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_307:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  FUNCTION KPLMemoryFree  ===============
! 
_P_System_KPLMemoryFree:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_KPLMemoryFree,r1
	push	r1
	mov	374,r13		! source line 374
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_KPLMemoryFree:
	.word	_sourceFileName
	.word	_Label_308
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_309
	.word	8
	.word	4
	.word	0
_Label_308:
	.ascii	"KPLMemoryFree\0"
	.align
_Label_309:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  FUNCTION KPLSystemError  ===============
! 
_P_System_KPLSystemError:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_KPLSystemError,r1
	push	r1
	mov	2,r1
_Label_413:
	push	r0
	sub	r1,1,r1
	bne	_Label_413
	mov	388,r13		! source line 388
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_310 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=message  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	396,r13		! source line 396
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_KPLSystemError:
	.word	_sourceFileName
	.word	_Label_311
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_312
	.word	8
	.word	4
	.word	_Label_313
	.word	-12
	.word	4
	.word	0
_Label_311:
	.ascii	"KPLSystemError\0"
	.align
_Label_312:
	.byte	'P'
	.ascii	"message\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
! 
! ===============  FUNCTION KPLIsKindOf  ===============
! 
_P_System_KPLIsKindOf:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_KPLIsKindOf,r1
	push	r1
	mov	13,r1
_Label_414:
	push	r0
	sub	r1,1,r1
	bne	_Label_414
	mov	453,r13		! source line 453
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0IF",r10
!   if intIsZero (objPtr) then goto _Label_314
	load	[r14+8],r1
	cmp	r1,r0
	be	_Label_314
	jmp	_Label_315
_Label_314:
! THEN...
	mov	468,r13		! source line 468
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_316 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_316  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	468,r13		! source line 468
	mov	"\0\0CA",r10
	call	_P_System_KPLSystemError
! END IF...
_Label_315:
! ASSIGNMENT STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0AS",r10
!   if intIsZero (objPtr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_317 = objPtr + 0
	load	[r14+8],r1
	add	r1,0,r1
	store	r1,[r14+-40]
!   Data Move: dispTable = *_temp_317  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0IF",r10
!   if intIsZero (dispTable) then goto _Label_318
	load	[r14+-48],r1
	cmp	r1,r0
	be	_Label_318
	jmp	_Label_319
_Label_318:
! THEN...
	mov	474,r13		! source line 474
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_319:
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   if intIsZero (dispTable) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_320 = dispTable + 0
	load	[r14+-48],r1
	add	r1,0,r1
	store	r1,[r14+-36]
!   Data Move: classDesc = *_temp_320  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0IF",r10
!   if intIsZero (classDesc) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_324 = classDesc + 0
	load	[r14+-52],r1
	add	r1,0,r1
	store	r1,[r14+-28]
!   Data Move: _temp_323 = *_temp_324  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_323 == 1129070931 then goto _Label_322		(int)
	load	[r14+-32],r1
	set	1129070931,r2
	cmp	r1,r2
	be	_Label_322
!	jmp	_Label_321
_Label_321:
! THEN...
	mov	481,r13		! source line 481
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_325 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	481,r13		! source line 481
	mov	"\0\0CA",r10
	call	_P_System_KPLSystemError
! END IF...
_Label_322:
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   if intIsZero (classDesc) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_326 = classDesc + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   next = _temp_326		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-56]
! WHILE STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0WH",r10
_Label_327:
!	jmp	_Label_328
_Label_328:
	mov	486,r13		! source line 486
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0IF",r10
!   if intIsZero (next) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_332 = *next  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_332) then goto _Label_330
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_330
	jmp	_Label_331
_Label_330:
! THEN...
	mov	488,r13		! source line 488
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_333
_Label_331:
! ELSE...
	mov	489,r13		! source line 489
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0IF",r10
!   if intIsZero (next) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_336 = *next  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-12]
!   if _temp_336 != typeDesc then goto _Label_335		(int)
	load	[r14+-12],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_335
!	jmp	_Label_334
_Label_334:
! THEN...
	mov	490,r13		! source line 490
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_335:
! END IF...
_Label_333:
! ASSIGNMENT STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0AS",r10
!   next = next + 4		(int)
	load	[r14+-56],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! END WHILE...
	jmp	_Label_327
_Label_329:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_KPLIsKindOf:
	.word	_sourceFileName
	.word	_Label_337
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_338
	.word	8
	.word	4
	.word	_Label_339
	.word	12
	.word	4
	.word	_Label_340
	.word	-12
	.word	4
	.word	_Label_341
	.word	-16
	.word	4
	.word	_Label_342
	.word	-20
	.word	4
	.word	_Label_343
	.word	-24
	.word	4
	.word	_Label_344
	.word	-28
	.word	4
	.word	_Label_345
	.word	-32
	.word	4
	.word	_Label_346
	.word	-36
	.word	4
	.word	_Label_347
	.word	-40
	.word	4
	.word	_Label_348
	.word	-44
	.word	4
	.word	_Label_349
	.word	-48
	.word	4
	.word	_Label_350
	.word	-52
	.word	4
	.word	_Label_351
	.word	-56
	.word	4
	.word	0
_Label_337:
	.ascii	"KPLIsKindOf\0"
	.align
_Label_338:
	.byte	'P'
	.ascii	"objPtr\0"
	.align
_Label_339:
	.byte	'P'
	.ascii	"typeDesc\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_349:
	.byte	'P'
	.ascii	"dispTable\0"
	.align
_Label_350:
	.byte	'P'
	.ascii	"classDesc\0"
	.align
_Label_351:
	.byte	'P'
	.ascii	"next\0"
	.align
! 
! ===============  FUNCTION KPLUncaughtThrow  ===============
! 
_P_System_KPLUncaughtThrow:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_KPLUncaughtThrow,r1
	push	r1
	mov	10,r1
_Label_415:
	push	r0
	sub	r1,1,r1
	bne	_Label_415
	mov	498,r13		! source line 498
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_352 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	509,r13		! source line 509
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_353 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	510,r13		! source line 510
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	511,r13		! source line 511
	mov	"\0\0CA",r10
	call	_function_31_printNullTerminatedString
! CALL STATEMENT...
!   Call the function
	mov	512,r13		! source line 512
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_354 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	513,r13		! source line 513
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	514,r13		! source line 514
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
	mov	515,r13		! source line 515
	mov	"\0\0CA",r10
	call	_function_31_printNullTerminatedString
! CALL STATEMENT...
!   _temp_355 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	516,r13		! source line 516
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=line  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	517,r13		! source line 517
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	518,r13		! source line 518
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_356 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	519,r13		! source line 519
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0AS",r10
!   rPtr = rPtr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
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
	mov	522,r13		! source line 522
	mov	"\0\0CA",r10
	call	_function_31_printNullTerminatedString
! CALL STATEMENT...
!   Call the function
	mov	523,r13		! source line 523
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Call the function
	mov	524,r13		! source line 524
	mov	"\0\0CA",r10
	call	_function_29_printCatchStack
! CALL STATEMENT...
!   _temp_357 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CE",r10
	call	print
! THROW STATEMENT...
	mov	526,r13		! source line 526
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
	set	_Error_P_System_UncaughtThrowError,r4
	jmp	_PerformThrow
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_KPLUncaughtThrow:
	.word	_sourceFileName
	.word	_Label_358
	.word	12		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_359
	.word	8
	.word	4
	.word	_Label_360
	.word	12
	.word	4
	.word	_Label_361
	.word	16
	.word	4
	.word	_Label_362
	.word	-12
	.word	4
	.word	_Label_363
	.word	-16
	.word	4
	.word	_Label_364
	.word	-20
	.word	4
	.word	_Label_365
	.word	-24
	.word	4
	.word	_Label_366
	.word	-28
	.word	4
	.word	_Label_367
	.word	-32
	.word	4
	.word	_Label_368
	.word	-36
	.word	4
	.word	0
_Label_358:
	.ascii	"KPLUncaughtThrow\0"
	.align
_Label_359:
	.byte	'P'
	.ascii	"errorID\0"
	.align
_Label_360:
	.byte	'I'
	.ascii	"line\0"
	.align
_Label_361:
	.byte	'I'
	.ascii	"rPtr\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_368:
	.byte	'P'
	.ascii	"charPtr\0"
	.align
! 
! ===============  FUNCTION printCatchStack  ===============
! 
_function_29_printCatchStack:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_29_printCatchStack,r1
	push	r1
	mov	13,r1
_Label_416:
	push	r0
	sub	r1,1,r1
	bne	_Label_416
	mov	531,r13		! source line 531
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! p
!   Call the function
	mov	544,r13		! source line 544
	mov	"\0\0CE",r10
	call	getCatchStack
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_369 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	545,r13		! source line 545
	mov	"\0\0CE",r10
	call	print
! WHILE STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0WH",r10
_Label_370:
!   if p == 0 then goto _Label_372		(int)
	load	[r14+-56],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_372
!	jmp	_Label_371
_Label_371:
	mov	546,r13		! source line 546
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_373 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	547,r13		! source line 547
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_375 = p + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_374 = *_temp_375  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	548,r13		! source line 548
	mov	"\0\0CA",r10
	call	_function_31_printNullTerminatedString
! CALL STATEMENT...
!   _temp_376 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	549,r13		! source line 549
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_378 = p + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Data Move: _temp_377 = *_temp_378  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	550,r13		! source line 550
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_379 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	551,r13		! source line 551
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_381 = p + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_380 = *_temp_381  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	552,r13		! source line 552
	mov	"\0\0CA",r10
	call	_function_31_printNullTerminatedString
! CALL STATEMENT...
!   Call the function
	mov	556,r13		! source line 556
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_382 = p + 0
	load	[r14+-56],r1
	add	r1,0,r1
	store	r1,[r14+-12]
!   Data Move: p = *_temp_382  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-56]
! END WHILE...
	jmp	_Label_370
_Label_372:
! RETURN STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_29_printCatchStack:
	.word	_sourceFileName
	.word	_Label_383
	.word	0		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_384
	.word	-12
	.word	4
	.word	_Label_385
	.word	-16
	.word	4
	.word	_Label_386
	.word	-20
	.word	4
	.word	_Label_387
	.word	-24
	.word	4
	.word	_Label_388
	.word	-28
	.word	4
	.word	_Label_389
	.word	-32
	.word	4
	.word	_Label_390
	.word	-36
	.word	4
	.word	_Label_391
	.word	-40
	.word	4
	.word	_Label_392
	.word	-44
	.word	4
	.word	_Label_393
	.word	-48
	.word	4
	.word	_Label_394
	.word	-52
	.word	4
	.word	_Label_395
	.word	-56
	.word	4
	.word	0
_Label_383:
	.ascii	"printCatchStack\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_395:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  CLASS Object  ===============
! 
! Dispatch Table:
! 
_P_System_Object:
	.word	_Label_396
	.word	0
! 
! Class descriptor:
! 
_Label_396:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_397
	.word	_sourceFileName
	.word	75		! line number
	.word	4		! size of instances, in bytes
	.word	_P_System_Object
	.word	0
_Label_397:
	.ascii	"Object\0"
	.align
