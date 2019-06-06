! Name of package being compiled: TestProgram5
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
	.import	_Error_P_UserSystem_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	_P_UserSystem_Sys_Exit
	.import	_P_UserSystem_Sys_Shutdown
	.import	_P_UserSystem_Sys_Yield
	.import	_P_UserSystem_Sys_Fork
	.import	_P_UserSystem_Sys_Join
	.import	_P_UserSystem_Sys_Exec
	.import	_P_UserSystem_Sys_Create
	.import	_P_UserSystem_Sys_Open
	.import	_P_UserSystem_Sys_Read
	.import	_P_UserSystem_Sys_Write
	.import	_P_UserSystem_Sys_Seek
	.import	_P_UserSystem_Sys_Close
	.import	DoSyscall
	.import	TerminateWithError
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	printDouble
	.import	_P_UserSystem_StrEqual
	.import	_P_UserSystem_StrCopy
	.import	_P_UserSystem_StrCmp
	.import	_P_UserSystem_Min
	.import	_P_UserSystem_Max
	.import	_P_UserSystem_printIntVar
	.import	_P_UserSystem_printHexVar
	.import	_P_UserSystem_printBoolVar
	.import	_P_UserSystem_printCharVar
	.import	_P_UserSystem_printPtr
	.import	_P_UserSystem_nl
	.import	_P_UserSystem_MemoryEqual
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_UserSystem_KPLSystemInitialize
	.import	_P_UserSystem_KPLMemoryAlloc
	.import	_P_UserSystem_KPLMemoryFree
	.import	_P_UserSystem_KPLUncaughtThrow
	.import	_P_UserSystem_KPLIsKindOf
	.import	_P_UserSystem_KPLSystemError
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_UserSystem_Object
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
! Global variables in this package
	.data
_Global_bigBuffer:
! Static array
	.word	9000		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.align
	.align
! String constants
_StringConst_238:
	.word	37			! length
	.ascii	"Invalid entry; enter a single digit.\n"
	.align
_StringConst_237:
	.word	24			! length
	.ascii	"Unable to execute shell\n"
	.align
_StringConst_236:
	.word	2			! length
	.ascii	"sh"
	.align
_StringConst_235:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_234:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_233:
	.word	25			! length
	.ascii	"Please select by number: "
	.align
_StringConst_232:
	.word	13			! length
	.ascii	"  9  -  Quit\n"
	.align
_StringConst_231:
	.word	14			! length
	.ascii	"  8  -  Shell\n"
	.align
_StringConst_230:
	.word	26			! length
	.ascii	"  7  -  TerminalErrorTest\n"
	.align
_StringConst_229:
	.word	30			! length
	.ascii	"  6  -  OpenCloseTerminalTest\n"
	.align
_StringConst_228:
	.word	16			! length
	.ascii	"  5  -  EOFTest\n"
	.align
_StringConst_227:
	.word	21			! length
	.ascii	"  4  -  LineEchoTest\n"
	.align
_StringConst_226:
	.word	17			! length
	.ascii	"  3  -  EchoTest\n"
	.align
_StringConst_225:
	.word	16			! length
	.ascii	"  2  -  KeyTest\n"
	.align
_StringConst_224:
	.word	24			! length
	.ascii	"  1  -  BasicSerialTest\n"
	.align
_StringConst_223:
	.word	49			! length
	.ascii	"====================  MENU  ====================\n"
	.align
_StringConst_222:
	.word	35			! length
	.ascii	"This menu works best in raw mode.\n\n"
	.align
_StringConst_221:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_220:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_219:
	.word	32			! length
	.ascii	"Opening \'stdin\' and \'stdout\'...\n"
	.align
_StringConst_218:
	.word	38			! length
	.ascii	"\' instead  **************************\n"
	.align
_StringConst_217:
	.word	11			! length
	.ascii	"\' but was \'"
	.align
_StringConst_216:
	.word	79			! length
	.ascii	"**************************  ERROR: The next input character is expected to be \'"
	.align
_StringConst_215:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_214:
	.word	43			! length
	.ascii	") is incorrect  **************************\n"
	.align
_StringConst_213:
	.word	59			! length
	.ascii	"**************************  ERROR: Return value from Read ("
	.align
_StringConst_212:
	.word	43			! length
	.ascii	") is incorrect  **************************\n"
	.align
_StringConst_211:
	.word	62			! length
	.ascii	"**************************  ERROR: Return value from syscall ("
	.align
_StringConst_210:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_209:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_208:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_207:
	.word	59			! length
	.ascii	"instead of 0 or -1 as expected  **************************\n"
	.align
_StringConst_206:
	.word	50			! length
	.ascii	"**************************  ERROR: Write returned "
	.align
_StringConst_205:
	.word	86			! length
	.ascii	"\nWriting with a pointer which isn\'t in our address space, which should be an error...\n"
	.align
_StringConst_204:
	.word	54			! length
	.ascii	"instead of 11 as expected  **************************\n"
	.align
_StringConst_203:
	.word	50			! length
	.ascii	"**************************  ERROR: Write returned "
	.align
_StringConst_202:
	.word	11			! length
	.ascii	"KERNEL CODE"
	.align
_StringConst_201:
	.word	24			! length
	.ascii	"                        "
	.align
_StringConst_200:
	.word	49			! length
	.ascii	"\n\n==== This should print \"KERNEL CODE\" next ====\n"
	.align
_StringConst_199:
	.word	77			! length
	.ascii	"Writing with a pointer to a page which is read-only, which should be okay...\n"
	.align
_StringConst_198:
	.word	9			! length
	.ascii	"GREETINGS"
	.align
_StringConst_197:
	.word	24			! length
	.ascii	"                        "
	.align
_StringConst_196:
	.word	47			! length
	.ascii	"\n\n==== This should print \"GREETINGS\" next ====\n"
	.align
_StringConst_195:
	.word	55			! length
	.ascii	"Writing with a pointer that crosses a page boundary...\n"
	.align
_StringConst_194:
	.word	37			! length
	.ascii	"Writing with negative sizeInBytes...\n"
	.align
_StringConst_193:
	.word	37			! length
	.ascii	"Writing with negative sizeInBytes...\n"
	.align
_StringConst_192:
	.word	114			! length
	.ascii	"**************************  ERROR: The characters were not stored in memory correctly  **************************\n"
	.align
_StringConst_191:
	.word	13			! length
	.ascii	"QWEabcdef\nRTY"
	.align
_StringConst_190:
	.word	13			! length
	.ascii	"QWEabcdef\nRTY"
	.align
_StringConst_189:
	.word	29			! length
	.ascii	"Please type \"abcdef\\n\" next.\n"
	.align
_StringConst_188:
	.word	55			! length
	.ascii	"Reading with a pointer that crosses a page boundary...\n"
	.align
_StringConst_187:
	.word	120			! length
	.ascii	"**************************  ERROR: Return code is -1 but the last 4 bytes have been altered  **************************\n"
	.align
_StringConst_186:
	.word	124			! length
	.ascii	"**************************  ERROR: Return code is 4, but did not set the last 4 bytes correctly  **************************\n"
	.align
_StringConst_185:
	.word	29			! length
	.ascii	"Please type \"123456\\n\" next.\n"
	.align
_StringConst_184:
	.word	69			! length
	.ascii	"Reading with a pointer which is near the end of our address space...\n"
	.align
_StringConst_183:
	.word	59			! length
	.ascii	"instead of 0 or -1 as expected  **************************\n"
	.align
_StringConst_182:
	.word	49			! length
	.ascii	"**************************  ERROR: Read returned "
	.align
_StringConst_181:
	.word	26			! length
	.ascii	"Please type \"xyz\\n\" next.\n"
	.align
_StringConst_180:
	.word	85			! length
	.ascii	"Reading with a pointer which isn\'t in our address space, which should be an error...\n"
	.align
_StringConst_179:
	.word	59			! length
	.ascii	"instead of 0 or -1 as expected  **************************\n"
	.align
_StringConst_178:
	.word	49			! length
	.ascii	"**************************  ERROR: Read returned "
	.align
_StringConst_177:
	.word	26			! length
	.ascii	"Please type \"abc\\n\" next.\n"
	.align
_StringConst_176:
	.word	81			! length
	.ascii	"Reading with a pointer to a page which is read-only, which should be an error...\n"
	.align
_StringConst_175:
	.word	37			! length
	.ascii	"Reading with negative sizeInBytes...\n"
	.align
_StringConst_174:
	.word	37			! length
	.ascii	"Reading with negative sizeInBytes...\n"
	.align
_StringConst_173:
	.word	80			! length
	.ascii	"**************************  ERROR: Opening terminal  **************************\n"
	.align
_StringConst_172:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_171:
	.word	27			! length
	.ascii	"Opening \'terminal\' file...\n"
	.align
_StringConst_170:
	.word	42			! length
	.ascii	"(This test should be run in cooked mode.)\n"
	.align
_StringConst_169:
	.word	44			! length
	.ascii	"\n==========  TerminalErrorTest  ==========\n\n"
	.align
_StringConst_168:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_167:
	.word	34			! length
	.ascii	"Closing all 10 fileDescriptors...\n"
	.align
_StringConst_166:
	.word	54			! length
	.ascii	"instead of -1 as expected  **************************\n"
	.align
_StringConst_165:
	.word	49			! length
	.ascii	"**************************  ERROR: Open returned "
	.align
_StringConst_164:
	.word	34			! length
	.ascii	"The syscall correctly returns -1.\n"
	.align
_StringConst_163:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_162:
	.word	64			! length
	.ascii	"Attempting to open \'terminal\' one more time, which should fail.\n"
	.align
_StringConst_161:
	.word	30			! length
	.ascii	")  **************************\n"
	.align
_StringConst_160:
	.word	73			! length
	.ascii	"**************************  ERROR: The syscall returns an unexpected fd ("
	.align
_StringConst_159:
	.word	57			! length
	.ascii	") indicating the open failed  **************************\n"
	.align
_StringConst_158:
	.word	68			! length
	.ascii	"**************************  ERROR: Open returned a negative number ("
	.align
_StringConst_157:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_156:
	.word	31			! length
	.ascii	"Opening \'terminal\' 10 times...\n"
	.align
_StringConst_155:
	.word	34			! length
	.ascii	"Closing all 10 fileDescriptors...\n"
	.align
_StringConst_154:
	.word	30			! length
	.ascii	")  **************************\n"
	.align
_StringConst_153:
	.word	73			! length
	.ascii	"**************************  ERROR: The syscall returns an unexpected fd ("
	.align
_StringConst_152:
	.word	57			! length
	.ascii	") indicating the open failed  **************************\n"
	.align
_StringConst_151:
	.word	68			! length
	.ascii	"**************************  ERROR: Open returned a negative number ("
	.align
_StringConst_150:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_149:
	.word	31			! length
	.ascii	"Opening \'terminal\' 10 times...\n"
	.align
_StringConst_148:
	.word	48			! length
	.ascii	"\n==========  OpenCloseTerminalTest  ==========\n\n"
	.align
_StringConst_147:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_146:
	.word	83			! length
	.ascii	"**************************  ERROR: buffer is incorrect  **************************\n"
	.align
_StringConst_145:
	.word	6			! length
	.ascii	"abc456"
	.align
_StringConst_144:
	.word	83			! length
	.ascii	"Please type \"abc\" followed by control-D.  The ENTER key should not be necessary...\n"
	.align
_StringConst_143:
	.word	83			! length
	.ascii	"**************************  ERROR: buffer was modified  **************************\n"
	.align
_StringConst_142:
	.word	6			! length
	.ascii	"123456"
	.align
_StringConst_141:
	.word	69			! length
	.ascii	"Please hit control-D next.  The ENTER key should not be necessary...\n"
	.align
_StringConst_140:
	.word	58			! length
	.ascii	"\n**************************  ERROR: Problems with open, fd"
	.align
_StringConst_139:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_138:
	.word	48			! length
	.ascii	"many programs will interpret as \'end-of-file\'.\n\n"
	.align
_StringConst_137:
	.word	67			! length
	.ascii	"typed first, then the count returned from Read will be zero, which\n"
	.align
_StringConst_136:
	.word	64			! length
	.ascii	"return from the Read syscall.  If no other characters have been\n"
	.align
_StringConst_135:
	.word	65			! length
	.ascii	"enf-of-file character.  When typed, it should cause an immediate\n"
	.align
_StringConst_134:
	.word	65			! length
	.ascii	"This function tests the handling of control-D.  Control-D is the\n"
	.align
_StringConst_133:
	.word	40			! length
	.ascii	"This test should be run in \'raw\' mode.\n\n"
	.align
_StringConst_132:
	.word	34			! length
	.ascii	"\n==========  EOFTest  ==========\n\n"
	.align
_StringConst_131:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_130:
	.word	74			! length
	.ascii	"\n**************************  ERROR: returned value from Write incorrect, j"
	.align
_StringConst_129:
	.word	29			! length
	.ascii	"\nNumber of characters entered"
	.align
_StringConst_128:
	.word	57			! length
	.ascii	"**************************  ERROR: Problems with open, fd"
	.align
_StringConst_127:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_126:
	.word	91			! length
	.ascii	"To change to raw mode, type control-C, ENTER, ENTER, \"raw\", and \"g\" to resume execution.)\n\n"
	.align
_StringConst_125:
	.word	82			! length
	.ascii	"(To change to cooked mode, type control-C, \"cooked\", and \"g\" to resume execution.\n"
	.align
_StringConst_124:
	.word	67			! length
	.ascii	"This test will terminate when the first character entered is \'q\'.\n\n"
	.align
_StringConst_123:
	.word	89			! length
	.ascii	"  6. In cooked mode, see how the host (Unix) processes editing keys, such as backspace.\n\n"
	.align
_StringConst_122:
	.word	63			! length
	.ascii	"  5. See what happens when the size of the buffer is exceeded.\n"
	.align
_StringConst_121:
	.word	49			! length
	.ascii	"  4. See what happens when you hit cntl-D (EOF).\n"
	.align
_StringConst_120:
	.word	99			! length
	.ascii	"  3. See what happens when you hit keys labelled SPACE, ENTER/RETURN, TAB, DEL/BACKSPACE, and ESC.\n"
	.align
_StringConst_119:
	.word	92			! length
	.ascii	"  2. See what happens with characters like cntl-H (Backspace), cntl-J (NL) and cntl-M (CR).\n"
	.align
_StringConst_118:
	.word	29			! length
	.ascii	"  1. Start by typing \"abc\\n\"\n"
	.align
_StringConst_117:
	.word	58			! length
	.ascii	"line is complete, this program will (re) print the line.\n\n"
	.align
_StringConst_116:
	.word	80			! length
	.ascii	"mode.  In cooked mode, the host (Unix) will echo characters and then, after the\n"
	.align
_StringConst_115:
	.word	79			! length
	.ascii	"the entire line is completed by typing ENTER, when running the emulator in raw\n"
	.align
_StringConst_114:
	.word	79			! length
	.ascii	"does not echo characters as typed, you will not see the characters until after\n"
	.align
_StringConst_113:
	.word	75			! length
	.ascii	"After this program gets the entire line, it prints it.  Since this program\n"
	.align
_StringConst_112:
	.word	28			! length
	.ascii	" characters) into a buffer.\n"
	.align
_StringConst_111:
	.word	50			! length
	.ascii	"This program reads an entire line of input (up to "
	.align
_StringConst_110:
	.word	39			! length
	.ascii	"\n==========  LineEchoTest  ==========\n\n"
	.align
_StringConst_109:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_108:
	.word	74			! length
	.ascii	"\n**************************  ERROR: returned value from Write incorrect, i"
	.align
_StringConst_107:
	.word	76			! length
	.ascii	"\n**************************  ERROR: Returned value from Read is incorrect, i"
	.align
_StringConst_106:
	.word	98			! length
	.ascii	"\n*****  WARNING: Returned value from Read is zero; This should only occur when control-D is typed\n"
	.align
_StringConst_105:
	.word	58			! length
	.ascii	"\n**************************  ERROR: Problems with open, fd"
	.align
_StringConst_104:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_103:
	.word	91			! length
	.ascii	"To change to raw mode, type control-C, ENTER, ENTER, \"raw\", and \"g\" to resume execution.)\n\n"
	.align
_StringConst_102:
	.word	82			! length
	.ascii	"(To change to cooked mode, type control-C, \"cooked\", and \"g\" to resume execution.\n"
	.align
_StringConst_101:
	.word	45			! length
	.ascii	"This test will terminate when \'q\' is typed.\n\n"
	.align
_StringConst_100:
	.word	19			! length
	.ascii	"         up-arrow\n\n"
	.align
_StringConst_99:
	.word	19			! length
	.ascii	"         control-g\n"
	.align
_StringConst_98:
	.word	22			! length
	.ascii	"         ESC  [  5  A\n"
	.align
_StringConst_97:
	.word	22			! length
	.ascii	"         ESC  [  7  m\n"
	.align
_StringConst_96:
	.word	46			! length
	.ascii	"     For example, try typing these sequences:\n"
	.align
_StringConst_95:
	.word	87			! length
	.ascii	"  6. While in raw mode, see what happens with sequences from page 342 in the textbook.\n"
	.align
_StringConst_94:
	.word	51			! length
	.ascii	"  5. Try this test in cooked mode and in raw mode.\n"
	.align
_StringConst_93:
	.word	49			! length
	.ascii	"  4. See what happens when you hit cntl-D (EOF).\n"
	.align
_StringConst_92:
	.word	99			! length
	.ascii	"  3. See what happens when you hit keys labelled SPACE, ENTER/RETURN, TAB, DEL/BACKSPACE, and ESC.\n"
	.align
_StringConst_91:
	.word	92			! length
	.ascii	"  2. See what happens with characters like cntl-H (Backspace), cntl-J (NL) and cntl-M (CR).\n"
	.align
_StringConst_90:
	.word	29			! length
	.ascii	"  1. Start by typing \"abc\\n\"\n"
	.align
_StringConst_89:
	.word	93			! length
	.ascii	"This test reads characters from the terminal.  It echoes each character, as it is received.\n\n"
	.align
_StringConst_88:
	.word	35			! length
	.ascii	"\n==========  EchoTest  ==========\n\n"
	.align
_StringConst_87:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_86:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_85:
	.word	10			! length
	.ascii	" (decimal "
	.align
_StringConst_84:
	.word	5			! length
	.ascii	"ch = "
	.align
_StringConst_83:
	.word	89			! length
	.ascii	"\n**************************  ERROR: Returned value from Read is incorrect; returned value"
	.align
_StringConst_82:
	.word	98			! length
	.ascii	"\n*****  WARNING: Returned value from Read is zero; This should only occur when control-D is typed\n"
	.align
_StringConst_81:
	.word	58			! length
	.ascii	"\n**************************  ERROR: Problems with open, fd"
	.align
_StringConst_80:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_79:
	.word	91			! length
	.ascii	"To change to raw mode, type control-C, ENTER, ENTER, \"raw\", and \"g\" to resume execution.)\n\n"
	.align
_StringConst_78:
	.word	82			! length
	.ascii	"(To change to cooked mode, type control-C, \"cooked\", and \"g\" to resume execution.\n"
	.align
_StringConst_77:
	.word	45			! length
	.ascii	"This test will terminate when \'q\' is typed.\n\n"
	.align
_StringConst_76:
	.word	52			! length
	.ascii	"  5. Try this test in cooked mode and in raw mode.\n\n"
	.align
_StringConst_75:
	.word	49			! length
	.ascii	"  4. See what happens when you hit cntl-D (EOF).\n"
	.align
_StringConst_74:
	.word	110			! length
	.ascii	"  3. See what happens when you hit keys labelled SPACE, ENTER/RETURN, TAB, DEL/BACKSPACE, ARROW KEYS and ESC.\n"
	.align
_StringConst_73:
	.word	92			! length
	.ascii	"  2. See what happens with characters like cntl-H (Backspace), cntl-J (NL) and cntl-M (CR).\n"
	.align
_StringConst_72:
	.word	33			! length
	.ascii	"  1. Start by typing \"abcABC123\"\n"
	.align
_StringConst_71:
	.word	85			! length
	.ascii	"This test waits for a single character and then prints the value of that character.\n\n"
	.align
_StringConst_70:
	.word	34			! length
	.ascii	"\n==========  KeyTest  ==========\n\n"
	.align
_StringConst_69:
	.word	40			! length
	.ascii	"\n==========  Test Complete  ==========\n\n"
	.align
_StringConst_68:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_67:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_66:
	.word	99			! length
	.ascii	"\n**************************  ERROR: The user-level buffer was modified  **************************\n"
	.align
_StringConst_65:
	.word	42			! length
	.ascii	"The buffer was not modified, as expected.\n"
	.align
_StringConst_64:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_63:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 0; returned value"
	.align
_StringConst_62:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_61:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_60:
	.word	55			! length
	.ascii	"\nPlease type control-D.  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_59:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_58:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_57:
	.word	101			! length
	.ascii	"\n**************************  ERROR: The user-level buffer is not correct  **************************\n"
	.align
_StringConst_56:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_55:
	.word	10			! length
	.ascii	"01\b3456789"
	.align
_StringConst_54:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 1; returned value"
	.align
_StringConst_53:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_52:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_51:
	.word	55			! length
	.ascii	"\nPlease type control-H.  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_50:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_49:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_48:
	.word	101			! length
	.ascii	"\n**************************  ERROR: The user-level buffer is not correct  **************************\n"
	.align
_StringConst_47:
	.word	84			! length
	.ascii	"The buffer was updated correctly; The kernel failed to translate CR into a NEWLINE.\n"
	.align
_StringConst_46:
	.word	10			! length
	.ascii	"01\r3456789"
	.align
_StringConst_45:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_44:
	.word	10			! length
	.ascii	"01\n3456789"
	.align
_StringConst_43:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 1; returned value"
	.align
_StringConst_42:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_41:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_40:
	.word	55			! length
	.ascii	"\nPlease type control-M.  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_39:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_38:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_37:
	.word	101			! length
	.ascii	"\n**************************  ERROR: The user-level buffer is not correct  **************************\n"
	.align
_StringConst_36:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_35:
	.word	10			! length
	.ascii	"01\n3456789"
	.align
_StringConst_34:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 1; returned value"
	.align
_StringConst_33:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_32:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_31:
	.word	55			! length
	.ascii	"\nPlease type control-J.  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_30:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_29:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_28:
	.word	101			! length
	.ascii	"\n**************************  ERROR: The user-level buffer is not correct  **************************\n"
	.align
_StringConst_27:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_26:
	.word	10			! length
	.ascii	"01hel56lo9"
	.align
_StringConst_25:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 2; returned value"
	.align
_StringConst_24:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_23:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 3; returned value"
	.align
_StringConst_22:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_21:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_20:
	.word	53			! length
	.ascii	"\nPlease type \"hello\".  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_19:
	.word	2			! length
	.ascii	"\"\n"
	.align
_StringConst_18:
	.word	29			! length
	.ascii	"              The buffer is \""
	.align
_StringConst_17:
	.word	101			! length
	.ascii	"\n**************************  ERROR: The user-level buffer is not correct  **************************\n"
	.align
_StringConst_16:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_15:
	.word	10			! length
	.ascii	"01abc56789"
	.align
_StringConst_14:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 3; returned value"
	.align
_StringConst_13:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_12:
	.word	10			! length
	.ascii	"0123456789"
	.align
_StringConst_11:
	.word	51			! length
	.ascii	"\nPlease type \"abc\".  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_10:
	.word	93			! length
	.ascii	"\n**************************  ERROR: Something strange was stored in the user-level buffer, ch"
	.align
_StringConst_9:
	.word	102			! length
	.ascii	"\n**************************  ERROR: The user-level buffer was not changed  **************************\n"
	.align
_StringConst_8:
	.word	34			! length
	.ascii	"The buffer was updated correctly.\n"
	.align
_StringConst_7:
	.word	86			! length
	.ascii	"\n**************************  ERROR: Returned value from Read was not 1; returned value"
	.align
_StringConst_6:
	.word	27			! length
	.ascii	"Returned value is correct.\n"
	.align
_StringConst_5:
	.word	48			! length
	.ascii	"Hit the \"a\" key.  Do not hit ENTER or RETURN...\n"
	.align
_StringConst_4:
	.word	58			! length
	.ascii	"\n**************************  ERROR: Problems with open, fd"
	.align
_StringConst_3:
	.word	8			! length
	.ascii	"terminal"
	.align
_StringConst_2:
	.word	38			! length
	.ascii	"This test should be run in raw mode.\n\n"
	.align
_StringConst_1:
	.word	42			! length
	.ascii	"\n==========  BasicSerialTest  ==========\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xf1e9d27c,r3		! .  hashVal = -236334468
	call	_CheckVersion_P_TestProgram5_	! .
	cmp	r1,0			! .
	be	_Label_252		! .
	ret				! .
_Label_252:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"TestProgram5.c\0"
_packageName:
	.ascii	"TestProgram5\0"
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
_CheckVersion_P_TestProgram5_:
	.export	_CheckVersion_P_TestProgram5_
	set	0xf1e9d27c,r4		! myHashVal = -236334468
	cmp	r3,r4
	be	_Label_253
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
_Label_253:
	mov	0,r1
! Make sure _P_UserSystem_ has hash value 0xd3ed0851 (decimal -739440559)
	set	_packageName,r2
	set	0xd3ed0851,r3
	call	_CheckVersion_P_UserSystem_
	.import	_CheckVersion_P_UserSystem_
	cmp	r1,0
	bne	_Label_254
_Label_254:
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
	mov	15,r13		! source line 15
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CA",r10
	call	_function_245_TerminalErrorTest
! RETURN STATEMENT...
	mov	27,r13		! source line 27
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
	.word	_Label_255
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_255:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION BasicSerialTest  ===============
! 
_function_251_BasicSerialTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_251_BasicSerialTest,r1
	push	r1
	mov	134,r1
_Label_1273:
	push	r0
	sub	r1,1,r1
	bne	_Label_1273
	mov	35,r13		! source line 35
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! UserBuffer
!   NEW ARRAY Constructor...
!   _temp_257 = &_temp_256
	add	r14,-508,r1
	store	r1,[r14+-492]
!   _temp_257 = _temp_257 + 4
	load	[r14+-492],r1
	add	r1,4,r1
	store	r1,[r14+-492]
!   Next value...
	mov	10,r1
	store	r1,[r14+-488]
_Label_259:
!   Data Move: *_temp_257 = 63  (sizeInBytes=1)
	mov	63,r1
	load	[r14+-492],r2
	storeb	r1,[r2]
!   _temp_257 = _temp_257 + 1
	load	[r14+-492],r1
	add	r1,1,r1
	store	r1,[r14+-492]
!   _temp_258 = _temp_258 + -1
	load	[r14+-488],r1
	add	r1,-1,r1
	store	r1,[r14+-488]
!   if intNotZero (_temp_258) then goto _Label_259
	load	[r14+-488],r1
	cmp	r1,r0
	bne	_Label_259
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-508]
!   _temp_260 = &_temp_256
	add	r14,-508,r1
	store	r1,[r14+-484]
!   make sure array has size 10
	load	[r14+-484],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: UserBuffer = *_temp_260  (sizeInBytes=16)
	load	[r14+-484],r5
	add	r14,-532,r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! CALL STATEMENT...
!   _temp_261 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-480]
!   Prepare Argument: offset=8  value=_temp_261  sizeInBytes=4
	load	[r14+-480],r1
	store	r1,[r15+0]
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_262 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-476]
!   Prepare Argument: offset=8  value=_temp_262  sizeInBytes=4
	load	[r14+-476],r1
	store	r1,[r15+0]
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0AS",r10
!   _temp_263 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-472]
!   Prepare Argument: offset=8  value=_temp_263  sizeInBytes=4
	load	[r14+-472],r1
	store	r1,[r15+0]
!   Call the function
	mov	48,r13		! source line 48
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-512]
! IF STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_265		(int)
	load	[r14+-512],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_265
!	jmp	_Label_264
_Label_264:
! THEN...
	mov	50,r13		! source line 50
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_266 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-468]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
	load	[r14+-468],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+4]
!   Call the function
	mov	50,r13		! source line 50
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_265:
! CALL STATEMENT...
!   _temp_267 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-464]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+0]
!   Call the function
	mov	54,r13		! source line 54
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0AS",r10
!   ch = 120		(1 byte)
	mov	120,r1
	storeb	r1,[r14+-11]
! ASSIGNMENT STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0AS",r10
!   _temp_268 = &ch
	add	r14,-11,r1
	store	r1,[r14+-460]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_268  sizeInBytes=4
	load	[r14+-460],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	56,r13		! source line 56
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0IF",r10
!   if i != 1 then goto _Label_270		(int)
	load	[r14+-516],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_270
!	jmp	_Label_269
_Label_269:
! THEN...
	mov	59,r13		! source line 59
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_271 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-456]
!   Prepare Argument: offset=8  value=_temp_271  sizeInBytes=4
	load	[r14+-456],r1
	store	r1,[r15+0]
!   Call the function
	mov	59,r13		! source line 59
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_272
_Label_270:
! ELSE...
	mov	61,r13		! source line 61
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_273 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-452]
!   Prepare Argument: offset=8  value=_temp_273  sizeInBytes=4
	load	[r14+-452],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	61,r13		! source line 61
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_272:
! IF STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0IF",r10
!   _temp_276 = ch XOR 97		(bool)
	loadb	[r14+-11],r1
	mov	97,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_276 then goto _Label_275 else goto _Label_274
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_274
	jmp	_Label_275
_Label_274:
! THEN...
	mov	65,r13		! source line 65
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_277 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-448]
!   Prepare Argument: offset=8  value=_temp_277  sizeInBytes=4
	load	[r14+-448],r1
	store	r1,[r15+0]
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_278
_Label_275:
! ELSE...
	mov	66,r13		! source line 66
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0IF",r10
!   _temp_281 = ch XOR 120		(bool)
	loadb	[r14+-11],r1
	mov	120,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_281 then goto _Label_280 else goto _Label_279
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_279
	jmp	_Label_280
_Label_279:
! THEN...
	mov	67,r13		! source line 67
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_282 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-444]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+0]
!   Call the function
	mov	67,r13		! source line 67
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_283
_Label_280:
! ELSE...
	mov	69,r13		! source line 69
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_284 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-440]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-440],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=ch  sizeInBytes=1
	loadb	[r14+-11],r1
	storeb	r1,[r15+4]
!   Call the function
	mov	69,r13		! source line 69
	mov	"\0\0CA",r10
	call	_P_UserSystem_printCharVar
! END IF...
_Label_283:
! END IF...
_Label_278:
! CALL STATEMENT...
!   _temp_285 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-436]
!   Prepare Argument: offset=8  value=_temp_285  sizeInBytes=4
	load	[r14+-436],r1
	store	r1,[r15+0]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_286 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-432]
!   _temp_287 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-428]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-432],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_287  sizeInBytes=4
	load	[r14+-428],r1
	store	r1,[r15+4]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
!   _temp_289 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-420]
!   Move address of _temp_289 [2 ] into _temp_290
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
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
	store	r2,[r14+-416]
!   _temp_288 = _temp_290		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_288  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Call the function
	mov	75,r13		! source line 75
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0IF",r10
!   if i != 3 then goto _Label_292		(int)
	load	[r14+-516],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_292
!	jmp	_Label_291
_Label_291:
! THEN...
	mov	78,r13		! source line 78
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_293 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+0]
!   Call the function
	mov	78,r13		! source line 78
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_294
_Label_292:
! ELSE...
	mov	80,r13		! source line 80
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_295 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-408]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-408],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_294:
! IF STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0IF",r10
!   _temp_299 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-400]
!   _temp_300 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-396]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
	load	[r14+-400],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_300  sizeInBytes=4
	load	[r14+-396],r1
	store	r1,[r15+4]
!   Call the function
	mov	83,r13		! source line 83
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_298  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-404]
!   if intIsZero (_temp_298) then goto _Label_296
	load	[r14+-404],r1
	cmp	r1,r0
	be	_Label_296
	jmp	_Label_297
_Label_296:
! THEN...
	mov	84,r13		! source line 84
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_301 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-392]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
	load	[r14+-392],r1
	store	r1,[r15+0]
!   Call the function
	mov	84,r13		! source line 84
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_302
_Label_297:
! ELSE...
	mov	86,r13		! source line 86
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_303 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-388]
!   Prepare Argument: offset=8  value=_temp_303  sizeInBytes=4
	load	[r14+-388],r1
	store	r1,[r15+0]
!   Call the function
	mov	86,r13		! source line 86
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_304 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-384]
!   Prepare Argument: offset=8  value=_temp_304  sizeInBytes=4
	load	[r14+-384],r1
	store	r1,[r15+0]
!   Call the function
	mov	87,r13		! source line 87
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_305 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-380]
!   Prepare Argument: offset=8  value=_temp_305  sizeInBytes=4
	load	[r14+-380],r1
	store	r1,[r15+0]
!   Call the function
	mov	88,r13		! source line 88
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_306 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-376]
!   Prepare Argument: offset=8  value=_temp_306  sizeInBytes=4
	load	[r14+-376],r1
	store	r1,[r15+0]
!   Call the function
	mov	89,r13		! source line 89
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_302:
! CALL STATEMENT...
!   _temp_307 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-372]
!   Prepare Argument: offset=8  value=_temp_307  sizeInBytes=4
	load	[r14+-372],r1
	store	r1,[r15+0]
!   Call the function
	mov	93,r13		! source line 93
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_308 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-368]
!   _temp_309 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-364]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-368],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_309  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Call the function
	mov	94,r13		! source line 94
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0AS",r10
!   _temp_311 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-356]
!   Move address of _temp_311 [2 ] into _temp_312
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-356],r1
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
	store	r2,[r14+-352]
!   _temp_310 = _temp_312		(4 bytes)
	load	[r14+-352],r1
	store	r1,[r14+-360]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_310  sizeInBytes=4
	load	[r14+-360],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Call the function
	mov	95,r13		! source line 95
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	97,r13		! source line 97
	mov	"\0\0IF",r10
!   if i != 3 then goto _Label_314		(int)
	load	[r14+-516],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_314
!	jmp	_Label_313
_Label_313:
! THEN...
	mov	98,r13		! source line 98
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_315 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-348]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
	load	[r14+-348],r1
	store	r1,[r15+0]
!   Call the function
	mov	98,r13		! source line 98
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_316
_Label_314:
! ELSE...
	mov	100,r13		! source line 100
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_317 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-344]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-344],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	100,r13		! source line 100
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_316:
! ASSIGNMENT STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0AS",r10
!   _temp_319 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-336]
!   Move address of _temp_319 [7 ] into _temp_320
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-336],r1
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
	store	r2,[r14+-332]
!   _temp_318 = _temp_320		(4 bytes)
	load	[r14+-332],r1
	store	r1,[r14+-340]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_318  sizeInBytes=4
	load	[r14+-340],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Call the function
	mov	102,r13		! source line 102
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0IF",r10
!   if i != 2 then goto _Label_322		(int)
	load	[r14+-516],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_322
!	jmp	_Label_321
_Label_321:
! THEN...
	mov	105,r13		! source line 105
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_323 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-328]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_324
_Label_322:
! ELSE...
	mov	107,r13		! source line 107
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_325 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-324]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_324:
! IF STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0IF",r10
!   _temp_329 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-316]
!   _temp_330 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-312]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-316],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_330  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+4]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_328  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-320]
!   if intIsZero (_temp_328) then goto _Label_326
	load	[r14+-320],r1
	cmp	r1,r0
	be	_Label_326
	jmp	_Label_327
_Label_326:
! THEN...
	mov	111,r13		! source line 111
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_331 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-308]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_332
_Label_327:
! ELSE...
	mov	113,r13		! source line 113
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_333 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-304]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+0]
!   Call the function
	mov	113,r13		! source line 113
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_334 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-300]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_335 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-296]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Call the function
	mov	115,r13		! source line 115
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_336 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-292]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+0]
!   Call the function
	mov	116,r13		! source line 116
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_332:
! CALL STATEMENT...
!   _temp_337 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Call the function
	mov	120,r13		! source line 120
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_338 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-284]
!   _temp_339 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_339  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Call the function
	mov	121,r13		! source line 121
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0AS",r10
!   _temp_341 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-272]
!   Move address of _temp_341 [2 ] into _temp_342
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-272],r1
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
	store	r2,[r14+-268]
!   _temp_340 = _temp_342		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_340  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	122,r13		! source line 122
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0IF",r10
!   if i != 1 then goto _Label_344		(int)
	load	[r14+-516],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_344
!	jmp	_Label_343
_Label_343:
! THEN...
	mov	125,r13		! source line 125
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_345 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-264]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+0]
!   Call the function
	mov	125,r13		! source line 125
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_346
_Label_344:
! ELSE...
	mov	127,r13		! source line 127
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_347 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_346:
! IF STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0IF",r10
!   _temp_351 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-252]
!   _temp_352 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-248]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_352  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Call the function
	mov	130,r13		! source line 130
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_350  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-256]
!   if intIsZero (_temp_350) then goto _Label_348
	load	[r14+-256],r1
	cmp	r1,r0
	be	_Label_348
	jmp	_Label_349
_Label_348:
! THEN...
	mov	131,r13		! source line 131
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_353 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Call the function
	mov	131,r13		! source line 131
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_354
_Label_349:
! ELSE...
	mov	133,r13		! source line 133
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_355 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	133,r13		! source line 133
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_356 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-236]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Call the function
	mov	134,r13		! source line 134
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_357 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-232]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Call the function
	mov	135,r13		! source line 135
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_358 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Call the function
	mov	136,r13		! source line 136
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_354:
! CALL STATEMENT...
!   _temp_359 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-224]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Call the function
	mov	140,r13		! source line 140
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_360 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-220]
!   _temp_361 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_361  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Call the function
	mov	141,r13		! source line 141
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	142,r13		! source line 142
	mov	"\0\0AS",r10
!   _temp_363 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-208]
!   Move address of _temp_363 [2 ] into _temp_364
!     make sure index expr is >= 0
	mov	2,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-204]
!   _temp_362 = _temp_364		(4 bytes)
	load	[r14+-204],r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_362  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	142,r13		! source line 142
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0IF",r10
!   if i != 1 then goto _Label_366		(int)
	load	[r14+-516],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_366
!	jmp	_Label_365
_Label_365:
! THEN...
	mov	145,r13		! source line 145
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_367 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_367  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_368
_Label_366:
! ELSE...
	mov	147,r13		! source line 147
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_369 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	147,r13		! source line 147
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_368:
! IF STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0IF",r10
!   _temp_373 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-188]
!   _temp_374 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_374  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Call the function
	mov	150,r13		! source line 150
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_372  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_372) then goto _Label_370
	load	[r14+-192],r1
	cmp	r1,r0
	be	_Label_370
	jmp	_Label_371
_Label_370:
! THEN...
	mov	151,r13		! source line 151
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_375 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	151,r13		! source line 151
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_376
_Label_371:
! ELSE...
	mov	152,r13		! source line 152
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0IF",r10
!   _temp_380 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-172]
!   _temp_381 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_381  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Call the function
	mov	152,r13		! source line 152
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_379  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_379) then goto _Label_377
	load	[r14+-176],r1
	cmp	r1,r0
	be	_Label_377
	jmp	_Label_378
_Label_377:
! THEN...
	mov	153,r13		! source line 153
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_382 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_382  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	153,r13		! source line 153
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_383
_Label_378:
! ELSE...
	mov	155,r13		! source line 155
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_384 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	155,r13		! source line 155
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_385 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	156,r13		! source line 156
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_386 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	157,r13		! source line 157
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_387 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	158,r13		! source line 158
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_383:
! END IF...
_Label_376:
! CALL STATEMENT...
!   _temp_388 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	162,r13		! source line 162
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_389 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-140]
!   _temp_390 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_390  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Call the function
	mov	163,r13		! source line 163
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   _temp_392 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-128]
!   Move address of _temp_392 [2 ] into _temp_393
!     make sure index expr is >= 0
	mov	2,r2
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
	store	r2,[r14+-124]
!   _temp_391 = _temp_393		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_391  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if i != 1 then goto _Label_395		(int)
	load	[r14+-516],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_395
!	jmp	_Label_394
_Label_394:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_396 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_397
_Label_395:
! ELSE...
	mov	169,r13		! source line 169
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_398 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_397:
! IF STATEMENT...
	mov	172,r13		! source line 172
	mov	"\0\0IF",r10
!   _temp_402 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-108]
!   _temp_403 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_403  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_401  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_401) then goto _Label_399
	load	[r14+-112],r1
	cmp	r1,r0
	be	_Label_399
	jmp	_Label_400
_Label_399:
! THEN...
	mov	173,r13		! source line 173
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_404 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_404  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_405
_Label_400:
! ELSE...
	mov	175,r13		! source line 175
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_406 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_406  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_407 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_407  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_408 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_409 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_409  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_405:
! CALL STATEMENT...
!   _temp_410 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	182,r13		! source line 182
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_411 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-76]
!   _temp_412 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_411  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_412  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Call the function
	mov	183,r13		! source line 183
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCopy
! ASSIGNMENT STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0AS",r10
!   _temp_414 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-64]
!   Move address of _temp_414 [2 ] into _temp_415
!     make sure index expr is >= 0
	mov	2,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_413 = _temp_415		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_413  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	184,r13		! source line 184
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-516]
! IF STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_416
	load	[r14+-516],r1
	cmp	r1,r0
	be	_Label_416
	jmp	_Label_417
_Label_416:
! THEN...
	mov	187,r13		! source line 187
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_418 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_418  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	187,r13		! source line 187
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_419
_Label_417:
! ELSE...
	mov	189,r13		! source line 189
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_420 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-516],r1
	store	r1,[r15+4]
!   Call the function
	mov	189,r13		! source line 189
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_419:
! IF STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0IF",r10
!   _temp_424 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-44]
!   _temp_425 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_424  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_425  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrCmp
!   Retrieve Result: targetName=_temp_423  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_423) then goto _Label_421
	load	[r14+-48],r1
	cmp	r1,r0
	be	_Label_421
	jmp	_Label_422
_Label_421:
! THEN...
	mov	193,r13		! source line 193
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_426 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_426  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	193,r13		! source line 193
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_427
_Label_422:
! ELSE...
	mov	195,r13		! source line 195
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_428 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_428  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	195,r13		! source line 195
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_429 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_429  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_430 = &UserBuffer
	add	r14,-532,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_430  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	197,r13		! source line 197
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_431 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_431  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	198,r13		! source line 198
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_427:
! CALL STATEMENT...
!   _temp_432 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_432  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	201,r13		! source line 201
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-512],r1
	store	r1,[r15+0]
!   Call the function
	mov	202,r13		! source line 202
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0RE",r10
	add	r15,540,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_251_BasicSerialTest:
	.word	_sourceFileName
	.word	_Label_433
	.word	0		! total size of parameters
	.word	536		! frame size = 536
	.word	_Label_434
	.word	-16
	.word	4
	.word	_Label_435
	.word	-20
	.word	4
	.word	_Label_436
	.word	-24
	.word	4
	.word	_Label_437
	.word	-28
	.word	4
	.word	_Label_438
	.word	-32
	.word	4
	.word	_Label_439
	.word	-36
	.word	4
	.word	_Label_440
	.word	-40
	.word	4
	.word	_Label_441
	.word	-44
	.word	4
	.word	_Label_442
	.word	-48
	.word	4
	.word	_Label_443
	.word	-52
	.word	4
	.word	_Label_444
	.word	-56
	.word	4
	.word	_Label_445
	.word	-60
	.word	4
	.word	_Label_446
	.word	-64
	.word	4
	.word	_Label_447
	.word	-68
	.word	4
	.word	_Label_448
	.word	-72
	.word	4
	.word	_Label_449
	.word	-76
	.word	4
	.word	_Label_450
	.word	-80
	.word	4
	.word	_Label_451
	.word	-84
	.word	4
	.word	_Label_452
	.word	-88
	.word	4
	.word	_Label_453
	.word	-92
	.word	4
	.word	_Label_454
	.word	-96
	.word	4
	.word	_Label_455
	.word	-100
	.word	4
	.word	_Label_456
	.word	-104
	.word	4
	.word	_Label_457
	.word	-108
	.word	4
	.word	_Label_458
	.word	-112
	.word	4
	.word	_Label_459
	.word	-116
	.word	4
	.word	_Label_460
	.word	-120
	.word	4
	.word	_Label_461
	.word	-124
	.word	4
	.word	_Label_462
	.word	-128
	.word	4
	.word	_Label_463
	.word	-132
	.word	4
	.word	_Label_464
	.word	-136
	.word	4
	.word	_Label_465
	.word	-140
	.word	4
	.word	_Label_466
	.word	-144
	.word	4
	.word	_Label_467
	.word	-148
	.word	4
	.word	_Label_468
	.word	-152
	.word	4
	.word	_Label_469
	.word	-156
	.word	4
	.word	_Label_470
	.word	-160
	.word	4
	.word	_Label_471
	.word	-164
	.word	4
	.word	_Label_472
	.word	-168
	.word	4
	.word	_Label_473
	.word	-172
	.word	4
	.word	_Label_474
	.word	-176
	.word	4
	.word	_Label_475
	.word	-180
	.word	4
	.word	_Label_476
	.word	-184
	.word	4
	.word	_Label_477
	.word	-188
	.word	4
	.word	_Label_478
	.word	-192
	.word	4
	.word	_Label_479
	.word	-196
	.word	4
	.word	_Label_480
	.word	-200
	.word	4
	.word	_Label_481
	.word	-204
	.word	4
	.word	_Label_482
	.word	-208
	.word	4
	.word	_Label_483
	.word	-212
	.word	4
	.word	_Label_484
	.word	-216
	.word	4
	.word	_Label_485
	.word	-220
	.word	4
	.word	_Label_486
	.word	-224
	.word	4
	.word	_Label_487
	.word	-228
	.word	4
	.word	_Label_488
	.word	-232
	.word	4
	.word	_Label_489
	.word	-236
	.word	4
	.word	_Label_490
	.word	-240
	.word	4
	.word	_Label_491
	.word	-244
	.word	4
	.word	_Label_492
	.word	-248
	.word	4
	.word	_Label_493
	.word	-252
	.word	4
	.word	_Label_494
	.word	-256
	.word	4
	.word	_Label_495
	.word	-260
	.word	4
	.word	_Label_496
	.word	-264
	.word	4
	.word	_Label_497
	.word	-268
	.word	4
	.word	_Label_498
	.word	-272
	.word	4
	.word	_Label_499
	.word	-276
	.word	4
	.word	_Label_500
	.word	-280
	.word	4
	.word	_Label_501
	.word	-284
	.word	4
	.word	_Label_502
	.word	-288
	.word	4
	.word	_Label_503
	.word	-292
	.word	4
	.word	_Label_504
	.word	-296
	.word	4
	.word	_Label_505
	.word	-300
	.word	4
	.word	_Label_506
	.word	-304
	.word	4
	.word	_Label_507
	.word	-308
	.word	4
	.word	_Label_508
	.word	-312
	.word	4
	.word	_Label_509
	.word	-316
	.word	4
	.word	_Label_510
	.word	-320
	.word	4
	.word	_Label_511
	.word	-324
	.word	4
	.word	_Label_512
	.word	-328
	.word	4
	.word	_Label_513
	.word	-332
	.word	4
	.word	_Label_514
	.word	-336
	.word	4
	.word	_Label_515
	.word	-340
	.word	4
	.word	_Label_516
	.word	-344
	.word	4
	.word	_Label_517
	.word	-348
	.word	4
	.word	_Label_518
	.word	-352
	.word	4
	.word	_Label_519
	.word	-356
	.word	4
	.word	_Label_520
	.word	-360
	.word	4
	.word	_Label_521
	.word	-364
	.word	4
	.word	_Label_522
	.word	-368
	.word	4
	.word	_Label_523
	.word	-372
	.word	4
	.word	_Label_524
	.word	-376
	.word	4
	.word	_Label_525
	.word	-380
	.word	4
	.word	_Label_526
	.word	-384
	.word	4
	.word	_Label_527
	.word	-388
	.word	4
	.word	_Label_528
	.word	-392
	.word	4
	.word	_Label_529
	.word	-396
	.word	4
	.word	_Label_530
	.word	-400
	.word	4
	.word	_Label_531
	.word	-404
	.word	4
	.word	_Label_532
	.word	-408
	.word	4
	.word	_Label_533
	.word	-412
	.word	4
	.word	_Label_534
	.word	-416
	.word	4
	.word	_Label_535
	.word	-420
	.word	4
	.word	_Label_536
	.word	-424
	.word	4
	.word	_Label_537
	.word	-428
	.word	4
	.word	_Label_538
	.word	-432
	.word	4
	.word	_Label_539
	.word	-436
	.word	4
	.word	_Label_540
	.word	-440
	.word	4
	.word	_Label_541
	.word	-444
	.word	4
	.word	_Label_542
	.word	-9
	.word	1
	.word	_Label_543
	.word	-448
	.word	4
	.word	_Label_544
	.word	-10
	.word	1
	.word	_Label_545
	.word	-452
	.word	4
	.word	_Label_546
	.word	-456
	.word	4
	.word	_Label_547
	.word	-460
	.word	4
	.word	_Label_548
	.word	-464
	.word	4
	.word	_Label_549
	.word	-468
	.word	4
	.word	_Label_550
	.word	-472
	.word	4
	.word	_Label_551
	.word	-476
	.word	4
	.word	_Label_552
	.word	-480
	.word	4
	.word	_Label_553
	.word	-484
	.word	4
	.word	_Label_554
	.word	-488
	.word	4
	.word	_Label_555
	.word	-492
	.word	4
	.word	_Label_556
	.word	-508
	.word	16
	.word	_Label_557
	.word	-512
	.word	4
	.word	_Label_558
	.word	-516
	.word	4
	.word	_Label_559
	.word	-11
	.word	1
	.word	_Label_560
	.word	-532
	.word	16
	.word	0
_Label_433:
	.ascii	"BasicSerialTest\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_542:
	.byte	'C'
	.ascii	"_temp_281\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_544:
	.byte	'C'
	.ascii	"_temp_276\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_557:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_558:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_559:
	.byte	'C'
	.ascii	"ch\0"
	.align
_Label_560:
	.byte	'A'
	.ascii	"UserBuffer\0"
	.align
! 
! ===============  FUNCTION KeyTest  ===============
! 
_function_250_KeyTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_250_KeyTest,r1
	push	r1
	mov	27,r1
_Label_1274:
	push	r0
	sub	r1,1,r1
	bne	_Label_1274
	mov	208,r13		! source line 208
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_561 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_561  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	217,r13		! source line 217
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_562 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_562  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	218,r13		! source line 218
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_563 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_563  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	219,r13		! source line 219
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_564 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_564  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	220,r13		! source line 220
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_565 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_565  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	221,r13		! source line 221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_566 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_566  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	222,r13		! source line 222
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_567 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_567  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	223,r13		! source line 223
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_568 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_568  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_569 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	225,r13		! source line 225
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_570 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_570  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	226,r13		! source line 226
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0AS",r10
!   _temp_571 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_571  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	228,r13		! source line 228
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! IF STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_573		(int)
	load	[r14+-100],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_573
!	jmp	_Label_572
_Label_572:
! THEN...
	mov	230,r13		! source line 230
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_574 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Call the function
	mov	230,r13		! source line 230
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_573:
! WHILE STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0WH",r10
_Label_575:
!	jmp	_Label_576
_Label_576:
	mov	233,r13		! source line 233
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   _temp_578 = &ch
	add	r14,-10,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_578  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	235,r13		! source line 235
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_579
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_579
	jmp	_Label_580
_Label_579:
! THEN...
	mov	237,r13		! source line 237
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_581 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_581  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	237,r13		! source line 237
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_582
_Label_580:
! ELSE...
	mov	238,r13		! source line 238
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0IF",r10
!   if i == 1 then goto _Label_584		(int)
	load	[r14+-104],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_584
!	jmp	_Label_583
_Label_583:
! THEN...
	mov	239,r13		! source line 239
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_585 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_585  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	239,r13		! source line 239
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
	jmp	_Label_586
_Label_584:
! ELSE...
	mov	241,r13		! source line 241
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_587 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_587  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	241,r13		! source line 241
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_588 = charToInt (ch)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_588  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_589 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_589  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	243,r13		! source line 243
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_590 = charToInt (ch)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_590  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_591 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_591  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_586:
! END IF...
_Label_582:
! IF STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0IF",r10
!   _temp_594 = ch XOR 113		(bool)
	loadb	[r14+-10],r1
	mov	113,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_594 then goto _Label_593 else goto _Label_592
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_592
	jmp	_Label_593
_Label_592:
! THEN...
	mov	251,r13		! source line 251
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_595 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_595  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	251,r13		! source line 251
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	252,r13		! source line 252
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0RE",r10
	add	r15,112,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_593:
! END WHILE...
	jmp	_Label_575
_Label_577:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_250_KeyTest:
	.word	_sourceFileName
	.word	_Label_596
	.word	0		! total size of parameters
	.word	108		! frame size = 108
	.word	_Label_597
	.word	-16
	.word	4
	.word	_Label_598
	.word	-9
	.word	1
	.word	_Label_599
	.word	-20
	.word	4
	.word	_Label_600
	.word	-24
	.word	4
	.word	_Label_601
	.word	-28
	.word	4
	.word	_Label_602
	.word	-32
	.word	4
	.word	_Label_603
	.word	-36
	.word	4
	.word	_Label_604
	.word	-40
	.word	4
	.word	_Label_605
	.word	-44
	.word	4
	.word	_Label_606
	.word	-48
	.word	4
	.word	_Label_607
	.word	-52
	.word	4
	.word	_Label_608
	.word	-56
	.word	4
	.word	_Label_609
	.word	-60
	.word	4
	.word	_Label_610
	.word	-64
	.word	4
	.word	_Label_611
	.word	-68
	.word	4
	.word	_Label_612
	.word	-72
	.word	4
	.word	_Label_613
	.word	-76
	.word	4
	.word	_Label_614
	.word	-80
	.word	4
	.word	_Label_615
	.word	-84
	.word	4
	.word	_Label_616
	.word	-88
	.word	4
	.word	_Label_617
	.word	-92
	.word	4
	.word	_Label_618
	.word	-96
	.word	4
	.word	_Label_619
	.word	-100
	.word	4
	.word	_Label_620
	.word	-104
	.word	4
	.word	_Label_621
	.word	-10
	.word	1
	.word	0
_Label_596:
	.ascii	"KeyTest\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_598:
	.byte	'C'
	.ascii	"_temp_594\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_619:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_620:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_621:
	.byte	'C'
	.ascii	"ch\0"
	.align
! 
! ===============  FUNCTION EchoTest  ===============
! 
_function_249_EchoTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_249_EchoTest,r1
	push	r1
	mov	30,r1
_Label_1275:
	push	r0
	sub	r1,1,r1
	bne	_Label_1275
	mov	261,r13		! source line 261
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_622 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_622  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	270,r13		! source line 270
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_623 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_623  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	272,r13		! source line 272
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_624 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_624  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_625 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_625  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	274,r13		! source line 274
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_626 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_626  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_627 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_627  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	276,r13		! source line 276
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_628 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_628  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	277,r13		! source line 277
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_629 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_629  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_630 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_630  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	279,r13		! source line 279
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_631 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_631  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	280,r13		! source line 280
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_632 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_632  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	281,r13		! source line 281
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_633 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_633  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	282,r13		! source line 282
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_634 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_634  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	283,r13		! source line 283
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_635 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_635  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	284,r13		! source line 284
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_636 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_636  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	285,r13		! source line 285
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_637 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_637  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	286,r13		! source line 286
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	288,r13		! source line 288
	mov	"\0\0AS",r10
!   _temp_638 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_638  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	288,r13		! source line 288
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! IF STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_640		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_640
!	jmp	_Label_639
_Label_639:
! THEN...
	mov	290,r13		! source line 290
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_641 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_641  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	290,r13		! source line 290
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_640:
! WHILE STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0WH",r10
_Label_642:
!	jmp	_Label_643
_Label_643:
	mov	293,r13		! source line 293
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   _temp_645 = &ch
	add	r14,-10,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_645  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	295,r13		! source line 295
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_646
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_646
	jmp	_Label_647
_Label_646:
! THEN...
	mov	298,r13		! source line 298
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_648 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_648  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	298,r13		! source line 298
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_649
_Label_647:
! ELSE...
	mov	299,r13		! source line 299
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0IF",r10
!   if i == 1 then goto _Label_651		(int)
	load	[r14+-116],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_651
!	jmp	_Label_650
_Label_650:
! THEN...
	mov	300,r13		! source line 300
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_652 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_652  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Call the function
	mov	300,r13		! source line 300
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
	jmp	_Label_653
_Label_651:
! ELSE...
	mov	303,r13		! source line 303
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0AS",r10
!   _temp_654 = &ch
	add	r14,-10,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_654  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if i == 1 then goto _Label_656		(int)
	load	[r14+-116],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_656
!	jmp	_Label_655
_Label_655:
! THEN...
	mov	305,r13		! source line 305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_657 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_657  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Call the function
	mov	305,r13		! source line 305
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_656:
! END IF...
_Label_653:
! END IF...
_Label_649:
! IF STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0IF",r10
!   _temp_660 = ch XOR 113		(bool)
	loadb	[r14+-10],r1
	mov	113,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_660 then goto _Label_659 else goto _Label_658
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_658
	jmp	_Label_659
_Label_658:
! THEN...
	mov	310,r13		! source line 310
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_661 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_661  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	310,r13		! source line 310
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	311,r13		! source line 311
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_659:
! END WHILE...
	jmp	_Label_642
_Label_644:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_249_EchoTest:
	.word	_sourceFileName
	.word	_Label_662
	.word	0		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_663
	.word	-16
	.word	4
	.word	_Label_664
	.word	-9
	.word	1
	.word	_Label_665
	.word	-20
	.word	4
	.word	_Label_666
	.word	-24
	.word	4
	.word	_Label_667
	.word	-28
	.word	4
	.word	_Label_668
	.word	-32
	.word	4
	.word	_Label_669
	.word	-36
	.word	4
	.word	_Label_670
	.word	-40
	.word	4
	.word	_Label_671
	.word	-44
	.word	4
	.word	_Label_672
	.word	-48
	.word	4
	.word	_Label_673
	.word	-52
	.word	4
	.word	_Label_674
	.word	-56
	.word	4
	.word	_Label_675
	.word	-60
	.word	4
	.word	_Label_676
	.word	-64
	.word	4
	.word	_Label_677
	.word	-68
	.word	4
	.word	_Label_678
	.word	-72
	.word	4
	.word	_Label_679
	.word	-76
	.word	4
	.word	_Label_680
	.word	-80
	.word	4
	.word	_Label_681
	.word	-84
	.word	4
	.word	_Label_682
	.word	-88
	.word	4
	.word	_Label_683
	.word	-92
	.word	4
	.word	_Label_684
	.word	-96
	.word	4
	.word	_Label_685
	.word	-100
	.word	4
	.word	_Label_686
	.word	-104
	.word	4
	.word	_Label_687
	.word	-108
	.word	4
	.word	_Label_688
	.word	-112
	.word	4
	.word	_Label_689
	.word	-116
	.word	4
	.word	_Label_690
	.word	-10
	.word	1
	.word	0
_Label_662:
	.ascii	"EchoTest\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_664:
	.byte	'C'
	.ascii	"_temp_660\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_688:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_689:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_690:
	.byte	'C'
	.ascii	"ch\0"
	.align
! 
! ===============  FUNCTION LineEchoTest  ===============
! 
_function_248_LineEchoTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_248_LineEchoTest,r1
	push	r1
	mov	58,r1
_Label_1276:
	push	r0
	sub	r1,1,r1
	bne	_Label_1276
	mov	322,r13		! source line 322
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! smallBuff
!   NEW ARRAY Constructor...
!   _temp_692 = &_temp_691
	add	r14,-180,r1
	store	r1,[r14+-144]
!   _temp_692 = _temp_692 + 4
	load	[r14+-144],r1
	add	r1,4,r1
	store	r1,[r14+-144]
!   Next value...
	mov	30,r1
	store	r1,[r14+-140]
_Label_694:
!   Data Move: *_temp_692 = 45  (sizeInBytes=1)
	mov	45,r1
	load	[r14+-144],r2
	storeb	r1,[r2]
!   _temp_692 = _temp_692 + 1
	load	[r14+-144],r1
	add	r1,1,r1
	store	r1,[r14+-144]
!   _temp_693 = _temp_693 + -1
	load	[r14+-140],r1
	add	r1,-1,r1
	store	r1,[r14+-140]
!   if intNotZero (_temp_693) then goto _Label_694
	load	[r14+-140],r1
	cmp	r1,r0
	bne	_Label_694
!   Initialize the array size...
	mov	30,r1
	store	r1,[r14+-180]
!   _temp_695 = &_temp_691
	add	r14,-180,r1
	store	r1,[r14+-136]
!   make sure array has size 30
	load	[r14+-136],r1
	load	[r1],r1
	set	30, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: smallBuff = *_temp_695  (sizeInBytes=36)
	load	[r14+-136],r5
	add	r14,-228,r4
	mov	9,r3
_Label_1277:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1277
! CALL STATEMENT...
!   _temp_696 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_696  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	331,r13		! source line 331
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_697 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_697  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	332,r13		! source line 332
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+0]
!   Call the function
	mov	333,r13		! source line 333
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_698 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_698  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_699 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	335,r13		! source line 335
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_700 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_701 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	337,r13		! source line 337
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_702 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	338,r13		! source line 338
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_703 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	339,r13		! source line 339
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_704 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	340,r13		! source line 340
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_705 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_705  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	341,r13		! source line 341
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_706 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_706  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	342,r13		! source line 342
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_707 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_707  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	343,r13		! source line 343
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_708 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_708  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	344,r13		! source line 344
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_709 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_709  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	345,r13		! source line 345
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_710 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	346,r13		! source line 346
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_711 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	347,r13		! source line 347
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_712 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	348,r13		! source line 348
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0AS",r10
!   _temp_713 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	350,r13		! source line 350
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! IF STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_715		(int)
	load	[r14+-184],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_715
!	jmp	_Label_714
_Label_714:
! THEN...
	mov	352,r13		! source line 352
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_716 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_716  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Call the function
	mov	352,r13		! source line 352
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_715:
! WHILE STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0WH",r10
_Label_717:
!	jmp	_Label_718
_Label_718:
	mov	355,r13		! source line 355
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	356,r13		! source line 356
	mov	"\0\0AS",r10
!   _temp_721 = &smallBuff
	add	r14,-228,r1
	store	r1,[r14+-52]
!   Move address of _temp_721 [0 ] into _temp_722
!     make sure index expr is >= 0
	mov	0,r2
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
	store	r2,[r14+-48]
!   _temp_720 = _temp_722		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_720  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	356,r13		! source line 356
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-188]
! CALL STATEMENT...
!   _temp_723 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_723  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Call the function
	mov	357,r13		! source line 357
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0AS",r10
!   _temp_725 = &smallBuff
	add	r14,-228,r1
	store	r1,[r14+-36]
!   Move address of _temp_725 [0 ] into _temp_726
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
!   _temp_724 = _temp_726		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_724  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+8]
!   Call the function
	mov	358,r13		! source line 358
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
! IF STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0IF",r10
!   if i == j then goto _Label_728		(int)
	load	[r14+-188],r1
	load	[r14+-192],r2
	cmp	r1,r2
	be	_Label_728
!	jmp	_Label_727
_Label_727:
! THEN...
	mov	360,r13		! source line 360
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_729 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=j  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+4]
!   Call the function
	mov	360,r13		! source line 360
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_728:
! IF STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0IF",r10
!   _temp_733 = &smallBuff
	add	r14,-228,r1
	store	r1,[r14+-24]
!   Move address of _temp_733 [0 ] into _temp_734
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
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
!   Data Move: _temp_732 = *_temp_734  (sizeInBytes=1)
	load	[r14+-20],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_735 = _temp_732 XOR 113		(bool)
	loadb	[r14+-10],r1
	mov	113,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_735 then goto _Label_731 else goto _Label_730
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_730
	jmp	_Label_731
_Label_730:
! THEN...
	mov	363,r13		! source line 363
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_736 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	363,r13		! source line 363
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	364,r13		! source line 364
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	365,r13		! source line 365
	mov	"\0\0RE",r10
	add	r15,236,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_731:
! END WHILE...
	jmp	_Label_717
_Label_719:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_248_LineEchoTest:
	.word	_sourceFileName
	.word	_Label_737
	.word	0		! total size of parameters
	.word	232		! frame size = 232
	.word	_Label_738
	.word	-16
	.word	4
	.word	_Label_739
	.word	-9
	.word	1
	.word	_Label_740
	.word	-20
	.word	4
	.word	_Label_741
	.word	-24
	.word	4
	.word	_Label_742
	.word	-10
	.word	1
	.word	_Label_743
	.word	-28
	.word	4
	.word	_Label_744
	.word	-32
	.word	4
	.word	_Label_745
	.word	-36
	.word	4
	.word	_Label_746
	.word	-40
	.word	4
	.word	_Label_747
	.word	-44
	.word	4
	.word	_Label_748
	.word	-48
	.word	4
	.word	_Label_749
	.word	-52
	.word	4
	.word	_Label_750
	.word	-56
	.word	4
	.word	_Label_751
	.word	-60
	.word	4
	.word	_Label_752
	.word	-64
	.word	4
	.word	_Label_753
	.word	-68
	.word	4
	.word	_Label_754
	.word	-72
	.word	4
	.word	_Label_755
	.word	-76
	.word	4
	.word	_Label_756
	.word	-80
	.word	4
	.word	_Label_757
	.word	-84
	.word	4
	.word	_Label_758
	.word	-88
	.word	4
	.word	_Label_759
	.word	-92
	.word	4
	.word	_Label_760
	.word	-96
	.word	4
	.word	_Label_761
	.word	-100
	.word	4
	.word	_Label_762
	.word	-104
	.word	4
	.word	_Label_763
	.word	-108
	.word	4
	.word	_Label_764
	.word	-112
	.word	4
	.word	_Label_765
	.word	-116
	.word	4
	.word	_Label_766
	.word	-120
	.word	4
	.word	_Label_767
	.word	-124
	.word	4
	.word	_Label_768
	.word	-128
	.word	4
	.word	_Label_769
	.word	-132
	.word	4
	.word	_Label_770
	.word	-136
	.word	4
	.word	_Label_771
	.word	-140
	.word	4
	.word	_Label_772
	.word	-144
	.word	4
	.word	_Label_773
	.word	-180
	.word	36
	.word	_Label_774
	.word	-184
	.word	4
	.word	_Label_775
	.word	-188
	.word	4
	.word	_Label_776
	.word	-192
	.word	4
	.word	_Label_777
	.word	-228
	.word	36
	.word	0
_Label_737:
	.ascii	"LineEchoTest\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_739:
	.byte	'C'
	.ascii	"_temp_735\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_742:
	.byte	'C'
	.ascii	"_temp_732\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_774:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_775:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_776:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_777:
	.byte	'A'
	.ascii	"smallBuff\0"
	.align
! 
! ===============  FUNCTION EOFTest  ===============
! 
_function_247_EOFTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_247_EOFTest,r1
	push	r1
	mov	39,r1
_Label_1278:
	push	r0
	sub	r1,1,r1
	bne	_Label_1278
	mov	373,r13		! source line 373
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! buff
!   NEW ARRAY Constructor...
!   _temp_779 = &_temp_778
	add	r14,-132,r1
	store	r1,[r14+-120]
!   _temp_779 = _temp_779 + 4
	load	[r14+-120],r1
	add	r1,4,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_779 = 49  (sizeInBytes=1)
	mov	49,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_779 = _temp_779 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_779 = 50  (sizeInBytes=1)
	mov	50,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_779 = _temp_779 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_779 = 51  (sizeInBytes=1)
	mov	51,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_779 = _temp_779 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_779 = 52  (sizeInBytes=1)
	mov	52,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_779 = _temp_779 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_779 = 53  (sizeInBytes=1)
	mov	53,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_779 = _temp_779 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Next value...
!   Data Move: *_temp_779 = 54  (sizeInBytes=1)
	mov	54,r1
	load	[r14+-120],r2
	storeb	r1,[r2]
!   _temp_779 = _temp_779 + 1
	load	[r14+-120],r1
	add	r1,1,r1
	store	r1,[r14+-120]
!   Initialize the array size...
	mov	6,r1
	store	r1,[r14+-132]
!   _temp_781 = &_temp_778
	add	r14,-132,r1
	store	r1,[r14+-112]
!   make sure array has size 6
	load	[r14+-112],r1
	load	[r1],r1
	set	6, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: buff = *_temp_781  (sizeInBytes=12)
	load	[r14+-112],r5
	add	r14,-152,r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
! CALL STATEMENT...
!   _temp_782 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_782  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	382,r13		! source line 382
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_783 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_783  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	383,r13		! source line 383
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_784 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_784  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	384,r13		! source line 384
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_785 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_785  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	385,r13		! source line 385
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_786 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_786  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	386,r13		! source line 386
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_787 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_787  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	387,r13		! source line 387
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_788 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_788  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	388,r13		! source line 388
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0AS",r10
!   _temp_789 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_789  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	390,r13		! source line 390
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! IF STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_791		(int)
	load	[r14+-136],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_791
!	jmp	_Label_790
_Label_790:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_792 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_792  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fd  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! END IF...
_Label_791:
! CALL STATEMENT...
!   _temp_793 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_793  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0AS",r10
!   _temp_795 = &buff
	add	r14,-152,r1
	store	r1,[r14+-64]
!   Move address of _temp_795 [0 ] into _temp_796
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_794 = _temp_796		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_794  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+8]
!   Call the function
	mov	396,r13		! source line 396
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_function_244_Check
! IF STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0IF",r10
!   _temp_800 = &buff
	add	r14,-152,r1
	store	r1,[r14+-56]
!   _temp_801 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_800  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_801  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   Retrieve Result: targetName=_temp_799  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_799 then goto _Label_798 else goto _Label_797
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_797
	jmp	_Label_798
_Label_797:
! THEN...
	mov	399,r13		! source line 399
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_802 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_802  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_798:
! CALL STATEMENT...
!   _temp_803 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_803  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0AS",r10
!   _temp_805 = &buff
	add	r14,-152,r1
	store	r1,[r14+-36]
!   Move address of _temp_805 [0 ] into _temp_806
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
!   _temp_804 = _temp_806		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_804  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+8]
!   Call the function
	mov	403,r13		! source line 403
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Call the function
	mov	404,r13		! source line 404
	mov	"\0\0CA",r10
	call	_function_244_Check
! IF STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0IF",r10
!   _temp_810 = &buff
	add	r14,-152,r1
	store	r1,[r14+-28]
!   _temp_811 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_810  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_811  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Call the function
	mov	405,r13		! source line 405
	mov	"\0\0CA",r10
	call	_P_UserSystem_StrEqual
!   Retrieve Result: targetName=_temp_809  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_809 then goto _Label_808 else goto _Label_807
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_807
	jmp	_Label_808
_Label_807:
! THEN...
	mov	406,r13		! source line 406
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_812 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_812  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	406,r13		! source line 406
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_808:
! CALL STATEMENT...
!   _temp_813 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_813  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	410,r13		! source line 410
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! RETURN STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0RE",r10
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_247_EOFTest:
	.word	_sourceFileName
	.word	_Label_814
	.word	0		! total size of parameters
	.word	156		! frame size = 156
	.word	_Label_815
	.word	-16
	.word	4
	.word	_Label_816
	.word	-20
	.word	4
	.word	_Label_817
	.word	-24
	.word	4
	.word	_Label_818
	.word	-28
	.word	4
	.word	_Label_819
	.word	-9
	.word	1
	.word	_Label_820
	.word	-32
	.word	4
	.word	_Label_821
	.word	-36
	.word	4
	.word	_Label_822
	.word	-40
	.word	4
	.word	_Label_823
	.word	-44
	.word	4
	.word	_Label_824
	.word	-48
	.word	4
	.word	_Label_825
	.word	-52
	.word	4
	.word	_Label_826
	.word	-56
	.word	4
	.word	_Label_827
	.word	-10
	.word	1
	.word	_Label_828
	.word	-60
	.word	4
	.word	_Label_829
	.word	-64
	.word	4
	.word	_Label_830
	.word	-68
	.word	4
	.word	_Label_831
	.word	-72
	.word	4
	.word	_Label_832
	.word	-76
	.word	4
	.word	_Label_833
	.word	-80
	.word	4
	.word	_Label_834
	.word	-84
	.word	4
	.word	_Label_835
	.word	-88
	.word	4
	.word	_Label_836
	.word	-92
	.word	4
	.word	_Label_837
	.word	-96
	.word	4
	.word	_Label_838
	.word	-100
	.word	4
	.word	_Label_839
	.word	-104
	.word	4
	.word	_Label_840
	.word	-108
	.word	4
	.word	_Label_841
	.word	-112
	.word	4
	.word	_Label_842
	.word	-116
	.word	4
	.word	_Label_843
	.word	-120
	.word	4
	.word	_Label_844
	.word	-132
	.word	12
	.word	_Label_845
	.word	-136
	.word	4
	.word	_Label_846
	.word	-140
	.word	4
	.word	_Label_847
	.word	-152
	.word	12
	.word	0
_Label_814:
	.ascii	"EOFTest\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_819:
	.byte	'C'
	.ascii	"_temp_809\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_827:
	.byte	'C'
	.ascii	"_temp_799\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_845:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_846:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_847:
	.byte	'A'
	.ascii	"buff\0"
	.align
! 
! ===============  FUNCTION OpenCloseTerminalTest  ===============
! 
_function_246_OpenCloseTerminalTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_246_OpenCloseTerminalTest,r1
	push	r1
	mov	35,r1
_Label_1279:
	push	r0
	sub	r1,1,r1
	bne	_Label_1279
	mov	416,r13		! source line 416
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_848 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_848  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	422,r13		! source line 422
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_853 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-128]
!   Calculate and save the FOR-LOOP ending value
!   _temp_854 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-124]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_853  (sizeInBytes=4)
	load	[r14+-128],r1
	store	r1,[r14+-140]
_Label_849:
!   Perform the FOR-LOOP termination test
!   if j > _temp_854 then goto _Label_852		
	load	[r14+-140],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_852
_Label_850:
	mov	426,r13		! source line 426
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_855 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_855  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_860 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-116]
!   Calculate and save the FOR-LOOP ending value
!   _temp_861 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-112]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_860  (sizeInBytes=4)
	load	[r14+-116],r1
	store	r1,[r14+-136]
_Label_856:
!   Perform the FOR-LOOP termination test
!   if i > _temp_861 then goto _Label_859		
	load	[r14+-136],r1
	load	[r14+-112],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_859
_Label_857:
	mov	428,r13		! source line 428
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
!   _temp_862 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_862  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	429,r13		! source line 429
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_864		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_864
!	jmp	_Label_863
_Label_863:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_865 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_865  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	431,r13		! source line 431
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_866 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_866  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	433,r13		! source line 433
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_867
_Label_864:
! ELSE...
	mov	434,r13		! source line 434
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0IF",r10
!   if fd == i then goto _Label_869		(int)
	load	[r14+-144],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_869
!	jmp	_Label_868
_Label_868:
! THEN...
	mov	435,r13		! source line 435
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_870 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_870  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	435,r13		! source line 435
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_871 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_871  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_869:
! END IF...
_Label_867:
!   Increment the FOR-LOOP index variable and jump back
_Label_858:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_856
! END FOR
_Label_859:
! CALL STATEMENT...
!   _temp_872 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_872  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	442,r13		! source line 442
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_877 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_878 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_877  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-136]
_Label_873:
!   Perform the FOR-LOOP termination test
!   if i > _temp_878 then goto _Label_876		
	load	[r14+-136],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_876
_Label_874:
	mov	443,r13		! source line 443
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	444,r13		! source line 444
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
!   Increment the FOR-LOOP index variable and jump back
_Label_875:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_873
! END FOR
_Label_876:
!   Increment the FOR-LOOP index variable and jump back
_Label_851:
!   j = j + 1
	load	[r14+-140],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
	jmp	_Label_849
! END FOR
_Label_852:
! CALL STATEMENT...
!   _temp_879 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_879  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	448,r13		! source line 448
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_884 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_885 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_884  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-136]
_Label_880:
!   Perform the FOR-LOOP termination test
!   if i > _temp_885 then goto _Label_883		
	load	[r14+-136],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_883
_Label_881:
	mov	449,r13		! source line 449
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0AS",r10
!   _temp_886 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_886  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	450,r13		! source line 450
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_888		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_888
!	jmp	_Label_887
_Label_887:
! THEN...
	mov	452,r13		! source line 452
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_889 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_889  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	452,r13		! source line 452
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	453,r13		! source line 453
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_890 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_890  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	454,r13		! source line 454
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_891
_Label_888:
! ELSE...
	mov	455,r13		! source line 455
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0IF",r10
!   if fd == i then goto _Label_893		(int)
	load	[r14+-144],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_893
!	jmp	_Label_892
_Label_892:
! THEN...
	mov	456,r13		! source line 456
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_894 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_894  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	456,r13		! source line 456
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	457,r13		! source line 457
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_895 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_895  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	458,r13		! source line 458
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_893:
! END IF...
_Label_891:
!   Increment the FOR-LOOP index variable and jump back
_Label_882:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_880
! END FOR
_Label_883:
! CALL STATEMENT...
!   _temp_896 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_896  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	462,r13		! source line 462
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0AS",r10
!   _temp_897 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_897  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	463,r13		! source line 463
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0IF",r10
!   if fd != -1 then goto _Label_899		(int)
	load	[r14+-144],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_899
!	jmp	_Label_898
_Label_898:
! THEN...
	mov	465,r13		! source line 465
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_900 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	465,r13		! source line 465
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_901
_Label_899:
! ELSE...
	mov	467,r13		! source line 467
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_902 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_902  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	467,r13		! source line 467
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	468,r13		! source line 468
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_903 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_903  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	469,r13		! source line 469
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_901:
! CALL STATEMENT...
!   _temp_904 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_904  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	473,r13		! source line 473
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_909 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_910 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_909  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-136]
_Label_905:
!   Perform the FOR-LOOP termination test
!   if i > _temp_910 then goto _Label_908		
	load	[r14+-136],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_908
_Label_906:
	mov	474,r13		! source line 474
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	475,r13		! source line 475
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
!   Increment the FOR-LOOP index variable and jump back
_Label_907:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_905
! END FOR
_Label_908:
! CALL STATEMENT...
!   _temp_911 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_911  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	478,r13		! source line 478
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_246_OpenCloseTerminalTest:
	.word	_sourceFileName
	.word	_Label_912
	.word	0		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_913
	.word	-12
	.word	4
	.word	_Label_914
	.word	-16
	.word	4
	.word	_Label_915
	.word	-20
	.word	4
	.word	_Label_916
	.word	-24
	.word	4
	.word	_Label_917
	.word	-28
	.word	4
	.word	_Label_918
	.word	-32
	.word	4
	.word	_Label_919
	.word	-36
	.word	4
	.word	_Label_920
	.word	-40
	.word	4
	.word	_Label_921
	.word	-44
	.word	4
	.word	_Label_922
	.word	-48
	.word	4
	.word	_Label_923
	.word	-52
	.word	4
	.word	_Label_924
	.word	-56
	.word	4
	.word	_Label_925
	.word	-60
	.word	4
	.word	_Label_926
	.word	-64
	.word	4
	.word	_Label_927
	.word	-68
	.word	4
	.word	_Label_928
	.word	-72
	.word	4
	.word	_Label_929
	.word	-76
	.word	4
	.word	_Label_930
	.word	-80
	.word	4
	.word	_Label_931
	.word	-84
	.word	4
	.word	_Label_932
	.word	-88
	.word	4
	.word	_Label_933
	.word	-92
	.word	4
	.word	_Label_934
	.word	-96
	.word	4
	.word	_Label_935
	.word	-100
	.word	4
	.word	_Label_936
	.word	-104
	.word	4
	.word	_Label_937
	.word	-108
	.word	4
	.word	_Label_938
	.word	-112
	.word	4
	.word	_Label_939
	.word	-116
	.word	4
	.word	_Label_940
	.word	-120
	.word	4
	.word	_Label_941
	.word	-124
	.word	4
	.word	_Label_942
	.word	-128
	.word	4
	.word	_Label_943
	.word	-132
	.word	4
	.word	_Label_944
	.word	-136
	.word	4
	.word	_Label_945
	.word	-140
	.word	4
	.word	_Label_946
	.word	-144
	.word	4
	.word	0
_Label_912:
	.ascii	"OpenCloseTerminalTest\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_944:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_945:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_946:
	.byte	'I'
	.ascii	"fd\0"
	.align
! 
! ===============  FUNCTION TerminalErrorTest  ===============
! 
_function_245_TerminalErrorTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_245_TerminalErrorTest,r1
	push	r1
	mov	82,r1
_Label_1280:
	push	r0
	sub	r1,1,r1
	bne	_Label_1280
	mov	484,r13		! source line 484
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_947 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-304]
!   Prepare Argument: offset=8  value=_temp_947  sizeInBytes=4
	load	[r14+-304],r1
	store	r1,[r15+0]
!   Call the function
	mov	492,r13		! source line 492
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_948 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-300]
!   Prepare Argument: offset=8  value=_temp_948  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Call the function
	mov	493,r13		! source line 493
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_949 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-296]
!   Prepare Argument: offset=8  value=_temp_949  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Call the function
	mov	495,r13		! source line 495
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   _temp_950 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-292]
!   Prepare Argument: offset=8  value=_temp_950  sizeInBytes=4
	load	[r14+-292],r1
	store	r1,[r15+0]
!   Call the function
	mov	496,r13		! source line 496
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-312]
! IF STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_952		(int)
	load	[r14+-312],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_952
!	jmp	_Label_951
_Label_951:
! THEN...
	mov	498,r13		! source line 498
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_953 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-288]
!   Prepare Argument: offset=8  value=_temp_953  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+0]
!   Call the function
	mov	498,r13		! source line 498
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0RE",r10
	add	r15,332,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_952:
! CALL STATEMENT...
!   _temp_954 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-284]
!   Prepare Argument: offset=8  value=_temp_954  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+0]
!   Call the function
	mov	502,r13		! source line 502
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	503,r13		! source line 503
	mov	"\0\0AS",r10
!   _temp_956 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-276]
!   Move address of _temp_956 [0 ] into _temp_957
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-276],r1
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
	store	r2,[r14+-272]
!   _temp_955 = _temp_957		(4 bytes)
	load	[r14+-272],r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_955  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+8]
!   Call the function
	mov	503,r13		! source line 503
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	504,r13		! source line 504
	mov	"\0\0CA",r10
	call	_function_244_Check
! CALL STATEMENT...
!   _temp_958 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-268]
!   Prepare Argument: offset=8  value=_temp_958  sizeInBytes=4
	load	[r14+-268],r1
	store	r1,[r15+0]
!   Call the function
	mov	506,r13		! source line 506
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0AS",r10
!   _temp_960 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-260]
!   Move address of _temp_960 [0 ] into _temp_961
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-260],r1
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
!   _temp_959 = _temp_961		(4 bytes)
	load	[r14+-256],r1
	store	r1,[r14+-264]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_959  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-123123123  sizeInBytes=4
	set	-123123123,r1
	store	r1,[r15+8]
!   Call the function
	mov	507,r13		! source line 507
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	508,r13		! source line 508
	mov	"\0\0CA",r10
	call	_function_244_Check
! CALL STATEMENT...
!   _temp_962 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=8  value=_temp_962  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+0]
!   Call the function
	mov	510,r13		! source line 510
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_963 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-248]
!   Prepare Argument: offset=8  value=_temp_963  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Call the function
	mov	511,r13		! source line 511
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
!   _temp_964 = main
	set	main,r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_964  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	512,r13		! source line 512
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! IF STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0IF",r10
!   if i == -1 then goto _Label_966		(int)
	load	[r14+-308],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_966
!	jmp	_Label_967
_Label_967:
!   if intIsZero (i) then goto _Label_966
	load	[r14+-308],r1
	cmp	r1,r0
	be	_Label_966
!	jmp	_Label_965
_Label_965:
! THEN...
	mov	515,r13		! source line 515
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_968 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=8  value=_temp_968  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	515,r13		! source line 515
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Call the function
	mov	516,r13		! source line 516
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_969 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-236]
!   Prepare Argument: offset=8  value=_temp_969  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Call the function
	mov	517,r13		! source line 517
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_966:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=97  sizeInBytes=1
	mov	97,r1
	storeb	r1,[r15+4]
!   Call the function
	mov	519,r13		! source line 519
	mov	"\0\0CA",r10
	call	_function_243_NextInput
! CALL STATEMENT...
!   _temp_970 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-232]
!   Prepare Argument: offset=8  value=_temp_970  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Call the function
	mov	521,r13		! source line 521
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_971 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=8  value=_temp_971  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Call the function
	mov	522,r13		! source line 522
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=268435455  sizeInBytes=4
	set	268435455,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	523,r13		! source line 523
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! IF STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0IF",r10
!   if i == -1 then goto _Label_973		(int)
	load	[r14+-308],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_973
!	jmp	_Label_974
_Label_974:
!   if intIsZero (i) then goto _Label_973
	load	[r14+-308],r1
	cmp	r1,r0
	be	_Label_973
!	jmp	_Label_972
_Label_972:
! THEN...
	mov	526,r13		! source line 526
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_975 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-224]
!   Prepare Argument: offset=8  value=_temp_975  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Call the function
	mov	526,r13		! source line 526
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Call the function
	mov	527,r13		! source line 527
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_976 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-220]
!   Prepare Argument: offset=8  value=_temp_976  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Call the function
	mov	528,r13		! source line 528
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_973:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=120  sizeInBytes=1
	mov	120,r1
	storeb	r1,[r15+4]
!   Call the function
	mov	530,r13		! source line 530
	mov	"\0\0CA",r10
	call	_function_243_NextInput
! ASSIGNMENT STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0AS",r10
!   _temp_978 = &fd
	add	r14,-312,r1
	store	r1,[r14+-212]
!   _temp_977 = _temp_978 AND -8192		(int)
	load	[r14+-212],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-216]
!   p = _temp_977 OR 8188		(int)
	load	[r14+-216],r1
	mov	8188,r2
	or	r1,r2,r1
	store	r1,[r14+-316]
! CALL STATEMENT...
!   _temp_979 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=8  value=_temp_979  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Call the function
	mov	542,r13		! source line 542
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_980 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=8  value=_temp_980  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Call the function
	mov	543,r13		! source line 543
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: save = *p  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-320]
! ASSIGNMENT STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-316],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	545,r13		! source line 545
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
!   if i != 4 then goto _Label_982		(int)
	load	[r14+-308],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_982
!	jmp	_Label_981
_Label_981:
! THEN...
	mov	547,r13		! source line 547
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_985 = *p  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if 825373492 == _temp_985 then goto _Label_984		(int)
	set	825373492,r1
	load	[r14+-200],r2
	cmp	r1,r2
	be	_Label_984
!	jmp	_Label_983
_Label_983:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_986 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=_temp_986  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	548,r13		! source line 548
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_984:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=53  sizeInBytes=1
	mov	53,r1
	storeb	r1,[r15+4]
!   Call the function
	mov	550,r13		! source line 550
	mov	"\0\0CA",r10
	call	_function_243_NextInput
	jmp	_Label_987
_Label_982:
! ELSE...
	mov	551,r13		! source line 551
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	551,r13		! source line 551
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_989		(int)
	load	[r14+-308],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_989
!	jmp	_Label_988
_Label_988:
! THEN...
	mov	552,r13		! source line 552
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_992 = *p  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if save == _temp_992 then goto _Label_991		(int)
	load	[r14+-320],r1
	load	[r14+-192],r2
	cmp	r1,r2
	be	_Label_991
!	jmp	_Label_990
_Label_990:
! THEN...
	mov	553,r13		! source line 553
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_993 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_993  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	553,r13		! source line 553
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_991:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=49  sizeInBytes=1
	mov	49,r1
	storeb	r1,[r15+4]
!   Call the function
	mov	555,r13		! source line 555
	mov	"\0\0CA",r10
	call	_function_243_NextInput
	jmp	_Label_994
_Label_989:
! ELSE...
	mov	557,r13		! source line 557
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	557,r13		! source line 557
	mov	"\0\0CA",r10
	call	_function_244_Check
! END IF...
_Label_994:
! END IF...
_Label_987:
! ASSIGNMENT STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = save  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r14+-316],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0AS",r10
!   _temp_997 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-176]
!   Move address of _temp_997 [8999 ] into _temp_998
!     make sure index expr is >= 0
	mov	8999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
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
	store	r2,[r14+-172]
!   _temp_996 = _temp_998		(4 bytes)
	load	[r14+-172],r1
	store	r1,[r14+-180]
!   _temp_995 = _temp_996 - 10		(int)
	load	[r14+-180],r1
	mov	10,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-184]
!   p = _temp_995 AND -8192		(int)
	load	[r14+-184],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-316]
! ASSIGNMENT STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0AS",r10
!   charPtr = p - 3		(int)
	load	[r14+-316],r1
	mov	3,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-324]
! CALL STATEMENT...
!   _temp_999 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_999  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	569,r13		! source line 569
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1000 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1000  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	570,r13		! source line 570
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1001 = charPtr - 3		(int)
	load	[r14+-324],r1
	mov	3,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   _temp_1003 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1003) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_1003 [0 ] into _temp_1004
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
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
	store	r2,[r14+-148]
!   _temp_1002 = _temp_1004		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1001  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1002  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=13  sizeInBytes=4
	mov	13,r1
	store	r1,[r15+8]
!   Call the function
	mov	571,r13		! source line 571
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+8]
!   Call the function
	mov	572,r13		! source line 572
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+4]
!   Call the function
	mov	573,r13		! source line 573
	mov	"\0\0CA",r10
	call	_function_244_Check
! IF STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0IF",r10
!   _temp_1008 = charPtr - 3		(int)
	load	[r14+-324],r1
	mov	3,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   _temp_1010 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_1010) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_1010 [0 ] into _temp_1011
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
	store	r2,[r14+-132]
!   _temp_1009 = _temp_1011		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_1008  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1009  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=13  sizeInBytes=4
	mov	13,r1
	store	r1,[r15+8]
!   Call the function
	mov	574,r13		! source line 574
	mov	"\0\0CA",r10
	call	_P_UserSystem_MemoryEqual
!   Retrieve Result: targetName=_temp_1007  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1007 then goto _Label_1006 else goto _Label_1005
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1005
	jmp	_Label_1006
_Label_1005:
! THEN...
	mov	575,r13		! source line 575
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1012 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1012  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	575,r13		! source line 575
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1006:
! CALL STATEMENT...
!   _temp_1013 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_1013  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	578,r13		! source line 578
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	579,r13		! source line 579
	mov	"\0\0AS",r10
!   _temp_1015 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-116]
!   Move address of _temp_1015 [0 ] into _temp_1016
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
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
	store	r2,[r14+-112]
!   _temp_1014 = _temp_1016		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1014  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+8]
!   Call the function
	mov	579,r13		! source line 579
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	580,r13		! source line 580
	mov	"\0\0CA",r10
	call	_function_244_Check
! CALL STATEMENT...
!   _temp_1017 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1017  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	582,r13		! source line 582
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	583,r13		! source line 583
	mov	"\0\0AS",r10
!   _temp_1019 = &_Global_bigBuffer
	set	_Global_bigBuffer,r1
	store	r1,[r14+-100]
!   Move address of _temp_1019 [0 ] into _temp_1020
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1018 = _temp_1020		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1018  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-123123123  sizeInBytes=4
	set	-123123123,r1
	store	r1,[r15+8]
!   Call the function
	mov	583,r13		! source line 583
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CA",r10
	call	_function_244_Check
! CALL STATEMENT...
!   _temp_1021 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1021  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1022 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1022  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1023 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1023  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1024 = charPtr		(4 bytes)
	load	[r14+-324],r1
	store	r1,[r14+-80]
!   _temp_1026 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1026) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_1026 [0 ] into _temp_1027
!     make sure index expr is >= 0
	mov	0,r2
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
	store	r2,[r14+-68]
!   _temp_1025 = _temp_1027		(4 bytes)
	load	[r14+-68],r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1024  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1025  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+8]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-324],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+8]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! CALL STATEMENT...
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+4]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CA",r10
	call	_function_244_Check
! CALL STATEMENT...
!   _temp_1028 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1028  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1029 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1029  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1030 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1030  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0AS",r10
!   _temp_1032 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1032) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_1032 [0 ] into _temp_1033
!     make sure index expr is >= 0
	mov	0,r2
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
	store	r2,[r14+-44]
!   _temp_1031 = _temp_1033		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1031  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=11  sizeInBytes=4
	mov	11,r1
	store	r1,[r15+8]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! CALL STATEMENT...
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! IF STATEMENT...
	mov	599,r13		! source line 599
	mov	"\0\0IF",r10
!   if i == 11 then goto _Label_1035		(int)
	load	[r14+-308],r1
	mov	11,r2
	cmp	r1,r2
	be	_Label_1035
!	jmp	_Label_1034
_Label_1034:
! THEN...
	mov	600,r13		! source line 600
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1036 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1037 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1037  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	602,r13		! source line 602
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1035:
! CALL STATEMENT...
!   _temp_1038 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1038  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=268435455  sizeInBytes=4
	set	268435455,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	606,r13		! source line 606
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-308]
! IF STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0IF",r10
!   if i == -1 then goto _Label_1040		(int)
	load	[r14+-308],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_1040
!	jmp	_Label_1041
_Label_1041:
!   if intIsZero (i) then goto _Label_1040
	load	[r14+-308],r1
	cmp	r1,r0
	be	_Label_1040
!	jmp	_Label_1039
_Label_1039:
! THEN...
	mov	609,r13		! source line 609
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1042 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1042  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1043 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1043  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1044
_Label_1040:
! ELSE...
	mov	613,r13		! source line 613
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1045 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1045  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1044:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-312],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   _temp_1046 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1046  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0RE",r10
	add	r15,332,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_245_TerminalErrorTest:
	.word	_sourceFileName
	.word	_Label_1047
	.word	0		! total size of parameters
	.word	328		! frame size = 328
	.word	_Label_1048
	.word	-16
	.word	4
	.word	_Label_1049
	.word	-20
	.word	4
	.word	_Label_1050
	.word	-24
	.word	4
	.word	_Label_1051
	.word	-28
	.word	4
	.word	_Label_1052
	.word	-32
	.word	4
	.word	_Label_1053
	.word	-36
	.word	4
	.word	_Label_1054
	.word	-40
	.word	4
	.word	_Label_1055
	.word	-44
	.word	4
	.word	_Label_1056
	.word	-48
	.word	4
	.word	_Label_1057
	.word	-52
	.word	4
	.word	_Label_1058
	.word	-56
	.word	4
	.word	_Label_1059
	.word	-60
	.word	4
	.word	_Label_1060
	.word	-64
	.word	4
	.word	_Label_1061
	.word	-68
	.word	4
	.word	_Label_1062
	.word	-72
	.word	4
	.word	_Label_1063
	.word	-76
	.word	4
	.word	_Label_1064
	.word	-80
	.word	4
	.word	_Label_1065
	.word	-84
	.word	4
	.word	_Label_1066
	.word	-88
	.word	4
	.word	_Label_1067
	.word	-92
	.word	4
	.word	_Label_1068
	.word	-96
	.word	4
	.word	_Label_1069
	.word	-100
	.word	4
	.word	_Label_1070
	.word	-104
	.word	4
	.word	_Label_1071
	.word	-108
	.word	4
	.word	_Label_1072
	.word	-112
	.word	4
	.word	_Label_1073
	.word	-116
	.word	4
	.word	_Label_1074
	.word	-120
	.word	4
	.word	_Label_1075
	.word	-124
	.word	4
	.word	_Label_1076
	.word	-128
	.word	4
	.word	_Label_1077
	.word	-132
	.word	4
	.word	_Label_1078
	.word	-136
	.word	4
	.word	_Label_1079
	.word	-140
	.word	4
	.word	_Label_1080
	.word	-144
	.word	4
	.word	_Label_1081
	.word	-9
	.word	1
	.word	_Label_1082
	.word	-148
	.word	4
	.word	_Label_1083
	.word	-152
	.word	4
	.word	_Label_1084
	.word	-156
	.word	4
	.word	_Label_1085
	.word	-160
	.word	4
	.word	_Label_1086
	.word	-164
	.word	4
	.word	_Label_1087
	.word	-168
	.word	4
	.word	_Label_1088
	.word	-172
	.word	4
	.word	_Label_1089
	.word	-176
	.word	4
	.word	_Label_1090
	.word	-180
	.word	4
	.word	_Label_1091
	.word	-184
	.word	4
	.word	_Label_1092
	.word	-188
	.word	4
	.word	_Label_1093
	.word	-192
	.word	4
	.word	_Label_1094
	.word	-196
	.word	4
	.word	_Label_1095
	.word	-200
	.word	4
	.word	_Label_1096
	.word	-204
	.word	4
	.word	_Label_1097
	.word	-208
	.word	4
	.word	_Label_1098
	.word	-212
	.word	4
	.word	_Label_1099
	.word	-216
	.word	4
	.word	_Label_1100
	.word	-220
	.word	4
	.word	_Label_1101
	.word	-224
	.word	4
	.word	_Label_1102
	.word	-228
	.word	4
	.word	_Label_1103
	.word	-232
	.word	4
	.word	_Label_1104
	.word	-236
	.word	4
	.word	_Label_1105
	.word	-240
	.word	4
	.word	_Label_1106
	.word	-244
	.word	4
	.word	_Label_1107
	.word	-248
	.word	4
	.word	_Label_1108
	.word	-252
	.word	4
	.word	_Label_1109
	.word	-256
	.word	4
	.word	_Label_1110
	.word	-260
	.word	4
	.word	_Label_1111
	.word	-264
	.word	4
	.word	_Label_1112
	.word	-268
	.word	4
	.word	_Label_1113
	.word	-272
	.word	4
	.word	_Label_1114
	.word	-276
	.word	4
	.word	_Label_1115
	.word	-280
	.word	4
	.word	_Label_1116
	.word	-284
	.word	4
	.word	_Label_1117
	.word	-288
	.word	4
	.word	_Label_1118
	.word	-292
	.word	4
	.word	_Label_1119
	.word	-296
	.word	4
	.word	_Label_1120
	.word	-300
	.word	4
	.word	_Label_1121
	.word	-304
	.word	4
	.word	_Label_1122
	.word	-308
	.word	4
	.word	_Label_1123
	.word	-312
	.word	4
	.word	_Label_1124
	.word	-316
	.word	4
	.word	_Label_1125
	.word	-320
	.word	4
	.word	_Label_1126
	.word	-324
	.word	4
	.word	0
_Label_1047:
	.ascii	"TerminalErrorTest\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1081:
	.byte	'C'
	.ascii	"_temp_1007\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_1122:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1123:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1124:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_1125:
	.byte	'I'
	.ascii	"save\0"
	.align
_Label_1126:
	.byte	'P'
	.ascii	"charPtr\0"
	.align
! 
! ===============  FUNCTION Check  ===============
! 
_function_244_Check:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_244_Check,r1
	push	r1
	mov	4,r1
_Label_1281:
	push	r0
	sub	r1,1,r1
	bne	_Label_1281
	mov	624,r13		! source line 624
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	629,r13		! source line 629
	mov	"\0\0IF",r10
!   if i != expectedVal then goto _Label_1128		(int)
	load	[r14+8],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_1128
!	jmp	_Label_1127
_Label_1127:
! THEN...
	mov	630,r13		! source line 630
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1129 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1129  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1130
_Label_1128:
! ELSE...
	mov	632,r13		! source line 632
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1131 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1131  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1132 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1132  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1130:
! RETURN STATEMENT...
	mov	629,r13		! source line 629
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_244_Check:
	.word	_sourceFileName
	.word	_Label_1133
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1134
	.word	8
	.word	4
	.word	_Label_1135
	.word	12
	.word	4
	.word	_Label_1136
	.word	-12
	.word	4
	.word	_Label_1137
	.word	-16
	.word	4
	.word	_Label_1138
	.word	-20
	.word	4
	.word	0
_Label_1133:
	.ascii	"Check\0"
	.align
_Label_1134:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1135:
	.byte	'I'
	.ascii	"expectedVal\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
! 
! ===============  FUNCTION NextInput  ===============
! 
_function_243_NextInput:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_243_NextInput,r1
	push	r1
	mov	72,r1
_Label_1282:
	push	r0
	sub	r1,1,r1
	bne	_Label_1282
	mov	641,r13		! source line 641
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! buffer
!   NEW ARRAY Constructor...
!   _temp_1140 = &_temp_1139
	add	r14,-176,r1
	store	r1,[r14+-72]
!   _temp_1140 = _temp_1140 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
	mov	100,r1
	store	r1,[r14+-68]
_Label_1142:
!   Data Move: *_temp_1140 = 63  (sizeInBytes=1)
	mov	63,r1
	load	[r14+-72],r2
	storeb	r1,[r2]
!   _temp_1140 = _temp_1140 + 1
	load	[r14+-72],r1
	add	r1,1,r1
	store	r1,[r14+-72]
!   _temp_1141 = _temp_1141 + -1
	load	[r14+-68],r1
	add	r1,-1,r1
	store	r1,[r14+-68]
!   if intNotZero (_temp_1141) then goto _Label_1142
	load	[r14+-68],r1
	cmp	r1,r0
	bne	_Label_1142
!   Initialize the array size...
	mov	100,r1
	store	r1,[r14+-176]
!   _temp_1143 = &_temp_1139
	add	r14,-176,r1
	store	r1,[r14+-64]
!   make sure array has size 100
	load	[r14+-64],r1
	load	[r1],r1
	set	100, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: buffer = *_temp_1143  (sizeInBytes=104)
	load	[r14+-64],r5
	add	r14,-284,r4
	mov	26,r3
_Label_1283:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1283
! ASSIGNMENT STATEMENT...
	mov	652,r13		! source line 652
	mov	"\0\0AS",r10
!   _temp_1144 = &inputChar
	add	r14,-11,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1144  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0IF",r10
!   if i == 1 then goto _Label_1146		(int)
	load	[r14+-180],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_1146
!	jmp	_Label_1145
_Label_1145:
! THEN...
	mov	654,r13		! source line 654
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1147 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1147  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1148 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1148  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1146:
! IF STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0IF",r10
!   _temp_1151 = inputChar XOR expectedChar		(bool)
	loadb	[r14+-11],r1
	loadb	[r14+12],r2
	xor	r1,r2,r1
	storeb	r1,[r14+-10]
!   if _temp_1151 then goto _Label_1150 else goto _Label_1149
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1149
	jmp	_Label_1150
_Label_1149:
! THEN...
	mov	661,r13		! source line 661
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1152 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1152  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1153
_Label_1150:
! ELSE...
	mov	663,r13		! source line 663
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1154 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1154  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=expectedChar  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_1155 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1155  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inputChar  sizeInBytes=1
	loadb	[r14+-11],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_1156 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1156  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1153:
! IF STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0IF",r10
!   _temp_1159 = inputChar XOR 10		(bool)
	loadb	[r14+-11],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1159 then goto _Label_1157 else goto _Label_1158
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1158
	jmp	_Label_1157
_Label_1157:
! THEN...
	mov	672,r13		! source line 672
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0AS",r10
!   _temp_1161 = &buffer
	add	r14,-284,r1
	store	r1,[r14+-28]
!   Move address of _temp_1161 [0 ] into _temp_1162
!     make sure index expr is >= 0
	mov	0,r2
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
	store	r2,[r14+-24]
!   _temp_1160 = _temp_1162		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   _temp_1164 = &buffer
	add	r14,-284,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1163 = *_temp_1164  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1160  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1163  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+8]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! END IF...
_Label_1158:
! RETURN STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0RE",r10
	add	r15,292,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_243_NextInput:
	.word	_sourceFileName
	.word	_Label_1165
	.word	8		! total size of parameters
	.word	288		! frame size = 288
	.word	_Label_1166
	.word	8
	.word	4
	.word	_Label_1167
	.word	12
	.word	1
	.word	_Label_1168
	.word	-16
	.word	4
	.word	_Label_1169
	.word	-20
	.word	4
	.word	_Label_1170
	.word	-24
	.word	4
	.word	_Label_1171
	.word	-28
	.word	4
	.word	_Label_1172
	.word	-32
	.word	4
	.word	_Label_1173
	.word	-9
	.word	1
	.word	_Label_1174
	.word	-36
	.word	4
	.word	_Label_1175
	.word	-40
	.word	4
	.word	_Label_1176
	.word	-44
	.word	4
	.word	_Label_1177
	.word	-48
	.word	4
	.word	_Label_1178
	.word	-10
	.word	1
	.word	_Label_1179
	.word	-52
	.word	4
	.word	_Label_1180
	.word	-56
	.word	4
	.word	_Label_1181
	.word	-60
	.word	4
	.word	_Label_1182
	.word	-64
	.word	4
	.word	_Label_1183
	.word	-68
	.word	4
	.word	_Label_1184
	.word	-72
	.word	4
	.word	_Label_1185
	.word	-176
	.word	104
	.word	_Label_1186
	.word	-180
	.word	4
	.word	_Label_1187
	.word	-11
	.word	1
	.word	_Label_1188
	.word	-284
	.word	104
	.word	0
_Label_1165:
	.ascii	"NextInput\0"
	.align
_Label_1166:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1167:
	.byte	'C'
	.ascii	"expectedChar\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1173:
	.byte	'C'
	.ascii	"_temp_1159\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1178:
	.byte	'C'
	.ascii	"_temp_1151\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1186:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1187:
	.byte	'C'
	.ascii	"inputChar\0"
	.align
_Label_1188:
	.byte	'A'
	.ascii	"buffer\0"
	.align
! 
! ===============  FUNCTION Menu  ===============
! 
_function_242_Menu:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_242_Menu,r1
	push	r1
	mov	27,r1
_Label_1284:
	push	r0
	sub	r1,1,r1
	bne	_Label_1284
	mov	682,r13		! source line 682
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1189 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1189  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0AS",r10
!   _temp_1190 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1190  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	690,r13		! source line 690
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	691,r13		! source line 691
	mov	"\0\0CA",r10
	call	_function_244_Check
! ASSIGNMENT STATEMENT...
	mov	692,r13		! source line 692
	mov	"\0\0AS",r10
!   _temp_1191 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1191  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CA",r10
	call	_function_244_Check
! CALL STATEMENT...
!   _temp_1192 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1192  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CA",r10
	call	_function_241_Print
! WHILE STATEMENT...
	mov	695,r13		! source line 695
	mov	"\0\0WH",r10
_Label_1193:
!	jmp	_Label_1194
_Label_1194:
	mov	695,r13		! source line 695
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_1196 = _StringConst_223
	set	_StringConst_223,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1196  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CA",r10
	call	_function_241_Print
! CALL STATEMENT...
!   _temp_1197 = _StringConst_224
	set	_StringConst_224,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1197  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CA",r10
	call	_function_241_Print
! CALL STATEMENT...
!   _temp_1198 = _StringConst_225
	set	_StringConst_225,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CA",r10
	call	_function_241_Print
! CALL STATEMENT...
!   _temp_1199 = _StringConst_226
	set	_StringConst_226,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1199  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CA",r10
	call	_function_241_Print
! CALL STATEMENT...
!   _temp_1200 = _StringConst_227
	set	_StringConst_227,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1200  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CA",r10
	call	_function_241_Print
! CALL STATEMENT...
!   _temp_1201 = _StringConst_228
	set	_StringConst_228,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1201  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CA",r10
	call	_function_241_Print
! CALL STATEMENT...
!   _temp_1202 = _StringConst_229
	set	_StringConst_229,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1202  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CA",r10
	call	_function_241_Print
! CALL STATEMENT...
!   _temp_1203 = _StringConst_230
	set	_StringConst_230,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1203  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CA",r10
	call	_function_241_Print
! CALL STATEMENT...
!   _temp_1204 = _StringConst_231
	set	_StringConst_231,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1204  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CA",r10
	call	_function_241_Print
! CALL STATEMENT...
!   _temp_1205 = _StringConst_232
	set	_StringConst_232,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1205  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CA",r10
	call	_function_241_Print
! CALL STATEMENT...
!   _temp_1206 = _StringConst_233
	set	_StringConst_233,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1206  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CA",r10
	call	_function_241_Print
! ASSIGNMENT STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0AS",r10
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CA",r10
	call	_function_240_GetChar
!   Retrieve Result: targetName=c  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=c  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CA",r10
	call	_function_239_PutChar
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=10  sizeInBytes=1
	mov	10,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CA",r10
	call	_function_239_PutChar
! SWITCH STATEMENT (using an indirect jump table)...
	mov	710,r13		! source line 710
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   _temp_1218 = charToInt (c)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-36]
	load	[r14+-36],r1
!   If _temp_1218 is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1285
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_1207
_Label_1285:
!   If _temp_1218 is < 49 (==smallestCaseValue) goto default code
	cmp	r1,49
	bl	_Label_1207
!   If _temp_1218 is > 57 (==greatestCaseValue) goto default code
	cmp	r1,57
	bg	_Label_1207
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,49,r1
	sll	r1,2,r1
	set	_Label_1219,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_1219:
	jmp	_Label_1209	! 49:	
	jmp	_Label_1210	! 50:	
	jmp	_Label_1211	! 51:	
	jmp	_Label_1212	! 52:	
	jmp	_Label_1213	! 53:	
	jmp	_Label_1214	! 54:	
	jmp	_Label_1215	! 55:	
	jmp	_Label_1216	! 56:	
	jmp	_Label_1217	! 57:	
! CASE 49...
_Label_1209:
! CALL STATEMENT...
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CA",r10
	call	_function_251_BasicSerialTest
! BREAK STATEMENT...
	mov	713,r13		! source line 713
	mov	"\0\0BR",r10
	jmp	_Label_1208
! CASE 50...
_Label_1210:
! CALL STATEMENT...
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CA",r10
	call	_function_250_KeyTest
! BREAK STATEMENT...
	mov	716,r13		! source line 716
	mov	"\0\0BR",r10
	jmp	_Label_1208
! CASE 51...
_Label_1211:
! CALL STATEMENT...
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CA",r10
	call	_function_249_EchoTest
! BREAK STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0BR",r10
	jmp	_Label_1208
! CASE 52...
_Label_1212:
! CALL STATEMENT...
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CA",r10
	call	_function_248_LineEchoTest
! BREAK STATEMENT...
	mov	722,r13		! source line 722
	mov	"\0\0BR",r10
	jmp	_Label_1208
! CASE 53...
_Label_1213:
! CALL STATEMENT...
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CA",r10
	call	_function_247_EOFTest
! BREAK STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0BR",r10
	jmp	_Label_1208
! CASE 54...
_Label_1214:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CA",r10
	call	_function_246_OpenCloseTerminalTest
! ASSIGNMENT STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0AS",r10
!   _temp_1220 = _StringConst_234
	set	_StringConst_234,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CA",r10
	call	_function_244_Check
! ASSIGNMENT STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0AS",r10
!   _temp_1221 = _StringConst_235
	set	_StringConst_235,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1221  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CA",r10
	call	_function_244_Check
! BREAK STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0BR",r10
	jmp	_Label_1208
! CASE 55...
_Label_1215:
! CALL STATEMENT...
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CA",r10
	call	_function_245_TerminalErrorTest
! BREAK STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0BR",r10
	jmp	_Label_1208
! CASE 56...
_Label_1216:
! ASSIGNMENT STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0AS",r10
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_1222
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_1222
	jmp	_Label_1223
_Label_1222:
! THEN...
	mov	741,r13		! source line 741
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0AS",r10
!   _temp_1224 = _StringConst_236
	set	_StringConst_236,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1224  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! CALL STATEMENT...
!   _temp_1225 = _StringConst_237
	set	_StringConst_237,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1225  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CA",r10
	call	_function_241_Print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_1226
_Label_1223:
! ELSE...
	mov	745,r13		! source line 745
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! END IF...
_Label_1226:
! BREAK STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0BR",r10
	jmp	_Label_1208
! CASE 57...
_Label_1217:
! CALL STATEMENT...
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Shutdown
! DEFAULT CASE...
_Label_1207:
! CALL STATEMENT...
!   _temp_1227 = _StringConst_238
	set	_StringConst_238,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1227  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	751,r13		! source line 751
	mov	"\0\0CA",r10
	call	_function_241_Print
! BREAK STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0BR",r10
	jmp	_Label_1208
! END SWITCH...
_Label_1208:
! END WHILE...
	jmp	_Label_1193
_Label_1195:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_242_Menu:
	.word	_sourceFileName
	.word	_Label_1228
	.word	0		! total size of parameters
	.word	108		! frame size = 108
	.word	_Label_1229
	.word	-16
	.word	4
	.word	_Label_1230
	.word	-20
	.word	4
	.word	_Label_1231
	.word	-24
	.word	4
	.word	_Label_1232
	.word	-28
	.word	4
	.word	_Label_1233
	.word	-32
	.word	4
	.word	_Label_1234
	.word	-36
	.word	4
	.word	_Label_1235
	.word	-40
	.word	4
	.word	_Label_1236
	.word	-44
	.word	4
	.word	_Label_1237
	.word	-48
	.word	4
	.word	_Label_1238
	.word	-52
	.word	4
	.word	_Label_1239
	.word	-56
	.word	4
	.word	_Label_1240
	.word	-60
	.word	4
	.word	_Label_1241
	.word	-64
	.word	4
	.word	_Label_1242
	.word	-68
	.word	4
	.word	_Label_1243
	.word	-72
	.word	4
	.word	_Label_1244
	.word	-76
	.word	4
	.word	_Label_1245
	.word	-80
	.word	4
	.word	_Label_1246
	.word	-84
	.word	4
	.word	_Label_1247
	.word	-88
	.word	4
	.word	_Label_1248
	.word	-92
	.word	4
	.word	_Label_1249
	.word	-96
	.word	4
	.word	_Label_1250
	.word	-100
	.word	4
	.word	_Label_1251
	.word	-104
	.word	4
	.word	_Label_1252
	.word	-108
	.word	4
	.word	_Label_1253
	.word	-9
	.word	1
	.word	0
_Label_1228:
	.ascii	"Menu\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1250:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1251:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_1252:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1253:
	.byte	'C'
	.ascii	"c\0"
	.align
! 
! ===============  FUNCTION Print  ===============
! 
_function_241_Print:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_241_Print,r1
	push	r1
	mov	7,r1
_Label_1286:
	push	r0
	sub	r1,1,r1
	bne	_Label_1286
	mov	760,r13		! source line 760
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0AS",r10
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of str [0 ] into _temp_1255
!     make sure index expr is >= 0
	mov	0,r2
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
	store	r2,[r14+-16]
!   _temp_1254 = _temp_1255		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-20]
!   if intIsZero (str) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1256 = *str  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1254  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1256  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_241_Print:
	.word	_sourceFileName
	.word	_Label_1257
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1258
	.word	8
	.word	4
	.word	_Label_1259
	.word	-12
	.word	4
	.word	_Label_1260
	.word	-16
	.word	4
	.word	_Label_1261
	.word	-20
	.word	4
	.word	_Label_1262
	.word	-24
	.word	4
	.word	0
_Label_1257:
	.ascii	"Print\0"
	.align
_Label_1258:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1262:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION GetChar  ===============
! 
_function_240_GetChar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_240_GetChar,r1
	push	r1
	mov	6,r1
_Label_1287:
	push	r0
	sub	r1,1,r1
	bne	_Label_1287
	mov	770,r13		! source line 770
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0AS",r10
!   _temp_1263 = &c
	add	r14,-9,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1263  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0RE",r10
!   ReturnResult: c  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_240_GetChar:
	.word	_sourceFileName
	.word	_Label_1264
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1265
	.word	-16
	.word	4
	.word	_Label_1266
	.word	-9
	.word	1
	.word	_Label_1267
	.word	-20
	.word	4
	.word	0
_Label_1264:
	.ascii	"GetChar\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1266:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_1267:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION PutChar  ===============
! 
_function_239_PutChar:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_239_PutChar,r1
	push	r1
	mov	5,r1
_Label_1288:
	push	r0
	sub	r1,1,r1
	bne	_Label_1288
	mov	782,r13		! source line 782
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0AS",r10
!   _temp_1268 = &c
	add	r14,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1268  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! RETURN STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_239_PutChar:
	.word	_sourceFileName
	.word	_Label_1269
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1270
	.word	8
	.word	1
	.word	_Label_1271
	.word	-12
	.word	4
	.word	_Label_1272
	.word	-16
	.word	4
	.word	0
_Label_1269:
	.ascii	"PutChar\0"
	.align
_Label_1270:
	.byte	'C'
	.ascii	"c\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1272:
	.byte	'I'
	.ascii	"i\0"
	.align
