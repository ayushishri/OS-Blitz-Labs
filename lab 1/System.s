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
	.import	printDouble
	.export	_P_System_nl
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.export	_P_System_KPLMemoryInitialize
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
_StringConst_17:
	.word	2			! length
	.ascii	":\t"
	.align
_StringConst_16:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_15:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_14:
	.word	28			! length
	.ascii	"   Here is the CATCH STACK:\n"
	.align
_StringConst_13:
	.word	63			! length
	.ascii	"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n\n"
	.align
_StringConst_12:
	.word	41			! length
	.ascii	"   Currently active method or function = "
	.align
_StringConst_11:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_10:
	.word	31			! length
	.ascii	"   Location at time of THROW = "
	.align
_StringConst_9:
	.word	16			! length
	.ascii	"   Error Name = "
	.align
_StringConst_8:
	.word	64			! length
	.ascii	"\n\n++++++++++ An error has been thrown but not caught ++++++++++\n"
	.align
_StringConst_7:
	.word	36			! length
	.ascii	"WITHIN KPLMemoryAlloc: Out of memory"
	.align
_StringConst_6:
	.word	49			! length
	.ascii	"WITHIN KPLMemoryAlloc: byte count is not positive"
	.align
_StringConst_5:
	.word	18			! length
	.ascii	"\n\nBad byteCount = "
	.align
_StringConst_4:
	.word	32			! length
	.ascii	"WITHIN KPLMemoryAlloc: Reentered"
	.align
_StringConst_3:
	.word	36			! length
	.ascii	"WITHIN KPLIsKindOf: Bad Magic Number"
	.align
_StringConst_2:
	.word	34			! length
	.ascii	"WITHIN KPLIsKindOf: objPtr is NULL"
	.align
_StringConst_1:
	.word	27			! length
	.ascii	"\n\nFATAL KPL RUNTIME ERROR: "
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
	set	0x8cc97375,r4		! myHashVal = -1932954763
	cmp	r3,r4
	be	_Label_20
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
_Label_20:
	mov	0,r1
_Label_21:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
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
_Label_157:
	push	r0
	sub	r1,1,r1
	bne	_Label_157
	mov	48,r13		! source line 48
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=10  sizeInBytes=1
	mov	10,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	49,r13		! source line 49
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
	.word	_Label_22
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_22:
	.ascii	"nl\0"
	.align
! 
! ===============  FUNCTION printNullTerminatedString  ===============
! 
_function_19_printNullTerminatedString:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_19_printNullTerminatedString,r1
	push	r1
	mov	2,r1
_Label_158:
	push	r0
	sub	r1,1,r1
	bne	_Label_158
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0WH",r10
_Label_23:
!	jmp	_Label_24
_Label_24:
	mov	58,r13		! source line 58
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	59,r13		! source line 59
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
	mov	60,r13		! source line 60
	mov	"\0\0IF",r10
!   _temp_28 = ch XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_28 then goto _Label_27 else goto _Label_26
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_26
	jmp	_Label_27
_Label_26:
! THEN...
	mov	61,r13		! source line 61
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	61,r13		! source line 61
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_27:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=ch  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	63,r13		! source line 63
	mov	"\0\0CE",r10
	call	printChar
! ASSIGNMENT STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0AS",r10
!   p = p + 1		(int)
	load	[r14+8],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! END WHILE...
	jmp	_Label_23
_Label_25:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_19_printNullTerminatedString:
	.word	_sourceFileName
	.word	_Label_29
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_30
	.word	8
	.word	4
	.word	_Label_31
	.word	-9
	.word	1
	.word	_Label_32
	.word	-10
	.word	1
	.word	0
_Label_29:
	.ascii	"printNullTerminatedString\0"
	.align
_Label_30:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_31:
	.byte	'C'
	.ascii	"_temp_28\0"
	.align
_Label_32:
	.byte	'C'
	.ascii	"ch\0"
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
_Label_159:
	push	r0
	sub	r1,1,r1
	bne	_Label_159
	mov	70,r13		! source line 70
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_33 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_33  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	75,r13		! source line 75
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=message  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	76,r13		! source line 76
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	77,r13		! source line 77
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Call the function
	mov	78,r13		! source line 78
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	78,r13		! source line 78
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
	.word	_Label_34
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_35
	.word	8
	.word	4
	.word	_Label_36
	.word	-12
	.word	4
	.word	0
_Label_34:
	.ascii	"KPLSystemError\0"
	.align
_Label_35:
	.byte	'P'
	.ascii	"message\0"
	.align
_Label_36:
	.byte	'?'
	.ascii	"_temp_33\0"
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
_Label_160:
	push	r0
	sub	r1,1,r1
	bne	_Label_160
	mov	83,r13		! source line 83
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0IF",r10
!   if intIsZero (objPtr) then goto _Label_37
	load	[r14+8],r1
	cmp	r1,r0
	be	_Label_37
	jmp	_Label_38
_Label_37:
! THEN...
	mov	96,r13		! source line 96
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_39 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_39  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	96,r13		! source line 96
	mov	"\0\0CA",r10
	call	_P_System_KPLSystemError
! END IF...
_Label_38:
! ASSIGNMENT STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0AS",r10
!   if intIsZero (objPtr) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_40 = objPtr + 0
	load	[r14+8],r1
	add	r1,0,r1
	store	r1,[r14+-40]
!   Data Move: dispTable = *_temp_40  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0IF",r10
!   if intIsZero (dispTable) then goto _Label_41
	load	[r14+-48],r1
	cmp	r1,r0
	be	_Label_41
	jmp	_Label_42
_Label_41:
! THEN...
	mov	102,r13		! source line 102
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_42:
! ASSIGNMENT STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0AS",r10
!   if intIsZero (dispTable) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_43 = dispTable + 0
	load	[r14+-48],r1
	add	r1,0,r1
	store	r1,[r14+-36]
!   Data Move: classDesc = *_temp_43  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0IF",r10
!   if intIsZero (classDesc) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_47 = classDesc + 0
	load	[r14+-52],r1
	add	r1,0,r1
	store	r1,[r14+-28]
!   Data Move: _temp_46 = *_temp_47  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_46 == 1129070931 then goto _Label_45		(int)
	load	[r14+-32],r1
	set	1129070931,r2
	cmp	r1,r2
	be	_Label_45
!	jmp	_Label_44
_Label_44:
! THEN...
	mov	109,r13		! source line 109
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_48 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_48  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	109,r13		! source line 109
	mov	"\0\0CA",r10
	call	_P_System_KPLSystemError
! END IF...
_Label_45:
! ASSIGNMENT STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0AS",r10
!   if intIsZero (classDesc) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_49 = classDesc + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   next = _temp_49		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-56]
! WHILE STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0WH",r10
_Label_50:
!	jmp	_Label_51
_Label_51:
	mov	114,r13		! source line 114
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0IF",r10
!   if intIsZero (next) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_55 = *next  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_55) then goto _Label_53
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_53
	jmp	_Label_54
_Label_53:
! THEN...
	mov	116,r13		! source line 116
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_56
_Label_54:
! ELSE...
	mov	117,r13		! source line 117
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0IF",r10
!   if intIsZero (next) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_59 = *next  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-12]
!   if _temp_59 != typeDesc then goto _Label_58		(int)
	load	[r14+-12],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_58
!	jmp	_Label_57
_Label_57:
! THEN...
	mov	118,r13		! source line 118
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_58:
! END IF...
_Label_56:
! ASSIGNMENT STATEMENT...
	mov	120,r13		! source line 120
	mov	"\0\0AS",r10
!   next = next + 4		(int)
	load	[r14+-56],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! END WHILE...
	jmp	_Label_50
_Label_52:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_KPLIsKindOf:
	.word	_sourceFileName
	.word	_Label_60
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_61
	.word	8
	.word	4
	.word	_Label_62
	.word	12
	.word	4
	.word	_Label_63
	.word	-12
	.word	4
	.word	_Label_64
	.word	-16
	.word	4
	.word	_Label_65
	.word	-20
	.word	4
	.word	_Label_66
	.word	-24
	.word	4
	.word	_Label_67
	.word	-28
	.word	4
	.word	_Label_68
	.word	-32
	.word	4
	.word	_Label_69
	.word	-36
	.word	4
	.word	_Label_70
	.word	-40
	.word	4
	.word	_Label_71
	.word	-44
	.word	4
	.word	_Label_72
	.word	-48
	.word	4
	.word	_Label_73
	.word	-52
	.word	4
	.word	_Label_74
	.word	-56
	.word	4
	.word	0
_Label_60:
	.ascii	"KPLIsKindOf\0"
	.align
_Label_61:
	.byte	'P'
	.ascii	"objPtr\0"
	.align
_Label_62:
	.byte	'P'
	.ascii	"typeDesc\0"
	.align
_Label_63:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_64:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_65:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_66:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_67:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_68:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_71:
	.byte	'?'
	.ascii	"_temp_39\0"
	.align
_Label_72:
	.byte	'P'
	.ascii	"dispTable\0"
	.align
_Label_73:
	.byte	'P'
	.ascii	"classDesc\0"
	.align
_Label_74:
	.byte	'P'
	.ascii	"next\0"
	.align
! 
! ===============  FUNCTION KPLMemoryInitialize  ===============
! 
_P_System_KPLMemoryInitialize:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_System_KPLMemoryInitialize,r1
	push	r1
	mov	1,r1
_Label_161:
	push	r0
	sub	r1,1,r1
	bne	_Label_161
	mov	147,r13		! source line 147
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! p
!   p = &_Global_memoryArea
	set	_Global_memoryArea,r1
	store	r1,[r14+-12]
! ASSIGNMENT STATEMENT...
	mov	150,r13		! source line 150
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
	mov	150,r13		! source line 150
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_System_KPLMemoryInitialize:
	.word	_sourceFileName
	.word	_Label_75
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_76
	.word	-12
	.word	4
	.word	0
_Label_75:
	.ascii	"KPLMemoryInitialize\0"
	.align
_Label_76:
	.byte	'P'
	.ascii	"p\0"
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
_Label_162:
	push	r0
	sub	r1,1,r1
	bne	_Label_162
	mov	155,r13		! source line 155
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	172,r13		! source line 172
	mov	"\0\0IF",r10
!   if _Global_alreadyInAlloc then goto _Label_77 else goto _Label_78
	set	_Global_alreadyInAlloc,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_78
	jmp	_Label_77
_Label_77:
! THEN...
	mov	173,r13		! source line 173
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_79 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_79  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CA",r10
	call	_P_System_KPLSystemError
! END IF...
_Label_78:
! ASSIGNMENT STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0AS",r10
!   _Global_alreadyInAlloc = 1		(1 byte)
	mov	1,r1
	set	_Global_alreadyInAlloc,r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	177,r13		! source line 177
	mov	"\0\0AS",r10
!   i = _Global_nextCharToUse		(4 bytes)
	set	_Global_nextCharToUse,r1
	load	[r1],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	178,r13		! source line 178
	mov	"\0\0IF",r10
!   if byteCount > 0 then goto _Label_81		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_81
!	jmp	_Label_80
_Label_80:
! THEN...
	mov	179,r13		! source line 179
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_82 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_82  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	179,r13		! source line 179
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=byteCount  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	180,r13		! source line 180
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_83 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_83  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	181,r13		! source line 181
	mov	"\0\0CA",r10
	call	_P_System_KPLSystemError
! END IF...
_Label_81:
! ASSIGNMENT STATEMENT...
	mov	185,r13		! source line 185
	mov	"\0\0AS",r10
!   byteCount = byteCount + 4		(int)
	load	[r14+8],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! IF STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0IF",r10
!   _temp_86 = byteCount rem 8		(int)
	load	[r14+8],r1
	mov	8,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if _temp_86 <= 0 then goto _Label_85		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_85
!	jmp	_Label_84
_Label_84:
! THEN...
	mov	189,r13		! source line 189
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0AS",r10
!   _temp_88 = byteCount div 8		(int)
	load	[r14+8],r1
	mov	8,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   _temp_87 = _temp_88 + 1		(int)
	load	[r14+-28],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   byteCount = _temp_87 * 8		(int)
	load	[r14+-32],r1
	mov	8,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! END IF...
_Label_85:
! ASSIGNMENT STATEMENT...
	mov	203,r13		! source line 203
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
	mov	204,r13		! source line 204
	mov	"\0\0IF",r10
!   if _Global_nextCharToUse <= 20000 then goto _Label_90		(int)
	set	_Global_nextCharToUse,r1
	load	[r1],r1
	mov	20000,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_90
!	jmp	_Label_89
_Label_89:
! THEN...
	mov	205,r13		! source line 205
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_91 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_91  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	205,r13		! source line 205
	mov	"\0\0CA",r10
	call	_P_System_KPLSystemError
! END IF...
_Label_90:
! ASSIGNMENT STATEMENT...
	mov	207,r13		! source line 207
	mov	"\0\0AS",r10
!   _temp_92 = &_Global_memoryArea
	set	_Global_memoryArea,r1
	store	r1,[r14+-20]
!   Move address of _temp_92 [i ] into _temp_93
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
!   p = _temp_93		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	208,r13		! source line 208
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
	mov	210,r13		! source line 210
	mov	"\0\0AS",r10
!   _Global_alreadyInAlloc = 0		(1 byte)
	mov	0,r1
	set	_Global_alreadyInAlloc,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0RE",r10
!   _temp_94 = p + 4		(int)
	load	[r14+-56],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   ReturnResult: _temp_94  (sizeInBytes=4)
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
	.word	_Label_95
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_96
	.word	8
	.word	4
	.word	_Label_97
	.word	-12
	.word	4
	.word	_Label_98
	.word	-16
	.word	4
	.word	_Label_99
	.word	-20
	.word	4
	.word	_Label_100
	.word	-24
	.word	4
	.word	_Label_101
	.word	-28
	.word	4
	.word	_Label_102
	.word	-32
	.word	4
	.word	_Label_103
	.word	-36
	.word	4
	.word	_Label_104
	.word	-40
	.word	4
	.word	_Label_105
	.word	-44
	.word	4
	.word	_Label_106
	.word	-48
	.word	4
	.word	_Label_107
	.word	-52
	.word	4
	.word	_Label_108
	.word	-56
	.word	4
	.word	0
_Label_95:
	.ascii	"KPLMemoryAlloc\0"
	.align
_Label_96:
	.byte	'I'
	.ascii	"byteCount\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_102:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_103:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_104:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_105:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_106:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_107:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_108:
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
	mov	218,r13		! source line 218
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	218,r13		! source line 218
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
	.word	_Label_109
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_110
	.word	8
	.word	4
	.word	0
_Label_109:
	.ascii	"KPLMemoryFree\0"
	.align
_Label_110:
	.byte	'P'
	.ascii	"p\0"
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
_Label_163:
	push	r0
	sub	r1,1,r1
	bne	_Label_163
	mov	231,r13		! source line 231
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_111 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_111  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	241,r13		! source line 241
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_112 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_112  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	243,r13		! source line 243
	mov	"\0\0CA",r10
	call	_function_19_printNullTerminatedString
! CALL STATEMENT...
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_113 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_113  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	246,r13		! source line 246
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
	mov	247,r13		! source line 247
	mov	"\0\0CA",r10
	call	_function_19_printNullTerminatedString
! CALL STATEMENT...
!   _temp_114 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_114  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	248,r13		! source line 248
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=line  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	249,r13		! source line 249
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	250,r13		! source line 250
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_115 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_115  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	251,r13		! source line 251
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
!   rPtr = rPtr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	253,r13		! source line 253
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
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_function_19_printNullTerminatedString
! CALL STATEMENT...
!   Call the function
	mov	255,r13		! source line 255
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   Call the function
	mov	256,r13		! source line 256
	mov	"\0\0CA",r10
	call	_function_18_printCatchStack
! CALL STATEMENT...
!   _temp_116 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_116  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	257,r13		! source line 257
	mov	"\0\0CE",r10
	call	print
! THROW STATEMENT...
	mov	258,r13		! source line 258
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
	.word	_Label_117
	.word	12		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_118
	.word	8
	.word	4
	.word	_Label_119
	.word	12
	.word	4
	.word	_Label_120
	.word	16
	.word	4
	.word	_Label_121
	.word	-12
	.word	4
	.word	_Label_122
	.word	-16
	.word	4
	.word	_Label_123
	.word	-20
	.word	4
	.word	_Label_124
	.word	-24
	.word	4
	.word	_Label_125
	.word	-28
	.word	4
	.word	_Label_126
	.word	-32
	.word	4
	.word	_Label_127
	.word	-36
	.word	4
	.word	0
_Label_117:
	.ascii	"KPLUncaughtThrow\0"
	.align
_Label_118:
	.byte	'P'
	.ascii	"errorID\0"
	.align
_Label_119:
	.byte	'I'
	.ascii	"line\0"
	.align
_Label_120:
	.byte	'I'
	.ascii	"rPtr\0"
	.align
_Label_121:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_122:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_123:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_127:
	.byte	'P'
	.ascii	"charPtr\0"
	.align
! 
! ===============  FUNCTION printCatchStack  ===============
! 
_function_18_printCatchStack:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_18_printCatchStack,r1
	push	r1
	mov	13,r1
_Label_164:
	push	r0
	sub	r1,1,r1
	bne	_Label_164
	mov	263,r13		! source line 263
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! p
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CE",r10
	call	getCatchStack
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_128 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_128  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	276,r13		! source line 276
	mov	"\0\0CE",r10
	call	print
! WHILE STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0WH",r10
_Label_129:
!   if p == 0 then goto _Label_131		(int)
	load	[r14+-56],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_131
!	jmp	_Label_130
_Label_130:
	mov	277,r13		! source line 277
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_132 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_132  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_134 = p + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_133 = *_temp_134  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_133  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	279,r13		! source line 279
	mov	"\0\0CA",r10
	call	_function_19_printNullTerminatedString
! CALL STATEMENT...
!   _temp_135 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_135  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	280,r13		! source line 280
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_137 = p + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   Data Move: _temp_136 = *_temp_137  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_136  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	281,r13		! source line 281
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_138 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_138  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	282,r13		! source line 282
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_140 = p + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_139 = *_temp_140  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_139  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	283,r13		! source line 283
	mov	"\0\0CA",r10
	call	_function_19_printNullTerminatedString
! CALL STATEMENT...
!   Call the function
	mov	287,r13		! source line 287
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_141 = p + 0
	load	[r14+-56],r1
	add	r1,0,r1
	store	r1,[r14+-12]
!   Data Move: p = *_temp_141  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-56]
! END WHILE...
	jmp	_Label_129
_Label_131:
! RETURN STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_18_printCatchStack:
	.word	_sourceFileName
	.word	_Label_142
	.word	0		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_143
	.word	-12
	.word	4
	.word	_Label_144
	.word	-16
	.word	4
	.word	_Label_145
	.word	-20
	.word	4
	.word	_Label_146
	.word	-24
	.word	4
	.word	_Label_147
	.word	-28
	.word	4
	.word	_Label_148
	.word	-32
	.word	4
	.word	_Label_149
	.word	-36
	.word	4
	.word	_Label_150
	.word	-40
	.word	4
	.word	_Label_151
	.word	-44
	.word	4
	.word	_Label_152
	.word	-48
	.word	4
	.word	_Label_153
	.word	-52
	.word	4
	.word	_Label_154
	.word	-56
	.word	4
	.word	0
_Label_142:
	.ascii	"printCatchStack\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_154:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  CLASS Object  ===============
! 
! Dispatch Table:
! 
_P_System_Object:
	.word	_Label_155
	.word	0
! 
! Class descriptor:
! 
_Label_155:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_156
	.word	_sourceFileName
	.word	49		! line number
	.word	4		! size of instances, in bytes
	.word	_P_System_Object
	.word	0
_Label_156:
	.ascii	"Object\0"
	.align
