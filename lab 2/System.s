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
	.word	27			! length
	.ascii	"\n\nFATAL KPL RUNTIME ERROR: "
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
	set	0xfe42cccc,r4		! myHashVal = -29176628
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
! ===============  FUNCTION MemoryEqual  ===============
! 
_P_System_MemoryEqual:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_MemoryEqual,r1
	push	r1
	mov	4,r1
_Label_353:
	push	r0
	sub	r1,1,r1
	bne	_Label_353
	mov	12,r13		! source line 12
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_32 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_33 = len - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_32  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-24]
_Label_28:
!   Perform the FOR-LOOP termination test
!   if i > _temp_33 then goto _Label_31		
	load	[r14+-24],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_31
_Label_29:
	mov	17,r13		! source line 17
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_36 = *s1  (sizeInBytes=1)
	load	[r14+8],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_37 = *s2  (sizeInBytes=1)
	load	[r14+12],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_38 = _temp_36 XOR _temp_37		(bool)
	loadb	[r14+-11],r1
	loadb	[r14+-10],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_38 then goto _Label_34 else goto _Label_35
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_35
	jmp	_Label_34
_Label_34:
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
_Label_35:
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
_Label_30:
!   i = i + 1
	load	[r14+-24],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
	jmp	_Label_28
! END FOR
_Label_31:
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
	.word	_Label_39
	.word	12		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_40
	.word	8
	.word	4
	.word	_Label_41
	.word	12
	.word	4
	.word	_Label_42
	.word	16
	.word	4
	.word	_Label_43
	.word	-9
	.word	1
	.word	_Label_44
	.word	-10
	.word	1
	.word	_Label_45
	.word	-11
	.word	1
	.word	_Label_46
	.word	-16
	.word	4
	.word	_Label_47
	.word	-20
	.word	4
	.word	_Label_48
	.word	-24
	.word	4
	.word	0
_Label_39:
	.ascii	"MemoryEqual\0"
	.align
_Label_40:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_41:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_42:
	.byte	'I'
	.ascii	"len\0"
	.align
_Label_43:
	.byte	'C'
	.ascii	"_temp_38\0"
	.align
_Label_44:
	.byte	'C'
	.ascii	"_temp_37\0"
	.align
_Label_45:
	.byte	'C'
	.ascii	"_temp_36\0"
	.align
_Label_46:
	.byte	'?'
	.ascii	"_temp_33\0"
	.align
_Label_47:
	.byte	'?'
	.ascii	"_temp_32\0"
	.align
_Label_48:
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
_Label_354:
	push	r0
	sub	r1,1,r1
	bne	_Label_354
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
!   Data Move: _temp_51 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_52 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if _temp_51 == _temp_52 then goto _Label_50		(int)
	load	[r14+-40],r1
	load	[r14+-36],r2
	cmp	r1,r2
	be	_Label_50
!	jmp	_Label_49
_Label_49:
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
_Label_50:
! FOR STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_57 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_59 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_58 = _temp_59 - 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_57  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-44]
_Label_53:
!   Perform the FOR-LOOP termination test
!   if i > _temp_58 then goto _Label_56		
	load	[r14+-44],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_56
_Label_54:
	mov	38,r13		! source line 38
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s1 [i ] into _temp_63
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
!   Data Move: _temp_62 = *_temp_63  (sizeInBytes=1)
	load	[r14+-20],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s2 [i ] into _temp_65
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
!   Data Move: _temp_64 = *_temp_65  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_66 = _temp_62 XOR _temp_64		(bool)
	loadb	[r14+-11],r1
	loadb	[r14+-10],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_66 then goto _Label_60 else goto _Label_61
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_61
	jmp	_Label_60
_Label_60:
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
_Label_61:
!   Increment the FOR-LOOP index variable and jump back
_Label_55:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_53
! END FOR
_Label_56:
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
	.word	_Label_67
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_68
	.word	8
	.word	4
	.word	_Label_69
	.word	12
	.word	4
	.word	_Label_70
	.word	-9
	.word	1
	.word	_Label_71
	.word	-16
	.word	4
	.word	_Label_72
	.word	-10
	.word	1
	.word	_Label_73
	.word	-20
	.word	4
	.word	_Label_74
	.word	-11
	.word	1
	.word	_Label_75
	.word	-24
	.word	4
	.word	_Label_76
	.word	-28
	.word	4
	.word	_Label_77
	.word	-32
	.word	4
	.word	_Label_78
	.word	-36
	.word	4
	.word	_Label_79
	.word	-40
	.word	4
	.word	_Label_80
	.word	-44
	.word	4
	.word	0
_Label_67:
	.ascii	"StrEqual\0"
	.align
_Label_68:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_69:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_70:
	.byte	'C'
	.ascii	"_temp_66\0"
	.align
_Label_71:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_72:
	.byte	'C'
	.ascii	"_temp_64\0"
	.align
_Label_73:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_74:
	.byte	'C'
	.ascii	"_temp_62\0"
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
	.ascii	"_temp_52\0"
	.align
_Label_79:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_80:
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
_Label_355:
	push	r0
	sub	r1,1,r1
	bne	_Label_355
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
!   Data Move: _temp_81 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_82 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_81  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_82  sizeInBytes=4
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
!   _temp_87 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_88 = sz - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_87  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-40]
_Label_83:
!   Perform the FOR-LOOP termination test
!   if i > _temp_88 then goto _Label_86		
	load	[r14+-40],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_86
_Label_84:
	mov	63,r13		! source line 63
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0AS",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s1 [i ] into _temp_89
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
!   Move address of s2 [i ] into _temp_91
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
!   Data Move: _temp_90 = *_temp_91  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_89 = _temp_90  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_85:
!   i = i + 1
	load	[r14+-40],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
	jmp	_Label_83
! END FOR
_Label_86:
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
	.word	_Label_92
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_93
	.word	8
	.word	4
	.word	_Label_94
	.word	12
	.word	4
	.word	_Label_95
	.word	-16
	.word	4
	.word	_Label_96
	.word	-9
	.word	1
	.word	_Label_97
	.word	-20
	.word	4
	.word	_Label_98
	.word	-24
	.word	4
	.word	_Label_99
	.word	-28
	.word	4
	.word	_Label_100
	.word	-32
	.word	4
	.word	_Label_101
	.word	-36
	.word	4
	.word	_Label_102
	.word	-40
	.word	4
	.word	_Label_103
	.word	-44
	.word	4
	.word	0
_Label_92:
	.ascii	"StrCopy\0"
	.align
_Label_93:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_94:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_96:
	.byte	'C'
	.ascii	"_temp_90\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_102:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_103:
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
_Label_356:
	push	r0
	sub	r1,1,r1
	bne	_Label_356
	mov	70,r13		! source line 70
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! sz
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_104 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_105 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_104  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_105  sizeInBytes=4
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
!   _temp_110 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_111 = sz - 1		(int)
	load	[r14+-80],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_110  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-84]
_Label_106:
!   Perform the FOR-LOOP termination test
!   if i > _temp_111 then goto _Label_109		
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_109
_Label_107:
	mov	81,r13		! source line 81
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s1 [i ] into _temp_116
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
!   Data Move: _temp_115 = *_temp_116  (sizeInBytes=1)
	load	[r14+-56],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   _temp_114 = charToInt (_temp_115)
	loadb	[r14+-12],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-60]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s2 [i ] into _temp_119
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
!   Data Move: _temp_118 = *_temp_119  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   _temp_117 = charToInt (_temp_118)
	loadb	[r14+-11],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-52]
!   if _temp_114 >= _temp_117 then goto _Label_113		(int)
	load	[r14+-60],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_113
!	jmp	_Label_112
_Label_112:
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
	jmp	_Label_120
_Label_113:
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
!   Move address of s1 [i ] into _temp_125
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
!   Data Move: _temp_124 = *_temp_125  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_123 = charToInt (_temp_124)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-44]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s2 [i ] into _temp_128
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
!   Data Move: _temp_127 = *_temp_128  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   _temp_126 = charToInt (_temp_127)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-36]
!   if _temp_123 <= _temp_126 then goto _Label_122		(int)
	load	[r14+-44],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_122
!	jmp	_Label_121
_Label_121:
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
_Label_122:
! END IF...
_Label_120:
!   Increment the FOR-LOOP index variable and jump back
_Label_108:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_106
! END FOR
_Label_109:
! IF STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0IF",r10
!   if intIsZero (s1) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_131 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_132 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_131 >= _temp_132 then goto _Label_130		(int)
	load	[r14+-28],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_130
!	jmp	_Label_129
_Label_129:
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
	jmp	_Label_133
_Label_130:
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
!   Data Move: _temp_136 = *s1  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (s2) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_137 = *s2  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if _temp_136 <= _temp_137 then goto _Label_135		(int)
	load	[r14+-20],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_135
!	jmp	_Label_134
_Label_134:
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
	jmp	_Label_138
_Label_135:
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
_Label_138:
! END IF...
_Label_133:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_StrCmp:
	.word	_sourceFileName
	.word	_Label_139
	.word	8		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_140
	.word	8
	.word	4
	.word	_Label_141
	.word	12
	.word	4
	.word	_Label_142
	.word	-16
	.word	4
	.word	_Label_143
	.word	-20
	.word	4
	.word	_Label_144
	.word	-24
	.word	4
	.word	_Label_145
	.word	-28
	.word	4
	.word	_Label_146
	.word	-32
	.word	4
	.word	_Label_147
	.word	-9
	.word	1
	.word	_Label_148
	.word	-36
	.word	4
	.word	_Label_149
	.word	-40
	.word	4
	.word	_Label_150
	.word	-10
	.word	1
	.word	_Label_151
	.word	-44
	.word	4
	.word	_Label_152
	.word	-48
	.word	4
	.word	_Label_153
	.word	-11
	.word	1
	.word	_Label_154
	.word	-52
	.word	4
	.word	_Label_155
	.word	-56
	.word	4
	.word	_Label_156
	.word	-12
	.word	1
	.word	_Label_157
	.word	-60
	.word	4
	.word	_Label_158
	.word	-64
	.word	4
	.word	_Label_159
	.word	-68
	.word	4
	.word	_Label_160
	.word	-72
	.word	4
	.word	_Label_161
	.word	-76
	.word	4
	.word	_Label_162
	.word	-80
	.word	4
	.word	_Label_163
	.word	-84
	.word	4
	.word	0
_Label_139:
	.ascii	"StrCmp\0"
	.align
_Label_140:
	.byte	'P'
	.ascii	"s1\0"
	.align
_Label_141:
	.byte	'P'
	.ascii	"s2\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_147:
	.byte	'C'
	.ascii	"_temp_127\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_125\0"
	.align
_Label_150:
	.byte	'C'
	.ascii	"_temp_124\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_153:
	.byte	'C'
	.ascii	"_temp_118\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_156:
	.byte	'C'
	.ascii	"_temp_115\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_162:
	.byte	'I'
	.ascii	"sz\0"
	.align
_Label_163:
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
!   if i >= j then goto _Label_165		(int)
	load	[r14+8],r1
	load	[r14+12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_165
!	jmp	_Label_164
_Label_164:
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
	jmp	_Label_166
_Label_165:
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
_Label_166:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_Min:
	.word	_sourceFileName
	.word	_Label_167
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_168
	.word	8
	.word	4
	.word	_Label_169
	.word	12
	.word	4
	.word	0
_Label_167:
	.ascii	"Min\0"
	.align
_Label_168:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_169:
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
!   if i <= j then goto _Label_171		(int)
	load	[r14+8],r1
	load	[r14+12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_171
!	jmp	_Label_170
_Label_170:
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
	jmp	_Label_172
_Label_171:
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
_Label_172:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_Max:
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
	.ascii	"Max\0"
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
! ===============  FUNCTION printIntVar  ===============
! 
_P_System_printIntVar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_printIntVar,r1
	push	r1
	mov	2,r1
_Label_357:
	push	r0
	sub	r1,1,r1
	bne	_Label_357
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
!   _temp_176 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_176  sizeInBytes=4
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
	.word	_Label_177
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_178
	.word	8
	.word	4
	.word	_Label_179
	.word	12
	.word	4
	.word	_Label_180
	.word	-12
	.word	4
	.word	0
_Label_177:
	.ascii	"printIntVar\0"
	.align
_Label_178:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_179:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_176\0"
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
_Label_358:
	push	r0
	sub	r1,1,r1
	bne	_Label_358
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
!   _temp_181 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_181  sizeInBytes=4
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
	.word	_Label_182
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_183
	.word	8
	.word	4
	.word	_Label_184
	.word	12
	.word	4
	.word	_Label_185
	.word	-12
	.word	4
	.word	0
_Label_182:
	.ascii	"printHexVar\0"
	.align
_Label_183:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_184:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_181\0"
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
_Label_359:
	push	r0
	sub	r1,1,r1
	bne	_Label_359
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
!   _temp_186 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_186  sizeInBytes=4
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
	.word	_Label_187
	.word	8		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_188
	.word	8
	.word	4
	.word	_Label_189
	.word	12
	.word	1
	.word	_Label_190
	.word	-12
	.word	4
	.word	0
_Label_187:
	.ascii	"printBoolVar\0"
	.align
_Label_188:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_189:
	.byte	'B'
	.ascii	"b\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_186\0"
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
_Label_360:
	push	r0
	sub	r1,1,r1
	bne	_Label_360
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
!   _temp_191 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_191  sizeInBytes=4
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
!   _temp_192 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_192  sizeInBytes=4
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
	.word	_Label_193
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_194
	.word	8
	.word	4
	.word	_Label_195
	.word	12
	.word	1
	.word	_Label_196
	.word	-12
	.word	4
	.word	_Label_197
	.word	-16
	.word	4
	.word	0
_Label_193:
	.ascii	"printCharVar\0"
	.align
_Label_194:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_195:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_191\0"
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
_Label_361:
	push	r0
	sub	r1,1,r1
	bne	_Label_361
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
!   _temp_198 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_198  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	198,r13		! source line 198
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_199 = p		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_199  sizeInBytes=4
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
	.word	_Label_200
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_201
	.word	8
	.word	4
	.word	_Label_202
	.word	12
	.word	4
	.word	_Label_203
	.word	-12
	.word	4
	.word	_Label_204
	.word	-16
	.word	4
	.word	0
_Label_200:
	.ascii	"printPtr\0"
	.align
_Label_201:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_202:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_198\0"
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
_Label_362:
	push	r0
	sub	r1,1,r1
	bne	_Label_362
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
	.word	_Label_205
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_205:
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
_Label_363:
	push	r0
	sub	r1,1,r1
	bne	_Label_363
	mov	211,r13		! source line 211
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0WH",r10
_Label_206:
!	jmp	_Label_207
_Label_207:
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
!   _temp_211 = ch XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_211 then goto _Label_210 else goto _Label_209
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_209
	jmp	_Label_210
_Label_209:
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
_Label_210:
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
	jmp	_Label_206
_Label_208:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_25_printNullTerminatedString:
	.word	_sourceFileName
	.word	_Label_212
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_213
	.word	8
	.word	4
	.word	_Label_214
	.word	-9
	.word	1
	.word	_Label_215
	.word	-10
	.word	1
	.word	0
_Label_212:
	.ascii	"printNullTerminatedString\0"
	.align
_Label_213:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_214:
	.byte	'C'
	.ascii	"_temp_211\0"
	.align
_Label_215:
	.byte	'C'
	.ascii	"ch\0"
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
_Label_364:
	push	r0
	sub	r1,1,r1
	bne	_Label_364
	mov	250,r13		! source line 250
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! p
!   p = &_Global_memoryArea
	set	_Global_memoryArea,r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = 20000  (sizeInBytes=4)
	mov	20000,r1
	load	[r14+-28],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_220 = p + 4		(int)
	load	[r14+-28],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_223 = p + 4		(int)
	load	[r14+-28],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   _temp_222 = _temp_223 + 20000		(int)
	load	[r14+-12],r1
	mov	20000,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   _temp_221 = _temp_222 - 1		(int)
	load	[r14+-16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: p2 = _temp_220  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-32]
_Label_216:
!   Perform the FOR-LOOP termination test
!   if p2 > _temp_221 then goto _Label_219		
	load	[r14+-32],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_219
_Label_217:
	mov	261,r13		! source line 261
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
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
_Label_218:
!   p2 = p2 + 100
	load	[r14+-32],r1
	add	r1,100,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
	jmp	_Label_216
! END FOR
_Label_219:
! RETURN STATEMENT...
	mov	261,r13		! source line 261
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
	.word	_Label_224
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_225
	.word	-12
	.word	4
	.word	_Label_226
	.word	-16
	.word	4
	.word	_Label_227
	.word	-20
	.word	4
	.word	_Label_228
	.word	-24
	.word	4
	.word	_Label_229
	.word	-28
	.word	4
	.word	_Label_230
	.word	-32
	.word	4
	.word	0
_Label_224:
	.ascii	"KPLSystemInitialize\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_223\0"
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
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_230:
	.byte	'P'
	.ascii	"p2\0"
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
_Label_365:
	push	r0
	sub	r1,1,r1
	bne	_Label_365
	mov	268,r13		! source line 268
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0IF",r10
!   if _Global_alreadyInAlloc then goto _Label_231 else goto _Label_232
	set	_Global_alreadyInAlloc,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_232
	jmp	_Label_231
_Label_231:
! THEN...
	mov	287,r13		! source line 287
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_233 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_233  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	287,r13		! source line 287
	mov	"\0\0CA",r10
	call	_P_System_KPLSystemError
! END IF...
_Label_232:
! ASSIGNMENT STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0AS",r10
!   _Global_alreadyInAlloc = 1		(1 byte)
	mov	1,r1
	set	_Global_alreadyInAlloc,r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0AS",r10
!   i = _Global_nextCharToUse		(4 bytes)
	set	_Global_nextCharToUse,r1
	load	[r1],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0IF",r10
!   if byteCount > 0 then goto _Label_235		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_235
!	jmp	_Label_234
_Label_234:
! THEN...
	mov	293,r13		! source line 293
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_236 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	293,r13		! source line 293
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=byteCount  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	294,r13		! source line 294
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_237 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_237  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	295,r13		! source line 295
	mov	"\0\0CA",r10
	call	_P_System_KPLSystemError
! END IF...
_Label_235:
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
!   byteCount = byteCount + 4		(int)
	load	[r14+8],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! IF STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0IF",r10
!   _temp_240 = byteCount rem 8		(int)
	load	[r14+8],r1
	mov	8,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if _temp_240 <= 0 then goto _Label_239		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_239
!	jmp	_Label_238
_Label_238:
! THEN...
	mov	303,r13		! source line 303
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0AS",r10
!   _temp_242 = byteCount div 8		(int)
	load	[r14+8],r1
	mov	8,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   _temp_241 = _temp_242 + 1		(int)
	load	[r14+-28],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   byteCount = _temp_241 * 8		(int)
	load	[r14+-32],r1
	mov	8,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! END IF...
_Label_239:
! ASSIGNMENT STATEMENT...
	mov	317,r13		! source line 317
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
	mov	318,r13		! source line 318
	mov	"\0\0IF",r10
!   if _Global_nextCharToUse <= 20000 then goto _Label_244		(int)
	set	_Global_nextCharToUse,r1
	load	[r1],r1
	mov	20000,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_244
!	jmp	_Label_243
_Label_243:
! THEN...
	mov	319,r13		! source line 319
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_245 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_245  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	319,r13		! source line 319
	mov	"\0\0CA",r10
	call	_P_System_KPLSystemError
! END IF...
_Label_244:
! ASSIGNMENT STATEMENT...
	mov	321,r13		! source line 321
	mov	"\0\0AS",r10
!   _temp_246 = &_Global_memoryArea
	set	_Global_memoryArea,r1
	store	r1,[r14+-20]
!   Move address of _temp_246 [i ] into _temp_247
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
!   p = _temp_247		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	322,r13		! source line 322
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
	mov	324,r13		! source line 324
	mov	"\0\0AS",r10
!   _Global_alreadyInAlloc = 0		(1 byte)
	mov	0,r1
	set	_Global_alreadyInAlloc,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0RE",r10
!   _temp_248 = p + 4		(int)
	load	[r14+-56],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   ReturnResult: _temp_248  (sizeInBytes=4)
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
	.word	_Label_249
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_250
	.word	8
	.word	4
	.word	_Label_251
	.word	-12
	.word	4
	.word	_Label_252
	.word	-16
	.word	4
	.word	_Label_253
	.word	-20
	.word	4
	.word	_Label_254
	.word	-24
	.word	4
	.word	_Label_255
	.word	-28
	.word	4
	.word	_Label_256
	.word	-32
	.word	4
	.word	_Label_257
	.word	-36
	.word	4
	.word	_Label_258
	.word	-40
	.word	4
	.word	_Label_259
	.word	-44
	.word	4
	.word	_Label_260
	.word	-48
	.word	4
	.word	_Label_261
	.word	-52
	.word	4
	.word	_Label_262
	.word	-56
	.word	4
	.word	0
_Label_249:
	.ascii	"KPLMemoryAlloc\0"
	.align
_Label_250:
	.byte	'I'
	.ascii	"byteCount\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_261:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_262:
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
	mov	332,r13		! source line 332
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	332,r13		! source line 332
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
	.word	_Label_263
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_264
	.word	8
	.word	4
	.word	0
_Label_263:
	.ascii	"KPLMemoryFree\0"
	.align
_Label_264:
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
_Label_366:
	push	r0
	sub	r1,1,r1
	bne	_Label_366
	mov	346,r13		! source line 346
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_265 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_265  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	353,r13		! source line 353
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=message  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	354,r13		! source line 354
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	355,r13		! source line 355
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Call the function
	mov	356,r13		! source line 356
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	356,r13		! source line 356
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
	.word	_Label_266
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_267
	.word	8
	.word	4
	.word	_Label_268
	.word	-12
	.word	4
	.word	0
_Label_266:
	.ascii	"KPLSystemError\0"
	.align
_Label_267:
	.byte	'P'
	.ascii	"message\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_265\0"
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
_Label_367:
	push	r0
	sub	r1,1,r1
	bne	_Label_367
	mov	411,r13		! source line 411
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0IF",r10
!   if intIsZero (objPtr) then goto _Label_269
	load	[r14+8],r1
	cmp	r1,r0
	be	_Label_269
	jmp	_Label_270
_Label_269:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_271 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_271  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	426,r13		! source line 426
	mov	"\0\0CA",r10
	call	_P_System_KPLSystemError
! END IF...
_Label_270:
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
!   if intIsZero (objPtr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_272 = objPtr + 0
	load	[r14+8],r1
	add	r1,0,r1
	store	r1,[r14+-40]
!   Data Move: dispTable = *_temp_272  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0IF",r10
!   if intIsZero (dispTable) then goto _Label_273
	load	[r14+-48],r1
	cmp	r1,r0
	be	_Label_273
	jmp	_Label_274
_Label_273:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_274:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (dispTable) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_275 = dispTable + 0
	load	[r14+-48],r1
	add	r1,0,r1
	store	r1,[r14+-36]
!   Data Move: classDesc = *_temp_275  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0IF",r10
!   if intIsZero (classDesc) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = classDesc + 0
	load	[r14+-52],r1
	add	r1,0,r1
	store	r1,[r14+-28]
!   Data Move: _temp_278 = *_temp_279  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_278 == 1129070931 then goto _Label_277		(int)
	load	[r14+-32],r1
	set	1129070931,r2
	cmp	r1,r2
	be	_Label_277
!	jmp	_Label_276
_Label_276:
! THEN...
	mov	439,r13		! source line 439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_280 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	439,r13		! source line 439
	mov	"\0\0CA",r10
	call	_P_System_KPLSystemError
! END IF...
_Label_277:
! ASSIGNMENT STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0AS",r10
!   if intIsZero (classDesc) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_281 = classDesc + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   next = _temp_281		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-56]
! WHILE STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0WH",r10
_Label_282:
!	jmp	_Label_283
_Label_283:
	mov	444,r13		! source line 444
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0IF",r10
!   if intIsZero (next) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_287 = *next  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_287) then goto _Label_285
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_285
	jmp	_Label_286
_Label_285:
! THEN...
	mov	446,r13		! source line 446
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_288
_Label_286:
! ELSE...
	mov	447,r13		! source line 447
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0IF",r10
!   if intIsZero (next) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_291 = *next  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-12]
!   if _temp_291 != typeDesc then goto _Label_290		(int)
	load	[r14+-12],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_290
!	jmp	_Label_289
_Label_289:
! THEN...
	mov	448,r13		! source line 448
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_290:
! END IF...
_Label_288:
! ASSIGNMENT STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0AS",r10
!   next = next + 4		(int)
	load	[r14+-56],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! END WHILE...
	jmp	_Label_282
_Label_284:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_KPLIsKindOf:
	.word	_sourceFileName
	.word	_Label_292
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_293
	.word	8
	.word	4
	.word	_Label_294
	.word	12
	.word	4
	.word	_Label_295
	.word	-12
	.word	4
	.word	_Label_296
	.word	-16
	.word	4
	.word	_Label_297
	.word	-20
	.word	4
	.word	_Label_298
	.word	-24
	.word	4
	.word	_Label_299
	.word	-28
	.word	4
	.word	_Label_300
	.word	-32
	.word	4
	.word	_Label_301
	.word	-36
	.word	4
	.word	_Label_302
	.word	-40
	.word	4
	.word	_Label_303
	.word	-44
	.word	4
	.word	_Label_304
	.word	-48
	.word	4
	.word	_Label_305
	.word	-52
	.word	4
	.word	_Label_306
	.word	-56
	.word	4
	.word	0
_Label_292:
	.ascii	"KPLIsKindOf\0"
	.align
_Label_293:
	.byte	'P'
	.ascii	"objPtr\0"
	.align
_Label_294:
	.byte	'P'
	.ascii	"typeDesc\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_304:
	.byte	'P'
	.ascii	"dispTable\0"
	.align
_Label_305:
	.byte	'P'
	.ascii	"classDesc\0"
	.align
_Label_306:
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
_Label_368:
	push	r0
	sub	r1,1,r1
	bne	_Label_368
	mov	456,r13		! source line 456
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_307 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_307  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	467,r13		! source line 467
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_308 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	468,r13		! source line 468
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	469,r13		! source line 469
	mov	"\0\0CA",r10
	call	_function_25_printNullTerminatedString
! CALL STATEMENT...
!   Call the function
	mov	470,r13		! source line 470
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_309 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	471,r13		! source line 471
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	472,r13		! source line 472
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
	mov	473,r13		! source line 473
	mov	"\0\0CA",r10
	call	_function_25_printNullTerminatedString
! CALL STATEMENT...
!   _temp_310 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	474,r13		! source line 474
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=line  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	475,r13		! source line 475
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	476,r13		! source line 476
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_311 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   rPtr = rPtr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
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
	mov	480,r13		! source line 480
	mov	"\0\0CA",r10
	call	_function_25_printNullTerminatedString
! CALL STATEMENT...
!   Call the function
	mov	481,r13		! source line 481
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Call the function
	mov	482,r13		! source line 482
	mov	"\0\0CA",r10
	call	_function_24_printCatchStack
! CALL STATEMENT...
!   _temp_312 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	483,r13		! source line 483
	mov	"\0\0CE",r10
	call	print
! THROW STATEMENT...
	mov	484,r13		! source line 484
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
	.word	_Label_313
	.word	12		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_314
	.word	8
	.word	4
	.word	_Label_315
	.word	12
	.word	4
	.word	_Label_316
	.word	16
	.word	4
	.word	_Label_317
	.word	-12
	.word	4
	.word	_Label_318
	.word	-16
	.word	4
	.word	_Label_319
	.word	-20
	.word	4
	.word	_Label_320
	.word	-24
	.word	4
	.word	_Label_321
	.word	-28
	.word	4
	.word	_Label_322
	.word	-32
	.word	4
	.word	_Label_323
	.word	-36
	.word	4
	.word	0
_Label_313:
	.ascii	"KPLUncaughtThrow\0"
	.align
_Label_314:
	.byte	'P'
	.ascii	"errorID\0"
	.align
_Label_315:
	.byte	'I'
	.ascii	"line\0"
	.align
_Label_316:
	.byte	'I'
	.ascii	"rPtr\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_323:
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
_Label_369:
	push	r0
	sub	r1,1,r1
	bne	_Label_369
	mov	489,r13		! source line 489
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! p
!   Call the function
	mov	502,r13		! source line 502
	mov	"\0\0CE",r10
	call	getCatchStack
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_324 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	503,r13		! source line 503
	mov	"\0\0CE",r10
	call	print
! WHILE STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0WH",r10
_Label_325:
!   if p == 0 then goto _Label_327		(int)
	load	[r14+-56],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_327
!	jmp	_Label_326
_Label_326:
	mov	504,r13		! source line 504
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_328 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	505,r13		! source line 505
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_330 = p + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_329 = *_temp_330  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	506,r13		! source line 506
	mov	"\0\0CA",r10
	call	_function_25_printNullTerminatedString
! CALL STATEMENT...
!   _temp_331 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	507,r13		! source line 507
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_333 = p + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Data Move: _temp_332 = *_temp_333  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	508,r13		! source line 508
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_334 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	509,r13		! source line 509
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_336 = p + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_335 = *_temp_336  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	510,r13		! source line 510
	mov	"\0\0CA",r10
	call	_function_25_printNullTerminatedString
! CALL STATEMENT...
!   Call the function
	mov	514,r13		! source line 514
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_337 = p + 0
	load	[r14+-56],r1
	add	r1,0,r1
	store	r1,[r14+-12]
!   Data Move: p = *_temp_337  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-56]
! END WHILE...
	jmp	_Label_325
_Label_327:
! RETURN STATEMENT...
	mov	504,r13		! source line 504
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
	.word	_Label_338
	.word	0		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_339
	.word	-12
	.word	4
	.word	_Label_340
	.word	-16
	.word	4
	.word	_Label_341
	.word	-20
	.word	4
	.word	_Label_342
	.word	-24
	.word	4
	.word	_Label_343
	.word	-28
	.word	4
	.word	_Label_344
	.word	-32
	.word	4
	.word	_Label_345
	.word	-36
	.word	4
	.word	_Label_346
	.word	-40
	.word	4
	.word	_Label_347
	.word	-44
	.word	4
	.word	_Label_348
	.word	-48
	.word	4
	.word	_Label_349
	.word	-52
	.word	4
	.word	_Label_350
	.word	-56
	.word	4
	.word	0
_Label_338:
	.ascii	"printCatchStack\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_350:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  CLASS Object  ===============
! 
! Dispatch Table:
! 
_P_System_Object:
	.word	_Label_351
	.word	0
! 
! Class descriptor:
! 
_Label_351:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_352
	.word	_sourceFileName
	.word	69		! line number
	.word	4		! size of instances, in bytes
	.word	_P_System_Object
	.word	0
_Label_352:
	.ascii	"Object\0"
	.align
