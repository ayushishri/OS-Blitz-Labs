! Name of package being compiled: List
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
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from this package
	.export	_P_List_List
	.export	_Method_P_List_List_1
	.export	_Method_P_List_List_2
	.export	_Method_P_List_List_3
	.export	_Method_P_List_List_4
	.export	_Method_P_List_List_5
	.export	_Method_P_List_List_6
	.export	_Method_P_List_List_7
! The following class and its methods are from this package
	.export	_P_List_Listable
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"List.c\0"
_packageName:
	.ascii	"List\0"
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
_CheckVersion_P_List_:
	.export	_CheckVersion_P_List_
	set	0xafebcabb,r4		! myHashVal = -1343501637
	cmp	r3,r4
	be	_Label_1
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
_Label_1:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_2
_Label_2:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  CLASS List  ===============
! 
! Dispatch Table:
! 
_P_List_List:
	.word	_Label_3
	jmp	_Method_P_List_List_1	! 4:	AddToFront
	jmp	_Method_P_List_List_2	! 8:	AddToEnd
	jmp	_Method_P_List_List_3	! 12:	Remove
	jmp	_Method_P_List_List_4	! 16:	IsEmpty
	jmp	_Method_P_List_List_5	! 20:	ApplyToEach
	jmp	_Method_P_List_List_6	! 24:	SortedInsert
	jmp	_Method_P_List_List_7	! 28:	SortedRemove
	.word	0
! 
! Class descriptor:
! 
_Label_3:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4
	.word	_sourceFileName
	.word	5		! line number
	.word	12		! size of instances, in bytes
	.word	_P_List_List
	.word	_P_System_Object
	.word	0
_Label_4:
	.ascii	"List\0"
	.align
! 
! ===============  METHOD AddToFront  ===============
! 
_Method_P_List_List_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_List_List_1,r1
	push	r1
	mov	3,r1
_Label_123:
	push	r0
	sub	r1,1,r1
	bne	_Label_123
	mov	8,r13		! source line 8
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	15,r13		! source line 15
	mov	"\0\0IF",r10
	mov	15,r13		! source line 15
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_7) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsEmpty
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_5 else goto _Label_6
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_6
	jmp	_Label_5
_Label_5:
! THEN...
	mov	16,r13		! source line 16
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   first = p		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   last = p		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+8]
	jmp	_Label_8
_Label_6:
! ELSE...
	mov	19,r13		! source line 19
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_9 = p + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_9 = first  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+-12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   first = p		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_8:
! RETURN STATEMENT...
	mov	15,r13		! source line 15
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_List_List_1:
	.word	_sourceFileName
	.word	_Label_10
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_11
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_12
	.word	12
	.word	4
	.word	_Label_13
	.word	-12
	.word	4
	.word	_Label_14
	.word	-16
	.word	4
	.word	0
_Label_10:
	.ascii	"List"
	.ascii	"::"
	.ascii	"AddToFront\0"
	.align
_Label_11:
	.ascii	"Pself\0"
	.align
_Label_12:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_13:
	.byte	'?'
	.ascii	"_temp_9\0"
	.align
_Label_14:
	.byte	'?'
	.ascii	"_temp_7\0"
	.align
! 
! ===============  METHOD AddToEnd  ===============
! 
_Method_P_List_List_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_List_List_2,r1
	push	r1
	mov	3,r1
_Label_124:
	push	r0
	sub	r1,1,r1
	bne	_Label_124
	mov	24,r13		! source line 24
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0IF",r10
	mov	31,r13		! source line 31
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_17) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsEmpty
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_15 else goto _Label_16
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_16
	jmp	_Label_15
_Label_15:
! THEN...
	mov	32,r13		! source line 32
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   first = p		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0AS",r10
!   last = p		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+8]
	jmp	_Label_18
_Label_16:
! ELSE...
	mov	35,r13		! source line 35
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
!   if intIsZero (last) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_19 = last + 4
	load	[r14+8],r1
	load	[r1+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_19 = p  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0AS",r10
!   last = p		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+8]
! END IF...
_Label_18:
! RETURN STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_List_List_2:
	.word	_sourceFileName
	.word	_Label_20
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_21
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_22
	.word	12
	.word	4
	.word	_Label_23
	.word	-12
	.word	4
	.word	_Label_24
	.word	-16
	.word	4
	.word	0
_Label_20:
	.ascii	"List"
	.ascii	"::"
	.ascii	"AddToEnd\0"
	.align
_Label_21:
	.ascii	"Pself\0"
	.align
_Label_22:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_23:
	.byte	'?'
	.ascii	"_temp_19\0"
	.align
_Label_24:
	.byte	'?'
	.ascii	"_temp_17\0"
	.align
! 
! ===============  METHOD Remove  ===============
! 
_Method_P_List_List_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_List_List_3,r1
	push	r1
	mov	3,r1
_Label_125:
	push	r0
	sub	r1,1,r1
	bne	_Label_125
	mov	40,r13		! source line 40
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! item
!   item = first		(4 bytes)
	load	[r14+8],r1
	load	[r1+4],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0IF",r10
!   if intIsZero (first) then goto _Label_25
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_Label_25
	jmp	_Label_26
_Label_25:
! THEN...
	mov	47,r13		! source line 47
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_27
_Label_26:
! ELSE...
	mov	48,r13		! source line 48
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0IF",r10
!   if first != last then goto _Label_29		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+8],r2
	load	[r2+8],r2
	cmp	r1,r2
	bne	_Label_29
!	jmp	_Label_28
_Label_28:
! THEN...
	mov	49,r13		! source line 49
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0AS",r10
!   first = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0AS",r10
!   last = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+8]
	jmp	_Label_30
_Label_29:
! ELSE...
	mov	52,r13		! source line 52
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0AS",r10
!   if intIsZero (first) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_31 = first + 4
	load	[r14+8],r1
	load	[r1+4],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: first = *_temp_31  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_30:
! END IF...
_Label_27:
! ASSIGNMENT STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0AS",r10
!   if intIsZero (item) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_32 = item + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_32 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0RE",r10
!   ReturnResult: item  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_List_List_3:
	.word	_sourceFileName
	.word	_Label_33
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_34
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_35
	.word	-12
	.word	4
	.word	_Label_36
	.word	-16
	.word	4
	.word	_Label_37
	.word	-20
	.word	4
	.word	0
_Label_33:
	.ascii	"List"
	.ascii	"::"
	.ascii	"Remove\0"
	.align
_Label_34:
	.ascii	"Pself\0"
	.align
_Label_35:
	.byte	'?'
	.ascii	"_temp_32\0"
	.align
_Label_36:
	.byte	'?'
	.ascii	"_temp_31\0"
	.align
_Label_37:
	.byte	'P'
	.ascii	"item\0"
	.align
! 
! ===============  METHOD IsEmpty  ===============
! 
_Method_P_List_List_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_List_List_4,r1
	push	r1
	mov	58,r13		! source line 58
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0IF",r10
!   if first == 0 then goto _Label_39		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_39
!	jmp	_Label_38
_Label_38:
! THEN...
	mov	63,r13		! source line 63
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_40
_Label_39:
! ELSE...
	mov	65,r13		! source line 65
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_40:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_List_List_4:
	.word	_sourceFileName
	.word	_Label_41
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_42
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_41:
	.ascii	"List"
	.ascii	"::"
	.ascii	"IsEmpty\0"
	.align
_Label_42:
	.ascii	"Pself\0"
	.align
! 
! ===============  METHOD ApplyToEach  ===============
! 
_Method_P_List_List_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_List_List_5,r1
	push	r1
	mov	3,r1
_Label_126:
	push	r0
	sub	r1,1,r1
	bne	_Label_126
	mov	69,r13		! source line 69
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
!   p = first		(4 bytes)
	load	[r14+8],r1
	load	[r1+4],r1
	store	r1,[r14+-16]
! WHILE STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0WH",r10
_Label_43:
!   if p == 0 then goto _Label_45		(int)
	load	[r14+-16],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_45
!	jmp	_Label_44
_Label_44:
	mov	76,r13		! source line 76
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable f
	mov	77,r13		! source line 77
	mov	"\0\0CF",r10
	load	[r14+12],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_46 = p + 4
	load	[r14+-16],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Data Move: p = *_temp_46  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
! END WHILE...
	jmp	_Label_43
_Label_45:
! RETURN STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_List_List_5:
	.word	_sourceFileName
	.word	_Label_47
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_48
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_49
	.word	12
	.word	4
	.word	_Label_50
	.word	-12
	.word	4
	.word	_Label_51
	.word	-16
	.word	4
	.word	0
_Label_47:
	.ascii	"List"
	.ascii	"::"
	.ascii	"ApplyToEach\0"
	.align
_Label_48:
	.ascii	"Pself\0"
	.align
_Label_49:
	.byte	'P'
	.ascii	"f\0"
	.align
_Label_50:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_51:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD SortedInsert  ===============
! 
_Method_P_List_List_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_List_List_6,r1
	push	r1
	mov	19,r1
_Label_127:
	push	r0
	sub	r1,1,r1
	bne	_Label_127
	mov	81,r13		! source line 81
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_52 = p + 8
	load	[r14+12],r1
	add	r1,8,r1
	store	r1,[r14+-76]
!   Data Move: *_temp_52 = k  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-76],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0IF",r10
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_55) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsEmpty
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_53 else goto _Label_54
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_54
	jmp	_Label_53
_Label_53:
! THEN...
	mov	93,r13		! source line 93
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0AS",r10
!   first = p		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0AS",r10
!   last = p		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+8]
	jmp	_Label_56
_Label_54:
! ELSE...
	mov	95,r13		! source line 95
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0IF",r10
!   if intIsZero (first) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_60 = first + 8
	load	[r14+8],r1
	load	[r1+4],r1
	add	r1,8,r1
	store	r1,[r14+-64]
!   Data Move: _temp_59 = *_temp_60  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if k >= _temp_59 then goto _Label_58		(int)
	load	[r14+16],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_58
!	jmp	_Label_57
_Label_57:
! THEN...
	mov	96,r13		! source line 96
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	96,r13		! source line 96
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_61 = p + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_61 = first  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	97,r13		! source line 97
	mov	"\0\0AS",r10
!   first = p		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_62
_Label_58:
! ELSE...
	mov	99,r13		! source line 99
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0AS",r10
!   q = first		(4 bytes)
	load	[r14+8],r1
	load	[r1+4],r1
	store	r1,[r14+-80]
! WHILE STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0WH",r10
_Label_63:
!   if intIsZero (q) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_67 = q + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Data Move: _temp_66 = *_temp_67  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_66 == 0 then goto _Label_65		(int)
	load	[r14+-56],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_65
!	jmp	_Label_64
_Label_64:
	mov	99,r13		! source line 99
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0IF",r10
!   if intIsZero (q) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_72 = q + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_71 = *_temp_72  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_71) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_73 = _temp_71 + 8
	load	[r14+-44],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Data Move: _temp_70 = *_temp_73  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if k >= _temp_70 then goto _Label_69		(int)
	load	[r14+16],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_69
!	jmp	_Label_68
_Label_68:
! THEN...
	mov	101,r13		! source line 101
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_74 = p + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   if intIsZero (q) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_76 = q + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_75 = *_temp_76  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Data Move: *_temp_74 = _temp_75  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0AS",r10
!   if intIsZero (q) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_77 = q + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_77 = p  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_69:
! ASSIGNMENT STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0AS",r10
!   if intIsZero (q) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_78 = q + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: q = *_temp_78  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-80]
! END WHILE...
	jmp	_Label_63
_Label_65:
! ASSIGNMENT STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0AS",r10
!   if intIsZero (last) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_79 = last + 4
	load	[r14+8],r1
	load	[r1+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_79 = p  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   last = p		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+8]
! END IF...
_Label_62:
! END IF...
_Label_56:
! RETURN STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_List_List_6:
	.word	_sourceFileName
	.word	_Label_80
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_81
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_82
	.word	12
	.word	4
	.word	_Label_83
	.word	16
	.word	4
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
_Label_80:
	.ascii	"List"
	.ascii	"::"
	.ascii	"SortedInsert\0"
	.align
_Label_81:
	.ascii	"Pself\0"
	.align
_Label_82:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_83:
	.byte	'I'
	.ascii	"k\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_101:
	.byte	'P'
	.ascii	"q\0"
	.align
! 
! ===============  METHOD SortedRemove  ===============
! 
_Method_P_List_List_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_List_List_7,r1
	push	r1
	mov	6,r1
_Label_128:
	push	r0
	sub	r1,1,r1
	bne	_Label_128
	mov	111,r13		! source line 111
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! item
!   item = first		(4 bytes)
	load	[r14+8],r1
	load	[r1+4],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0IF",r10
	mov	121,r13		! source line 121
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_104) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsEmpty
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_102 else goto _Label_103
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_103
	jmp	_Label_102
_Label_102:
! THEN...
	mov	122,r13		! source line 122
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_103:
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   item = first		(4 bytes)
	load	[r14+8],r1
	load	[r1+4],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0IF",r10
!   if first != last then goto _Label_106		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+8],r2
	load	[r2+8],r2
	cmp	r1,r2
	bne	_Label_106
!	jmp	_Label_105
_Label_105:
! THEN...
	mov	126,r13		! source line 126
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
!   first = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0AS",r10
!   last = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+8]
	jmp	_Label_107
_Label_106:
! ELSE...
	mov	129,r13		! source line 129
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0AS",r10
!   if intIsZero (first) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_108 = first + 4
	load	[r14+8],r1
	load	[r1+4],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: first = *_temp_108  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_107:
! IF STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0IF",r10
!   if intIsZero (whereToStoreItsKey) then goto _Label_110
	load	[r14+12],r1
	cmp	r1,r0
	be	_Label_110
!	jmp	_Label_109
_Label_109:
! THEN...
	mov	132,r13		! source line 132
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0AS",r10
!   if intIsZero (whereToStoreItsKey) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (item) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_112 = item + 8
	load	[r14+-28],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Data Move: _temp_111 = *_temp_112  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Data Move: *whereToStoreItsKey = _temp_111  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+12],r2
	store	r1,[r2]
! END IF...
_Label_110:
! RETURN STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0RE",r10
!   ReturnResult: item  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_List_List_7:
	.word	_sourceFileName
	.word	_Label_113
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_114
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_115
	.word	12
	.word	4
	.word	_Label_116
	.word	-12
	.word	4
	.word	_Label_117
	.word	-16
	.word	4
	.word	_Label_118
	.word	-20
	.word	4
	.word	_Label_119
	.word	-24
	.word	4
	.word	_Label_120
	.word	-28
	.word	4
	.word	0
_Label_113:
	.ascii	"List"
	.ascii	"::"
	.ascii	"SortedRemove\0"
	.align
_Label_114:
	.ascii	"Pself\0"
	.align
_Label_115:
	.byte	'P'
	.ascii	"whereToStoreItsKey\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_117:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_118:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_119:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_120:
	.byte	'P'
	.ascii	"item\0"
	.align
! 
! ===============  CLASS Listable  ===============
! 
! Dispatch Table:
! 
_P_List_Listable:
	.word	_Label_121
	.word	0
! 
! Class descriptor:
! 
_Label_121:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_122
	.word	_sourceFileName
	.word	44		! line number
	.word	12		! size of instances, in bytes
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_122:
	.ascii	"Listable\0"
	.align
