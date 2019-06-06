! Name of package being compiled: TestProgram4
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
_Global_buffer:
! Static array
	.word	30		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
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
_Global_buffer2:
! Static array
	.word	10		! number of elements
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.byte	45			! '-'
	.align
_Global_buffer3:
! Static array
	.word	20		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
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
_Global_readBuff:
! Static array
	.word	20		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
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
_Global_buffer4:
! Static array
	.word	20		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
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
_Global_checkBuffer:
! Static array
	.word	10000		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
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
_Global_arr1:
! Static array
	.word	10000		! number of elements
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
	.byte	63			! '?'
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
_StringConst_406:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_405:
	.word	41			! length
	.ascii	"*****  ERROR: Return value from syscall ("
	.align
_StringConst_404:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_403:
	.word	9			! length
	.ascii	")  *****\n"
	.align
_StringConst_402:
	.word	50			! length
	.ascii	"*****  ERROR: Exec returned an unexpected value ( "
	.align
_StringConst_401:
	.word	8			! length
	.ascii	"Program2"
	.align
_StringConst_400:
	.word	40			! length
	.ascii	"Should print \'Hello, world\' 20 times...\n"
	.align
_StringConst_399:
	.word	9			! length
	.ascii	")  *****\n"
	.align
_StringConst_398:
	.word	54			! length
	.ascii	"*****  ERROR: Sys_Open returned an unexpected value ( "
	.align
_StringConst_397:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_396:
	.word	44			! length
	.ascii	"\n**********  ExecTest3 running  **********\n\n"
	.align
_StringConst_395:
	.word	9			! length
	.ascii	")  *****\n"
	.align
_StringConst_394:
	.word	50			! length
	.ascii	"*****  ERROR: Exec returned an unexpected value ( "
	.align
_StringConst_393:
	.word	34			! length
	.ascii	"Should print \'Hello, World!!!\'...\n"
	.align
_StringConst_392:
	.word	82			! length
	.ascii	"Attempting to open an existing file using a string which crosses a page boundary.\n"
	.align
_StringConst_391:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_390:
	.word	64			! length
	.ascii	"Attempting to exec an existing file which is not an executable.\n"
	.align
_StringConst_389:
	.word	50			! length
	.ascii	"FileWithVeryLongName012345678901234567890123456789"
	.align
_StringConst_388:
	.word	68			! length
	.ascii	"Attempting to exec an existing file whose name exceeds the maximum.\n"
	.align
_StringConst_387:
	.word	44			! length
	.ascii	"\n**********  ExecTest2 running  **********\n\n"
	.align
_StringConst_386:
	.word	8			! length
	.ascii	"Program1"
	.align
_StringConst_385:
	.word	9			! length
	.ascii	")  *****\n"
	.align
_StringConst_384:
	.word	50			! length
	.ascii	"*****  ERROR: Exec returned an unexpected value ( "
	.align
_StringConst_383:
	.word	8			! length
	.ascii	"Program1"
	.align
_StringConst_382:
	.word	31			! length
	.ascii	"Should print \'Hello, world\'...\n"
	.align
_StringConst_381:
	.word	44			! length
	.ascii	"\n**********  ExecTest1 running  **********\n\n"
	.align
_StringConst_380:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_379:
	.word	9			! length
	.ascii	")  *****\n"
	.align
_StringConst_378:
	.word	52			! length
	.ascii	"*****  ERROR: Open returned a an unexpected value ( "
	.align
_StringConst_377:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_376:
	.word	82			! length
	.ascii	"Attempting to open an existing file using a string which crosses a page boundary.\n"
	.align
_StringConst_375:
	.word	9			! length
	.ascii	")  *****\n"
	.align
_StringConst_374:
	.word	50			! length
	.ascii	"*****  ERROR: Open returned an unexpected value ( "
	.align
_StringConst_373:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_372:
	.word	50			! length
	.ascii	"FileWithVeryLongName012345678901234567890123456789"
	.align
_StringConst_371:
	.word	68			! length
	.ascii	"Attempting to open an existing file whose name exceeds the maximum.\n"
	.align
_StringConst_370:
	.word	44			! length
	.ascii	"\n**********  OpenTest3 running  **********\n\n"
	.align
_StringConst_369:
	.word	12			! length
	.ascii	"file1234abcd"
	.align
_StringConst_368:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_367:
	.word	37			! length
	.ascii	"Checking 10000 bytes at pos 10000...\n"
	.align
_StringConst_366:
	.word	26			! length
	.ascii	"zyxwvutsrqponmlkjihgfedcba"
	.align
_StringConst_365:
	.word	57			! length
	.ascii	"Initializing data array to zyxwvutsrqponmlkjihgfedcba...\n"
	.align
_StringConst_364:
	.word	33			! length
	.ascii	"Checking 10000 bytes at pos 0...\n"
	.align
_StringConst_363:
	.word	26			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHGFEDCBA"
	.align
_StringConst_362:
	.word	57			! length
	.ascii	"Initializing data array to ZYXWVUTSRQPONMLKJIHGFEDCBA...\n"
	.align
_StringConst_361:
	.word	26			! length
	.ascii	"zyxwvutsrqponmlkjihgfedcba"
	.align
_StringConst_360:
	.word	26			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHGFEDCBA"
	.align
_StringConst_359:
	.word	42			! length
	.ascii	"zyxwvutsrqponmlkjihgfedcbazyxwvutsrqponmlk"
	.align
_StringConst_358:
	.word	68			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHGFEDCBAZYXWVUTSRQPONMLKzyxwvutsrqponmlkjihgfedcba"
	.align
_StringConst_357:
	.word	26			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHGFEDCBA"
	.align
_StringConst_356:
	.word	36			! length
	.ascii	"Writing 10000 bytes to pos 10000...\n"
	.align
_StringConst_355:
	.word	26			! length
	.ascii	"zyxwvutsrqponmlkjihgfedcba"
	.align
_StringConst_354:
	.word	57			! length
	.ascii	"Initializing data array to zyxwvutsrqponmlkjihgfedcba...\n"
	.align
_StringConst_353:
	.word	32			! length
	.ascii	"Writing 10000 bytes to pos 0...\n"
	.align
_StringConst_352:
	.word	26			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHGFEDCBA"
	.align
_StringConst_351:
	.word	57			! length
	.ascii	"Initializing data array to ZYXWVUTSRQPONMLKJIHGFEDCBA...\n"
	.align
_StringConst_350:
	.word	37			! length
	.ascii	"Checking 10000 bytes at pos 10000...\n"
	.align
_StringConst_349:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_348:
	.word	57			! length
	.ascii	"Initializing data array to abcdefghijklmnopqrstuvwxyz...\n"
	.align
_StringConst_347:
	.word	33			! length
	.ascii	"Checking 10000 bytes at pos 0...\n"
	.align
_StringConst_346:
	.word	26			! length
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.align
_StringConst_345:
	.word	57			! length
	.ascii	"Initializing data array to ABCDEFGHIJKLMNOPQRSTUVWXYZ...\n"
	.align
_StringConst_344:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_343:
	.word	26			! length
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.align
_StringConst_342:
	.word	42			! length
	.ascii	"abcdefghijklmnopqrstuvwxyzabcdefghijklmnop"
	.align
_StringConst_341:
	.word	68			! length
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPabcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_340:
	.word	26			! length
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.align
_StringConst_339:
	.word	36			! length
	.ascii	"Writing 10000 bytes to pos 10000...\n"
	.align
_StringConst_338:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_337:
	.word	57			! length
	.ascii	"Initializing data array to abcdefghijklmnopqrstuvwxyz...\n"
	.align
_StringConst_336:
	.word	32			! length
	.ascii	"Writing 10000 bytes to pos 0...\n"
	.align
_StringConst_335:
	.word	26			! length
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.align
_StringConst_334:
	.word	57			! length
	.ascii	"Initializing data array to ABCDEFGHIJKLMNOPQRSTUVWXYZ...\n"
	.align
_StringConst_333:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_332:
	.word	45			! length
	.ascii	"\n**********  WriteTest6 running  **********\n\n"
	.align
_StringConst_331:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_330:
	.word	26			! length
	.ascii	"abcdefghijklMNOPQRSTUVWXyz"
	.align
_StringConst_329:
	.word	26			! length
	.ascii	"ABCDEFGHIJKLmnopqrstuvwxyz"
	.align
_StringConst_328:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_327:
	.word	27			! length
	.ascii	"......Child 2 ending......\n"
	.align
_StringConst_326:
	.word	1			! length
	.ascii	"X"
	.align
_StringConst_325:
	.word	1			! length
	.ascii	"L"
	.align
_StringConst_324:
	.word	1			! length
	.ascii	"J"
	.align
_StringConst_323:
	.word	1			! length
	.ascii	"H"
	.align
_StringConst_322:
	.word	1			! length
	.ascii	"V"
	.align
_StringConst_321:
	.word	1			! length
	.ascii	"T"
	.align
_StringConst_320:
	.word	1			! length
	.ascii	"R"
	.align
_StringConst_319:
	.word	1			! length
	.ascii	"F"
	.align
_StringConst_318:
	.word	1			! length
	.ascii	"P"
	.align
_StringConst_317:
	.word	1			! length
	.ascii	"D"
	.align
_StringConst_316:
	.word	1			! length
	.ascii	"N"
	.align
_StringConst_315:
	.word	1			! length
	.ascii	"B"
	.align
_StringConst_314:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_313:
	.word	30			! length
	.ascii	"......Child 2 beginning......\n"
	.align
_StringConst_312:
	.word	27			! length
	.ascii	"......Child 1 ending......\n"
	.align
_StringConst_311:
	.word	1			! length
	.ascii	"W"
	.align
_StringConst_310:
	.word	1			! length
	.ascii	"U"
	.align
_StringConst_309:
	.word	1			! length
	.ascii	"S"
	.align
_StringConst_308:
	.word	1			! length
	.ascii	"K"
	.align
_StringConst_307:
	.word	1			! length
	.ascii	"I"
	.align
_StringConst_306:
	.word	1			! length
	.ascii	"G"
	.align
_StringConst_305:
	.word	1			! length
	.ascii	"Q"
	.align
_StringConst_304:
	.word	1			! length
	.ascii	"E"
	.align
_StringConst_303:
	.word	1			! length
	.ascii	"O"
	.align
_StringConst_302:
	.word	1			! length
	.ascii	"C"
	.align
_StringConst_301:
	.word	1			! length
	.ascii	"M"
	.align
_StringConst_300:
	.word	1			! length
	.ascii	"A"
	.align
_StringConst_299:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_298:
	.word	30			! length
	.ascii	"......Child 1 beginning......\n"
	.align
_StringConst_297:
	.word	67			! length
	.ascii	"Make sure that the activity of child 1 and child 2 is interleaved.\n"
	.align
_StringConst_296:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_295:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_294:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_293:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_292:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_291:
	.word	45			! length
	.ascii	"\n**********  WriteTest5 running  **********\n\n"
	.align
_StringConst_290:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_289:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_288:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_287:
	.word	25			! length
	.ascii	"\" to current position...\n"
	.align
_StringConst_286:
	.word	9			! length
	.ascii	"Writing \""
	.align
_StringConst_285:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_284:
	.word	26			! length
	.ascii	"abc0123ABC4567DEF89GHIwxyz"
	.align
_StringConst_283:
	.word	3			! length
	.ascii	"GHI"
	.align
_StringConst_282:
	.word	2			! length
	.ascii	"89"
	.align
_StringConst_281:
	.word	3			! length
	.ascii	"DEF"
	.align
_StringConst_280:
	.word	4			! length
	.ascii	"4567"
	.align
_StringConst_279:
	.word	3			! length
	.ascii	"ABC"
	.align
_StringConst_278:
	.word	4			! length
	.ascii	"0123"
	.align
_StringConst_277:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_276:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_275:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_274:
	.word	45			! length
	.ascii	"\n**********  WriteTest4 running  **********\n\n"
	.align
_StringConst_273:
	.word	23			! length
	.ascii	"\") is incorrect  *****\n"
	.align
_StringConst_272:
	.word	30			! length
	.ascii	"*****  ERROR: The data read (\""
	.align
_StringConst_271:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_270:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_269:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_268:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_267:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Seek ("
	.align
_StringConst_266:
	.word	4			! length
	.ascii	"...\n"
	.align
_StringConst_265:
	.word	14			! length
	.ascii	"\" at position "
	.align
_StringConst_264:
	.word	33			! length
	.ascii	"Checking that the file contains \""
	.align
_StringConst_263:
	.word	60			! length
	.ascii	"LOGIC ERROR: data should not be larger than our buffer size\n"
	.align
_StringConst_262:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_261:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_260:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_259:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_258:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Seek ("
	.align
_StringConst_257:
	.word	12			! length
	.ascii	" in file...\n"
	.align
_StringConst_256:
	.word	14			! length
	.ascii	"\" to position "
	.align
_StringConst_255:
	.word	9			! length
	.ascii	"Writing \""
	.align
_StringConst_254:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_253:
	.word	26			! length
	.ascii	"HHHHIIIIJJJJKKKKLLLLMMMMNN"
	.align
_StringConst_252:
	.word	26			! length
	.ascii	"AAAABBBBCCCCDDDDEEEEFFFFGG"
	.align
_StringConst_251:
	.word	26			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHGFEDCBA"
	.align
_StringConst_250:
	.word	26			! length
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.align
_StringConst_249:
	.word	26			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHGFEDCBA"
	.align
_StringConst_248:
	.word	26			! length
	.ascii	"HHHHIIIIJJJJKKKKLLLLMMMMNN"
	.align
_StringConst_247:
	.word	26			! length
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.align
_StringConst_246:
	.word	26			! length
	.ascii	"AAAABBBBCCCCDDDDEEEEFFFFGG"
	.align
_StringConst_245:
	.word	26			! length
	.ascii	"ggggghhhhhiiiiijjjjjkkkkkl"
	.align
_StringConst_244:
	.word	26			! length
	.ascii	"aaaaabbbbbcccccdddddeeeeef"
	.align
_StringConst_243:
	.word	26			! length
	.ascii	"zyxwvutsrqponmlkjihgfedcba"
	.align
_StringConst_242:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_241:
	.word	26			! length
	.ascii	"ggggghhhhhiiiiijjjjjkkkkkl"
	.align
_StringConst_240:
	.word	26			! length
	.ascii	"aaaaabbbbbcccccdddddeeeeef"
	.align
_StringConst_239:
	.word	26			! length
	.ascii	"zyxwvutsrqponmlkjihgfedcba"
	.align
_StringConst_238:
	.word	26			! length
	.ascii	"abcdefghijklmnopqrstuvwxyz"
	.align
_StringConst_237:
	.word	5			! length
	.ascii	"file3"
	.align
_StringConst_236:
	.word	45			! length
	.ascii	"\n**********  WriteTest3 running  **********\n\n"
	.align
_StringConst_235:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_234:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_233:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Seek ("
	.align
_StringConst_232:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_231:
	.word	36			! length
	.ascii	"Make sure file size is unchanged...\n"
	.align
_StringConst_230:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_229:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_228:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_227:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_226:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_225:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_224:
	.word	37			! length
	.ascii	"Writing with negative sizeInBytes...\n"
	.align
_StringConst_223:
	.word	5			! length
	.ascii	"file2"
	.align
_StringConst_222:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_221:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_220:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_219:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_218:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_217:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_216:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_215:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_214:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_213:
	.word	47			! length
	.ascii	"Writing files with invalid file descriptors...\n"
	.align
_StringConst_212:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_211:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_210:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_209:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_208:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_207:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_206:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_205:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_204:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_203:
	.word	36			! length
	.ascii	"Writing files which are not open...\n"
	.align
_StringConst_202:
	.word	45			! length
	.ascii	"\n**********  WriteTest2 running  **********\n\n"
	.align
_StringConst_201:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_200:
	.word	20			! length
	.ascii	"abcdePONMLklmZYXWVst"
	.align
_StringConst_199:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_198:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_197:
	.word	43			! length
	.ascii	"\nShould print \'>>>abcdePONMLklmZYXWVst<<<\'\n"
	.align
_StringConst_196:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_195:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_194:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_193:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Seek ("
	.align
_StringConst_192:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_191:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_190:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_189:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Seek ("
	.align
_StringConst_188:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_187:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_186:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_185:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Seek ("
	.align
_StringConst_184:
	.word	20			! length
	.ascii	"ZYXWVUTSRQPONMLKJIHG"
	.align
_StringConst_183:
	.word	20			! length
	.ascii	"abcdefghijklmnopqrst"
	.align
_StringConst_182:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_181:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_180:
	.word	43			! length
	.ascii	"\nShould print \'>>>abcdefghijklmnopqrst<<<\'\n"
	.align
_StringConst_179:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_178:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_177:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_176:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Seek ("
	.align
_StringConst_175:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_174:
	.word	43			! length
	.ascii	"*****  ERROR: return value from Sys_Write ("
	.align
_StringConst_173:
	.word	5			! length
	.ascii	"file2"
	.align
_StringConst_172:
	.word	20			! length
	.ascii	"abcdefghijklmnopqrst"
	.align
_StringConst_171:
	.word	45			! length
	.ascii	"\n**********  WriteTest1 running  **********\n\n"
	.align
_StringConst_170:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_169:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_168:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_167:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_166:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_165:
	.word	53			! length
	.ascii	"\nShould print \'>>>he time for all good men to co<<<\'\n"
	.align
_StringConst_164:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_163:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_162:
	.word	19			! length
	.ascii	"\nShould print 8...\n"
	.align
_StringConst_161:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_160:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_159:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_158:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_157:
	.word	53			! length
	.ascii	"\nShould print \'>>> come to the aid of their part<<<\'\n"
	.align
_StringConst_156:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_155:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_154:
	.word	19			! length
	.ascii	"Should print 35...\n"
	.align
_StringConst_153:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_152:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_151:
	.word	41			! length
	.ascii	"Should print -1 (bad file descriptor)...\n"
	.align
_StringConst_150:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_149:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_148:
	.word	35			! length
	.ascii	"Should print -1 (file not open)...\n"
	.align
_StringConst_147:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_146:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_145:
	.word	43			! length
	.ascii	"Should print -1 (newCurrentPos is < -1)...\n"
	.align
_StringConst_144:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_143:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_142:
	.word	50			! length
	.ascii	"Should print -1 (newCurrentPos is > file size)...\n"
	.align
_StringConst_141:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_140:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_139:
	.word	19			! length
	.ascii	"Should print 72...\n"
	.align
_StringConst_138:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_137:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_136:
	.word	18			! length
	.ascii	"Should print 0...\n"
	.align
_StringConst_135:
	.word	6			! length
	.ascii	"retval"
	.align
_StringConst_134:
	.word	23			! length
	.ascii	"\n\n*****  ERROR  *****\n\n"
	.align
_StringConst_133:
	.word	18			! length
	.ascii	"Should print 4...\n"
	.align
_StringConst_132:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_131:
	.word	43			! length
	.ascii	"\n**********  SeekTest running  **********\n\n"
	.align
_StringConst_130:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_129:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_128:
	.word	71			! length
	.ascii	"*****  ERROR: Return code is -1 but did change the last 4 bytes  *****\n"
	.align
_StringConst_127:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_126:
	.word	71			! length
	.ascii	"*****  ERROR: Return code is 4, but did not change last 4 bytes  *****\n"
	.align
_StringConst_125:
	.word	63			! length
	.ascii	"*****  ERROR: Current position is not what is expected!  *****\n"
	.align
_StringConst_124:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_123:
	.word	10			! length
	.ascii	"is the tim"
	.align
_StringConst_122:
	.word	49			! length
	.ascii	"*****  ERROR: Did not change last 4 bytes  *****\n"
	.align
_StringConst_121:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_120:
	.word	44			! length
	.ascii	"\n**********  ReadTest4 running  **********\n\n"
	.align
_StringConst_119:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_118:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_117:
	.word	42			! length
	.ascii	"*****  ERROR: Return value from Sys_Read ("
	.align
_StringConst_116:
	.word	45			! length
	.ascii	"Each line should contain only one character.\n"
	.align
_StringConst_115:
	.word	54			! length
	.ascii	"Should print 9 lines with the characters \'r all goo\'.\n"
	.align
_StringConst_114:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_113:
	.word	42			! length
	.ascii	"*****  ERROR: Return value from Sys_Read ("
	.align
_StringConst_112:
	.word	45			! length
	.ascii	"Each line should contain only one character.\n"
	.align
_StringConst_111:
	.word	54			! length
	.ascii	"Should print 9 lines with the characters \'e time fo\'.\n"
	.align
_StringConst_110:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_109:
	.word	42			! length
	.ascii	"*****  ERROR: Return value from Sys_Read ("
	.align
_StringConst_108:
	.word	45			! length
	.ascii	"Each line should contain only one character.\n"
	.align
_StringConst_107:
	.word	54			! length
	.ascii	"Should print 9 lines with the characters \'Now is th\'.\n"
	.align
_StringConst_106:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_105:
	.word	44			! length
	.ascii	"\n**********  ReadTest3 running  **********\n\n"
	.align
_StringConst_104:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_103:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_102:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_101:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_100:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_99:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_98:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_97:
	.word	37			! length
	.ascii	"Reading with negative sizeInBytes...\n"
	.align
_StringConst_96:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_95:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_94:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_93:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_92:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_91:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_90:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_89:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_88:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_87:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_86:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_85:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_84:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_83:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_82:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_81:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_80:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_79:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_78:
	.word	5			! length
	.ascii	"Okay\n"
	.align
_StringConst_77:
	.word	65			! length
	.ascii	"Reading files which are not open and invalid file descriptors...\n"
	.align
_StringConst_76:
	.word	44			! length
	.ascii	"\n**********  ReadTest2 running  **********\n\n"
	.align
_StringConst_75:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_74:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_73:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_72:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_71:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_70:
	.word	53			! length
	.ascii	"\nShould print \'>>> parties!!!\no the aid of their<<<\'\n"
	.align
_StringConst_69:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_68:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_67:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_66:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_65:
	.word	53			! length
	.ascii	"\nShould print \'>>> parties!!!\no the aid of their<<<\'\n"
	.align
_StringConst_64:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_63:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_62:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_61:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_60:
	.word	53			! length
	.ascii	"\nShould print \'>>>en to come to the aid of their<<<\'\n"
	.align
_StringConst_59:
	.word	22			! length
	.ascii	") is incorrect  *****\n"
	.align
_StringConst_58:
	.word	42			! length
	.ascii	"*****  ERROR: return value from Sys_Read ("
	.align
_StringConst_57:
	.word	4			! length
	.ascii	"<<<\n"
	.align
_StringConst_56:
	.word	17			! length
	.ascii	"              >>>"
	.align
_StringConst_55:
	.word	53			! length
	.ascii	"\nShould print \'>>>Now is the time for all good m<<<\'\n"
	.align
_StringConst_54:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_53:
	.word	44			! length
	.ascii	"\n**********  ReadTest1 running  **********\n\n"
	.align
_StringConst_52:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_51:
	.word	81			! length
	.ascii	"Closing files which are not open and invalid file descriptors; should be nops...\n"
	.align
_StringConst_50:
	.word	44			! length
	.ascii	"\n**********  CloseTest running  **********\n\n"
	.align
_StringConst_49:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_48:
	.word	24			! length
	.ascii	"Closing all 10 files...\n"
	.align
_StringConst_47:
	.word	55			! length
	.ascii	", which is an unexpected (but possibly correct) fd ***\n"
	.align
_StringConst_46:
	.word	33			! length
	.ascii	"*** WARNING: The syscall returns "
	.align
_StringConst_45:
	.word	36			! length
	.ascii	") indicating the open failed  *****\n"
	.align
_StringConst_44:
	.word	48			! length
	.ascii	"*****  ERROR: Open returned a negative number ( "
	.align
_StringConst_43:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_42:
	.word	20			! length
	.ascii	"Opening 10 files...\n"
	.align
_StringConst_41:
	.word	48			! length
	.ascii	"\n**********  OpenCloseTest running  **********\n\n"
	.align
_StringConst_40:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_39:
	.word	39			! length
	.ascii	") indicating the open succeeded  *****\n"
	.align
_StringConst_38:
	.word	52			! length
	.ascii	"*****  ERROR: Open returned a non-negative number ( "
	.align
_StringConst_37:
	.word	23			! length
	.ascii	") other than -1  *****\n"
	.align
_StringConst_36:
	.word	48			! length
	.ascii	"*****  ERROR: Open returned a negative number ( "
	.align
_StringConst_35:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_34:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_33:
	.word	67			! length
	.ascii	"Attempting to open the file one more time, which should return -1.\n"
	.align
_StringConst_32:
	.word	55			! length
	.ascii	", which is an unexpected (but possibly correct) fd ***\n"
	.align
_StringConst_31:
	.word	33			! length
	.ascii	"*** WARNING: The syscall returns "
	.align
_StringConst_30:
	.word	11			! length
	.ascii	" succeeded\n"
	.align
_StringConst_29:
	.word	5			! length
	.ascii	"Open "
	.align
_StringConst_28:
	.word	36			! length
	.ascii	") indicating the open failed  *****\n"
	.align
_StringConst_27:
	.word	48			! length
	.ascii	"*****  ERROR: Open returned a negative number ( "
	.align
_StringConst_26:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_25:
	.word	43			! length
	.ascii	"Attempting to open the same file 10 times.\n"
	.align
_StringConst_24:
	.word	44			! length
	.ascii	"\n**********  OpenTest2 running  **********\n\n"
	.align
_StringConst_23:
	.word	40			! length
	.ascii	"\n**********  Test Complete  **********\n\n"
	.align
_StringConst_22:
	.word	75			! length
	.ascii	", which is perhaps correct but I was expecting 0 for the first open fd ***\n"
	.align
_StringConst_21:
	.word	33			! length
	.ascii	"*** WARNING: The syscall returns "
	.align
_StringConst_20:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_19:
	.word	36			! length
	.ascii	") indicating the open failed  *****\n"
	.align
_StringConst_18:
	.word	48			! length
	.ascii	"*****  ERROR: Open returned a negative number ( "
	.align
_StringConst_17:
	.word	5			! length
	.ascii	"file1"
	.align
_StringConst_16:
	.word	59			! length
	.ascii	"Attempting to open an existing file, which should succeed.\n"
	.align
_StringConst_15:
	.word	39			! length
	.ascii	") indicating the open succeeded  *****\n"
	.align
_StringConst_14:
	.word	52			! length
	.ascii	"*****  ERROR: Open returned a non-negative number ( "
	.align
_StringConst_13:
	.word	23			! length
	.ascii	") other than -1  *****\n"
	.align
_StringConst_12:
	.word	48			! length
	.ascii	"*****  ERROR: Open returned a negative number ( "
	.align
_StringConst_11:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_10:
	.word	44			! length
	.ascii	"NameOfNonexistingFileeeeeeeeeeeeeeeeeeeeeeee"
	.align
_StringConst_9:
	.word	77			! length
	.ascii	"Attempting to open a file with an overly large name, which should return -1.\n"
	.align
_StringConst_8:
	.word	39			! length
	.ascii	") indicating the open succeeded  *****\n"
	.align
_StringConst_7:
	.word	52			! length
	.ascii	"*****  ERROR: Open returned a non-negative number ( "
	.align
_StringConst_6:
	.word	23			! length
	.ascii	") other than -1  *****\n"
	.align
_StringConst_5:
	.word	48			! length
	.ascii	"*****  ERROR: Open returned a negative number ( "
	.align
_StringConst_4:
	.word	6			! length
	.ascii	"Okay.\n"
	.align
_StringConst_3:
	.word	8			! length
	.ascii	"NotThere"
	.align
_StringConst_2:
	.word	63			! length
	.ascii	"Attempting to open a nonexistent file, which should return -1.\n"
	.align
_StringConst_1:
	.word	44			! length
	.ascii	"\n**********  OpenTest1 running  **********\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x8929d27c,r3		! .  hashVal = -1993747844
	call	_CheckVersion_P_TestProgram4_	! .
	cmp	r1,0			! .
	be	_Label_431		! .
	ret				! .
_Label_431:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"TestProgram4.c\0"
_packageName:
	.ascii	"TestProgram4\0"
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
_CheckVersion_P_TestProgram4_:
	.export	_CheckVersion_P_TestProgram4_
	set	0x8929d27c,r4		! myHashVal = -1993747844
	cmp	r3,r4
	be	_Label_432
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
_Label_432:
	mov	0,r1
! Make sure _P_UserSystem_ has hash value 0xd3ed0851 (decimal -739440559)
	set	_packageName,r2
	set	0xd3ed0851,r3
	call	_CheckVersion_P_UserSystem_
	.import	_CheckVersion_P_UserSystem_
	cmp	r1,0
	bne	_Label_433
_Label_433:
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
	mov	1,r1
_Label_1996:
	push	r0
	sub	r1,1,r1
	bne	_Label_1996
	mov	13,r13		! source line 13
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! RETURN STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_434
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_434:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION OpenTest1  ===============
! 
_function_430_OpenTest1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_430_OpenTest1,r1
	push	r1
	mov	25,r1
_Label_1997:
	push	r0
	sub	r1,1,r1
	bne	_Label_1997
	mov	52,r13		! source line 52
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_435 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	57,r13		! source line 57
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_436 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_436  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	59,r13		! source line 59
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	60,r13		! source line 60
	mov	"\0\0AS",r10
!   _temp_437 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	60,r13		! source line 60
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	61,r13		! source line 61
	mov	"\0\0IF",r10
!   if fd != -1 then goto _Label_439		(int)
	load	[r14+-104],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_439
!	jmp	_Label_438
_Label_438:
! THEN...
	mov	62,r13		! source line 62
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_440 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_440  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	62,r13		! source line 62
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_441
_Label_439:
! ELSE...
	mov	63,r13		! source line 63
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_443		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_443
!	jmp	_Label_442
_Label_442:
! THEN...
	mov	64,r13		! source line 64
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_444 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	64,r13		! source line 64
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_445 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_445  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	66,r13		! source line 66
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_446
_Label_443:
! ELSE...
	mov	68,r13		! source line 68
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_447 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_447  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	68,r13		! source line 68
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	69,r13		! source line 69
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_448 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_448  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	70,r13		! source line 70
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_446:
! END IF...
_Label_441:
! CALL STATEMENT...
!   _temp_449 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_449  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   _temp_450 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_450  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0IF",r10
!   if fd != -1 then goto _Label_452		(int)
	load	[r14+-104],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_452
!	jmp	_Label_451
_Label_451:
! THEN...
	mov	76,r13		! source line 76
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_453 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_453  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	76,r13		! source line 76
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_454
_Label_452:
! ELSE...
	mov	77,r13		! source line 77
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_456		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_456
!	jmp	_Label_455
_Label_455:
! THEN...
	mov	78,r13		! source line 78
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_457 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	78,r13		! source line 78
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	79,r13		! source line 79
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_458 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_458  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_459
_Label_456:
! ELSE...
	mov	82,r13		! source line 82
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_460 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_460  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	82,r13		! source line 82
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	83,r13		! source line 83
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_461 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_461  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	84,r13		! source line 84
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_459:
! END IF...
_Label_454:
! CALL STATEMENT...
!   _temp_462 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_462  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	87,r13		! source line 87
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0AS",r10
!   _temp_463 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_463  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	88,r13		! source line 88
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_465		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_465
!	jmp	_Label_464
_Label_464:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_466 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_466  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	91,r13		! source line 91
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_467 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_467  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_468
_Label_465:
! ELSE...
	mov	93,r13		! source line 93
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0IF",r10
!   if intIsZero (fd) then goto _Label_469
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_469
	jmp	_Label_470
_Label_469:
! THEN...
	mov	94,r13		! source line 94
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_471 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_471  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	94,r13		! source line 94
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_472
_Label_470:
! ELSE...
	mov	96,r13		! source line 96
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_473 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_473  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	96,r13		! source line 96
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	97,r13		! source line 97
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_474 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_474  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	98,r13		! source line 98
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_472:
! END IF...
_Label_468:
! CALL STATEMENT...
!   _temp_475 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_475  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	101,r13		! source line 101
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_430_OpenTest1:
	.word	_sourceFileName
	.word	_Label_476
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_477
	.word	-12
	.word	4
	.word	_Label_478
	.word	-16
	.word	4
	.word	_Label_479
	.word	-20
	.word	4
	.word	_Label_480
	.word	-24
	.word	4
	.word	_Label_481
	.word	-28
	.word	4
	.word	_Label_482
	.word	-32
	.word	4
	.word	_Label_483
	.word	-36
	.word	4
	.word	_Label_484
	.word	-40
	.word	4
	.word	_Label_485
	.word	-44
	.word	4
	.word	_Label_486
	.word	-48
	.word	4
	.word	_Label_487
	.word	-52
	.word	4
	.word	_Label_488
	.word	-56
	.word	4
	.word	_Label_489
	.word	-60
	.word	4
	.word	_Label_490
	.word	-64
	.word	4
	.word	_Label_491
	.word	-68
	.word	4
	.word	_Label_492
	.word	-72
	.word	4
	.word	_Label_493
	.word	-76
	.word	4
	.word	_Label_494
	.word	-80
	.word	4
	.word	_Label_495
	.word	-84
	.word	4
	.word	_Label_496
	.word	-88
	.word	4
	.word	_Label_497
	.word	-92
	.word	4
	.word	_Label_498
	.word	-96
	.word	4
	.word	_Label_499
	.word	-100
	.word	4
	.word	_Label_500
	.word	-104
	.word	4
	.word	0
_Label_476:
	.ascii	"OpenTest1\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_500:
	.byte	'I'
	.ascii	"fd\0"
	.align
! 
! ===============  FUNCTION OpenTest2  ===============
! 
_function_429_OpenTest2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_429_OpenTest2,r1
	push	r1
	mov	22,r1
_Label_1998:
	push	r0
	sub	r1,1,r1
	bne	_Label_1998
	mov	107,r13		! source line 107
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_501 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_502 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	115,r13		! source line 115
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_507 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_508 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_507  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-88]
_Label_503:
!   Perform the FOR-LOOP termination test
!   if i > _temp_508 then goto _Label_506		
	load	[r14+-88],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_506
_Label_504:
	mov	116,r13		! source line 116
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0AS",r10
!   _temp_509 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	117,r13		! source line 117
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_511		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_511
!	jmp	_Label_510
_Label_510:
! THEN...
	mov	119,r13		! source line 119
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_512 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_512  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	119,r13		! source line 119
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	120,r13		! source line 120
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_513 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_513  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	121,r13		! source line 121
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_514
_Label_511:
! ELSE...
	mov	122,r13		! source line 122
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0IF",r10
!   if fd != i then goto _Label_516		(int)
	load	[r14+-92],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bne	_Label_516
!	jmp	_Label_515
_Label_515:
! THEN...
	mov	123,r13		! source line 123
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_517 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	123,r13		! source line 123
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_518 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_518  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	125,r13		! source line 125
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_519
_Label_516:
! ELSE...
	mov	127,r13		! source line 127
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_520 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_521 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_521  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	129,r13		! source line 129
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_519:
! END IF...
_Label_514:
!   Increment the FOR-LOOP index variable and jump back
_Label_505:
!   i = i + 1
	load	[r14+-88],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
	jmp	_Label_503
! END FOR
_Label_506:
! CALL STATEMENT...
!   _temp_522 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_522  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	133,r13		! source line 133
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0AS",r10
!   _temp_523 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_523  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	134,r13		! source line 134
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0IF",r10
!   if fd != -1 then goto _Label_525		(int)
	load	[r14+-92],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_525
!	jmp	_Label_524
_Label_524:
! THEN...
	mov	136,r13		! source line 136
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_526 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_526  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	136,r13		! source line 136
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_527
_Label_525:
! ELSE...
	mov	137,r13		! source line 137
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_529		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_529
!	jmp	_Label_528
_Label_528:
! THEN...
	mov	138,r13		! source line 138
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_530 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_530  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	138,r13		! source line 138
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	139,r13		! source line 139
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_531 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_531  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	140,r13		! source line 140
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_532
_Label_529:
! ELSE...
	mov	142,r13		! source line 142
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_533 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	142,r13		! source line 142
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	143,r13		! source line 143
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_534 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_534  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_532:
! END IF...
_Label_527:
! CALL STATEMENT...
!   _temp_535 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_535  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	147,r13		! source line 147
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_429_OpenTest2:
	.word	_sourceFileName
	.word	_Label_536
	.word	0		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_537
	.word	-12
	.word	4
	.word	_Label_538
	.word	-16
	.word	4
	.word	_Label_539
	.word	-20
	.word	4
	.word	_Label_540
	.word	-24
	.word	4
	.word	_Label_541
	.word	-28
	.word	4
	.word	_Label_542
	.word	-32
	.word	4
	.word	_Label_543
	.word	-36
	.word	4
	.word	_Label_544
	.word	-40
	.word	4
	.word	_Label_545
	.word	-44
	.word	4
	.word	_Label_546
	.word	-48
	.word	4
	.word	_Label_547
	.word	-52
	.word	4
	.word	_Label_548
	.word	-56
	.word	4
	.word	_Label_549
	.word	-60
	.word	4
	.word	_Label_550
	.word	-64
	.word	4
	.word	_Label_551
	.word	-68
	.word	4
	.word	_Label_552
	.word	-72
	.word	4
	.word	_Label_553
	.word	-76
	.word	4
	.word	_Label_554
	.word	-80
	.word	4
	.word	_Label_555
	.word	-84
	.word	4
	.word	_Label_556
	.word	-88
	.word	4
	.word	_Label_557
	.word	-92
	.word	4
	.word	0
_Label_536:
	.ascii	"OpenTest2\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_556:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_557:
	.byte	'I'
	.ascii	"fd\0"
	.align
! 
! ===============  FUNCTION OpenCloseTest  ===============
! 
_function_428_OpenCloseTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_428_OpenCloseTest,r1
	push	r1
	mov	19,r1
_Label_1999:
	push	r0
	sub	r1,1,r1
	bne	_Label_1999
	mov	153,r13		! source line 153
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_558 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_558  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	158,r13		! source line 158
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_563 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_564 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_563  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-76]
_Label_559:
!   Perform the FOR-LOOP termination test
!   if j > _temp_564 then goto _Label_562		
	load	[r14+-76],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_562
_Label_560:
	mov	160,r13		! source line 160
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_565 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_565  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	161,r13		! source line 161
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_570 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_571 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_570  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-72]
_Label_566:
!   Perform the FOR-LOOP termination test
!   if i > _temp_571 then goto _Label_569		
	load	[r14+-72],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_569
_Label_567:
	mov	162,r13		! source line 162
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	163,r13		! source line 163
	mov	"\0\0AS",r10
!   _temp_572 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_572  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	163,r13		! source line 163
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0IF",r10
!   if fd >= 0 then goto _Label_574		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_574
!	jmp	_Label_573
_Label_573:
! THEN...
	mov	165,r13		! source line 165
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_575 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_575  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_576 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_576  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_577
_Label_574:
! ELSE...
	mov	168,r13		! source line 168
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0IF",r10
!   if fd != i then goto _Label_579		(int)
	load	[r14+-80],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bne	_Label_579
!	jmp	_Label_578
_Label_578:
	jmp	_Label_580
_Label_579:
! ELSE...
	mov	173,r13		! source line 173
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_581 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_581  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_582 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_582  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_580:
! END IF...
_Label_577:
!   Increment the FOR-LOOP index variable and jump back
_Label_568:
!   i = i + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_566
! END FOR
_Label_569:
! CALL STATEMENT...
!   _temp_583 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_583  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	180,r13		! source line 180
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_588 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-20]
!   Calculate and save the FOR-LOOP ending value
!   _temp_589 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-16]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_588  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+-72]
_Label_584:
!   Perform the FOR-LOOP termination test
!   if i > _temp_589 then goto _Label_587		
	load	[r14+-72],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_587
_Label_585:
	mov	181,r13		! source line 181
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	182,r13		! source line 182
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
!   Increment the FOR-LOOP index variable and jump back
_Label_586:
!   i = i + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_584
! END FOR
_Label_587:
!   Increment the FOR-LOOP index variable and jump back
_Label_561:
!   j = j + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_559
! END FOR
_Label_562:
! CALL STATEMENT...
!   _temp_590 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_590  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	186,r13		! source line 186
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_428_OpenCloseTest:
	.word	_sourceFileName
	.word	_Label_591
	.word	0		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_592
	.word	-12
	.word	4
	.word	_Label_593
	.word	-16
	.word	4
	.word	_Label_594
	.word	-20
	.word	4
	.word	_Label_595
	.word	-24
	.word	4
	.word	_Label_596
	.word	-28
	.word	4
	.word	_Label_597
	.word	-32
	.word	4
	.word	_Label_598
	.word	-36
	.word	4
	.word	_Label_599
	.word	-40
	.word	4
	.word	_Label_600
	.word	-44
	.word	4
	.word	_Label_601
	.word	-48
	.word	4
	.word	_Label_602
	.word	-52
	.word	4
	.word	_Label_603
	.word	-56
	.word	4
	.word	_Label_604
	.word	-60
	.word	4
	.word	_Label_605
	.word	-64
	.word	4
	.word	_Label_606
	.word	-68
	.word	4
	.word	_Label_607
	.word	-72
	.word	4
	.word	_Label_608
	.word	-76
	.word	4
	.word	_Label_609
	.word	-80
	.word	4
	.word	0
_Label_591:
	.ascii	"OpenCloseTest\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_607:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_608:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_609:
	.byte	'I'
	.ascii	"fd\0"
	.align
! 
! ===============  FUNCTION CloseTest  ===============
! 
_function_427_CloseTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_427_CloseTest,r1
	push	r1
	mov	4,r1
_Label_2000:
	push	r0
	sub	r1,1,r1
	bne	_Label_2000
	mov	192,r13		! source line 192
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_610 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_610  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_611 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_611  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	197,r13		! source line 197
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	200,r13		! source line 200
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	201,r13		! source line 201
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+0]
!   Call the function
	mov	202,r13		! source line 202
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	203,r13		! source line 203
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-12345  sizeInBytes=4
	mov	-12345,r1
	store	r1,[r15+0]
!   Call the function
	mov	204,r13		! source line 204
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=12345  sizeInBytes=4
	mov	12345,r1
	store	r1,[r15+0]
!   Call the function
	mov	205,r13		! source line 205
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   _temp_612 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_612  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	207,r13		! source line 207
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	207,r13		! source line 207
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_427_CloseTest:
	.word	_sourceFileName
	.word	_Label_613
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_614
	.word	-12
	.word	4
	.word	_Label_615
	.word	-16
	.word	4
	.word	_Label_616
	.word	-20
	.word	4
	.word	0
_Label_613:
	.ascii	"CloseTest\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
! 
! ===============  FUNCTION ReadTest1  ===============
! 
_function_426_ReadTest1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_426_ReadTest1,r1
	push	r1
	mov	35,r1
_Label_2001:
	push	r0
	sub	r1,1,r1
	bne	_Label_2001
	mov	215,r13		! source line 215
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! charPtr
!   _temp_617 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-124]
!   Move address of _temp_617 [0 ] into _temp_618
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   charPtr = _temp_618		(4 bytes)
	load	[r14+-120],r1
	store	r1,[r14+-136]
! CALL STATEMENT...
!   _temp_619 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_619  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	222,r13		! source line 222
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0AS",r10
!   _temp_620 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_620  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	225,r13		! source line 225
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! CALL STATEMENT...
!   _temp_621 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_621  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	226,r13		! source line 226
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_622 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_622  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	227,r13		! source line 227
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_623 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_623  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	228,r13		! source line 228
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_624 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_624  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	229,r13		! source line 229
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0IF",r10
!   if i == 30 then goto _Label_626		(int)
	load	[r14+-132],r1
	mov	30,r2
	cmp	r1,r2
	be	_Label_626
!	jmp	_Label_625
_Label_625:
! THEN...
	mov	231,r13		! source line 231
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_627 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_627  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	231,r13		! source line 231
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	232,r13		! source line 232
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_628 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_628  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	233,r13		! source line 233
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_626:
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	236,r13		! source line 236
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! CALL STATEMENT...
!   _temp_629 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_629  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	237,r13		! source line 237
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_630 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_630  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	238,r13		! source line 238
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_631 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_631  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	239,r13		! source line 239
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_632 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_632  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0IF",r10
!   if i == 30 then goto _Label_634		(int)
	load	[r14+-132],r1
	mov	30,r2
	cmp	r1,r2
	be	_Label_634
!	jmp	_Label_633
_Label_633:
! THEN...
	mov	242,r13		! source line 242
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_635 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_635  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	243,r13		! source line 243
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_636 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_636  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_634:
! ASSIGNMENT STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	247,r13		! source line 247
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! CALL STATEMENT...
!   _temp_637 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_637  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	248,r13		! source line 248
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_638 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_638  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	249,r13		! source line 249
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_639 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_639  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	250,r13		! source line 250
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_640 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_640  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	251,r13		! source line 251
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0IF",r10
!   if i == 12 then goto _Label_642		(int)
	load	[r14+-132],r1
	mov	12,r2
	cmp	r1,r2
	be	_Label_642
!	jmp	_Label_641
_Label_641:
! THEN...
	mov	253,r13		! source line 253
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_643 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_643  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	253,r13		! source line 253
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_644 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_644  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	255,r13		! source line 255
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_642:
! ASSIGNMENT STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	260,r13		! source line 260
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! CALL STATEMENT...
!   _temp_645 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_645  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	261,r13		! source line 261
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_646 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_646  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_647 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_647  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	263,r13		! source line 263
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_648 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_648  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	264,r13		! source line 264
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_650
	load	[r14+-132],r1
	cmp	r1,r0
	be	_Label_650
!	jmp	_Label_649
_Label_649:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_651 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_651  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	266,r13		! source line 266
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	267,r13		! source line 267
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_652 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_652  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	268,r13		! source line 268
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_650:
! CALL STATEMENT...
!   _temp_653 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_653  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_426_ReadTest1:
	.word	_sourceFileName
	.word	_Label_654
	.word	0		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_655
	.word	-12
	.word	4
	.word	_Label_656
	.word	-16
	.word	4
	.word	_Label_657
	.word	-20
	.word	4
	.word	_Label_658
	.word	-24
	.word	4
	.word	_Label_659
	.word	-28
	.word	4
	.word	_Label_660
	.word	-32
	.word	4
	.word	_Label_661
	.word	-36
	.word	4
	.word	_Label_662
	.word	-40
	.word	4
	.word	_Label_663
	.word	-44
	.word	4
	.word	_Label_664
	.word	-48
	.word	4
	.word	_Label_665
	.word	-52
	.word	4
	.word	_Label_666
	.word	-56
	.word	4
	.word	_Label_667
	.word	-60
	.word	4
	.word	_Label_668
	.word	-64
	.word	4
	.word	_Label_669
	.word	-68
	.word	4
	.word	_Label_670
	.word	-72
	.word	4
	.word	_Label_671
	.word	-76
	.word	4
	.word	_Label_672
	.word	-80
	.word	4
	.word	_Label_673
	.word	-84
	.word	4
	.word	_Label_674
	.word	-88
	.word	4
	.word	_Label_675
	.word	-92
	.word	4
	.word	_Label_676
	.word	-96
	.word	4
	.word	_Label_677
	.word	-100
	.word	4
	.word	_Label_678
	.word	-104
	.word	4
	.word	_Label_679
	.word	-108
	.word	4
	.word	_Label_680
	.word	-112
	.word	4
	.word	_Label_681
	.word	-116
	.word	4
	.word	_Label_682
	.word	-120
	.word	4
	.word	_Label_683
	.word	-124
	.word	4
	.word	_Label_684
	.word	-128
	.word	4
	.word	_Label_685
	.word	-132
	.word	4
	.word	_Label_686
	.word	-136
	.word	4
	.word	0
_Label_654:
	.ascii	"ReadTest1\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_684:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_685:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_686:
	.byte	'P'
	.ascii	"charPtr\0"
	.align
! 
! ===============  FUNCTION ReadTest2  ===============
! 
_function_425_ReadTest2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_425_ReadTest2,r1
	push	r1
	mov	37,r1
_Label_2002:
	push	r0
	sub	r1,1,r1
	bne	_Label_2002
	mov	279,r13		! source line 279
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! charPtr
!   _temp_687 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-132]
!   Move address of _temp_687 [0 ] into _temp_688
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
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
	store	r2,[r14+-128]
!   charPtr = _temp_688		(4 bytes)
	load	[r14+-128],r1
	store	r1,[r14+-144]
! CALL STATEMENT...
!   _temp_689 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	286,r13		! source line 286
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_690 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_690  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	288,r13		! source line 288
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	290,r13		! source line 290
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_692		(int)
	load	[r14+-140],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_692
!	jmp	_Label_691
_Label_691:
! THEN...
	mov	292,r13		! source line 292
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_693 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	292,r13		! source line 292
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_694
_Label_692:
! ELSE...
	mov	294,r13		! source line 294
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_695 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_695  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	294,r13		! source line 294
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	295,r13		! source line 295
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_696 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_696  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	296,r13		! source line 296
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_694:
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	299,r13		! source line 299
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_698		(int)
	load	[r14+-140],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_698
!	jmp	_Label_697
_Label_697:
! THEN...
	mov	301,r13		! source line 301
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_699 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	301,r13		! source line 301
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_700
_Label_698:
! ELSE...
	mov	303,r13		! source line 303
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_701 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	304,r13		! source line 304
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_702 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	305,r13		! source line 305
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_700:
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	308,r13		! source line 308
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_704		(int)
	load	[r14+-140],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_704
!	jmp	_Label_703
_Label_703:
! THEN...
	mov	310,r13		! source line 310
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_705 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_705  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	310,r13		! source line 310
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_706
_Label_704:
! ELSE...
	mov	312,r13		! source line 312
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_707 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_707  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	312,r13		! source line 312
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_708 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_708  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	314,r13		! source line 314
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_706:
! ASSIGNMENT STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	317,r13		! source line 317
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_710		(int)
	load	[r14+-140],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_710
!	jmp	_Label_709
_Label_709:
! THEN...
	mov	319,r13		! source line 319
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_711 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	319,r13		! source line 319
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_712
_Label_710:
! ELSE...
	mov	321,r13		! source line 321
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_713 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	321,r13		! source line 321
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	322,r13		! source line 322
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_714 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	323,r13		! source line 323
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_712:
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=-12345  sizeInBytes=4
	mov	-12345,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	326,r13		! source line 326
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_716		(int)
	load	[r14+-140],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_716
!	jmp	_Label_715
_Label_715:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_717 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	328,r13		! source line 328
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_718
_Label_716:
! ELSE...
	mov	330,r13		! source line 330
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_719 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_719  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	330,r13		! source line 330
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	331,r13		! source line 331
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_720 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_720  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	332,r13		! source line 332
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_718:
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=12345  sizeInBytes=4
	mov	12345,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	335,r13		! source line 335
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_722		(int)
	load	[r14+-140],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_722
!	jmp	_Label_721
_Label_721:
! THEN...
	mov	337,r13		! source line 337
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_723 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_723  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	337,r13		! source line 337
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_724
_Label_722:
! ELSE...
	mov	339,r13		! source line 339
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_725 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	339,r13		! source line 339
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	340,r13		! source line 340
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_726 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_726  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	341,r13		! source line 341
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_724:
! ASSIGNMENT STATEMENT...
	mov	344,r13		! source line 344
	mov	"\0\0AS",r10
!   _temp_727 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	344,r13		! source line 344
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! CALL STATEMENT...
!   _temp_728 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	346,r13		! source line 346
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+8]
!   Call the function
	mov	348,r13		! source line 348
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_730		(int)
	load	[r14+-140],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_730
!	jmp	_Label_729
_Label_729:
! THEN...
	mov	350,r13		! source line 350
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_731 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	350,r13		! source line 350
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_732
_Label_730:
! ELSE...
	mov	352,r13		! source line 352
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_733 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_733  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	352,r13		! source line 352
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	353,r13		! source line 353
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_734 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_734  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	354,r13		! source line 354
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_732:
! ASSIGNMENT STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-123123123  sizeInBytes=4
	set	-123123123,r1
	store	r1,[r15+8]
!   Call the function
	mov	357,r13		! source line 357
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_736		(int)
	load	[r14+-140],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_736
!	jmp	_Label_735
_Label_735:
! THEN...
	mov	359,r13		! source line 359
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_737 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	359,r13		! source line 359
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_738
_Label_736:
! ELSE...
	mov	361,r13		! source line 361
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_739 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	361,r13		! source line 361
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	362,r13		! source line 362
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_740 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	363,r13		! source line 363
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_738:
! CALL STATEMENT...
!   _temp_741 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	366,r13		! source line 366
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0RE",r10
	add	r15,152,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_425_ReadTest2:
	.word	_sourceFileName
	.word	_Label_742
	.word	0		! total size of parameters
	.word	148		! frame size = 148
	.word	_Label_743
	.word	-12
	.word	4
	.word	_Label_744
	.word	-16
	.word	4
	.word	_Label_745
	.word	-20
	.word	4
	.word	_Label_746
	.word	-24
	.word	4
	.word	_Label_747
	.word	-28
	.word	4
	.word	_Label_748
	.word	-32
	.word	4
	.word	_Label_749
	.word	-36
	.word	4
	.word	_Label_750
	.word	-40
	.word	4
	.word	_Label_751
	.word	-44
	.word	4
	.word	_Label_752
	.word	-48
	.word	4
	.word	_Label_753
	.word	-52
	.word	4
	.word	_Label_754
	.word	-56
	.word	4
	.word	_Label_755
	.word	-60
	.word	4
	.word	_Label_756
	.word	-64
	.word	4
	.word	_Label_757
	.word	-68
	.word	4
	.word	_Label_758
	.word	-72
	.word	4
	.word	_Label_759
	.word	-76
	.word	4
	.word	_Label_760
	.word	-80
	.word	4
	.word	_Label_761
	.word	-84
	.word	4
	.word	_Label_762
	.word	-88
	.word	4
	.word	_Label_763
	.word	-92
	.word	4
	.word	_Label_764
	.word	-96
	.word	4
	.word	_Label_765
	.word	-100
	.word	4
	.word	_Label_766
	.word	-104
	.word	4
	.word	_Label_767
	.word	-108
	.word	4
	.word	_Label_768
	.word	-112
	.word	4
	.word	_Label_769
	.word	-116
	.word	4
	.word	_Label_770
	.word	-120
	.word	4
	.word	_Label_771
	.word	-124
	.word	4
	.word	_Label_772
	.word	-128
	.word	4
	.word	_Label_773
	.word	-132
	.word	4
	.word	_Label_774
	.word	-136
	.word	4
	.word	_Label_775
	.word	-140
	.word	4
	.word	_Label_776
	.word	-144
	.word	4
	.word	0
_Label_742:
	.ascii	"ReadTest2\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_687\0"
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
	.byte	'P'
	.ascii	"charPtr\0"
	.align
! 
! ===============  FUNCTION ReadTest3  ===============
! 
_function_424_ReadTest3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_424_ReadTest3,r1
	push	r1
	mov	63,r1
_Label_2003:
	push	r0
	sub	r1,1,r1
	bne	_Label_2003
	mov	374,r13		! source line 374
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_777 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-228]
!   Prepare Argument: offset=8  value=_temp_777  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Call the function
	mov	381,r13		! source line 381
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0AS",r10
!   _temp_778 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-224]
!   Prepare Argument: offset=8  value=_temp_778  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Call the function
	mov	383,r13		! source line 383
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0AS",r10
!   _temp_779 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-220]
!   Move address of _temp_779 [9 ] into _temp_780
!     make sure index expr is >= 0
	mov	9,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-216]
!   Data Move: *_temp_780 = 10  (sizeInBytes=1)
	mov	10,r1
	load	[r14+-216],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_781 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_781  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Call the function
	mov	386,r13		! source line 386
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_782 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=8  value=_temp_782  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Call the function
	mov	387,r13		! source line 387
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_787 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-204]
!   Calculate and save the FOR-LOOP ending value
!   _temp_788 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-200]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_787  (sizeInBytes=4)
	load	[r14+-204],r1
	store	r1,[r14+-236]
_Label_783:
!   Perform the FOR-LOOP termination test
!   if i > _temp_788 then goto _Label_786		
	load	[r14+-236],r1
	load	[r14+-200],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_786
_Label_784:
	mov	390,r13		! source line 390
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0AS",r10
!   Call the function
	mov	391,r13		! source line 391
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! IF STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_789
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_789
	jmp	_Label_790
_Label_789:
! THEN...
	mov	394,r13		! source line 394
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0AS",r10
!   _temp_791 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-196]
!   _temp_792 = i - 1		(int)
	load	[r14+-236],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
!   Move address of _temp_791 [_temp_792 ] into _temp_793
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-188]
!   charPtr = _temp_793		(4 bytes)
	load	[r14+-188],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Call the function
	mov	396,r13		! source line 396
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! IF STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0IF",r10
!   if j == 1 then goto _Label_795		(int)
	load	[r14+-240],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_795
!	jmp	_Label_794
_Label_794:
! THEN...
	mov	398,r13		! source line 398
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_796 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_796  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=j  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_797 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_797  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	400,r13		! source line 400
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_795:
! CALL STATEMENT...
!   _temp_798 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_798  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	403,r13		! source line 403
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_790:
! ASSIGNMENT STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Call the function
	mov	406,r13		! source line 406
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
!   Increment the FOR-LOOP index variable and jump back
_Label_785:
!   i = i + 1
	load	[r14+-236],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
	jmp	_Label_783
! END FOR
_Label_786:
! ASSIGNMENT STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0AS",r10
!   _temp_799 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-172]
!   NEW ARRAY Constructor...
!   _temp_801 = &_temp_800
	add	r14,-168,r1
	store	r1,[r14+-152]
!   _temp_801 = _temp_801 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-152]
!   Next value...
	mov	10,r1
	store	r1,[r14+-148]
_Label_803:
!   Data Move: *_temp_801 = 45  (sizeInBytes=1)
	mov	45,r1
	load	[r14+-152],r2
	storeb	r1,[r2]
!   _temp_801 = _temp_801 + 1
	load	[r14+-152],r1
	add	r1,1,r1
	store	r1,[r14+-152]
!   _temp_802 = _temp_802 + -1
	load	[r14+-148],r1
	add	r1,-1,r1
	store	r1,[r14+-148]
!   if intNotZero (_temp_802) then goto _Label_803
	load	[r14+-148],r1
	cmp	r1,r0
	bne	_Label_803
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-168]
!   _temp_804 = &_temp_800
	add	r14,-168,r1
	store	r1,[r14+-144]
!   make sure array has size 10
	load	[r14+-172],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2004
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2004:
!   make sure array has size 10
	load	[r14+-144],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_799 = *_temp_804  (sizeInBytes=16)
	load	[r14+-144],r5
	load	[r14+-172],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
!   _temp_805 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-140]
!   Move address of _temp_805 [9 ] into _temp_806
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
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
	store	r2,[r14+-136]
!   Data Move: *_temp_806 = 10  (sizeInBytes=1)
	mov	10,r1
	load	[r14+-136],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_807 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_807  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	412,r13		! source line 412
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_808 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_808  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	413,r13		! source line 413
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_813 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-124]
!   Calculate and save the FOR-LOOP ending value
!   _temp_814 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-120]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_813  (sizeInBytes=4)
	load	[r14+-124],r1
	store	r1,[r14+-236]
_Label_809:
!   Perform the FOR-LOOP termination test
!   if i > _temp_814 then goto _Label_812		
	load	[r14+-236],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_812
_Label_810:
	mov	416,r13		! source line 416
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0AS",r10
!   Call the function
	mov	417,r13		! source line 417
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! IF STATEMENT...
	mov	418,r13		! source line 418
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_815
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_815
	jmp	_Label_816
_Label_815:
! THEN...
	mov	420,r13		! source line 420
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	420,r13		! source line 420
	mov	"\0\0AS",r10
!   _temp_817 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-116]
!   _temp_818 = i - 1		(int)
	load	[r14+-236],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Move address of _temp_817 [_temp_818 ] into _temp_819
!     make sure index expr is >= 0
	load	[r14+-112],r2
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
	store	r2,[r14+-108]
!   charPtr = _temp_819		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	421,r13		! source line 421
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	421,r13		! source line 421
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Call the function
	mov	422,r13		! source line 422
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! IF STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0IF",r10
!   if j == 1 then goto _Label_821		(int)
	load	[r14+-240],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_821
!	jmp	_Label_820
_Label_820:
! THEN...
	mov	424,r13		! source line 424
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_822 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_822  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	424,r13		! source line 424
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=j  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	425,r13		! source line 425
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_823 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_823  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	426,r13		! source line 426
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_821:
! CALL STATEMENT...
!   _temp_824 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_824  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	429,r13		! source line 429
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_816:
! ASSIGNMENT STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
!   Increment the FOR-LOOP index variable and jump back
_Label_811:
!   i = i + 1
	load	[r14+-236],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
	jmp	_Label_809
! END FOR
_Label_812:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   _temp_825 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-92]
!   NEW ARRAY Constructor...
!   _temp_827 = &_temp_826
	add	r14,-88,r1
	store	r1,[r14+-72]
!   _temp_827 = _temp_827 + 4
	load	[r14+-72],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Next value...
	mov	10,r1
	store	r1,[r14+-68]
_Label_829:
!   Data Move: *_temp_827 = 45  (sizeInBytes=1)
	mov	45,r1
	load	[r14+-72],r2
	storeb	r1,[r2]
!   _temp_827 = _temp_827 + 1
	load	[r14+-72],r1
	add	r1,1,r1
	store	r1,[r14+-72]
!   _temp_828 = _temp_828 + -1
	load	[r14+-68],r1
	add	r1,-1,r1
	store	r1,[r14+-68]
!   if intNotZero (_temp_828) then goto _Label_829
	load	[r14+-68],r1
	cmp	r1,r0
	bne	_Label_829
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-88]
!   _temp_830 = &_temp_826
	add	r14,-88,r1
	store	r1,[r14+-64]
!   make sure array has size 10
	load	[r14+-92],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2005
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2005:
!   make sure array has size 10
	load	[r14+-64],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_825 = *_temp_830  (sizeInBytes=16)
	load	[r14+-64],r5
	load	[r14+-92],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   _temp_831 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-60]
!   Move address of _temp_831 [9 ] into _temp_832
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
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
!   Data Move: *_temp_832 = 10  (sizeInBytes=1)
	mov	10,r1
	load	[r14+-56],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_833 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_833  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_834 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_834  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	439,r13		! source line 439
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_839 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_840 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_839  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-236]
_Label_835:
!   Perform the FOR-LOOP termination test
!   if i > _temp_840 then goto _Label_838		
	load	[r14+-236],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_838
_Label_836:
	mov	442,r13		! source line 442
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0AS",r10
!   Call the function
	mov	443,r13		! source line 443
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! IF STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_841
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_841
	jmp	_Label_842
_Label_841:
! THEN...
	mov	446,r13		! source line 446
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0AS",r10
!   _temp_843 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-36]
!   _temp_844 = i - 1		(int)
	load	[r14+-236],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Move address of _temp_843 [_temp_844 ] into _temp_845
!     make sure index expr is >= 0
	load	[r14+-32],r2
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
	store	r2,[r14+-28]
!   charPtr = _temp_845		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=charPtr  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	447,r13		! source line 447
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+0]
!   Call the function
	mov	448,r13		! source line 448
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! IF STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0IF",r10
!   if j == 1 then goto _Label_847		(int)
	load	[r14+-240],r1
	mov	1,r2
	cmp	r1,r2
	be	_Label_847
!	jmp	_Label_846
_Label_846:
! THEN...
	mov	450,r13		! source line 450
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_848 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_848  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	450,r13		! source line 450
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=j  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	451,r13		! source line 451
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_849 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_849  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	452,r13		! source line 452
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_847:
! CALL STATEMENT...
!   _temp_850 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	454,r13		! source line 454
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	455,r13		! source line 455
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_842:
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Call the function
	mov	458,r13		! source line 458
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=j  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
!   Increment the FOR-LOOP index variable and jump back
_Label_837:
!   i = i + 1
	load	[r14+-236],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
	jmp	_Label_835
! END FOR
_Label_838:
! CALL STATEMENT...
!   _temp_851 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_851  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	461,r13		! source line 461
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	463,r13		! source line 463
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! RETURN STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0RE",r10
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_424_ReadTest3:
	.word	_sourceFileName
	.word	_Label_852
	.word	0		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_853
	.word	-12
	.word	4
	.word	_Label_854
	.word	-16
	.word	4
	.word	_Label_855
	.word	-20
	.word	4
	.word	_Label_856
	.word	-24
	.word	4
	.word	_Label_857
	.word	-28
	.word	4
	.word	_Label_858
	.word	-32
	.word	4
	.word	_Label_859
	.word	-36
	.word	4
	.word	_Label_860
	.word	-40
	.word	4
	.word	_Label_861
	.word	-44
	.word	4
	.word	_Label_862
	.word	-48
	.word	4
	.word	_Label_863
	.word	-52
	.word	4
	.word	_Label_864
	.word	-56
	.word	4
	.word	_Label_865
	.word	-60
	.word	4
	.word	_Label_866
	.word	-64
	.word	4
	.word	_Label_867
	.word	-68
	.word	4
	.word	_Label_868
	.word	-72
	.word	4
	.word	_Label_869
	.word	-88
	.word	16
	.word	_Label_870
	.word	-92
	.word	4
	.word	_Label_871
	.word	-96
	.word	4
	.word	_Label_872
	.word	-100
	.word	4
	.word	_Label_873
	.word	-104
	.word	4
	.word	_Label_874
	.word	-108
	.word	4
	.word	_Label_875
	.word	-112
	.word	4
	.word	_Label_876
	.word	-116
	.word	4
	.word	_Label_877
	.word	-120
	.word	4
	.word	_Label_878
	.word	-124
	.word	4
	.word	_Label_879
	.word	-128
	.word	4
	.word	_Label_880
	.word	-132
	.word	4
	.word	_Label_881
	.word	-136
	.word	4
	.word	_Label_882
	.word	-140
	.word	4
	.word	_Label_883
	.word	-144
	.word	4
	.word	_Label_884
	.word	-148
	.word	4
	.word	_Label_885
	.word	-152
	.word	4
	.word	_Label_886
	.word	-168
	.word	16
	.word	_Label_887
	.word	-172
	.word	4
	.word	_Label_888
	.word	-176
	.word	4
	.word	_Label_889
	.word	-180
	.word	4
	.word	_Label_890
	.word	-184
	.word	4
	.word	_Label_891
	.word	-188
	.word	4
	.word	_Label_892
	.word	-192
	.word	4
	.word	_Label_893
	.word	-196
	.word	4
	.word	_Label_894
	.word	-200
	.word	4
	.word	_Label_895
	.word	-204
	.word	4
	.word	_Label_896
	.word	-208
	.word	4
	.word	_Label_897
	.word	-212
	.word	4
	.word	_Label_898
	.word	-216
	.word	4
	.word	_Label_899
	.word	-220
	.word	4
	.word	_Label_900
	.word	-224
	.word	4
	.word	_Label_901
	.word	-228
	.word	4
	.word	_Label_902
	.word	-232
	.word	4
	.word	_Label_903
	.word	-236
	.word	4
	.word	_Label_904
	.word	-240
	.word	4
	.word	_Label_905
	.word	-244
	.word	4
	.word	_Label_906
	.word	-248
	.word	4
	.word	0
_Label_852:
	.ascii	"ReadTest3\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_902:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_903:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_904:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_905:
	.byte	'I'
	.ascii	"pid\0"
	.align
_Label_906:
	.byte	'P'
	.ascii	"charPtr\0"
	.align
! 
! ===============  FUNCTION ReadTest4  ===============
! 
_function_423_ReadTest4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_423_ReadTest4,r1
	push	r1
	mov	48,r1
_Label_2006:
	push	r0
	sub	r1,1,r1
	bne	_Label_2006
	mov	469,r13		! source line 469
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_907 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_907  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	475,r13		! source line 475
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   _temp_908 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_908  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	480,r13		! source line 480
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   _temp_910 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-160]
!   Move address of _temp_910 [0 ] into _temp_911
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   _temp_909 = _temp_911		(4 bytes)
	load	[r14+-156],r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_909  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	483,r13		! source line 483
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	484,r13		! source line 484
	mov	"\0\0CA",r10
	call	_function_407_Check
! ASSIGNMENT STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0AS",r10
!   _temp_913 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-148]
!   Move address of _temp_913 [0 ] into _temp_914
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   _temp_912 = _temp_914		(4 bytes)
	load	[r14+-144],r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_912  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	487,r13		! source line 487
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	488,r13		! source line 488
	mov	"\0\0CA",r10
	call	_function_407_Check
! ASSIGNMENT STATEMENT...
	mov	491,r13		! source line 491
	mov	"\0\0AS",r10
!   _temp_916 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-136]
!   Move address of _temp_916 [0 ] into _temp_917
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
!   _temp_915 = _temp_917		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_915  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Call the function
	mov	491,r13		! source line 491
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	492,r13		! source line 492
	mov	"\0\0CA",r10
	call	_function_407_Check
! ASSIGNMENT STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	495,r13		! source line 495
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   _temp_919 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-124]
!   Move address of _temp_919 [0 ] into _temp_920
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   _temp_918 = _temp_920		(4 bytes)
	load	[r14+-120],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_918  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+8]
!   Call the function
	mov	498,r13		! source line 498
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	499,r13		! source line 499
	mov	"\0\0CA",r10
	call	_function_407_Check
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   _temp_922 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-112]
!   Move address of _temp_922 [0 ] into _temp_923
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_921 = _temp_923		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_921  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-5  sizeInBytes=4
	mov	-5,r1
	store	r1,[r15+8]
!   Call the function
	mov	502,r13		! source line 502
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	503,r13		! source line 503
	mov	"\0\0CA",r10
	call	_function_407_Check
! ASSIGNMENT STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	506,r13		! source line 506
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	507,r13		! source line 507
	mov	"\0\0CA",r10
	call	_function_407_Check
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   _temp_924 = main
	set	main,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_924  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	510,r13		! source line 510
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	511,r13		! source line 511
	mov	"\0\0CA",r10
	call	_function_407_Check
! ASSIGNMENT STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=268435455  sizeInBytes=4
	set	268435455,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Call the function
	mov	514,r13		! source line 514
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	515,r13		! source line 515
	mov	"\0\0CA",r10
	call	_function_407_Check
! ASSIGNMENT STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0AS",r10
!   _temp_926 = &fd
	add	r14,-176,r1
	store	r1,[r14+-96]
!   _temp_925 = _temp_926 AND -8192		(int)
	load	[r14+-96],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-100]
!   p = _temp_925 OR 8188		(int)
	load	[r14+-100],r1
	mov	8188,r2
	or	r1,r2,r1
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: save = *p  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_929 = *p  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if save != _temp_929 then goto _Label_928		(int)
	load	[r14+-188],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bne	_Label_928
!	jmp	_Label_927
_Label_927:
! THEN...
	mov	527,r13		! source line 527
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_930 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_930  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	527,r13		! source line 527
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_928:
! ASSIGNMENT STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = save  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r14+-184],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Call the function
	mov	530,r13		! source line 530
	mov	"\0\0CA",r10
	call	_function_407_Check
! ASSIGNMENT STATEMENT...
	mov	535,r13		! source line 535
	mov	"\0\0AS",r10
!   _temp_932 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-80]
!   Move address of _temp_932 [0 ] into _temp_933
!     make sure index expr is >= 0
	mov	0,r2
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
	store	r2,[r14+-76]
!   _temp_931 = _temp_933		(4 bytes)
	load	[r14+-76],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_931  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+8]
!   Call the function
	mov	535,r13		! source line 535
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+4]
!   Call the function
	mov	536,r13		! source line 536
	mov	"\0\0CA",r10
	call	_function_407_Check
! IF STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0IF",r10
!   _temp_937 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-68]
!   Move address of _temp_937 [0 ] into _temp_938
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
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
	store	r2,[r14+-64]
!   _temp_936 = _temp_938		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_940 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_940) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_940 [0 ] into _temp_941
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_939 = _temp_941		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_936  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_939  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+8]
!   Call the function
	mov	537,r13		! source line 537
	mov	"\0\0CA",r10
	call	_P_UserSystem_MemoryEqual
!   if result==true then goto _Label_934 else goto _Label_935
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_935
	jmp	_Label_934
_Label_934:
! THEN...
	mov	538,r13		! source line 538
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_942 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_942  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	538,r13		! source line 538
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_943
_Label_935:
! ELSE...
	mov	540,r13		! source line 540
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_944 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_944  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	540,r13		! source line 540
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_945 = &_Global_buffer2
	set	_Global_buffer2,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_945  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	541,r13		! source line 541
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	542,r13		! source line 542
	mov	"\0\0CA",r10
	call	_P_UserSystem_nl
! END IF...
_Label_943:
! ASSIGNMENT STATEMENT...
	mov	551,r13		! source line 551
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: save = *p  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
! ASSIGNMENT STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	552,r13		! source line 552
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! IF STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0IF",r10
!   if i != 4 then goto _Label_947		(int)
	load	[r14+-180],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_947
!	jmp	_Label_946
_Label_946:
! THEN...
	mov	554,r13		! source line 554
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_950 = *p  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if save != _temp_950 then goto _Label_949		(int)
	load	[r14+-188],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bne	_Label_949
!	jmp	_Label_948
_Label_948:
! THEN...
	mov	555,r13		! source line 555
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_951 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_951  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	555,r13		! source line 555
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_952
_Label_949:
! ELSE...
	mov	557,r13		! source line 557
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_953 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_953  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	557,r13		! source line 557
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_952:
	jmp	_Label_954
_Label_947:
! ELSE...
	mov	559,r13		! source line 559
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_956		(int)
	load	[r14+-180],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_956
!	jmp	_Label_955
_Label_955:
! THEN...
	mov	560,r13		! source line 560
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0IF",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_959 = *p  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if save == _temp_959 then goto _Label_958		(int)
	load	[r14+-188],r1
	load	[r14+-24],r2
	cmp	r1,r2
	be	_Label_958
!	jmp	_Label_957
_Label_957:
! THEN...
	mov	561,r13		! source line 561
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_960 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_960  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	561,r13		! source line 561
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_961
_Label_958:
! ELSE...
	mov	563,r13		! source line 563
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_962 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_962  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	563,r13		! source line 563
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_961:
	jmp	_Label_963
_Label_956:
! ELSE...
	mov	566,r13		! source line 566
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	566,r13		! source line 566
	mov	"\0\0CA",r10
	call	_function_407_Check
! END IF...
_Label_963:
! END IF...
_Label_954:
! ASSIGNMENT STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *p = save  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r14+-184],r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_964 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_964  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	570,r13		! source line 570
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0RE",r10
	add	r15,196,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_423_ReadTest4:
	.word	_sourceFileName
	.word	_Label_965
	.word	0		! total size of parameters
	.word	192		! frame size = 192
	.word	_Label_966
	.word	-12
	.word	4
	.word	_Label_967
	.word	-16
	.word	4
	.word	_Label_968
	.word	-20
	.word	4
	.word	_Label_969
	.word	-24
	.word	4
	.word	_Label_970
	.word	-28
	.word	4
	.word	_Label_971
	.word	-32
	.word	4
	.word	_Label_972
	.word	-36
	.word	4
	.word	_Label_973
	.word	-40
	.word	4
	.word	_Label_974
	.word	-44
	.word	4
	.word	_Label_975
	.word	-48
	.word	4
	.word	_Label_976
	.word	-52
	.word	4
	.word	_Label_977
	.word	-56
	.word	4
	.word	_Label_978
	.word	-60
	.word	4
	.word	_Label_979
	.word	-64
	.word	4
	.word	_Label_980
	.word	-68
	.word	4
	.word	_Label_981
	.word	-72
	.word	4
	.word	_Label_982
	.word	-76
	.word	4
	.word	_Label_983
	.word	-80
	.word	4
	.word	_Label_984
	.word	-84
	.word	4
	.word	_Label_985
	.word	-88
	.word	4
	.word	_Label_986
	.word	-92
	.word	4
	.word	_Label_987
	.word	-96
	.word	4
	.word	_Label_988
	.word	-100
	.word	4
	.word	_Label_989
	.word	-104
	.word	4
	.word	_Label_990
	.word	-108
	.word	4
	.word	_Label_991
	.word	-112
	.word	4
	.word	_Label_992
	.word	-116
	.word	4
	.word	_Label_993
	.word	-120
	.word	4
	.word	_Label_994
	.word	-124
	.word	4
	.word	_Label_995
	.word	-128
	.word	4
	.word	_Label_996
	.word	-132
	.word	4
	.word	_Label_997
	.word	-136
	.word	4
	.word	_Label_998
	.word	-140
	.word	4
	.word	_Label_999
	.word	-144
	.word	4
	.word	_Label_1000
	.word	-148
	.word	4
	.word	_Label_1001
	.word	-152
	.word	4
	.word	_Label_1002
	.word	-156
	.word	4
	.word	_Label_1003
	.word	-160
	.word	4
	.word	_Label_1004
	.word	-164
	.word	4
	.word	_Label_1005
	.word	-168
	.word	4
	.word	_Label_1006
	.word	-172
	.word	4
	.word	_Label_1007
	.word	-176
	.word	4
	.word	_Label_1008
	.word	-180
	.word	4
	.word	_Label_1009
	.word	-184
	.word	4
	.word	_Label_1010
	.word	-188
	.word	4
	.word	0
_Label_965:
	.ascii	"ReadTest4\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_1007:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1008:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1009:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_1010:
	.byte	'I'
	.ascii	"save\0"
	.align
! 
! ===============  FUNCTION SeekTest  ===============
! 
_function_422_SeekTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_422_SeekTest,r1
	push	r1
	mov	54,r1
_Label_2007:
	push	r0
	sub	r1,1,r1
	bne	_Label_2007
	mov	576,r13		! source line 576
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1011 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_1011  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	582,r13		! source line 582
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0AS",r10
!   _temp_1012 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=_temp_1012  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-204]
! CALL STATEMENT...
!   _temp_1013 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-192]
!   Prepare Argument: offset=8  value=_temp_1013  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! IF STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0IF",r10
!   if retval == 4 then goto _Label_1015		(int)
	load	[r14+-212],r1
	mov	4,r2
	cmp	r1,r2
	be	_Label_1015
!	jmp	_Label_1014
_Label_1014:
! THEN...
	mov	589,r13		! source line 589
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1016 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1016  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1015:
! CALL STATEMENT...
!   _temp_1017 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1017  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_1018 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1018  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! IF STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0IF",r10
!   if intIsZero (retval) then goto _Label_1020
	load	[r14+-212],r1
	cmp	r1,r0
	be	_Label_1020
!	jmp	_Label_1019
_Label_1019:
! THEN...
	mov	596,r13		! source line 596
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1021 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1021  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1020:
! CALL STATEMENT...
!   _temp_1022 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1022  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_1023 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_1023  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	601,r13		! source line 601
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! IF STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0IF",r10
!   if retval == 72 then goto _Label_1025		(int)
	load	[r14+-212],r1
	mov	72,r2
	cmp	r1,r2
	be	_Label_1025
!	jmp	_Label_1024
_Label_1024:
! THEN...
	mov	603,r13		! source line 603
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1026 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	603,r13		! source line 603
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1025:
! CALL STATEMENT...
!   _temp_1027 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_1028 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1028  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=73  sizeInBytes=4
	mov	73,r1
	store	r1,[r15+4]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! IF STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0IF",r10
!   if retval == -1 then goto _Label_1030		(int)
	load	[r14+-212],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_1030
!	jmp	_Label_1029
_Label_1029:
! THEN...
	mov	610,r13		! source line 610
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1031 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1031  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1030:
! CALL STATEMENT...
!   _temp_1032 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1032  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Call the function
	mov	612,r13		! source line 612
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_1033 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1033  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-2  sizeInBytes=4
	mov	-2,r1
	store	r1,[r15+4]
!   Call the function
	mov	615,r13		! source line 615
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! IF STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0IF",r10
!   if retval == -1 then goto _Label_1035		(int)
	load	[r14+-212],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_1035
!	jmp	_Label_1034
_Label_1034:
! THEN...
	mov	617,r13		! source line 617
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1036 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1035:
! CALL STATEMENT...
!   _temp_1037 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1037  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_1038 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1038  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! IF STATEMENT...
	mov	623,r13		! source line 623
	mov	"\0\0IF",r10
!   if retval == -1 then goto _Label_1040		(int)
	load	[r14+-212],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_1040
!	jmp	_Label_1039
_Label_1039:
! THEN...
	mov	624,r13		! source line 624
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1041 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1041  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1040:
! CALL STATEMENT...
!   _temp_1042 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_1042  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_1043 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1043  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	629,r13		! source line 629
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! IF STATEMENT...
	mov	630,r13		! source line 630
	mov	"\0\0IF",r10
!   if retval == -1 then goto _Label_1045		(int)
	load	[r14+-212],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_1045
!	jmp	_Label_1044
_Label_1044:
! THEN...
	mov	631,r13		! source line 631
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1046 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1046  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1045:
! CALL STATEMENT...
!   _temp_1047 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1047  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! CALL STATEMENT...
!   _temp_1048 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1048  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	636,r13		! source line 636
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=35  sizeInBytes=4
	mov	35,r1
	store	r1,[r15+4]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! IF STATEMENT...
	mov	637,r13		! source line 637
	mov	"\0\0IF",r10
!   if retval == 35 then goto _Label_1050		(int)
	load	[r14+-212],r1
	mov	35,r2
	cmp	r1,r2
	be	_Label_1050
!	jmp	_Label_1049
_Label_1049:
! THEN...
	mov	638,r13		! source line 638
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1051 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1051  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1050:
! CALL STATEMENT...
!   _temp_1052 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_1052  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0AS",r10
!   _temp_1054 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-92]
!   Move address of _temp_1054 [0 ] into _temp_1055
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
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
	store	r2,[r14+-88]
!   _temp_1053 = _temp_1055		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1053  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
! CALL STATEMENT...
!   _temp_1056 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1056  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1057 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1057  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1058 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1058  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1059 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1059  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0IF",r10
!   if i == 30 then goto _Label_1061		(int)
	load	[r14+-208],r1
	mov	30,r2
	cmp	r1,r2
	be	_Label_1061
!	jmp	_Label_1060
_Label_1060:
! THEN...
	mov	648,r13		! source line 648
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1062 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1062  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1063 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1063  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1061:
! CALL STATEMENT...
!   _temp_1064 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1064  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	654,r13		! source line 654
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+4]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=retval  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! IF STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0IF",r10
!   if retval == 8 then goto _Label_1066		(int)
	load	[r14+-212],r1
	mov	8,r2
	cmp	r1,r2
	be	_Label_1066
!	jmp	_Label_1065
_Label_1065:
! THEN...
	mov	656,r13		! source line 656
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1067 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1067  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1066:
! CALL STATEMENT...
!   _temp_1068 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1068  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=retval  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CA",r10
	call	_P_UserSystem_printIntVar
! ASSIGNMENT STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0AS",r10
!   _temp_1070 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-44]
!   Move address of _temp_1070 [0 ] into _temp_1071
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1069 = _temp_1071		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1069  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
! CALL STATEMENT...
!   _temp_1072 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1072  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1073 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1074 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1074  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1075 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1075  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0IF",r10
!   if i == 30 then goto _Label_1077		(int)
	load	[r14+-208],r1
	mov	30,r2
	cmp	r1,r2
	be	_Label_1077
!	jmp	_Label_1076
_Label_1076:
! THEN...
	mov	666,r13		! source line 666
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1078 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1078  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1079 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1079  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1077:
! CALL STATEMENT...
!   _temp_1080 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0RE",r10
	add	r15,220,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_422_SeekTest:
	.word	_sourceFileName
	.word	_Label_1081
	.word	0		! total size of parameters
	.word	216		! frame size = 216
	.word	_Label_1082
	.word	-12
	.word	4
	.word	_Label_1083
	.word	-16
	.word	4
	.word	_Label_1084
	.word	-20
	.word	4
	.word	_Label_1085
	.word	-24
	.word	4
	.word	_Label_1086
	.word	-28
	.word	4
	.word	_Label_1087
	.word	-32
	.word	4
	.word	_Label_1088
	.word	-36
	.word	4
	.word	_Label_1089
	.word	-40
	.word	4
	.word	_Label_1090
	.word	-44
	.word	4
	.word	_Label_1091
	.word	-48
	.word	4
	.word	_Label_1092
	.word	-52
	.word	4
	.word	_Label_1093
	.word	-56
	.word	4
	.word	_Label_1094
	.word	-60
	.word	4
	.word	_Label_1095
	.word	-64
	.word	4
	.word	_Label_1096
	.word	-68
	.word	4
	.word	_Label_1097
	.word	-72
	.word	4
	.word	_Label_1098
	.word	-76
	.word	4
	.word	_Label_1099
	.word	-80
	.word	4
	.word	_Label_1100
	.word	-84
	.word	4
	.word	_Label_1101
	.word	-88
	.word	4
	.word	_Label_1102
	.word	-92
	.word	4
	.word	_Label_1103
	.word	-96
	.word	4
	.word	_Label_1104
	.word	-100
	.word	4
	.word	_Label_1105
	.word	-104
	.word	4
	.word	_Label_1106
	.word	-108
	.word	4
	.word	_Label_1107
	.word	-112
	.word	4
	.word	_Label_1108
	.word	-116
	.word	4
	.word	_Label_1109
	.word	-120
	.word	4
	.word	_Label_1110
	.word	-124
	.word	4
	.word	_Label_1111
	.word	-128
	.word	4
	.word	_Label_1112
	.word	-132
	.word	4
	.word	_Label_1113
	.word	-136
	.word	4
	.word	_Label_1114
	.word	-140
	.word	4
	.word	_Label_1115
	.word	-144
	.word	4
	.word	_Label_1116
	.word	-148
	.word	4
	.word	_Label_1117
	.word	-152
	.word	4
	.word	_Label_1118
	.word	-156
	.word	4
	.word	_Label_1119
	.word	-160
	.word	4
	.word	_Label_1120
	.word	-164
	.word	4
	.word	_Label_1121
	.word	-168
	.word	4
	.word	_Label_1122
	.word	-172
	.word	4
	.word	_Label_1123
	.word	-176
	.word	4
	.word	_Label_1124
	.word	-180
	.word	4
	.word	_Label_1125
	.word	-184
	.word	4
	.word	_Label_1126
	.word	-188
	.word	4
	.word	_Label_1127
	.word	-192
	.word	4
	.word	_Label_1128
	.word	-196
	.word	4
	.word	_Label_1129
	.word	-200
	.word	4
	.word	_Label_1130
	.word	-204
	.word	4
	.word	_Label_1131
	.word	-208
	.word	4
	.word	_Label_1132
	.word	-212
	.word	4
	.word	0
_Label_1081:
	.ascii	"SeekTest\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1130:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1131:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1132:
	.byte	'I'
	.ascii	"retval\0"
	.align
! 
! ===============  FUNCTION WriteTest1  ===============
! 
_function_421_WriteTest1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_421_WriteTest1,r1
	push	r1
	mov	56,r1
_Label_2008:
	push	r0
	sub	r1,1,r1
	bne	_Label_2008
	mov	681,r13		! source line 681
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1133 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=8  value=_temp_1133  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	688,r13		! source line 688
	mov	"\0\0AS",r10
!   _temp_1134 = &_Global_buffer3
	set	_Global_buffer3,r1
	store	r1,[r14+-204]
!   _temp_1135 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_1135) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   make sure array has size 20
	load	[r14+-204],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_2009
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2009:
!   make sure array has size 20
	load	[r14+-200],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1134 = *_temp_1135  (sizeInBytes=24)
	load	[r14+-200],r5
	load	[r14+-204],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
	load	[r5+16],r1
	store	r1,[r4+16]
	load	[r5+20],r1
	store	r1,[r4+20]
! ASSIGNMENT STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0AS",r10
!   _temp_1136 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=_temp_1136  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	690,r13		! source line 690
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	691,r13		! source line 691
	mov	"\0\0AS",r10
!   _temp_1138 = &_Global_buffer3
	set	_Global_buffer3,r1
	store	r1,[r14+-188]
!   Move address of _temp_1138 [0 ] into _temp_1139
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
	store	r2,[r14+-184]
!   _temp_1137 = _temp_1139		(4 bytes)
	load	[r14+-184],r1
	store	r1,[r14+-192]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1137  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+8]
!   Call the function
	mov	691,r13		! source line 691
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	692,r13		! source line 692
	mov	"\0\0IF",r10
!   if i == 20 then goto _Label_1141		(int)
	load	[r14+-216],r1
	mov	20,r2
	cmp	r1,r2
	be	_Label_1141
!	jmp	_Label_1140
_Label_1140:
! THEN...
	mov	693,r13		! source line 693
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1142 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1142  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1143 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1143  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1141:
! ASSIGNMENT STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_1145
	load	[r14+-216],r1
	cmp	r1,r0
	be	_Label_1145
!	jmp	_Label_1144
_Label_1144:
! THEN...
	mov	701,r13		! source line 701
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1146 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1146  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1147 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_1147  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1145:
! ASSIGNMENT STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0AS",r10
!   _temp_1149 = &_Global_readBuff
	set	_Global_readBuff,r1
	store	r1,[r14+-160]
!   Move address of _temp_1149 [0 ] into _temp_1150
!     make sure index expr is >= 0
	mov	0,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   _temp_1148 = _temp_1150		(4 bytes)
	load	[r14+-156],r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1148  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+8]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0IF",r10
!   if i == 20 then goto _Label_1152		(int)
	load	[r14+-216],r1
	mov	20,r2
	cmp	r1,r2
	be	_Label_1152
!	jmp	_Label_1151
_Label_1151:
! THEN...
	mov	707,r13		! source line 707
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1153 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1153  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1154 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1154  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1152:
! CALL STATEMENT...
!   _temp_1155 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1155  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1156 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_1156  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1157 = &_Global_readBuff
	set	_Global_readBuff,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1157  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1158 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1158  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1159 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1159  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+12]
!   Call the function
	mov	717,r13		! source line 717
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! ASSIGNMENT STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0AS",r10
!   _temp_1160 = &_Global_buffer4
	set	_Global_buffer4,r1
	store	r1,[r14+-124]
!   _temp_1161 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1161) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   make sure array has size 20
	load	[r14+-124],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_2010
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2010:
!   make sure array has size 20
	load	[r14+-120],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1160 = *_temp_1161  (sizeInBytes=24)
	load	[r14+-120],r5
	load	[r14+-124],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
	load	[r5+16],r1
	store	r1,[r4+16]
	load	[r5+20],r1
	store	r1,[r4+20]
! ASSIGNMENT STATEMENT...
	mov	722,r13		! source line 722
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=13  sizeInBytes=4
	mov	13,r1
	store	r1,[r15+4]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	723,r13		! source line 723
	mov	"\0\0IF",r10
!   if i == 13 then goto _Label_1163		(int)
	load	[r14+-216],r1
	mov	13,r2
	cmp	r1,r2
	be	_Label_1163
!	jmp	_Label_1162
_Label_1162:
! THEN...
	mov	724,r13		! source line 724
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1164 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1164  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1165 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1165  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1163:
! ASSIGNMENT STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0AS",r10
!   _temp_1167 = &_Global_buffer4
	set	_Global_buffer4,r1
	store	r1,[r14+-104]
!   Move address of _temp_1167 [0 ] into _temp_1168
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
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
	store	r2,[r14+-100]
!   _temp_1166 = _temp_1168		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1166  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0IF",r10
!   if i == 5 then goto _Label_1170		(int)
	load	[r14+-216],r1
	mov	5,r2
	cmp	r1,r2
	be	_Label_1170
!	jmp	_Label_1169
_Label_1169:
! THEN...
	mov	730,r13		! source line 730
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1171 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1171  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1172 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1172  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1170:
! ASSIGNMENT STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+4]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0IF",r10
!   if i == 5 then goto _Label_1174		(int)
	load	[r14+-216],r1
	mov	5,r2
	cmp	r1,r2
	be	_Label_1174
!	jmp	_Label_1173
_Label_1173:
! THEN...
	mov	738,r13		! source line 738
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1175 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1175  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	738,r13		! source line 738
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1176 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1176  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1174:
! ASSIGNMENT STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0AS",r10
!   _temp_1178 = &_Global_buffer4
	set	_Global_buffer4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1178 [10 ] into _temp_1179
!     make sure index expr is >= 0
	mov	10,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_1177 = _temp_1179		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1177  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0IF",r10
!   if i == 5 then goto _Label_1181		(int)
	load	[r14+-216],r1
	mov	5,r2
	cmp	r1,r2
	be	_Label_1181
!	jmp	_Label_1180
_Label_1180:
! THEN...
	mov	744,r13		! source line 744
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1182 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1182  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1183 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1183  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1181:
! ASSIGNMENT STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Call the function
	mov	750,r13		! source line 750
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _Label_1185
	load	[r14+-216],r1
	cmp	r1,r0
	be	_Label_1185
!	jmp	_Label_1184
_Label_1184:
! THEN...
	mov	752,r13		! source line 752
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1186 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1186  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	752,r13		! source line 752
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	753,r13		! source line 753
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1187 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1187  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	754,r13		! source line 754
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1185:
! ASSIGNMENT STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0AS",r10
!   _temp_1189 = &_Global_readBuff
	set	_Global_readBuff,r1
	store	r1,[r14+-48]
!   Move address of _temp_1189 [0 ] into _temp_1190
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
!   _temp_1188 = _temp_1190		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1188  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+8]
!   Call the function
	mov	756,r13		! source line 756
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	757,r13		! source line 757
	mov	"\0\0IF",r10
!   if i == 20 then goto _Label_1192		(int)
	load	[r14+-216],r1
	mov	20,r2
	cmp	r1,r2
	be	_Label_1192
!	jmp	_Label_1191
_Label_1191:
! THEN...
	mov	758,r13		! source line 758
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1193 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1193  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	759,r13		! source line 759
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1194 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1194  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1192:
! CALL STATEMENT...
!   _temp_1195 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1195  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	762,r13		! source line 762
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1196 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1196  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1197 = &_Global_readBuff
	set	_Global_readBuff,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1197  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	764,r13		! source line 764
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1198 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1199 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1199  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+12]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1200 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1200  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	770,r13		! source line 770
	mov	"\0\0RE",r10
	add	r15,228,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_421_WriteTest1:
	.word	_sourceFileName
	.word	_Label_1201
	.word	0		! total size of parameters
	.word	224		! frame size = 224
	.word	_Label_1202
	.word	-12
	.word	4
	.word	_Label_1203
	.word	-16
	.word	4
	.word	_Label_1204
	.word	-20
	.word	4
	.word	_Label_1205
	.word	-24
	.word	4
	.word	_Label_1206
	.word	-28
	.word	4
	.word	_Label_1207
	.word	-32
	.word	4
	.word	_Label_1208
	.word	-36
	.word	4
	.word	_Label_1209
	.word	-40
	.word	4
	.word	_Label_1210
	.word	-44
	.word	4
	.word	_Label_1211
	.word	-48
	.word	4
	.word	_Label_1212
	.word	-52
	.word	4
	.word	_Label_1213
	.word	-56
	.word	4
	.word	_Label_1214
	.word	-60
	.word	4
	.word	_Label_1215
	.word	-64
	.word	4
	.word	_Label_1216
	.word	-68
	.word	4
	.word	_Label_1217
	.word	-72
	.word	4
	.word	_Label_1218
	.word	-76
	.word	4
	.word	_Label_1219
	.word	-80
	.word	4
	.word	_Label_1220
	.word	-84
	.word	4
	.word	_Label_1221
	.word	-88
	.word	4
	.word	_Label_1222
	.word	-92
	.word	4
	.word	_Label_1223
	.word	-96
	.word	4
	.word	_Label_1224
	.word	-100
	.word	4
	.word	_Label_1225
	.word	-104
	.word	4
	.word	_Label_1226
	.word	-108
	.word	4
	.word	_Label_1227
	.word	-112
	.word	4
	.word	_Label_1228
	.word	-116
	.word	4
	.word	_Label_1229
	.word	-120
	.word	4
	.word	_Label_1230
	.word	-124
	.word	4
	.word	_Label_1231
	.word	-128
	.word	4
	.word	_Label_1232
	.word	-132
	.word	4
	.word	_Label_1233
	.word	-136
	.word	4
	.word	_Label_1234
	.word	-140
	.word	4
	.word	_Label_1235
	.word	-144
	.word	4
	.word	_Label_1236
	.word	-148
	.word	4
	.word	_Label_1237
	.word	-152
	.word	4
	.word	_Label_1238
	.word	-156
	.word	4
	.word	_Label_1239
	.word	-160
	.word	4
	.word	_Label_1240
	.word	-164
	.word	4
	.word	_Label_1241
	.word	-168
	.word	4
	.word	_Label_1242
	.word	-172
	.word	4
	.word	_Label_1243
	.word	-176
	.word	4
	.word	_Label_1244
	.word	-180
	.word	4
	.word	_Label_1245
	.word	-184
	.word	4
	.word	_Label_1246
	.word	-188
	.word	4
	.word	_Label_1247
	.word	-192
	.word	4
	.word	_Label_1248
	.word	-196
	.word	4
	.word	_Label_1249
	.word	-200
	.word	4
	.word	_Label_1250
	.word	-204
	.word	4
	.word	_Label_1251
	.word	-208
	.word	4
	.word	_Label_1252
	.word	-212
	.word	4
	.word	_Label_1253
	.word	-216
	.word	4
	.word	0
_Label_1201:
	.ascii	"WriteTest1\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1252:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1253:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION WriteTest2  ===============
! 
_function_420_WriteTest2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_420_WriteTest2,r1
	push	r1
	mov	63,r1
_Label_2011:
	push	r0
	sub	r1,1,r1
	bne	_Label_2011
	mov	776,r13		! source line 776
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1254 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=8  value=_temp_1254  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1255 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-236]
!   Prepare Argument: offset=8  value=_temp_1255  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Call the function
	mov	784,r13		! source line 784
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	786,r13		! source line 786
	mov	"\0\0AS",r10
!   _temp_1257 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-228]
!   Move address of _temp_1257 [0 ] into _temp_1258
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-228],r1
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
	store	r2,[r14+-224]
!   _temp_1256 = _temp_1258		(4 bytes)
	load	[r14+-224],r1
	store	r1,[r14+-232]
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1256  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1260		(int)
	load	[r14+-248],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1260
!	jmp	_Label_1259
_Label_1259:
! THEN...
	mov	788,r13		! source line 788
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1261 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-220]
!   Prepare Argument: offset=8  value=_temp_1261  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1262
_Label_1260:
! ELSE...
	mov	790,r13		! source line 790
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1263 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_1263  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Call the function
	mov	791,r13		! source line 791
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1264 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_1264  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Call the function
	mov	792,r13		! source line 792
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1262:
! ASSIGNMENT STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0AS",r10
!   _temp_1266 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-204]
!   Move address of _temp_1266 [0 ] into _temp_1267
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-204],r1
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
	store	r2,[r14+-200]
!   _temp_1265 = _temp_1267		(4 bytes)
	load	[r14+-200],r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1265  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1269		(int)
	load	[r14+-248],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1269
!	jmp	_Label_1268
_Label_1268:
! THEN...
	mov	797,r13		! source line 797
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1270 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=_temp_1270  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	797,r13		! source line 797
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1271
_Label_1269:
! ELSE...
	mov	799,r13		! source line 799
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1272 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-192]
!   Prepare Argument: offset=8  value=_temp_1272  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+0]
!   Call the function
	mov	799,r13		! source line 799
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Call the function
	mov	800,r13		! source line 800
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1273 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1273  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	801,r13		! source line 801
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1271:
! ASSIGNMENT STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0AS",r10
!   _temp_1275 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-180]
!   Move address of _temp_1275 [0 ] into _temp_1276
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-180],r1
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
!   _temp_1274 = _temp_1276		(4 bytes)
	load	[r14+-176],r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1274  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	804,r13		! source line 804
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1278		(int)
	load	[r14+-248],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1278
!	jmp	_Label_1277
_Label_1277:
! THEN...
	mov	806,r13		! source line 806
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1279 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1279  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1280
_Label_1278:
! ELSE...
	mov	808,r13		! source line 808
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1281 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_1281  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1282 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1282  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1280:
! CALL STATEMENT...
!   _temp_1283 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1283  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	815,r13		! source line 815
	mov	"\0\0AS",r10
!   _temp_1285 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-152]
!   Move address of _temp_1285 [0 ] into _temp_1286
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
!   _temp_1284 = _temp_1286		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1284  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1288		(int)
	load	[r14+-248],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1288
!	jmp	_Label_1287
_Label_1287:
! THEN...
	mov	817,r13		! source line 817
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1289 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1289  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1290
_Label_1288:
! ELSE...
	mov	819,r13		! source line 819
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1291 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_1291  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	819,r13		! source line 819
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1292 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1292  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1290:
! ASSIGNMENT STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0AS",r10
!   _temp_1294 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-128]
!   Move address of _temp_1294 [0 ] into _temp_1295
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_1293 = _temp_1295		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=-12345  sizeInBytes=4
	mov	-12345,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1293  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	824,r13		! source line 824
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1297		(int)
	load	[r14+-248],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1297
!	jmp	_Label_1296
_Label_1296:
! THEN...
	mov	826,r13		! source line 826
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1298 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1298  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	826,r13		! source line 826
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1299
_Label_1297:
! ELSE...
	mov	828,r13		! source line 828
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1300 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1300  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	828,r13		! source line 828
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Call the function
	mov	829,r13		! source line 829
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1301 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1301  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	830,r13		! source line 830
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1299:
! ASSIGNMENT STATEMENT...
	mov	833,r13		! source line 833
	mov	"\0\0AS",r10
!   _temp_1303 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-104]
!   Move address of _temp_1303 [0 ] into _temp_1304
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
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
	store	r2,[r14+-100]
!   _temp_1302 = _temp_1304		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=12345  sizeInBytes=4
	mov	12345,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1302  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=30  sizeInBytes=4
	mov	30,r1
	store	r1,[r15+8]
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1306		(int)
	load	[r14+-248],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1306
!	jmp	_Label_1305
_Label_1305:
! THEN...
	mov	835,r13		! source line 835
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1307 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1307  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1308
_Label_1306:
! ELSE...
	mov	837,r13		! source line 837
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1309 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1309  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Call the function
	mov	838,r13		! source line 838
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1310 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1310  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1308:
! ASSIGNMENT STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0AS",r10
!   _temp_1311 = _StringConst_223
	set	_StringConst_223,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1311  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! CALL STATEMENT...
!   _temp_1312 = _StringConst_224
	set	_StringConst_224,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1312  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	846,r13		! source line 846
	mov	"\0\0AS",r10
!   _temp_1314 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-72]
!   Move address of _temp_1314 [0 ] into _temp_1315
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
!   _temp_1313 = _temp_1315		(4 bytes)
	load	[r14+-68],r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1313  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+8]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1317		(int)
	load	[r14+-248],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1317
!	jmp	_Label_1316
_Label_1316:
! THEN...
	mov	848,r13		! source line 848
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1318 = _StringConst_225
	set	_StringConst_225,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1318  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1319
_Label_1317:
! ELSE...
	mov	850,r13		! source line 850
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1320 = _StringConst_226
	set	_StringConst_226,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1320  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1321 = _StringConst_227
	set	_StringConst_227,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1321  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1319:
! ASSIGNMENT STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0AS",r10
!   _temp_1323 = &_Global_buffer
	set	_Global_buffer,r1
	store	r1,[r14+-48]
!   Move address of _temp_1323 [0 ] into _temp_1324
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
!   _temp_1322 = _temp_1324		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1322  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=-123123123  sizeInBytes=4
	set	-123123123,r1
	store	r1,[r15+8]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_1326		(int)
	load	[r14+-248],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1326
!	jmp	_Label_1325
_Label_1325:
! THEN...
	mov	857,r13		! source line 857
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1327 = _StringConst_228
	set	_StringConst_228,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1327  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1328
_Label_1326:
! ELSE...
	mov	859,r13		! source line 859
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1329 = _StringConst_229
	set	_StringConst_229,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1329  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1330 = _StringConst_230
	set	_StringConst_230,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1330  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1328:
! CALL STATEMENT...
!   _temp_1331 = _StringConst_231
	set	_StringConst_231,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1331  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	867,r13		! source line 867
	mov	"\0\0IF",r10
!   if i != 21 then goto _Label_1333		(int)
	load	[r14+-248],r1
	mov	21,r2
	cmp	r1,r2
	bne	_Label_1333
!	jmp	_Label_1332
_Label_1332:
! THEN...
	mov	868,r13		! source line 868
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1334 = _StringConst_232
	set	_StringConst_232,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1334  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1335
_Label_1333:
! ELSE...
	mov	870,r13		! source line 870
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1336 = _StringConst_233
	set	_StringConst_233,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1336  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	870,r13		! source line 870
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+0]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1337 = _StringConst_234
	set	_StringConst_234,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1337  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	872,r13		! source line 872
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1335:
! CALL STATEMENT...
!   _temp_1338 = _StringConst_235
	set	_StringConst_235,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1338  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	875,r13		! source line 875
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0RE",r10
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_420_WriteTest2:
	.word	_sourceFileName
	.word	_Label_1339
	.word	0		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_1340
	.word	-12
	.word	4
	.word	_Label_1341
	.word	-16
	.word	4
	.word	_Label_1342
	.word	-20
	.word	4
	.word	_Label_1343
	.word	-24
	.word	4
	.word	_Label_1344
	.word	-28
	.word	4
	.word	_Label_1345
	.word	-32
	.word	4
	.word	_Label_1346
	.word	-36
	.word	4
	.word	_Label_1347
	.word	-40
	.word	4
	.word	_Label_1348
	.word	-44
	.word	4
	.word	_Label_1349
	.word	-48
	.word	4
	.word	_Label_1350
	.word	-52
	.word	4
	.word	_Label_1351
	.word	-56
	.word	4
	.word	_Label_1352
	.word	-60
	.word	4
	.word	_Label_1353
	.word	-64
	.word	4
	.word	_Label_1354
	.word	-68
	.word	4
	.word	_Label_1355
	.word	-72
	.word	4
	.word	_Label_1356
	.word	-76
	.word	4
	.word	_Label_1357
	.word	-80
	.word	4
	.word	_Label_1358
	.word	-84
	.word	4
	.word	_Label_1359
	.word	-88
	.word	4
	.word	_Label_1360
	.word	-92
	.word	4
	.word	_Label_1361
	.word	-96
	.word	4
	.word	_Label_1362
	.word	-100
	.word	4
	.word	_Label_1363
	.word	-104
	.word	4
	.word	_Label_1364
	.word	-108
	.word	4
	.word	_Label_1365
	.word	-112
	.word	4
	.word	_Label_1366
	.word	-116
	.word	4
	.word	_Label_1367
	.word	-120
	.word	4
	.word	_Label_1368
	.word	-124
	.word	4
	.word	_Label_1369
	.word	-128
	.word	4
	.word	_Label_1370
	.word	-132
	.word	4
	.word	_Label_1371
	.word	-136
	.word	4
	.word	_Label_1372
	.word	-140
	.word	4
	.word	_Label_1373
	.word	-144
	.word	4
	.word	_Label_1374
	.word	-148
	.word	4
	.word	_Label_1375
	.word	-152
	.word	4
	.word	_Label_1376
	.word	-156
	.word	4
	.word	_Label_1377
	.word	-160
	.word	4
	.word	_Label_1378
	.word	-164
	.word	4
	.word	_Label_1379
	.word	-168
	.word	4
	.word	_Label_1380
	.word	-172
	.word	4
	.word	_Label_1381
	.word	-176
	.word	4
	.word	_Label_1382
	.word	-180
	.word	4
	.word	_Label_1383
	.word	-184
	.word	4
	.word	_Label_1384
	.word	-188
	.word	4
	.word	_Label_1385
	.word	-192
	.word	4
	.word	_Label_1386
	.word	-196
	.word	4
	.word	_Label_1387
	.word	-200
	.word	4
	.word	_Label_1388
	.word	-204
	.word	4
	.word	_Label_1389
	.word	-208
	.word	4
	.word	_Label_1390
	.word	-212
	.word	4
	.word	_Label_1391
	.word	-216
	.word	4
	.word	_Label_1392
	.word	-220
	.word	4
	.word	_Label_1393
	.word	-224
	.word	4
	.word	_Label_1394
	.word	-228
	.word	4
	.word	_Label_1395
	.word	-232
	.word	4
	.word	_Label_1396
	.word	-236
	.word	4
	.word	_Label_1397
	.word	-240
	.word	4
	.word	_Label_1398
	.word	-244
	.word	4
	.word	_Label_1399
	.word	-248
	.word	4
	.word	0
_Label_1339:
	.ascii	"WriteTest2\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1398:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1399:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION WriteTest3  ===============
! 
_function_419_WriteTest3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_419_WriteTest3,r1
	push	r1
	mov	24,r1
_Label_2012:
	push	r0
	sub	r1,1,r1
	bne	_Label_2012
	mov	881,r13		! source line 881
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1400 = _StringConst_236
	set	_StringConst_236,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1400  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	890,r13		! source line 890
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0AS",r10
!   _temp_1401 = _StringConst_237
	set	_StringConst_237,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1401  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	892,r13		! source line 892
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! CALL STATEMENT...
!   _temp_1402 = _StringConst_238
	set	_StringConst_238,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1402  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+12]
!   Call the function
	mov	894,r13		! source line 894
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1403 = _StringConst_239
	set	_StringConst_239,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8179  sizeInBytes=4
	mov	8179,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1403  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+12]
!   Call the function
	mov	895,r13		! source line 895
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1404 = _StringConst_240
	set	_StringConst_240,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=16371  sizeInBytes=4
	mov	16371,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1404  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+12]
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1405 = _StringConst_241
	set	_StringConst_241,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=24550  sizeInBytes=4
	mov	24550,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1405  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+12]
!   Call the function
	mov	897,r13		! source line 897
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1406 = _StringConst_242
	set	_StringConst_242,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1406  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+12]
!   Call the function
	mov	899,r13		! source line 899
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1407 = _StringConst_243
	set	_StringConst_243,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8179  sizeInBytes=4
	mov	8179,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1407  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+12]
!   Call the function
	mov	900,r13		! source line 900
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1408 = _StringConst_244
	set	_StringConst_244,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=16371  sizeInBytes=4
	mov	16371,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1408  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+12]
!   Call the function
	mov	901,r13		! source line 901
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1409 = _StringConst_245
	set	_StringConst_245,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=24550  sizeInBytes=4
	mov	24550,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1409  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Call the function
	mov	902,r13		! source line 902
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1410 = _StringConst_246
	set	_StringConst_246,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=16371  sizeInBytes=4
	mov	16371,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1410  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Call the function
	mov	904,r13		! source line 904
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1411 = _StringConst_247
	set	_StringConst_247,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1411  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Call the function
	mov	905,r13		! source line 905
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1412 = _StringConst_248
	set	_StringConst_248,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=24550  sizeInBytes=4
	mov	24550,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1412  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Call the function
	mov	906,r13		! source line 906
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1413 = _StringConst_249
	set	_StringConst_249,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8179  sizeInBytes=4
	mov	8179,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1413  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+12]
!   Call the function
	mov	907,r13		! source line 907
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1414 = _StringConst_250
	set	_StringConst_250,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1414  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Call the function
	mov	909,r13		! source line 909
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1415 = _StringConst_251
	set	_StringConst_251,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8179  sizeInBytes=4
	mov	8179,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1415  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+12]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1416 = _StringConst_252
	set	_StringConst_252,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=16371  sizeInBytes=4
	mov	16371,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1416  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+12]
!   Call the function
	mov	911,r13		! source line 911
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1417 = _StringConst_253
	set	_StringConst_253,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=24550  sizeInBytes=4
	mov	24550,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1417  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+12]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1418 = _StringConst_254
	set	_StringConst_254,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1418  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	914,r13		! source line 914
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_419_WriteTest3:
	.word	_sourceFileName
	.word	_Label_1419
	.word	0		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_1420
	.word	-12
	.word	4
	.word	_Label_1421
	.word	-16
	.word	4
	.word	_Label_1422
	.word	-20
	.word	4
	.word	_Label_1423
	.word	-24
	.word	4
	.word	_Label_1424
	.word	-28
	.word	4
	.word	_Label_1425
	.word	-32
	.word	4
	.word	_Label_1426
	.word	-36
	.word	4
	.word	_Label_1427
	.word	-40
	.word	4
	.word	_Label_1428
	.word	-44
	.word	4
	.word	_Label_1429
	.word	-48
	.word	4
	.word	_Label_1430
	.word	-52
	.word	4
	.word	_Label_1431
	.word	-56
	.word	4
	.word	_Label_1432
	.word	-60
	.word	4
	.word	_Label_1433
	.word	-64
	.word	4
	.word	_Label_1434
	.word	-68
	.word	4
	.word	_Label_1435
	.word	-72
	.word	4
	.word	_Label_1436
	.word	-76
	.word	4
	.word	_Label_1437
	.word	-80
	.word	4
	.word	_Label_1438
	.word	-84
	.word	4
	.word	_Label_1439
	.word	-88
	.word	4
	.word	0
_Label_1419:
	.ascii	"WriteTest3\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1439:
	.byte	'I'
	.ascii	"fd\0"
	.align
! 
! ===============  FUNCTION DoWrite  ===============
! 
_function_418_DoWrite:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_418_DoWrite,r1
	push	r1
	mov	16,r1
_Label_2013:
	push	r0
	sub	r1,1,r1
	bne	_Label_2013
	mov	920,r13		! source line 920
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0IF",r10
!   if wantPrinting then goto _Label_1440 else goto _Label_1441
	loadb	[r14+12],r1
	cmp	r1,0
	be	_Label_1441
	jmp	_Label_1440
_Label_1440:
! THEN...
	mov	928,r13		! source line 928
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1442 = _StringConst_255
	set	_StringConst_255,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1442  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=data  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1443 = _StringConst_256
	set	_StringConst_256,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1443  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=positionInFile  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1444 = _StringConst_257
	set	_StringConst_257,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1444  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1441:
! ASSIGNMENT STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=positionInFile  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! IF STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0IF",r10
!   if i == positionInFile then goto _Label_1446		(int)
	load	[r14+-60],r1
	load	[r14+16],r2
	cmp	r1,r2
	be	_Label_1446
!	jmp	_Label_1445
_Label_1445:
! THEN...
	mov	936,r13		! source line 936
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1447 = _StringConst_258
	set	_StringConst_258,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1447  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	937,r13		! source line 937
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1448 = _StringConst_259
	set	_StringConst_259,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1448  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	938,r13		! source line 938
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1446:
! ASSIGNMENT STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0AS",r10
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of data [0 ] into _temp_1450
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+20],r1
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
!   _temp_1449 = _temp_1450		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-36]
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1451 = *data  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1449  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1451  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Call the function
	mov	940,r13		! source line 940
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! IF STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0IF",r10
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1454 = *data  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if i != _temp_1454 then goto _Label_1453		(int)
	load	[r14+-60],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bne	_Label_1453
!	jmp	_Label_1452
_Label_1452:
! THEN...
	mov	942,r13		! source line 942
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0IF",r10
!   if wantPrinting then goto _Label_1455 else goto _Label_1456
	loadb	[r14+12],r1
	cmp	r1,0
	be	_Label_1456
	jmp	_Label_1455
_Label_1455:
! THEN...
	mov	943,r13		! source line 943
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1457 = _StringConst_260
	set	_StringConst_260,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1457  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	943,r13		! source line 943
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1456:
	jmp	_Label_1458
_Label_1453:
! ELSE...
	mov	946,r13		! source line 946
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1459 = _StringConst_261
	set	_StringConst_261,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1459  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	947,r13		! source line 947
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1460 = _StringConst_262
	set	_StringConst_262,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1460  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1458:
! RETURN STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_418_DoWrite:
	.word	_sourceFileName
	.word	_Label_1461
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1462
	.word	8
	.word	4
	.word	_Label_1463
	.word	12
	.word	1
	.word	_Label_1464
	.word	16
	.word	4
	.word	_Label_1465
	.word	20
	.word	4
	.word	_Label_1466
	.word	-12
	.word	4
	.word	_Label_1467
	.word	-16
	.word	4
	.word	_Label_1468
	.word	-20
	.word	4
	.word	_Label_1469
	.word	-24
	.word	4
	.word	_Label_1470
	.word	-28
	.word	4
	.word	_Label_1471
	.word	-32
	.word	4
	.word	_Label_1472
	.word	-36
	.word	4
	.word	_Label_1473
	.word	-40
	.word	4
	.word	_Label_1474
	.word	-44
	.word	4
	.word	_Label_1475
	.word	-48
	.word	4
	.word	_Label_1476
	.word	-52
	.word	4
	.word	_Label_1477
	.word	-56
	.word	4
	.word	_Label_1478
	.word	-60
	.word	4
	.word	0
_Label_1461:
	.ascii	"DoWrite\0"
	.align
_Label_1462:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1463:
	.byte	'B'
	.ascii	"wantPrinting\0"
	.align
_Label_1464:
	.byte	'I'
	.ascii	"positionInFile\0"
	.align
_Label_1465:
	.byte	'P'
	.ascii	"data\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1478:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION CheckFile  ===============
! 
_function_417_CheckFile:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_417_CheckFile,r1
	push	r1
	mov	35,r1
_Label_2014:
	push	r0
	sub	r1,1,r1
	bne	_Label_2014
	mov	956,r13		! source line 956
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0IF",r10
!   _temp_1482 = &_Global_checkBuffer
	set	_Global_checkBuffer,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1481 = *_temp_1482  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1483 = *data  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if _temp_1481 >= _temp_1483 then goto _Label_1480		(int)
	load	[r14+-132],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1480
!	jmp	_Label_1479
_Label_1479:
! THEN...
	mov	966,r13		! source line 966
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1484 = _StringConst_263
	set	_StringConst_263,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1484  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	966,r13		! source line 966
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1480:
! IF STATEMENT...
	mov	968,r13		! source line 968
	mov	"\0\0IF",r10
!   if wantPrinting then goto _Label_1485 else goto _Label_1486
	loadb	[r14+12],r1
	cmp	r1,0
	be	_Label_1486
	jmp	_Label_1485
_Label_1485:
! THEN...
	mov	969,r13		! source line 969
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1487 = _StringConst_264
	set	_StringConst_264,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1487  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	969,r13		! source line 969
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=data  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	970,r13		! source line 970
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1488 = _StringConst_265
	set	_StringConst_265,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1488  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	971,r13		! source line 971
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=positionInFile  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	972,r13		! source line 972
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1489 = _StringConst_266
	set	_StringConst_266,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1489  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	973,r13		! source line 973
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1486:
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=positionInFile  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	975,r13		! source line 975
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! IF STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0IF",r10
!   if i == positionInFile then goto _Label_1491		(int)
	load	[r14+-136],r1
	load	[r14+16],r2
	cmp	r1,r2
	be	_Label_1491
!	jmp	_Label_1490
_Label_1490:
! THEN...
	mov	977,r13		! source line 977
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1492 = _StringConst_267
	set	_StringConst_267,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1492  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	977,r13		! source line 977
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	978,r13		! source line 978
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1493 = _StringConst_268
	set	_StringConst_268,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_1493  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	979,r13		! source line 979
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1491:
! ASSIGNMENT STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0AS",r10
!   _temp_1495 = &_Global_checkBuffer
	set	_Global_checkBuffer,r1
	store	r1,[r14+-92]
!   Move address of _temp_1495 [0 ] into _temp_1496
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
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
	store	r2,[r14+-88]
!   _temp_1494 = _temp_1496		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-96]
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1497 = *data  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1494  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1497  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+8]
!   Call the function
	mov	981,r13		! source line 981
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Read
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! IF STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0IF",r10
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1500 = *data  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if i == _temp_1500 then goto _Label_1499		(int)
	load	[r14+-136],r1
	load	[r14+-80],r2
	cmp	r1,r2
	be	_Label_1499
!	jmp	_Label_1498
_Label_1498:
! THEN...
	mov	983,r13		! source line 983
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1501 = _StringConst_269
	set	_StringConst_269,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1501  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	983,r13		! source line 983
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	984,r13		! source line 984
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1502 = _StringConst_270
	set	_StringConst_270,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	985,r13		! source line 985
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1499:
! IF STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0IF",r10
!   _temp_1506 = &_Global_checkBuffer
	set	_Global_checkBuffer,r1
	store	r1,[r14+-64]
!   Move address of _temp_1506 [0 ] into _temp_1507
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
!   _temp_1505 = _temp_1507		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of data [0 ] into _temp_1509
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+20],r1
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
	store	r2,[r14+-52]
!   _temp_1508 = _temp_1509		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-56]
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1510 = *data  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1505  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1508  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1510  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Call the function
	mov	987,r13		! source line 987
	mov	"\0\0CA",r10
	call	_P_UserSystem_MemoryEqual
!   if result==true then goto _Label_1503 else goto _Label_1504
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1504
	jmp	_Label_1503
_Label_1503:
! THEN...
	mov	988,r13		! source line 988
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0IF",r10
!   if wantPrinting then goto _Label_1511 else goto _Label_1512
	loadb	[r14+12],r1
	cmp	r1,0
	be	_Label_1512
	jmp	_Label_1511
_Label_1511:
! THEN...
	mov	989,r13		! source line 989
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1513 = _StringConst_271
	set	_StringConst_271,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1513  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	989,r13		! source line 989
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1512:
	jmp	_Label_1514
_Label_1504:
! ELSE...
	mov	992,r13		! source line 992
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1515 = _StringConst_272
	set	_StringConst_272,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1515  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	992,r13		! source line 992
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1520 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1522 = *data  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_1521 = _temp_1522 - 1		(int)
	load	[r14+-28],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1520  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-136]
_Label_1516:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1521 then goto _Label_1519		
	load	[r14+-136],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1519
_Label_1517:
	mov	993,r13		! source line 993
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1524 = &_Global_checkBuffer
	set	_Global_checkBuffer,r1
	store	r1,[r14+-24]
!   Move address of _temp_1524 [i ] into _temp_1525
!     make sure index expr is >= 0
	load	[r14+-136],r2
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
!   Data Move: _temp_1523 = *_temp_1525  (sizeInBytes=1)
	load	[r14+-20],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Prepare Argument: offset=8  value=_temp_1523  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	994,r13		! source line 994
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_1518:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_1516
! END FOR
_Label_1519:
! CALL STATEMENT...
!   _temp_1526 = _StringConst_273
	set	_StringConst_273,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1526  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	996,r13		! source line 996
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1514:
! RETURN STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_417_CheckFile:
	.word	_sourceFileName
	.word	_Label_1527
	.word	16		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_1528
	.word	8
	.word	4
	.word	_Label_1529
	.word	12
	.word	1
	.word	_Label_1530
	.word	16
	.word	4
	.word	_Label_1531
	.word	20
	.word	4
	.word	_Label_1532
	.word	-16
	.word	4
	.word	_Label_1533
	.word	-20
	.word	4
	.word	_Label_1534
	.word	-24
	.word	4
	.word	_Label_1535
	.word	-9
	.word	1
	.word	_Label_1536
	.word	-28
	.word	4
	.word	_Label_1537
	.word	-32
	.word	4
	.word	_Label_1538
	.word	-36
	.word	4
	.word	_Label_1539
	.word	-40
	.word	4
	.word	_Label_1540
	.word	-44
	.word	4
	.word	_Label_1541
	.word	-48
	.word	4
	.word	_Label_1542
	.word	-52
	.word	4
	.word	_Label_1543
	.word	-56
	.word	4
	.word	_Label_1544
	.word	-60
	.word	4
	.word	_Label_1545
	.word	-64
	.word	4
	.word	_Label_1546
	.word	-68
	.word	4
	.word	_Label_1547
	.word	-72
	.word	4
	.word	_Label_1548
	.word	-76
	.word	4
	.word	_Label_1549
	.word	-80
	.word	4
	.word	_Label_1550
	.word	-84
	.word	4
	.word	_Label_1551
	.word	-88
	.word	4
	.word	_Label_1552
	.word	-92
	.word	4
	.word	_Label_1553
	.word	-96
	.word	4
	.word	_Label_1554
	.word	-100
	.word	4
	.word	_Label_1555
	.word	-104
	.word	4
	.word	_Label_1556
	.word	-108
	.word	4
	.word	_Label_1557
	.word	-112
	.word	4
	.word	_Label_1558
	.word	-116
	.word	4
	.word	_Label_1559
	.word	-120
	.word	4
	.word	_Label_1560
	.word	-124
	.word	4
	.word	_Label_1561
	.word	-128
	.word	4
	.word	_Label_1562
	.word	-132
	.word	4
	.word	_Label_1563
	.word	-136
	.word	4
	.word	0
_Label_1527:
	.ascii	"CheckFile\0"
	.align
_Label_1528:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1529:
	.byte	'B'
	.ascii	"wantPrinting\0"
	.align
_Label_1530:
	.byte	'I'
	.ascii	"positionInFile\0"
	.align
_Label_1531:
	.byte	'P'
	.ascii	"data\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1535:
	.byte	'C'
	.ascii	"_temp_1523\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1563:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION WriteTest4  ===============
! 
_function_416_WriteTest4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_416_WriteTest4,r1
	push	r1
	mov	19,r1
_Label_2015:
	push	r0
	sub	r1,1,r1
	bne	_Label_2015
	mov	1003,r13		! source line 1003
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1564 = _StringConst_274
	set	_StringConst_274,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1564  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1014,r13		! source line 1014
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0AS",r10
!   _temp_1565 = _StringConst_275
	set	_StringConst_275,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1565  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1016,r13		! source line 1016
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1566 = _StringConst_276
	set	_StringConst_276,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1566  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Call the function
	mov	1019,r13		! source line 1019
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1567 = _StringConst_277
	set	_StringConst_277,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1567  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Call the function
	mov	1020,r13		! source line 1020
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! ASSIGNMENT STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Call the function
	mov	1022,r13		! source line 1022
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Seek
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0AS",r10
!   Call the function
	mov	1025,r13		! source line 1025
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! IF STATEMENT...
	mov	1026,r13		! source line 1026
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_1568
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1568
	jmp	_Label_1569
_Label_1568:
! THEN...
	mov	1027,r13		! source line 1027
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1570 = _StringConst_278
	set	_StringConst_278,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1570  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Call the function
	mov	1027,r13		! source line 1027
	mov	"\0\0CA",r10
	call	_function_415_DoWrite2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	1028,r13		! source line 1028
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_1571
_Label_1569:
! ELSE...
	mov	1030,r13		! source line 1030
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1030,r13		! source line 1030
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! END IF...
_Label_1571:
! CALL STATEMENT...
!   _temp_1572 = _StringConst_279
	set	_StringConst_279,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1572  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Call the function
	mov	1033,r13		! source line 1033
	mov	"\0\0CA",r10
	call	_function_415_DoWrite2
! ASSIGNMENT STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0AS",r10
!   Call the function
	mov	1036,r13		! source line 1036
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! IF STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_1573
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1573
	jmp	_Label_1574
_Label_1573:
! THEN...
	mov	1038,r13		! source line 1038
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1575 = _StringConst_280
	set	_StringConst_280,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1575  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Call the function
	mov	1038,r13		! source line 1038
	mov	"\0\0CA",r10
	call	_function_415_DoWrite2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	1039,r13		! source line 1039
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_1576
_Label_1574:
! ELSE...
	mov	1041,r13		! source line 1041
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1041,r13		! source line 1041
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! END IF...
_Label_1576:
! CALL STATEMENT...
!   _temp_1577 = _StringConst_281
	set	_StringConst_281,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1577  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Call the function
	mov	1044,r13		! source line 1044
	mov	"\0\0CA",r10
	call	_function_415_DoWrite2
! ASSIGNMENT STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0AS",r10
!   Call the function
	mov	1047,r13		! source line 1047
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! IF STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0IF",r10
!   if intIsZero (pid) then goto _Label_1578
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1578
	jmp	_Label_1579
_Label_1578:
! THEN...
	mov	1049,r13		! source line 1049
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1580 = _StringConst_282
	set	_StringConst_282,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1580  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Call the function
	mov	1049,r13		! source line 1049
	mov	"\0\0CA",r10
	call	_function_415_DoWrite2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	1050,r13		! source line 1050
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
	jmp	_Label_1581
_Label_1579:
! ELSE...
	mov	1052,r13		! source line 1052
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1052,r13		! source line 1052
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! END IF...
_Label_1581:
! CALL STATEMENT...
!   _temp_1582 = _StringConst_283
	set	_StringConst_283,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1582  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	1055,r13		! source line 1055
	mov	"\0\0CA",r10
	call	_function_415_DoWrite2
! CALL STATEMENT...
!   _temp_1583 = _StringConst_284
	set	_StringConst_284,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1583  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+12]
!   Call the function
	mov	1058,r13		! source line 1058
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1584 = _StringConst_285
	set	_StringConst_285,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1584  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1060,r13		! source line 1060
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_416_WriteTest4:
	.word	_sourceFileName
	.word	_Label_1585
	.word	0		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1586
	.word	-12
	.word	4
	.word	_Label_1587
	.word	-16
	.word	4
	.word	_Label_1588
	.word	-20
	.word	4
	.word	_Label_1589
	.word	-24
	.word	4
	.word	_Label_1590
	.word	-28
	.word	4
	.word	_Label_1591
	.word	-32
	.word	4
	.word	_Label_1592
	.word	-36
	.word	4
	.word	_Label_1593
	.word	-40
	.word	4
	.word	_Label_1594
	.word	-44
	.word	4
	.word	_Label_1595
	.word	-48
	.word	4
	.word	_Label_1596
	.word	-52
	.word	4
	.word	_Label_1597
	.word	-56
	.word	4
	.word	_Label_1598
	.word	-60
	.word	4
	.word	_Label_1599
	.word	-64
	.word	4
	.word	_Label_1600
	.word	-68
	.word	4
	.word	0
_Label_1585:
	.ascii	"WriteTest4\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1598:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1599:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1600:
	.byte	'I'
	.ascii	"pid\0"
	.align
! 
! ===============  FUNCTION DoWrite2  ===============
! 
_function_415_DoWrite2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_415_DoWrite2,r1
	push	r1
	mov	13,r1
_Label_2016:
	push	r0
	sub	r1,1,r1
	bne	_Label_2016
	mov	1066,r13		! source line 1066
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1601 = _StringConst_286
	set	_StringConst_286,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1601  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1071,r13		! source line 1071
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=data  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1072,r13		! source line 1072
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1602 = _StringConst_287
	set	_StringConst_287,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1602  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1073,r13		! source line 1073
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0AS",r10
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of data [0 ] into _temp_1604
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_1603 = _temp_1604		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-36]
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1605 = *data  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1603  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1605  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Call the function
	mov	1074,r13		! source line 1074
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0IF",r10
!   if intIsZero (data) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1608 = *data  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if i != _temp_1608 then goto _Label_1607		(int)
	load	[r14+-48],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bne	_Label_1607
!	jmp	_Label_1606
_Label_1606:
! THEN...
	mov	1076,r13		! source line 1076
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1609 = _StringConst_288
	set	_StringConst_288,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1609  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1076,r13		! source line 1076
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1610
_Label_1607:
! ELSE...
	mov	1078,r13		! source line 1078
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1611 = _StringConst_289
	set	_StringConst_289,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1611  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1078,r13		! source line 1078
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1079,r13		! source line 1079
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1612 = _StringConst_290
	set	_StringConst_290,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1612  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1080,r13		! source line 1080
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1610:
! RETURN STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_415_DoWrite2:
	.word	_sourceFileName
	.word	_Label_1613
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1614
	.word	8
	.word	4
	.word	_Label_1615
	.word	12
	.word	4
	.word	_Label_1616
	.word	-12
	.word	4
	.word	_Label_1617
	.word	-16
	.word	4
	.word	_Label_1618
	.word	-20
	.word	4
	.word	_Label_1619
	.word	-24
	.word	4
	.word	_Label_1620
	.word	-28
	.word	4
	.word	_Label_1621
	.word	-32
	.word	4
	.word	_Label_1622
	.word	-36
	.word	4
	.word	_Label_1623
	.word	-40
	.word	4
	.word	_Label_1624
	.word	-44
	.word	4
	.word	_Label_1625
	.word	-48
	.word	4
	.word	0
_Label_1613:
	.ascii	"DoWrite2\0"
	.align
_Label_1614:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1615:
	.byte	'P'
	.ascii	"data\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1625:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION WriteTest5  ===============
! 
_function_414_WriteTest5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_414_WriteTest5,r1
	push	r1
	mov	51,r1
_Label_2017:
	push	r0
	sub	r1,1,r1
	bne	_Label_2017
	mov	1087,r13		! source line 1087
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1626 = _StringConst_291
	set	_StringConst_291,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1626  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	1099,r13		! source line 1099
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0AS",r10
!   _temp_1627 = _StringConst_292
	set	_StringConst_292,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1627  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	1101,r13		! source line 1101
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   _temp_1628 = _StringConst_293
	set	_StringConst_293,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1628  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+12]
!   Call the function
	mov	1104,r13		! source line 1104
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1629 = _StringConst_294
	set	_StringConst_294,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1629  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+12]
!   Call the function
	mov	1105,r13		! source line 1105
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1630 = _StringConst_295
	set	_StringConst_295,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1630  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+12]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1631 = _StringConst_296
	set	_StringConst_296,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1631  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+12]
!   Call the function
	mov	1107,r13		! source line 1107
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	1108,r13		! source line 1108
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Close
! CALL STATEMENT...
!   _temp_1632 = _StringConst_297
	set	_StringConst_297,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1632  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	1112,r13		! source line 1112
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1113,r13		! source line 1113
	mov	"\0\0AS",r10
!   Call the function
	mov	1113,r13		! source line 1113
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-188]
! IF STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0IF",r10
!   if intIsZero (pid1) then goto _Label_1633
	load	[r14+-188],r1
	cmp	r1,r0
	be	_Label_1633
	jmp	_Label_1634
_Label_1633:
! THEN...
	mov	1115,r13		! source line 1115
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1635 = _StringConst_298
	set	_StringConst_298,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1635  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	1115,r13		! source line 1115
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1640 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-148]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1641 = 140		(4 bytes)
	mov	140,r1
	store	r1,[r14+-144]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1640  (sizeInBytes=4)
	load	[r14+-148],r1
	store	r1,[r14+-196]
_Label_1636:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1641 then goto _Label_1639		
	load	[r14+-196],r1
	load	[r14+-144],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1639
_Label_1637:
	mov	1117,r13		! source line 1117
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Call the function
	mov	1118,r13		! source line 1118
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
!   Increment the FOR-LOOP index variable and jump back
_Label_1638:
!   i = i + 1
	load	[r14+-196],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
	jmp	_Label_1636
! END FOR
_Label_1639:
! ASSIGNMENT STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0AS",r10
!   _temp_1642 = _StringConst_299
	set	_StringConst_299,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_1642  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	1120,r13		! source line 1120
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   _temp_1643 = _StringConst_300
	set	_StringConst_300,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1643  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+12]
!   Call the function
	mov	1121,r13		! source line 1121
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1644 = _StringConst_301
	set	_StringConst_301,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8204  sizeInBytes=4
	mov	8204,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1644  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+12]
!   Call the function
	mov	1122,r13		! source line 1122
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1123,r13		! source line 1123
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1124,r13		! source line 1124
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1125,r13		! source line 1125
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1126,r13		! source line 1126
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1128,r13		! source line 1128
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1129,r13		! source line 1129
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1645 = _StringConst_302
	set	_StringConst_302,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1645  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+12]
!   Call the function
	mov	1130,r13		! source line 1130
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1646 = _StringConst_303
	set	_StringConst_303,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8206  sizeInBytes=4
	mov	8206,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1646  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+12]
!   Call the function
	mov	1131,r13		! source line 1131
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1132,r13		! source line 1132
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1134,r13		! source line 1134
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1647 = _StringConst_304
	set	_StringConst_304,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1647  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+12]
!   Call the function
	mov	1135,r13		! source line 1135
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1648 = _StringConst_305
	set	_StringConst_305,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8208  sizeInBytes=4
	mov	8208,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1648  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+12]
!   Call the function
	mov	1136,r13		! source line 1136
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1649 = _StringConst_306
	set	_StringConst_306,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=6  sizeInBytes=4
	mov	6,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1649  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+12]
!   Call the function
	mov	1137,r13		! source line 1137
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1138,r13		! source line 1138
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1139,r13		! source line 1139
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1650 = _StringConst_307
	set	_StringConst_307,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8  sizeInBytes=4
	mov	8,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1650  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+12]
!   Call the function
	mov	1140,r13		! source line 1140
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1651 = _StringConst_308
	set	_StringConst_308,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1651  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+12]
!   Call the function
	mov	1141,r13		! source line 1141
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1142,r13		! source line 1142
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1143,r13		! source line 1143
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1144,r13		! source line 1144
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1145,r13		! source line 1145
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1146,r13		! source line 1146
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1652 = _StringConst_309
	set	_StringConst_309,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8210  sizeInBytes=4
	mov	8210,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1652  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+12]
!   Call the function
	mov	1147,r13		! source line 1147
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1653 = _StringConst_310
	set	_StringConst_310,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8212  sizeInBytes=4
	mov	8212,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1653  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+12]
!   Call the function
	mov	1148,r13		! source line 1148
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1654 = _StringConst_311
	set	_StringConst_311,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8214  sizeInBytes=4
	mov	8214,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1654  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+12]
!   Call the function
	mov	1149,r13		! source line 1149
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1655 = _StringConst_312
	set	_StringConst_312,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1655  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	1150,r13		! source line 1150
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	1151,r13		! source line 1151
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_1634:
! ASSIGNMENT STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0AS",r10
!   Call the function
	mov	1156,r13		! source line 1156
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Fork
!   Retrieve Result: targetName=pid2  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
! IF STATEMENT...
	mov	1157,r13		! source line 1157
	mov	"\0\0IF",r10
!   if intIsZero (pid2) then goto _Label_1656
	load	[r14+-192],r1
	cmp	r1,r0
	be	_Label_1656
	jmp	_Label_1657
_Label_1656:
! THEN...
	mov	1158,r13		! source line 1158
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1658 = _StringConst_313
	set	_StringConst_313,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1658  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1158,r13		! source line 1158
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
!   _temp_1659 = _StringConst_314
	set	_StringConst_314,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1659  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	1159,r13		! source line 1159
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   _temp_1660 = _StringConst_315
	set	_StringConst_315,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1660  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+12]
!   Call the function
	mov	1160,r13		! source line 1160
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1162,r13		! source line 1162
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1163,r13		! source line 1163
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1661 = _StringConst_316
	set	_StringConst_316,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8205  sizeInBytes=4
	mov	8205,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1661  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+12]
!   Call the function
	mov	1164,r13		! source line 1164
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1662 = _StringConst_317
	set	_StringConst_317,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1662  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+12]
!   Call the function
	mov	1165,r13		! source line 1165
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1663 = _StringConst_318
	set	_StringConst_318,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8207  sizeInBytes=4
	mov	8207,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1663  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+12]
!   Call the function
	mov	1166,r13		! source line 1166
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1167,r13		! source line 1167
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1168,r13		! source line 1168
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1664 = _StringConst_319
	set	_StringConst_319,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1664  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+12]
!   Call the function
	mov	1169,r13		! source line 1169
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1665 = _StringConst_320
	set	_StringConst_320,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8209  sizeInBytes=4
	mov	8209,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1665  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+12]
!   Call the function
	mov	1170,r13		! source line 1170
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1666 = _StringConst_321
	set	_StringConst_321,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8211  sizeInBytes=4
	mov	8211,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1666  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+12]
!   Call the function
	mov	1171,r13		! source line 1171
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1172,r13		! source line 1172
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1173,r13		! source line 1173
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1667 = _StringConst_322
	set	_StringConst_322,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8213  sizeInBytes=4
	mov	8213,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1667  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Call the function
	mov	1174,r13		! source line 1174
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1668 = _StringConst_323
	set	_StringConst_323,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=7  sizeInBytes=4
	mov	7,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1668  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Call the function
	mov	1175,r13		! source line 1175
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1669 = _StringConst_324
	set	_StringConst_324,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=9  sizeInBytes=4
	mov	9,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1669  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Call the function
	mov	1176,r13		! source line 1176
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   Call the function
	mov	1177,r13		! source line 1177
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1178,r13		! source line 1178
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   Call the function
	mov	1179,r13		! source line 1179
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Yield
! CALL STATEMENT...
!   _temp_1670 = _StringConst_325
	set	_StringConst_325,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=11  sizeInBytes=4
	mov	11,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1670  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Call the function
	mov	1180,r13		! source line 1180
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1671 = _StringConst_326
	set	_StringConst_326,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8215  sizeInBytes=4
	mov	8215,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1671  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+12]
!   Call the function
	mov	1181,r13		! source line 1181
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1672 = _StringConst_327
	set	_StringConst_327,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1672  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1182,r13		! source line 1182
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+0]
!   Call the function
	mov	1183,r13		! source line 1183
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exit
! END IF...
_Label_1657:
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid1  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	1187,r13		! source line 1187
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! ASSIGNMENT STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=pid2  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+0]
!   Call the function
	mov	1188,r13		! source line 1188
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Join
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! ASSIGNMENT STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0AS",r10
!   _temp_1673 = _StringConst_328
	set	_StringConst_328,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1673  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1191,r13		! source line 1191
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! CALL STATEMENT...
!   _temp_1674 = _StringConst_329
	set	_StringConst_329,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1674  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+12]
!   Call the function
	mov	1192,r13		! source line 1192
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1675 = _StringConst_330
	set	_StringConst_330,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1675  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+12]
!   Call the function
	mov	1193,r13		! source line 1193
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1676 = _StringConst_331
	set	_StringConst_331,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1676  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1195,r13		! source line 1195
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0RE",r10
	add	r15,208,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_414_WriteTest5:
	.word	_sourceFileName
	.word	_Label_1677
	.word	0		! total size of parameters
	.word	204		! frame size = 204
	.word	_Label_1678
	.word	-12
	.word	4
	.word	_Label_1679
	.word	-16
	.word	4
	.word	_Label_1680
	.word	-20
	.word	4
	.word	_Label_1681
	.word	-24
	.word	4
	.word	_Label_1682
	.word	-28
	.word	4
	.word	_Label_1683
	.word	-32
	.word	4
	.word	_Label_1684
	.word	-36
	.word	4
	.word	_Label_1685
	.word	-40
	.word	4
	.word	_Label_1686
	.word	-44
	.word	4
	.word	_Label_1687
	.word	-48
	.word	4
	.word	_Label_1688
	.word	-52
	.word	4
	.word	_Label_1689
	.word	-56
	.word	4
	.word	_Label_1690
	.word	-60
	.word	4
	.word	_Label_1691
	.word	-64
	.word	4
	.word	_Label_1692
	.word	-68
	.word	4
	.word	_Label_1693
	.word	-72
	.word	4
	.word	_Label_1694
	.word	-76
	.word	4
	.word	_Label_1695
	.word	-80
	.word	4
	.word	_Label_1696
	.word	-84
	.word	4
	.word	_Label_1697
	.word	-88
	.word	4
	.word	_Label_1698
	.word	-92
	.word	4
	.word	_Label_1699
	.word	-96
	.word	4
	.word	_Label_1700
	.word	-100
	.word	4
	.word	_Label_1701
	.word	-104
	.word	4
	.word	_Label_1702
	.word	-108
	.word	4
	.word	_Label_1703
	.word	-112
	.word	4
	.word	_Label_1704
	.word	-116
	.word	4
	.word	_Label_1705
	.word	-120
	.word	4
	.word	_Label_1706
	.word	-124
	.word	4
	.word	_Label_1707
	.word	-128
	.word	4
	.word	_Label_1708
	.word	-132
	.word	4
	.word	_Label_1709
	.word	-136
	.word	4
	.word	_Label_1710
	.word	-140
	.word	4
	.word	_Label_1711
	.word	-144
	.word	4
	.word	_Label_1712
	.word	-148
	.word	4
	.word	_Label_1713
	.word	-152
	.word	4
	.word	_Label_1714
	.word	-156
	.word	4
	.word	_Label_1715
	.word	-160
	.word	4
	.word	_Label_1716
	.word	-164
	.word	4
	.word	_Label_1717
	.word	-168
	.word	4
	.word	_Label_1718
	.word	-172
	.word	4
	.word	_Label_1719
	.word	-176
	.word	4
	.word	_Label_1720
	.word	-180
	.word	4
	.word	_Label_1721
	.word	-184
	.word	4
	.word	_Label_1722
	.word	-188
	.word	4
	.word	_Label_1723
	.word	-192
	.word	4
	.word	_Label_1724
	.word	-196
	.word	4
	.word	0
_Label_1677:
	.ascii	"WriteTest5\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1721:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1722:
	.byte	'I'
	.ascii	"pid1\0"
	.align
_Label_1723:
	.byte	'I'
	.ascii	"pid2\0"
	.align
_Label_1724:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION WriteTest6  ===============
! 
_function_413_WriteTest6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_413_WriteTest6,r1
	push	r1
	mov	58,r1
_Label_2018:
	push	r0
	sub	r1,1,r1
	bne	_Label_2018
	mov	1203,r13		! source line 1203
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1725 = _StringConst_332
	set	_StringConst_332,r1
	store	r1,[r14+-220]
!   Prepare Argument: offset=8  value=_temp_1725  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Call the function
	mov	1212,r13		! source line 1212
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1214,r13		! source line 1214
	mov	"\0\0AS",r10
!   _temp_1726 = _StringConst_333
	set	_StringConst_333,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_1726  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	1214,r13		! source line 1214
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-224]
! CALL STATEMENT...
!   _temp_1727 = _StringConst_334
	set	_StringConst_334,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_1727  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   Call the function
	mov	1216,r13		! source line 1216
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1728 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-208]
!   _temp_1729 = _StringConst_335
	set	_StringConst_335,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=8  value=_temp_1728  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1729  sizeInBytes=4
	load	[r14+-204],r1
	store	r1,[r15+4]
!   Call the function
	mov	1217,r13		! source line 1217
	mov	"\0\0CA",r10
	call	_function_412_FillArray
! CALL STATEMENT...
!   _temp_1730 = _StringConst_336
	set	_StringConst_336,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_1730  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1731 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1731  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+12]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1732 = _StringConst_337
	set	_StringConst_337,r1
	store	r1,[r14+-192]
!   Prepare Argument: offset=8  value=_temp_1732  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1733 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-188]
!   _temp_1734 = _StringConst_338
	set	_StringConst_338,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1733  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1734  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Call the function
	mov	1223,r13		! source line 1223
	mov	"\0\0CA",r10
	call	_function_412_FillArray
! CALL STATEMENT...
!   _temp_1735 = _StringConst_339
	set	_StringConst_339,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1735  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1736 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=10000  sizeInBytes=4
	mov	10000,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1736  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+12]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1737 = _StringConst_340
	set	_StringConst_340,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1737  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+12]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1738 = _StringConst_341
	set	_StringConst_341,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=9958  sizeInBytes=4
	mov	9958,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1738  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+12]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1739 = _StringConst_342
	set	_StringConst_342,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=19958  sizeInBytes=4
	mov	19958,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1739  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+12]
!   Call the function
	mov	1230,r13		! source line 1230
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1740 = _StringConst_343
	set	_StringConst_343,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=3900  sizeInBytes=4
	mov	3900,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1740  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+12]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1741 = _StringConst_344
	set	_StringConst_344,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=13900  sizeInBytes=4
	mov	13900,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1741  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+12]
!   Call the function
	mov	1232,r13		! source line 1232
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1742 = _StringConst_345
	set	_StringConst_345,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1742  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	1234,r13		! source line 1234
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1743 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-148]
!   _temp_1744 = _StringConst_346
	set	_StringConst_346,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1743  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1744  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+4]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CA",r10
	call	_function_412_FillArray
! CALL STATEMENT...
!   _temp_1745 = _StringConst_347
	set	_StringConst_347,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_1745  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1746 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1746  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+12]
!   Call the function
	mov	1238,r13		! source line 1238
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1747 = _StringConst_348
	set	_StringConst_348,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1747  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1240,r13		! source line 1240
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1748 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-128]
!   _temp_1749 = _StringConst_349
	set	_StringConst_349,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_1748  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1749  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CA",r10
	call	_function_412_FillArray
! CALL STATEMENT...
!   _temp_1750 = _StringConst_350
	set	_StringConst_350,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1750  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1751 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=10000  sizeInBytes=4
	mov	10000,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1751  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+12]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1752 = _StringConst_351
	set	_StringConst_351,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1752  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1248,r13		! source line 1248
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1753 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-108]
!   _temp_1754 = _StringConst_352
	set	_StringConst_352,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1753  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1754  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CA",r10
	call	_function_412_FillArray
! CALL STATEMENT...
!   _temp_1755 = _StringConst_353
	set	_StringConst_353,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_1755  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1756 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1756  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+12]
!   Call the function
	mov	1252,r13		! source line 1252
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1757 = _StringConst_354
	set	_StringConst_354,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1757  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	1254,r13		! source line 1254
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1758 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-88]
!   _temp_1759 = _StringConst_355
	set	_StringConst_355,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1758  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1759  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CA",r10
	call	_function_412_FillArray
! CALL STATEMENT...
!   _temp_1760 = _StringConst_356
	set	_StringConst_356,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1760  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1761 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=10000  sizeInBytes=4
	mov	10000,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1761  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+12]
!   Call the function
	mov	1258,r13		! source line 1258
	mov	"\0\0CA",r10
	call	_function_418_DoWrite
! CALL STATEMENT...
!   _temp_1762 = _StringConst_357
	set	_StringConst_357,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1762  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+12]
!   Call the function
	mov	1260,r13		! source line 1260
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1763 = _StringConst_358
	set	_StringConst_358,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=9958  sizeInBytes=4
	mov	9958,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1763  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+12]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1764 = _StringConst_359
	set	_StringConst_359,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=19958  sizeInBytes=4
	mov	19958,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1764  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+12]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1765 = _StringConst_360
	set	_StringConst_360,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=3900  sizeInBytes=4
	mov	3900,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1765  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+12]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1766 = _StringConst_361
	set	_StringConst_361,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=1  sizeInBytes=1
	mov	1,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=13900  sizeInBytes=4
	mov	13900,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1766  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+12]
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1767 = _StringConst_362
	set	_StringConst_362,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1767  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1768 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-48]
!   _temp_1769 = _StringConst_363
	set	_StringConst_363,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1768  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1769  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	1268,r13		! source line 1268
	mov	"\0\0CA",r10
	call	_function_412_FillArray
! CALL STATEMENT...
!   _temp_1770 = _StringConst_364
	set	_StringConst_364,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1770  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1270,r13		! source line 1270
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1771 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1771  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Call the function
	mov	1271,r13		! source line 1271
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1772 = _StringConst_365
	set	_StringConst_365,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1772  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1773 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-28]
!   _temp_1774 = _StringConst_366
	set	_StringConst_366,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1773  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1774  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Call the function
	mov	1274,r13		! source line 1274
	mov	"\0\0CA",r10
	call	_function_412_FillArray
! CALL STATEMENT...
!   _temp_1775 = _StringConst_367
	set	_StringConst_367,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1775  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1776 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=0  sizeInBytes=1
	mov	0,r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=10000  sizeInBytes=4
	mov	10000,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_1776  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+12]
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CA",r10
	call	_function_417_CheckFile
! CALL STATEMENT...
!   _temp_1777 = _StringConst_368
	set	_StringConst_368,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1777  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1279,r13		! source line 1279
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0RE",r10
	add	r15,236,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_413_WriteTest6:
	.word	_sourceFileName
	.word	_Label_1778
	.word	0		! total size of parameters
	.word	232		! frame size = 232
	.word	_Label_1779
	.word	-12
	.word	4
	.word	_Label_1780
	.word	-16
	.word	4
	.word	_Label_1781
	.word	-20
	.word	4
	.word	_Label_1782
	.word	-24
	.word	4
	.word	_Label_1783
	.word	-28
	.word	4
	.word	_Label_1784
	.word	-32
	.word	4
	.word	_Label_1785
	.word	-36
	.word	4
	.word	_Label_1786
	.word	-40
	.word	4
	.word	_Label_1787
	.word	-44
	.word	4
	.word	_Label_1788
	.word	-48
	.word	4
	.word	_Label_1789
	.word	-52
	.word	4
	.word	_Label_1790
	.word	-56
	.word	4
	.word	_Label_1791
	.word	-60
	.word	4
	.word	_Label_1792
	.word	-64
	.word	4
	.word	_Label_1793
	.word	-68
	.word	4
	.word	_Label_1794
	.word	-72
	.word	4
	.word	_Label_1795
	.word	-76
	.word	4
	.word	_Label_1796
	.word	-80
	.word	4
	.word	_Label_1797
	.word	-84
	.word	4
	.word	_Label_1798
	.word	-88
	.word	4
	.word	_Label_1799
	.word	-92
	.word	4
	.word	_Label_1800
	.word	-96
	.word	4
	.word	_Label_1801
	.word	-100
	.word	4
	.word	_Label_1802
	.word	-104
	.word	4
	.word	_Label_1803
	.word	-108
	.word	4
	.word	_Label_1804
	.word	-112
	.word	4
	.word	_Label_1805
	.word	-116
	.word	4
	.word	_Label_1806
	.word	-120
	.word	4
	.word	_Label_1807
	.word	-124
	.word	4
	.word	_Label_1808
	.word	-128
	.word	4
	.word	_Label_1809
	.word	-132
	.word	4
	.word	_Label_1810
	.word	-136
	.word	4
	.word	_Label_1811
	.word	-140
	.word	4
	.word	_Label_1812
	.word	-144
	.word	4
	.word	_Label_1813
	.word	-148
	.word	4
	.word	_Label_1814
	.word	-152
	.word	4
	.word	_Label_1815
	.word	-156
	.word	4
	.word	_Label_1816
	.word	-160
	.word	4
	.word	_Label_1817
	.word	-164
	.word	4
	.word	_Label_1818
	.word	-168
	.word	4
	.word	_Label_1819
	.word	-172
	.word	4
	.word	_Label_1820
	.word	-176
	.word	4
	.word	_Label_1821
	.word	-180
	.word	4
	.word	_Label_1822
	.word	-184
	.word	4
	.word	_Label_1823
	.word	-188
	.word	4
	.word	_Label_1824
	.word	-192
	.word	4
	.word	_Label_1825
	.word	-196
	.word	4
	.word	_Label_1826
	.word	-200
	.word	4
	.word	_Label_1827
	.word	-204
	.word	4
	.word	_Label_1828
	.word	-208
	.word	4
	.word	_Label_1829
	.word	-212
	.word	4
	.word	_Label_1830
	.word	-216
	.word	4
	.word	_Label_1831
	.word	-220
	.word	4
	.word	_Label_1832
	.word	-224
	.word	4
	.word	0
_Label_1778:
	.ascii	"WriteTest6\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1832:
	.byte	'I'
	.ascii	"fd\0"
	.align
! 
! ===============  FUNCTION FillArray  ===============
! 
_function_412_FillArray:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_412_FillArray,r1
	push	r1
	mov	20,r1
_Label_2019:
	push	r0
	sub	r1,1,r1
	bne	_Label_2019
	mov	1285,r13		! source line 1285
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! toPtr
!   if intIsZero (a) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of a [0 ] into _temp_1833
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
	store	r2,[r14+-56]
!   toPtr = _temp_1833		(4 bytes)
	load	[r14+-56],r1
	store	r1,[r14+-60]
! fromPtr
!   if intIsZero (s) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of s [0 ] into _temp_1834
!     make sure index expr is >= 0
	mov	0,r2
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
	store	r2,[r14+-52]
!   fromPtr = _temp_1834		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-64]
! sizeOfS
!   if intIsZero (s) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: sizeOfS = *s  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0AS",r10
!   if intIsZero (a) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (a) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1838 = *a  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_1837 = _temp_1838 - 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Move address of a [_temp_1837 ] into _temp_1839
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
	store	r2,[r14+-32]
!   _temp_1836 = _temp_1839		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-44]
!   _temp_1835 = _temp_1836 - sizeOfS		(int)
	load	[r14+-44],r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   lastFullCopy = _temp_1835 + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! WHILE STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0WH",r10
_Label_1840:
!   if toPtr > lastFullCopy then goto _Label_1842		(int)
	load	[r14+-60],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1842
!	jmp	_Label_1841
_Label_1841:
	mov	1295,r13		! source line 1295
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=toPtr  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fromPtr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sizeOfS  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Call the function
	mov	1296,r13		! source line 1296
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0AS",r10
!   toPtr = toPtr + sizeOfS		(int)
	load	[r14+-60],r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
! END WHILE...
	jmp	_Label_1840
_Label_1842:
! ASSIGNMENT STATEMENT...
	mov	1299,r13		! source line 1299
	mov	"\0\0AS",r10
!   if intIsZero (a) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (a) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1846 = *a  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   _temp_1845 = _temp_1846 - 1		(int)
	load	[r14+-16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Move address of a [_temp_1845 ] into _temp_1847
!     make sure index expr is >= 0
	load	[r14+-20],r2
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
	store	r2,[r14+-12]
!   _temp_1844 = _temp_1847		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-24]
!   _temp_1843 = _temp_1844 - toPtr		(int)
	load	[r14+-24],r1
	load	[r14+-60],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   remaining = _temp_1843 + 1		(int)
	load	[r14+-28],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! IF STATEMENT...
	mov	1300,r13		! source line 1300
	mov	"\0\0IF",r10
!   if remaining <= 0 then goto _Label_1849		(int)
	load	[r14+-72],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1849
!	jmp	_Label_1848
_Label_1848:
! THEN...
	mov	1301,r13		! source line 1301
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=toPtr  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fromPtr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=remaining  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+8]
!   Call the function
	mov	1301,r13		! source line 1301
	mov	"\0\0CE",r10
	call	MemoryCopy
! END IF...
_Label_1849:
! RETURN STATEMENT...
	mov	1300,r13		! source line 1300
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_412_FillArray:
	.word	_sourceFileName
	.word	_Label_1850
	.word	8		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_1851
	.word	8
	.word	4
	.word	_Label_1852
	.word	12
	.word	4
	.word	_Label_1853
	.word	-12
	.word	4
	.word	_Label_1854
	.word	-16
	.word	4
	.word	_Label_1855
	.word	-20
	.word	4
	.word	_Label_1856
	.word	-24
	.word	4
	.word	_Label_1857
	.word	-28
	.word	4
	.word	_Label_1858
	.word	-32
	.word	4
	.word	_Label_1859
	.word	-36
	.word	4
	.word	_Label_1860
	.word	-40
	.word	4
	.word	_Label_1861
	.word	-44
	.word	4
	.word	_Label_1862
	.word	-48
	.word	4
	.word	_Label_1863
	.word	-52
	.word	4
	.word	_Label_1864
	.word	-56
	.word	4
	.word	_Label_1865
	.word	-60
	.word	4
	.word	_Label_1866
	.word	-64
	.word	4
	.word	_Label_1867
	.word	-68
	.word	4
	.word	_Label_1868
	.word	-72
	.word	4
	.word	_Label_1869
	.word	-76
	.word	4
	.word	0
_Label_1850:
	.ascii	"FillArray\0"
	.align
_Label_1851:
	.byte	'P'
	.ascii	"a\0"
	.align
_Label_1852:
	.byte	'P'
	.ascii	"s\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1865:
	.byte	'I'
	.ascii	"toPtr\0"
	.align
_Label_1866:
	.byte	'I'
	.ascii	"fromPtr\0"
	.align
_Label_1867:
	.byte	'I'
	.ascii	"lastFullCopy\0"
	.align
_Label_1868:
	.byte	'I'
	.ascii	"remaining\0"
	.align
_Label_1869:
	.byte	'I'
	.ascii	"sizeOfS\0"
	.align
! 
! ===============  FUNCTION OpenTest3  ===============
! 
_function_411_OpenTest3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_411_OpenTest3,r1
	push	r1
	mov	23,r1
_Label_2020:
	push	r0
	sub	r1,1,r1
	bne	_Label_2020
	mov	1308,r13		! source line 1308
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! name
!   name = _StringConst_369
	set	_StringConst_369,r1
	store	r1,[r14+-88]
! CALL STATEMENT...
!   _temp_1870 = _StringConst_370
	set	_StringConst_370,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1870  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1317,r13		! source line 1317
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1871 = _StringConst_371
	set	_StringConst_371,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1871  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1319,r13		! source line 1319
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0AS",r10
!   _temp_1872 = _StringConst_372
	set	_StringConst_372,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1872  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1320,r13		! source line 1320
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1321,r13		! source line 1321
	mov	"\0\0CA",r10
	call	_function_407_Check
! IF STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0IF",r10
!   if fd != -1 then goto _Label_1874		(int)
	load	[r14+-80],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1874
!	jmp	_Label_1873
_Label_1873:
! THEN...
	mov	1323,r13		! source line 1323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1875 = _StringConst_373
	set	_StringConst_373,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1875  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1323,r13		! source line 1323
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1876
_Label_1874:
! ELSE...
	mov	1325,r13		! source line 1325
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1877 = _StringConst_374
	set	_StringConst_374,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1877  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1325,r13		! source line 1325
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	1326,r13		! source line 1326
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1878 = _StringConst_375
	set	_StringConst_375,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1878  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1327,r13		! source line 1327
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1876:
! ASSIGNMENT STATEMENT...
	mov	1331,r13		! source line 1331
	mov	"\0\0AS",r10
!   _temp_1879 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-52]
!   Move address of _temp_1879 [9999 ] into _temp_1880
!     make sure index expr is >= 0
	mov	9999,r2
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
!   p = _temp_1880		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0AS",r10
!   _temp_1881 = p AND -8192		(int)
	load	[r14+-84],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-44]
!   p = _temp_1881 - 8		(int)
	load	[r14+-44],r1
	mov	8,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! CALL STATEMENT...
!   _temp_1882 = name		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-40]
!   if intIsZero (name) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1884 = *name  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   _temp_1883 = _temp_1884 + 4		(int)
	load	[r14+-32],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1882  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1883  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Call the function
	mov	1333,r13		! source line 1333
	mov	"\0\0CE",r10
	call	MemoryCopy
! CALL STATEMENT...
!   _temp_1885 = _StringConst_376
	set	_StringConst_376,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1885  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1335,r13		! source line 1335
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1336,r13		! source line 1336
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	1337,r13		! source line 1337
	mov	"\0\0IF",r10
!   if fd == -1 then goto _Label_1887		(int)
	load	[r14+-80],r1
	mov	-1,r2
	cmp	r1,r2
	be	_Label_1887
!	jmp	_Label_1886
_Label_1886:
! THEN...
	mov	1338,r13		! source line 1338
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1888 = _StringConst_377
	set	_StringConst_377,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1888  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1338,r13		! source line 1338
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1889
_Label_1887:
! ELSE...
	mov	1340,r13		! source line 1340
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1890 = _StringConst_378
	set	_StringConst_378,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1890  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1340,r13		! source line 1340
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	1341,r13		! source line 1341
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1891 = _StringConst_379
	set	_StringConst_379,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1891  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1342,r13		! source line 1342
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1889:
! CALL STATEMENT...
!   _temp_1892 = _StringConst_380
	set	_StringConst_380,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1892  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1345,r13		! source line 1345
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_411_OpenTest3:
	.word	_sourceFileName
	.word	_Label_1893
	.word	0		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_1894
	.word	-12
	.word	4
	.word	_Label_1895
	.word	-16
	.word	4
	.word	_Label_1896
	.word	-20
	.word	4
	.word	_Label_1897
	.word	-24
	.word	4
	.word	_Label_1898
	.word	-28
	.word	4
	.word	_Label_1899
	.word	-32
	.word	4
	.word	_Label_1900
	.word	-36
	.word	4
	.word	_Label_1901
	.word	-40
	.word	4
	.word	_Label_1902
	.word	-44
	.word	4
	.word	_Label_1903
	.word	-48
	.word	4
	.word	_Label_1904
	.word	-52
	.word	4
	.word	_Label_1905
	.word	-56
	.word	4
	.word	_Label_1906
	.word	-60
	.word	4
	.word	_Label_1907
	.word	-64
	.word	4
	.word	_Label_1908
	.word	-68
	.word	4
	.word	_Label_1909
	.word	-72
	.word	4
	.word	_Label_1910
	.word	-76
	.word	4
	.word	_Label_1911
	.word	-80
	.word	4
	.word	_Label_1912
	.word	-84
	.word	4
	.word	_Label_1913
	.word	-88
	.word	4
	.word	0
_Label_1893:
	.ascii	"OpenTest3\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1911:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1912:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_1913:
	.byte	'P'
	.ascii	"name\0"
	.align
! 
! ===============  FUNCTION ExecTest1  ===============
! 
_function_410_ExecTest1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_410_ExecTest1,r1
	push	r1
	mov	7,r1
_Label_2021:
	push	r0
	sub	r1,1,r1
	bne	_Label_2021
	mov	1351,r13		! source line 1351
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1914 = _StringConst_381
	set	_StringConst_381,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1914  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1357,r13		! source line 1357
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1915 = _StringConst_382
	set	_StringConst_382,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1915  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1359,r13		! source line 1359
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1360,r13		! source line 1360
	mov	"\0\0AS",r10
!   _temp_1916 = _StringConst_383
	set	_StringConst_383,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1916  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1360,r13		! source line 1360
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   _temp_1917 = _StringConst_384
	set	_StringConst_384,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1917  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1361,r13		! source line 1361
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1362,r13		! source line 1362
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1918 = _StringConst_385
	set	_StringConst_385,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1918  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1363,r13		! source line 1363
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1363,r13		! source line 1363
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_410_ExecTest1:
	.word	_sourceFileName
	.word	_Label_1919
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1920
	.word	-12
	.word	4
	.word	_Label_1921
	.word	-16
	.word	4
	.word	_Label_1922
	.word	-20
	.word	4
	.word	_Label_1923
	.word	-24
	.word	4
	.word	_Label_1924
	.word	-28
	.word	4
	.word	_Label_1925
	.word	-32
	.word	4
	.word	0
_Label_1919:
	.ascii	"ExecTest1\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1925:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION ExecTest2  ===============
! 
_function_409_ExecTest2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_409_ExecTest2,r1
	push	r1
	mov	21,r1
_Label_2022:
	push	r0
	sub	r1,1,r1
	bne	_Label_2022
	mov	1369,r13		! source line 1369
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! name
!   name = _StringConst_386
	set	_StringConst_386,r1
	store	r1,[r14+-80]
! CALL STATEMENT...
!   _temp_1926 = _StringConst_387
	set	_StringConst_387,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1926  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1377,r13		! source line 1377
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1927 = _StringConst_388
	set	_StringConst_388,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1927  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1379,r13		! source line 1379
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0AS",r10
!   _temp_1928 = _StringConst_389
	set	_StringConst_389,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1928  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1380,r13		! source line 1380
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1381,r13		! source line 1381
	mov	"\0\0CA",r10
	call	_function_407_Check
! CALL STATEMENT...
!   _temp_1929 = _StringConst_390
	set	_StringConst_390,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1929  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1383,r13		! source line 1383
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0AS",r10
!   _temp_1930 = _StringConst_391
	set	_StringConst_391,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1930  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1384,r13		! source line 1384
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+4]
!   Call the function
	mov	1385,r13		! source line 1385
	mov	"\0\0CA",r10
	call	_function_407_Check
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_1931 = &_Global_arr1
	set	_Global_arr1,r1
	store	r1,[r14+-48]
!   Move address of _temp_1931 [9999 ] into _temp_1932
!     make sure index expr is >= 0
	mov	9999,r2
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
!   p = _temp_1932		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1389,r13		! source line 1389
	mov	"\0\0AS",r10
!   _temp_1933 = p AND -8192		(int)
	load	[r14+-76],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-40]
!   p = _temp_1933 - 8		(int)
	load	[r14+-40],r1
	mov	8,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! CALL STATEMENT...
!   _temp_1934 = name		(4 bytes)
	load	[r14+-80],r1
	store	r1,[r14+-36]
!   if intIsZero (name) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1936 = *name  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_1935 = _temp_1936 + 4		(int)
	load	[r14+-28],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1934  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1935  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+8]
!   Call the function
	mov	1390,r13		! source line 1390
	mov	"\0\0CE",r10
	call	MemoryCopy
! CALL STATEMENT...
!   _temp_1937 = _StringConst_392
	set	_StringConst_392,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1937  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1392,r13		! source line 1392
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1938 = _StringConst_393
	set	_StringConst_393,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1938  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1393,r13		! source line 1393
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1394,r13		! source line 1394
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   _temp_1939 = _StringConst_394
	set	_StringConst_394,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1939  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1395,r13		! source line 1395
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1396,r13		! source line 1396
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1940 = _StringConst_395
	set	_StringConst_395,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1940  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1397,r13		! source line 1397
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_409_ExecTest2:
	.word	_sourceFileName
	.word	_Label_1941
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_1942
	.word	-12
	.word	4
	.word	_Label_1943
	.word	-16
	.word	4
	.word	_Label_1944
	.word	-20
	.word	4
	.word	_Label_1945
	.word	-24
	.word	4
	.word	_Label_1946
	.word	-28
	.word	4
	.word	_Label_1947
	.word	-32
	.word	4
	.word	_Label_1948
	.word	-36
	.word	4
	.word	_Label_1949
	.word	-40
	.word	4
	.word	_Label_1950
	.word	-44
	.word	4
	.word	_Label_1951
	.word	-48
	.word	4
	.word	_Label_1952
	.word	-52
	.word	4
	.word	_Label_1953
	.word	-56
	.word	4
	.word	_Label_1954
	.word	-60
	.word	4
	.word	_Label_1955
	.word	-64
	.word	4
	.word	_Label_1956
	.word	-68
	.word	4
	.word	_Label_1957
	.word	-72
	.word	4
	.word	_Label_1958
	.word	-76
	.word	4
	.word	_Label_1959
	.word	-80
	.word	4
	.word	0
_Label_1941:
	.ascii	"ExecTest2\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1957:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1958:
	.byte	'I'
	.ascii	"p\0"
	.align
_Label_1959:
	.byte	'P'
	.ascii	"name\0"
	.align
! 
! ===============  FUNCTION ExecTest3  ===============
! 
_function_408_ExecTest3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_408_ExecTest3,r1
	push	r1
	mov	15,r1
_Label_2023:
	push	r0
	sub	r1,1,r1
	bne	_Label_2023
	mov	1403,r13		! source line 1403
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1960 = _StringConst_396
	set	_StringConst_396,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1960  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1409,r13		! source line 1409
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0AS",r10
!   _temp_1961 = _StringConst_397
	set	_StringConst_397,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1961  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1410,r13		! source line 1410
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Open
!   Retrieve Result: targetName=fd  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	1411,r13		! source line 1411
	mov	"\0\0IF",r10
!   if intIsZero (fd) then goto _Label_1963
	load	[r14+-48],r1
	cmp	r1,r0
	be	_Label_1963
!	jmp	_Label_1962
_Label_1962:
! THEN...
	mov	1412,r13		! source line 1412
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1964 = _StringConst_398
	set	_StringConst_398,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1964  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1412,r13		! source line 1412
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1413,r13		! source line 1413
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1965 = _StringConst_399
	set	_StringConst_399,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1965  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1414,r13		! source line 1414
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1963:
! ASSIGNMENT STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0AS",r10
!   counter = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0AS",r10
!   _temp_1966 = &counter
	add	r14,-56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=fd  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1966  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Call the function
	mov	1418,r13		! source line 1418
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Write
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1967 = _StringConst_400
	set	_StringConst_400,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1967  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1420,r13		! source line 1420
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0AS",r10
!   _temp_1968 = _StringConst_401
	set	_StringConst_401,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1968  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1421,r13		! source line 1421
	mov	"\0\0CA",r10
	call	_P_UserSystem_Sys_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1969 = _StringConst_402
	set	_StringConst_402,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1969  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1422,r13		! source line 1422
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1423,r13		! source line 1423
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1970 = _StringConst_403
	set	_StringConst_403,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1970  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1424,r13		! source line 1424
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_408_ExecTest3:
	.word	_sourceFileName
	.word	_Label_1971
	.word	0		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1972
	.word	-12
	.word	4
	.word	_Label_1973
	.word	-16
	.word	4
	.word	_Label_1974
	.word	-20
	.word	4
	.word	_Label_1975
	.word	-24
	.word	4
	.word	_Label_1976
	.word	-28
	.word	4
	.word	_Label_1977
	.word	-32
	.word	4
	.word	_Label_1978
	.word	-36
	.word	4
	.word	_Label_1979
	.word	-40
	.word	4
	.word	_Label_1980
	.word	-44
	.word	4
	.word	_Label_1981
	.word	-48
	.word	4
	.word	_Label_1982
	.word	-52
	.word	4
	.word	_Label_1983
	.word	-56
	.word	4
	.word	0
_Label_1971:
	.ascii	"ExecTest3\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1981:
	.byte	'I'
	.ascii	"fd\0"
	.align
_Label_1982:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1983:
	.byte	'I'
	.ascii	"counter\0"
	.align
! 
! ===============  FUNCTION Check  ===============
! 
_function_407_Check:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_407_Check,r1
	push	r1
	mov	4,r1
_Label_2024:
	push	r0
	sub	r1,1,r1
	bne	_Label_2024
	mov	1431,r13		! source line 1431
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0IF",r10
!   if i != expectedVal then goto _Label_1985		(int)
	load	[r14+8],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_1985
!	jmp	_Label_1984
_Label_1984:
! THEN...
	mov	1437,r13		! source line 1437
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1986 = _StringConst_404
	set	_StringConst_404,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1986  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1437,r13		! source line 1437
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1987
_Label_1985:
! ELSE...
	mov	1439,r13		! source line 1439
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1988 = _StringConst_405
	set	_StringConst_405,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1988  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1439,r13		! source line 1439
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1440,r13		! source line 1440
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1989 = _StringConst_406
	set	_StringConst_406,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1989  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1441,r13		! source line 1441
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1987:
! RETURN STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_407_Check:
	.word	_sourceFileName
	.word	_Label_1990
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1991
	.word	8
	.word	4
	.word	_Label_1992
	.word	12
	.word	4
	.word	_Label_1993
	.word	-12
	.word	4
	.word	_Label_1994
	.word	-16
	.word	4
	.word	_Label_1995
	.word	-20
	.word	4
	.word	0
_Label_1990:
	.ascii	"Check\0"
	.align
_Label_1991:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1992:
	.byte	'I'
	.ascii	"expectedVal\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
