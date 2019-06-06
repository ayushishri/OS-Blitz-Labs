! Name of package being compiled: Hello
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
	.import	printDouble
	.import	_P_System_nl
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLMemoryInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
! Global variables in this package
	.data
	.align
! String constants
_StringConst_2:
	.word	18			! length
	.ascii	"The value of b is "
	.align
_StringConst_1:
	.word	16			! length
	.ascii	"Hello, world...\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x3fa066f5,r3		! .  hashVal = 1067476725
	call	_CheckVersion_P_Hello_	! .
	cmp	r1,0			! .
	be	_Label_5		! .
	ret				! .
_Label_5:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"HelloWorld.c\0"
_packageName:
	.ascii	"Hello\0"
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
_CheckVersion_P_Hello_:
	.export	_CheckVersion_P_Hello_
	set	0x3fa066f5,r4		! myHashVal = 1067476725
	cmp	r3,r4
	be	_Label_6
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
_Label_6:
	mov	0,r1
! Make sure _P_System_ has hash value 0x8cc97375 (decimal -1932954763)
	set	_packageName,r2
	set	0x8cc97375,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_7
_Label_7:
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
	mov	2,r1
_Label_20:
	push	r0
	sub	r1,1,r1
	bne	_Label_20
	mov	5,r13		! source line 5
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_8 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_8  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	6,r13		! source line 6
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+0]
!   Call the function
	mov	7,r13		! source line 7
	mov	"\0\0CA",r10
	call	_function_4_foo
! RETURN STATEMENT...
	mov	7,r13		! source line 7
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_9
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_10
	.word	-12
	.word	4
	.word	0
_Label_9:
	.ascii	"main\0"
	.align
_Label_10:
	.byte	'?'
	.ascii	"_temp_8\0"
	.align
! 
! ===============  FUNCTION foo  ===============
! 
_function_4_foo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_4_foo,r1
	push	r1
	mov	2,r1
_Label_21:
	push	r0
	sub	r1,1,r1
	bne	_Label_21
	mov	10,r13		! source line 10
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_11 = x + 1		(int)
	load	[r14+8],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_11  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	11,r13		! source line 11
	mov	"\0\0CA",r10
	call	_function_3_bar
! RETURN STATEMENT...
	mov	11,r13		! source line 11
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_4_foo:
	.word	_sourceFileName
	.word	_Label_12
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_13
	.word	8
	.word	4
	.word	_Label_14
	.word	-12
	.word	4
	.word	0
_Label_12:
	.ascii	"foo\0"
	.align
_Label_13:
	.byte	'I'
	.ascii	"x\0"
	.align
_Label_14:
	.byte	'?'
	.ascii	"_temp_11\0"
	.align
! 
! ===============  FUNCTION bar  ===============
! 
_function_3_bar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_3_bar,r1
	push	r1
	mov	3,r1
_Label_22:
	push	r0
	sub	r1,1,r1
	bne	_Label_22
	mov	14,r13		! source line 14
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   b = a + 1		(int)
	load	[r14+8],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
! CALL STATEMENT...
!   _temp_15 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_15  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	17,r13		! source line 17
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=b  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	18,r13		! source line 18
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	19,r13		! source line 19
	mov	"\0\0CA",r10
	call	_P_System_nl
! --------------------  DEBUG  --------------------
	mov	20,r13		! source line 20
	mov	"\0\0DE",r10
	debug
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=b  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	21,r13		! source line 21
	mov	"\0\0CA",r10
	call	_function_3_bar
! RETURN STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_3_bar:
	.word	_sourceFileName
	.word	_Label_16
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_17
	.word	8
	.word	4
	.word	_Label_18
	.word	-12
	.word	4
	.word	_Label_19
	.word	-16
	.word	4
	.word	0
_Label_16:
	.ascii	"bar\0"
	.align
_Label_17:
	.byte	'I'
	.ascii	"a\0"
	.align
_Label_18:
	.byte	'?'
	.ascii	"_temp_15\0"
	.align
_Label_19:
	.byte	'I'
	.ascii	"b\0"
	.align
