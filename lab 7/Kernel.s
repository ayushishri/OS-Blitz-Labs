! Name of package being compiled: Kernel
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
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
	.export	_Method_P_Kernel_ProcessManager_6
	.export	_Method_P_Kernel_ProcessManager_7
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1756
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_183:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_182:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_181:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_180:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_179:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_178:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_177:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_176:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_175:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_174:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_173:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_172:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_171:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_170:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_169:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_168:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_167:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_166:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_165:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_164:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_163:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_162:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_161:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_160:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_159:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_158:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_157:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_156:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_155:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_154:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_153:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_152:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_151:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_150:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_149:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_148:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_147:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_146:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_145:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_144:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_143:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_142:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_141:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_140:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_139:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_138:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_137:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_136:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_135:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_134:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_133:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_132:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_131:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_130:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_129:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_127:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_124:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_121:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_119:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_118:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_117:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_116:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_115:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_114:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_113:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_112:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_111:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_110:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_109:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_108:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_107:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_106:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_105:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_104:
	.word	22			! length
	.ascii	"should never be called"
	.align
_StringConst_103:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_102:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_101:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_100:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_99:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_98:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_97:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_96:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_95:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_94:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_93:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_92:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_91:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_90:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_89:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_88:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_87:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_86:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_85:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_84:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_83:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_82:
	.word	10			! length
	.ascii	"threadname"
	.align
_StringConst_81:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_80:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_79:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_78:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_77:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_72:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_71:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_70:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_69:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_68:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_67:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_66:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_65:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_64:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_63:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_62:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_61:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_60:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_59:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_58:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_57:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_56:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_55:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_54:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_53:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_52:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_51:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_50:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_49:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_48:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_47:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_45:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_44:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_43:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_42:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_41:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_40:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_39:
	.word	27			! length
	.ascii	"Handle_Sys_Create invoked!\n"
	.align
_StringConst_38:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_37:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_36:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_35:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_34:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_33:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_32:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_25:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_24:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_23:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_22:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_21:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_20:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_19:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_18:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_17:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_16:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_15:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_14:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_13:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_12:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_11:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_10:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_9:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_8:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_7:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_6:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_5:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_4:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
_StringConst_3:
	.word	12			! length
	.ascii	"TestProgram4"
	.align
_StringConst_2:
	.word	12			! length
	.ascii	"TestProgram4"
	.align
_StringConst_1:
	.word	11			! length
	.ascii	"UserProgram"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x244c4a11,r4		! myHashVal = 608979473
	cmp	r3,r4
	be	_Label_193
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
_Label_193:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_194
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_194
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_194
_Label_194:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	8,r1
_Label_3953:
	push	r0
	sub	r1,1,r1
	bne	_Label_3953
	mov	6,r13		! source line 6
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	10,r13		! source line 10
	mov	"\0\0AS",r10
	mov	10,r13		! source line 10
	mov	"\0\0SE",r10
!   _temp_195 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-24]
!   Send message GetANewThread
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=thPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! SEND STATEMENT...
	mov	11,r13		! source line 11
	mov	"\0\0SE",r10
!   _temp_196 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-20]
!   if intIsZero (thPtr) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_196  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	12,r13		! source line 12
	mov	"\0\0SE",r10
!   _temp_197 = _function_192_StartUserProcess
	set	_function_192_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_198 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-12]
!   if intIsZero (thPtr) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_197  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_198  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	12,r13		! source line 12
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_199
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_200
	.word	-12
	.word	4
	.word	_Label_201
	.word	-16
	.word	4
	.word	_Label_202
	.word	-20
	.word	4
	.word	_Label_203
	.word	-24
	.word	4
	.word	_Label_204
	.word	-28
	.word	4
	.word	0
_Label_199:
	.ascii	"InitFirstProcess\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_204:
	.byte	'P'
	.ascii	"thPtr\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_192_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_192_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_3954:
	push	r0
	sub	r1,1,r1
	bne	_Label_3954
	mov	15,r13		! source line 15
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_205 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   Send message GetANewProcess
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=PCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_206 = PCB + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_206 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_207 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_207 = PCB  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
	mov	27,r13		! source line 27
	mov	"\0\0SE",r10
!   _temp_208 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-56]
!   _temp_209 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_208  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_211 = PCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_210 = _temp_211		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_210  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0SE",r10
!   _temp_212 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_213 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_213 [999 ] into _temp_214
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   initSystemStackTop = _temp_214		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_216 = PCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   _temp_217 = _temp_216 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: _temp_215 = *_temp_217  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   InitUserStackTop = _temp_215 * 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	33,r13		! source line 33
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldVar  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0SE",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_218 = PCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_219 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_219 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=InitUserStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initUserPC  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+8]
!   Call the function
	mov	36,r13		! source line 36
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_192_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_220
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_221
	.word	8
	.word	4
	.word	_Label_222
	.word	-12
	.word	4
	.word	_Label_223
	.word	-16
	.word	4
	.word	_Label_224
	.word	-20
	.word	4
	.word	_Label_225
	.word	-24
	.word	4
	.word	_Label_226
	.word	-28
	.word	4
	.word	_Label_227
	.word	-32
	.word	4
	.word	_Label_228
	.word	-36
	.word	4
	.word	_Label_229
	.word	-40
	.word	4
	.word	_Label_230
	.word	-44
	.word	4
	.word	_Label_231
	.word	-48
	.word	4
	.word	_Label_232
	.word	-52
	.word	4
	.word	_Label_233
	.word	-56
	.word	4
	.word	_Label_234
	.word	-60
	.word	4
	.word	_Label_235
	.word	-64
	.word	4
	.word	_Label_236
	.word	-68
	.word	4
	.word	_Label_237
	.word	-72
	.word	4
	.word	_Label_238
	.word	-76
	.word	4
	.word	_Label_239
	.word	-80
	.word	4
	.word	_Label_240
	.word	-84
	.word	4
	.word	_Label_241
	.word	-88
	.word	4
	.word	_Label_242
	.word	-92
	.word	4
	.word	0
_Label_220:
	.ascii	"StartUserProcess\0"
	.align
_Label_221:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_237:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_238:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_239:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_240:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_241:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_242:
	.byte	'I'
	.ascii	"oldVar\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3955:
	push	r0
	sub	r1,1,r1
	bne	_Label_3955
	mov	47,r13		! source line 47
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	54,r13		! source line 54
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_243 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_243  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	55,r13		! source line 55
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	57,r13		! source line 57
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3956:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3956
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0SE",r10
!   _temp_247 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-44]
!   _temp_248 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_247  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	60,r13		! source line 60
	mov	"\0\0AS",r10
!   _temp_249 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_250 = _temp_249 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_250 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	61,r13		! source line 61
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3957:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3957
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0SE",r10
!   _temp_252 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-24]
!   _temp_253 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_252  sizeInBytes=4
	load	[r14+-24],r1
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
	mov	63,r13		! source line 63
	mov	"\0\0SE",r10
!   _temp_254 = _function_191_IdleFunction
	set	_function_191_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_255 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_254  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	64,r13		! source line 64
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	67,r13		! source line 67
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_256
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_257
	.word	-12
	.word	4
	.word	_Label_258
	.word	-16
	.word	4
	.word	_Label_259
	.word	-20
	.word	4
	.word	_Label_260
	.word	-24
	.word	4
	.word	_Label_261
	.word	-28
	.word	4
	.word	_Label_262
	.word	-32
	.word	4
	.word	_Label_263
	.word	-36
	.word	4
	.word	_Label_264
	.word	-40
	.word	4
	.word	_Label_265
	.word	-44
	.word	4
	.word	_Label_266
	.word	-48
	.word	4
	.word	_Label_267
	.word	-52
	.word	4
	.word	_Label_268
	.word	-56
	.word	4
	.word	_Label_269
	.word	-60
	.word	4
	.word	0
_Label_256:
	.ascii	"InitializeScheduler\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_191_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_191_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3958:
	push	r0
	sub	r1,1,r1
	bne	_Label_3958
	mov	72,r13		! source line 72
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0WH",r10
_Label_270:
!	jmp	_Label_271
_Label_271:
	mov	82,r13		! source line 82
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	83,r13		! source line 83
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0IF",r10
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_275 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_273 else goto _Label_274
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_274
	jmp	_Label_273
_Label_273:
! THEN...
	mov	85,r13		! source line 85
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	85,r13		! source line 85
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_276
_Label_274:
! ELSE...
	mov	87,r13		! source line 87
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_276:
! END WHILE...
	jmp	_Label_270
_Label_272:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_191_IdleFunction:
	.word	_sourceFileName
	.word	_Label_277
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_278
	.word	8
	.word	4
	.word	_Label_279
	.word	-12
	.word	4
	.word	_Label_280
	.word	-16
	.word	4
	.word	0
_Label_277:
	.ascii	"IdleFunction\0"
	.align
_Label_278:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_280:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3959:
	push	r0
	sub	r1,1,r1
	bne	_Label_3959
	mov	94,r13		! source line 94
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_283 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_283 ) then goto _Label_282		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_282
!	jmp	_Label_281
_Label_281:
! THEN...
	mov	111,r13		! source line 111
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_285 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_285 [0 ] into _temp_286
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_284 = _temp_286		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_282:
! ASSIGNMENT STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_287 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_287 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	120,r13		! source line 120
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0WH",r10
_Label_288:
	mov	124,r13		! source line 124
	mov	"\0\0SE",r10
!   _temp_292 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_291  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_291 then goto _Label_290 else goto _Label_289
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_289
	jmp	_Label_290
_Label_289:
	mov	124,r13		! source line 124
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
	mov	125,r13		! source line 125
	mov	"\0\0SE",r10
!   _temp_293 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0SE",r10
!   _temp_294 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_288
_Label_290:
! IF STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_297 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_297 ) then goto _Label_296		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_296
!	jmp	_Label_295
_Label_295:
! THEN...
	mov	130,r13		! source line 130
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_299 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_299 [0 ] into _temp_300
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_298 = _temp_300		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_298  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	130,r13		! source line 130
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_302 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_301 = *_temp_302  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_301) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_303 = _temp_301 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_296:
! RETURN STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_304
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_305
	.word	8
	.word	4
	.word	_Label_306
	.word	-16
	.word	4
	.word	_Label_307
	.word	-20
	.word	4
	.word	_Label_308
	.word	-24
	.word	4
	.word	_Label_309
	.word	-28
	.word	4
	.word	_Label_310
	.word	-32
	.word	4
	.word	_Label_311
	.word	-36
	.word	4
	.word	_Label_312
	.word	-40
	.word	4
	.word	_Label_313
	.word	-44
	.word	4
	.word	_Label_314
	.word	-48
	.word	4
	.word	_Label_315
	.word	-52
	.word	4
	.word	_Label_316
	.word	-9
	.word	1
	.word	_Label_317
	.word	-56
	.word	4
	.word	_Label_318
	.word	-60
	.word	4
	.word	_Label_319
	.word	-64
	.word	4
	.word	_Label_320
	.word	-68
	.word	4
	.word	_Label_321
	.word	-72
	.word	4
	.word	_Label_322
	.word	-76
	.word	4
	.word	_Label_323
	.word	-80
	.word	4
	.word	0
_Label_304:
	.ascii	"Run\0"
	.align
_Label_305:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_316:
	.byte	'C'
	.ascii	"_temp_291\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_322:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_323:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3960:
	push	r0
	sub	r1,1,r1
	bne	_Label_3960
	mov	137,r13		! source line 137
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_324 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0SE",r10
!   _temp_325 = _function_190_ThreadPrintShort
	set	_function_190_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_326 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_325  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	147,r13		! source line 147
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	147,r13		! source line 147
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_327
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_328
	.word	-12
	.word	4
	.word	_Label_329
	.word	-16
	.word	4
	.word	_Label_330
	.word	-20
	.word	4
	.word	_Label_331
	.word	-24
	.word	4
	.word	0
_Label_327:
	.ascii	"PrintReadyList\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_331:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3961:
	push	r0
	sub	r1,1,r1
	bne	_Label_3961
	mov	152,r13		! source line 152
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_332 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_332  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_334 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_333 = *_temp_334  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	166,r13		! source line 166
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_335 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	168,r13		! source line 168
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_336
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_337
	.word	-12
	.word	4
	.word	_Label_338
	.word	-16
	.word	4
	.word	_Label_339
	.word	-20
	.word	4
	.word	_Label_340
	.word	-24
	.word	4
	.word	_Label_341
	.word	-28
	.word	4
	.word	_Label_342
	.word	-32
	.word	4
	.word	0
_Label_336:
	.ascii	"ThreadStartMain\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_341:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_342:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3962:
	push	r0
	sub	r1,1,r1
	bne	_Label_3962
	mov	173,r13		! source line 173
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	184,r13		! source line 184
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0SE",r10
!   _temp_343 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_344 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	191,r13		! source line 191
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	191,r13		! source line 191
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_345
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_346
	.word	-12
	.word	4
	.word	_Label_347
	.word	-16
	.word	4
	.word	_Label_348
	.word	-20
	.word	4
	.word	0
_Label_345:
	.ascii	"ThreadFinish\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_348:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3963:
	push	r0
	sub	r1,1,r1
	bne	_Label_3963
	mov	196,r13		! source line 196
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	204,r13		! source line 204
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_349 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	205,r13		! source line 205
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_351		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_351
!	jmp	_Label_350
_Label_350:
! THEN...
	mov	207,r13		! source line 207
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_352 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	207,r13		! source line 207
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_354 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_353 = *_temp_354  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	208,r13		! source line 208
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_351:
! CALL STATEMENT...
!   _temp_355 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	210,r13		! source line 210
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	211,r13		! source line 211
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_356 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_357 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	214,r13		! source line 214
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_358
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_359
	.word	8
	.word	4
	.word	_Label_360
	.word	-12
	.word	4
	.word	_Label_361
	.word	-16
	.word	4
	.word	_Label_362
	.word	-20
	.word	4
	.word	_Label_363
	.word	-24
	.word	4
	.word	_Label_364
	.word	-28
	.word	4
	.word	_Label_365
	.word	-32
	.word	4
	.word	_Label_366
	.word	-36
	.word	4
	.word	_Label_367
	.word	-40
	.word	4
	.word	0
_Label_358:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_359:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_367:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3964:
	push	r0
	sub	r1,1,r1
	bne	_Label_3964
	mov	219,r13		! source line 219
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	232,r13		! source line 232
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_369		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_369
!	jmp	_Label_368
_Label_368:
! THEN...
	mov	235,r13		! source line 235
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	236,r13		! source line 236
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_370
_Label_369:
! ELSE...
	mov	238,r13		! source line 238
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	239,r13		! source line 239
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_370:
! RETURN STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_371
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_372
	.word	8
	.word	4
	.word	_Label_373
	.word	-12
	.word	4
	.word	0
_Label_371:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_372:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_373:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_190_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3965:
	push	r0
	sub	r1,1,r1
	bne	_Label_3965
	mov	680,r13		! source line 680
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	688,r13		! source line 688
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_377		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_377
!   _temp_376 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_378
_Label_377:
!   _temp_376 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_378:
!   if _temp_376 then goto _Label_375 else goto _Label_374
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_374
	jmp	_Label_375
_Label_374:
! THEN...
	mov	689,r13		! source line 689
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_379 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_375:
! CALL STATEMENT...
!   _temp_380 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	692,r13		! source line 692
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_382 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_381 = *_temp_382  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_381  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_383 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_383  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	695,r13		! source line 695
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_392 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_391 = *_temp_392  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_386
	cmp	r1,2
	be	_Label_387
	cmp	r1,3
	be	_Label_388
	cmp	r1,4
	be	_Label_389
	cmp	r1,5
	be	_Label_390
	jmp	_Label_384
! CASE 1...
_Label_386:
! CALL STATEMENT...
!   _temp_393 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0BR",r10
	jmp	_Label_385
! CASE 2...
_Label_387:
! CALL STATEMENT...
!   _temp_394 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0BR",r10
	jmp	_Label_385
! CASE 3...
_Label_388:
! CALL STATEMENT...
!   _temp_395 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0BR",r10
	jmp	_Label_385
! CASE 4...
_Label_389:
! CALL STATEMENT...
!   _temp_396 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0BR",r10
	jmp	_Label_385
! CASE 5...
_Label_390:
! CALL STATEMENT...
!   _temp_397 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0BR",r10
	jmp	_Label_385
! DEFAULT CASE...
_Label_384:
! CALL STATEMENT...
!   _temp_398 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	712,r13		! source line 712
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_385:
! CALL STATEMENT...
!   _temp_399 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_400 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_401 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	717,r13		! source line 717
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_402
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_403
	.word	8
	.word	4
	.word	_Label_404
	.word	-16
	.word	4
	.word	_Label_405
	.word	-20
	.word	4
	.word	_Label_406
	.word	-24
	.word	4
	.word	_Label_407
	.word	-28
	.word	4
	.word	_Label_408
	.word	-32
	.word	4
	.word	_Label_409
	.word	-36
	.word	4
	.word	_Label_410
	.word	-40
	.word	4
	.word	_Label_411
	.word	-44
	.word	4
	.word	_Label_412
	.word	-48
	.word	4
	.word	_Label_413
	.word	-52
	.word	4
	.word	_Label_414
	.word	-56
	.word	4
	.word	_Label_415
	.word	-60
	.word	4
	.word	_Label_416
	.word	-64
	.word	4
	.word	_Label_417
	.word	-68
	.word	4
	.word	_Label_418
	.word	-72
	.word	4
	.word	_Label_419
	.word	-76
	.word	4
	.word	_Label_420
	.word	-9
	.word	1
	.word	_Label_421
	.word	-80
	.word	4
	.word	0
_Label_402:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_403:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_420:
	.byte	'C'
	.ascii	"_temp_376\0"
	.align
_Label_421:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_189_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_189_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3966:
	push	r0
	sub	r1,1,r1
	bne	_Label_3966
	mov	1050,r13		! source line 1050
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_422 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_422  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1054,r13		! source line 1054
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1055,r13		! source line 1055
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_189_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_423
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_424
	.word	8
	.word	4
	.word	_Label_425
	.word	-12
	.word	4
	.word	0
_Label_423:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_424:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	37,r1
_Label_3967:
	push	r0
	sub	r1,1,r1
	bne	_Label_3967
	mov	1060,r13		! source line 1060
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_427 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_426 = *_temp_427  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_426) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_428 = _temp_426 + 28
	load	[r14+-140],r1
	add	r1,28,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_428 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-132],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1070,r13		! source line 1070
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1070,r13		! source line 1070
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_429 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_429 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-128],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=junk  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1072,r13		! source line 1072
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! SEND STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_432 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_431 = *_temp_432  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_431) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_433 = _temp_431 + 32
	load	[r14+-120],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   _temp_430 = _temp_433		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_434 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_430  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_436 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_435 = *_temp_436  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   _temp_437 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_435  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! FOR STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_442 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_443 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_442  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-148]
_Label_438:
!   Perform the FOR-LOOP termination test
!   if i > _temp_443 then goto _Label_441		
	load	[r14+-148],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_441
_Label_439:
	mov	1076,r13		! source line 1076
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_448 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_447 = *_temp_448  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_447) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = _temp_447 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_449 [i ] into _temp_450
!     make sure index expr is >= 0
	load	[r14+-148],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Data Move: _temp_446 = *_temp_450  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_446) then goto _Label_445
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_445
!	jmp	_Label_444
_Label_444:
! THEN...
	mov	1078,r13		! source line 1078
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_453 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_452 = *_temp_453  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_452) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_454 = _temp_452 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_454 [i ] into _temp_455
!     make sure index expr is >= 0
	load	[r14+-148],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Data Move: _temp_451 = *_temp_455  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_456 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_451  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_458 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_457 = *_temp_458  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_457) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_459 = _temp_457 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_459 [i ] into _temp_460
!     make sure index expr is >= 0
	load	[r14+-148],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: *_temp_460 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_445:
!   Increment the FOR-LOOP index variable and jump back
_Label_440:
!   i = i + 1
	load	[r14+-148],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
	jmp	_Label_438
! END FOR
_Label_441:
! ASSIGNMENT STATEMENT...
	mov	1084,r13		! source line 1084
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_462 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_461 = *_temp_462  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_461) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_463 = _temp_461 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_463 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_464 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_464 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1086,r13		! source line 1086
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0RE",r10
	add	r15,152,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_465
	.word	4		! total size of parameters
	.word	148		! frame size = 148
	.word	_Label_466
	.word	8
	.word	4
	.word	_Label_467
	.word	-12
	.word	4
	.word	_Label_468
	.word	-16
	.word	4
	.word	_Label_469
	.word	-20
	.word	4
	.word	_Label_470
	.word	-24
	.word	4
	.word	_Label_471
	.word	-28
	.word	4
	.word	_Label_472
	.word	-32
	.word	4
	.word	_Label_473
	.word	-36
	.word	4
	.word	_Label_474
	.word	-40
	.word	4
	.word	_Label_475
	.word	-44
	.word	4
	.word	_Label_476
	.word	-48
	.word	4
	.word	_Label_477
	.word	-52
	.word	4
	.word	_Label_478
	.word	-56
	.word	4
	.word	_Label_479
	.word	-60
	.word	4
	.word	_Label_480
	.word	-64
	.word	4
	.word	_Label_481
	.word	-68
	.word	4
	.word	_Label_482
	.word	-72
	.word	4
	.word	_Label_483
	.word	-76
	.word	4
	.word	_Label_484
	.word	-80
	.word	4
	.word	_Label_485
	.word	-84
	.word	4
	.word	_Label_486
	.word	-88
	.word	4
	.word	_Label_487
	.word	-92
	.word	4
	.word	_Label_488
	.word	-96
	.word	4
	.word	_Label_489
	.word	-100
	.word	4
	.word	_Label_490
	.word	-104
	.word	4
	.word	_Label_491
	.word	-108
	.word	4
	.word	_Label_492
	.word	-112
	.word	4
	.word	_Label_493
	.word	-116
	.word	4
	.word	_Label_494
	.word	-120
	.word	4
	.word	_Label_495
	.word	-124
	.word	4
	.word	_Label_496
	.word	-128
	.word	4
	.word	_Label_497
	.word	-132
	.word	4
	.word	_Label_498
	.word	-136
	.word	4
	.word	_Label_499
	.word	-140
	.word	4
	.word	_Label_500
	.word	-144
	.word	4
	.word	_Label_501
	.word	-148
	.word	4
	.word	0
_Label_465:
	.ascii	"ProcessFinish\0"
	.align
_Label_466:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_500:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_501:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3968:
	push	r0
	sub	r1,1,r1
	bne	_Label_3968
	mov	1559,r13		! source line 1559
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1569,r13		! source line 1569
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1571,r13		! source line 1571
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_502
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_502:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3969:
	push	r0
	sub	r1,1,r1
	bne	_Label_3969
	mov	1577,r13		! source line 1577
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0IF",r10
!   _temp_506 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_507 = _temp_506 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_505 = *_temp_507  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_505 == 0 then goto _Label_504		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_504
!	jmp	_Label_503
_Label_503:
! THEN...
	mov	1592,r13		! source line 1592
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1592,r13		! source line 1592
	mov	"\0\0SE",r10
!   _temp_509 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_510 = _temp_509 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_508 = *_temp_510  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_508) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_504:
! RETURN STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_511
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_512
	.word	-12
	.word	4
	.word	_Label_513
	.word	-16
	.word	4
	.word	_Label_514
	.word	-20
	.word	4
	.word	_Label_515
	.word	-24
	.word	4
	.word	_Label_516
	.word	-28
	.word	4
	.word	_Label_517
	.word	-32
	.word	4
	.word	0
_Label_511:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1599,r13		! source line 1599
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_518
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_518:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3970:
	push	r0
	sub	r1,1,r1
	bne	_Label_3970
	mov	1613,r13		! source line 1613
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1619,r13		! source line 1619
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_519 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_519  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1620,r13		! source line 1620
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1620,r13		! source line 1620
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_520
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_521
	.word	-12
	.word	4
	.word	0
_Label_520:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3971:
	push	r0
	sub	r1,1,r1
	bne	_Label_3971
	mov	1625,r13		! source line 1625
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_522 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_522  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1632,r13		! source line 1632
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1632,r13		! source line 1632
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_523
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_524
	.word	-12
	.word	4
	.word	0
_Label_523:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3972:
	push	r0
	sub	r1,1,r1
	bne	_Label_3972
	mov	1637,r13		! source line 1637
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1643,r13		! source line 1643
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_525 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_525  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1644,r13		! source line 1644
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1644,r13		! source line 1644
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_526
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_527
	.word	-12
	.word	4
	.word	0
_Label_526:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3973:
	push	r0
	sub	r1,1,r1
	bne	_Label_3973
	mov	1649,r13		! source line 1649
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_528 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_528  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1656,r13		! source line 1656
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_529
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_530
	.word	-12
	.word	4
	.word	0
_Label_529:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3974:
	push	r0
	sub	r1,1,r1
	bne	_Label_3974
	mov	1661,r13		! source line 1661
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_531 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_531  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1668,r13		! source line 1668
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1668,r13		! source line 1668
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_532
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_533
	.word	-12
	.word	4
	.word	0
_Label_532:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3975:
	push	r0
	sub	r1,1,r1
	bne	_Label_3975
	mov	1673,r13		! source line 1673
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1679,r13		! source line 1679
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_534 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_534  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1680,r13		! source line 1680
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1680,r13		! source line 1680
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_535
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_536
	.word	-12
	.word	4
	.word	0
_Label_535:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3976:
	push	r0
	sub	r1,1,r1
	bne	_Label_3976
	mov	1685,r13		! source line 1685
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1691,r13		! source line 1691
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_537 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_537  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1692,r13		! source line 1692
	mov	"\0\0CA",r10
	call	_function_188_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1692,r13		! source line 1692
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_538
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_539
	.word	-12
	.word	4
	.word	0
_Label_538:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_188_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_188_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3977:
	push	r0
	sub	r1,1,r1
	bne	_Label_3977
	mov	1697,r13		! source line 1697
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_540 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_540  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1702,r13		! source line 1702
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_541 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_541  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1704,r13		! source line 1704
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1707,r13		! source line 1707
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_545 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_544 = *_temp_545  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_544 == 0 then goto _Label_543		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_543
!	jmp	_Label_542
_Label_542:
! THEN...
	mov	1708,r13		! source line 1708
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_547 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_546 = *_temp_547  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_546) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_548
_Label_543:
! ELSE...
	mov	1710,r13		! source line 1710
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_549 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_549  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1710,r13		! source line 1710
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_548:
! SEND STATEMENT...
	mov	1712,r13		! source line 1712
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1718,r13		! source line 1718
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_188_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_550
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_551
	.word	8
	.word	4
	.word	_Label_552
	.word	-12
	.word	4
	.word	_Label_553
	.word	-16
	.word	4
	.word	_Label_554
	.word	-20
	.word	4
	.word	_Label_555
	.word	-24
	.word	4
	.word	_Label_556
	.word	-28
	.word	4
	.word	_Label_557
	.word	-32
	.word	4
	.word	_Label_558
	.word	-36
	.word	4
	.word	0
_Label_550:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_551:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3978:
	push	r0
	sub	r1,1,r1
	bne	_Label_3978
	mov	1723,r13		! source line 1723
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1730,r13		! source line 1730
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1744,r13		! source line 1744
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3979
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_559
_Label_3979:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_559
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_559
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_573,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_573:
	jmp	_Label_565	! 1:	
	jmp	_Label_572	! 2:	
	jmp	_Label_562	! 3:	
	jmp	_Label_561	! 4:	
	jmp	_Label_564	! 5:	
	jmp	_Label_563	! 6:	
	jmp	_Label_566	! 7:	
	jmp	_Label_567	! 8:	
	jmp	_Label_568	! 9:	
	jmp	_Label_569	! 10:	
	jmp	_Label_570	! 11:	
	jmp	_Label_571	! 12:	
! CASE 4...
_Label_561:
! RETURN STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0RE",r10
!   Call the function
	mov	1746,r13		! source line 1746
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_574  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_574  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_562:
! CALL STATEMENT...
!   Call the function
	mov	1748,r13		! source line 1748
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_563:
! RETURN STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1751,r13		! source line 1751
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_575  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_575  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_564:
! RETURN STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_576  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_576  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_565:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1755,r13		! source line 1755
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_566:
! RETURN STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_577  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_577  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_567:
! RETURN STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_578  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_578  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_568:
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_579  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_579  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_569:
! RETURN STATEMENT...
	mov	1764,r13		! source line 1764
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1764,r13		! source line 1764
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_580  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_580  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_570:
! RETURN STATEMENT...
	mov	1766,r13		! source line 1766
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1766,r13		! source line 1766
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_581  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_581  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_571:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1768,r13		! source line 1768
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_572:
! CALL STATEMENT...
!   Call the function
	mov	1771,r13		! source line 1771
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_559:
! CALL STATEMENT...
!   _temp_582 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_582  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1774,r13		! source line 1774
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1775,r13		! source line 1775
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1776,r13		! source line 1776
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_583 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_583  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1777,r13		! source line 1777
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_560:
! RETURN STATEMENT...
	mov	1779,r13		! source line 1779
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_584
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_585
	.word	8
	.word	4
	.word	_Label_586
	.word	12
	.word	4
	.word	_Label_587
	.word	16
	.word	4
	.word	_Label_588
	.word	20
	.word	4
	.word	_Label_589
	.word	24
	.word	4
	.word	_Label_590
	.word	-12
	.word	4
	.word	_Label_591
	.word	-16
	.word	4
	.word	_Label_592
	.word	-20
	.word	4
	.word	_Label_593
	.word	-24
	.word	4
	.word	_Label_594
	.word	-28
	.word	4
	.word	_Label_595
	.word	-32
	.word	4
	.word	_Label_596
	.word	-36
	.word	4
	.word	_Label_597
	.word	-40
	.word	4
	.word	_Label_598
	.word	-44
	.word	4
	.word	_Label_599
	.word	-48
	.word	4
	.word	0
_Label_584:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_585:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_586:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_587:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_588:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_589:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1,r1
_Label_3980:
	push	r0
	sub	r1,1,r1
	bne	_Label_3980
	mov	1784,r13		! source line 1784
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1785,r13		! source line 1785
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1785,r13		! source line 1785
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_600
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_601
	.word	8
	.word	4
	.word	0
_Label_600:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_601:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_3981:
	push	r0
	sub	r1,1,r1
	bne	_Label_3981
	mov	1790,r13		! source line 1790
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_602 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_602  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1791,r13		! source line 1791
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1791,r13		! source line 1791
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_603
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_604
	.word	-12
	.word	4
	.word	0
_Label_603:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1,r1
_Label_3982:
	push	r0
	sub	r1,1,r1
	bne	_Label_3982
	mov	1796,r13		! source line 1796
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_605
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_605:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	85,r1
_Label_3983:
	push	r0
	sub	r1,1,r1
	bne	_Label_3983
	mov	1802,r13		! source line 1802
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1809,r13		! source line 1809
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! ASSIGNMENT STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0AS",r10
	mov	1810,r13		! source line 1810
	mov	"\0\0SE",r10
!   _temp_606 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-316]
!   Send message GetANewThread
	load	[r14+-316],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-324]
! ASSIGNMENT STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0AS",r10
	mov	1811,r13		! source line 1811
	mov	"\0\0SE",r10
!   _temp_607 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-312]
!   Send message GetANewProcess
	load	[r14+-312],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-320]
! ASSIGNMENT STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_608 = newPCB + 24
	load	[r14+-320],r1
	add	r1,24,r1
	store	r1,[r14+-308]
!   Data Move: *_temp_608 = newThr  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r14+-308],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = newPCB + 16
	load	[r14+-320],r1
	add	r1,16,r1
	store	r1,[r14+-304]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_612 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-292]
!   Data Move: _temp_611 = *_temp_612  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_611) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = _temp_611 + 12
	load	[r14+-296],r1
	add	r1,12,r1
	store	r1,[r14+-288]
!   Data Move: _temp_610 = *_temp_613  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   Data Move: *_temp_609 = _temp_610  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r14+-304],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0AS",r10
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = newThr + 76
	load	[r14+-324],r1
	add	r1,76,r1
	store	r1,[r14+-284]
!   Data Move: *_temp_614 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-284],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0AS",r10
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = newThr + 4160
	load	[r14+-324],r1
	add	r1,4160,r1
	store	r1,[r14+-280]
!   Data Move: *_temp_615 = newPCB  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r14+-280],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = newThr + 4096
	load	[r14+-324],r1
	add	r1,4096,r1
	store	r1,[r14+-272]
!   Move address of _temp_617 [0 ] into _temp_618
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-268]
!   _temp_616 = _temp_618		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_616  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+0]
!   Call the function
	mov	1822,r13		! source line 1822
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1826,r13		! source line 1826
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! ASSIGNMENT STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0AS",r10
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_619 = newThr + 68
	load	[r14+-324],r1
	add	r1,68,r1
	store	r1,[r14+-264]
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_621 = newThr + 88
	load	[r14+-324],r1
	add	r1,88,r1
	store	r1,[r14+-256]
!   Move address of _temp_621 [999 ] into _temp_622
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-256],r1
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
	store	r2,[r14+-252]
!   _temp_620 = _temp_622		(4 bytes)
	load	[r14+-252],r1
	store	r1,[r14+-260]
!   Data Move: *_temp_619 = _temp_620  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r14+-264],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_624 = newPCB + 32
	load	[r14+-320],r1
	add	r1,32,r1
	store	r1,[r14+-244]
!   _temp_623 = _temp_624		(4 bytes)
	load	[r14+-244],r1
	store	r1,[r14+-248]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-232]
!   Data Move: _temp_626 = *_temp_627  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_626) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = _temp_626 + 32
	load	[r14+-236],r1
	add	r1,32,r1
	store	r1,[r14+-228]
!   _temp_629 = _temp_628 + 4
	load	[r14+-228],r1
	add	r1,4,r1
	store	r1,[r14+-224]
!   Data Move: _temp_625 = *_temp_629  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   _temp_630 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-220]
!   Prepare Argument: offset=12  value=_temp_623  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_625  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-220],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_635 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-216]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_639 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-200]
!   Data Move: _temp_638 = *_temp_639  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_638) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_640 = _temp_638 + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-196]
!   _temp_641 = _temp_640 + 4
	load	[r14+-196],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Data Move: _temp_637 = *_temp_641  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_636 = _temp_637 - 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_635  (sizeInBytes=4)
	load	[r14+-216],r1
	store	r1,[r14+-336]
_Label_631:
!   Perform the FOR-LOOP termination test
!   if i > _temp_636 then goto _Label_634		
	load	[r14+-336],r1
	load	[r14+-212],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_634
_Label_632:
	mov	1835,r13		! source line 1835
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1837,r13		! source line 1837
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = newPCB + 32
	load	[r14+-320],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_642  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-188]
	mov	1837,r13		! source line 1837
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_646 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_645 = *_temp_646  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_645) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_647 = _temp_645 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_644  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_642  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_644  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1837,r13		! source line 1837
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0IF",r10
	mov	1839,r13		! source line 1839
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_652 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_651 = *_temp_652  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_651) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_653 = _temp_651 + 32
	load	[r14+-164],r1
	add	r1,32,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_650  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_654 = _temp_650 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_654 then goto _Label_649 else goto _Label_648
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_648
	jmp	_Label_649
_Label_648:
! THEN...
	mov	1840,r13		! source line 1840
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_655 = newPCB + 32
	load	[r14+-320],r1
	add	r1,32,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-152],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
	jmp	_Label_656
_Label_649:
! ELSE...
	mov	1842,r13		! source line 1842
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1842,r13		! source line 1842
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_657 = newPCB + 32
	load	[r14+-320],r1
	add	r1,32,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-336],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
! END IF...
_Label_656:
!   Increment the FOR-LOOP index variable and jump back
_Label_633:
!   i = i + 1
	load	[r14+-336],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
	jmp	_Label_631
! END FOR
_Label_634:
! FOR STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_662 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-144]
!   Calculate and save the FOR-LOOP ending value
!   _temp_663 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-140]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_662  (sizeInBytes=4)
	load	[r14+-144],r1
	store	r1,[r14+-336]
_Label_658:
!   Perform the FOR-LOOP termination test
!   if i > _temp_663 then goto _Label_661		
	load	[r14+-336],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_661
_Label_659:
	mov	1846,r13		! source line 1846
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1847,r13		! source line 1847
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_668 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-128]
!   Data Move: _temp_667 = *_temp_668  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_667) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_669 = _temp_667 + 124
	load	[r14+-132],r1
	add	r1,124,r1
	store	r1,[r14+-124]
!   Move address of _temp_669 [i ] into _temp_670
!     make sure index expr is >= 0
	load	[r14+-336],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_666 = *_temp_670  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_666) then goto _Label_665
	load	[r14+-136],r1
	cmp	r1,r0
	be	_Label_665
!	jmp	_Label_664
_Label_664:
! THEN...
	mov	1848,r13		! source line 1848
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1848,r13		! source line 1848
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_673 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_672 = *_temp_673  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_672) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_674 = _temp_672 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_674 [i ] into _temp_675
!     make sure index expr is >= 0
	load	[r14+-336],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   Data Move: _temp_671 = *_temp_675  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_671) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_676 = _temp_671 + 24
	load	[r14+-116],r1
	add	r1,24,r1
	store	r1,[r14+-96]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_681 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_680 = *_temp_681  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_680) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_682 = _temp_680 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_682 [i ] into _temp_683
!     make sure index expr is >= 0
	load	[r14+-336],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Data Move: _temp_679 = *_temp_683  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_679) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_684 = _temp_679 + 24
	load	[r14+-84],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_678 = *_temp_684  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_677 = _temp_678 + 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Data Move: *_temp_676 = _temp_677  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r14+-96],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0AS",r10
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_686 = newThr + 4160
	load	[r14+-324],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_685 = *_temp_686  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_685) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_687 = _temp_685 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_687 [i ] into _temp_688
!     make sure index expr is >= 0
	load	[r14+-336],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_691 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_690 = *_temp_691  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_690) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_692 = _temp_690 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_692 [i ] into _temp_693
!     make sure index expr is >= 0
	load	[r14+-336],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: _temp_689 = *_temp_693  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   Data Move: *_temp_688 = _temp_689  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! END IF...
_Label_665:
!   Increment the FOR-LOOP index variable and jump back
_Label_660:
!   i = i + 1
	load	[r14+-336],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
	jmp	_Label_658
! END FOR
_Label_661:
! ASSIGNMENT STATEMENT...
	mov	1854,r13		! source line 1854
	mov	"\0\0AS",r10
!   Call the function
	mov	1854,r13		! source line 1854
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
! SEND STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0SE",r10
!   _temp_694 = _function_187_ResumeChildAfterFork
	set	_function_187_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_694  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-328],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-324],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1857,r13		! source line 1857
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_696 = newPCB + 12
	load	[r14+-320],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_695 = *_temp_696  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_695  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,344,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_697
	.word	0		! total size of parameters
	.word	340		! frame size = 340
	.word	_Label_698
	.word	-16
	.word	4
	.word	_Label_699
	.word	-20
	.word	4
	.word	_Label_700
	.word	-24
	.word	4
	.word	_Label_701
	.word	-28
	.word	4
	.word	_Label_702
	.word	-32
	.word	4
	.word	_Label_703
	.word	-36
	.word	4
	.word	_Label_704
	.word	-40
	.word	4
	.word	_Label_705
	.word	-44
	.word	4
	.word	_Label_706
	.word	-48
	.word	4
	.word	_Label_707
	.word	-52
	.word	4
	.word	_Label_708
	.word	-56
	.word	4
	.word	_Label_709
	.word	-60
	.word	4
	.word	_Label_710
	.word	-64
	.word	4
	.word	_Label_711
	.word	-68
	.word	4
	.word	_Label_712
	.word	-72
	.word	4
	.word	_Label_713
	.word	-76
	.word	4
	.word	_Label_714
	.word	-80
	.word	4
	.word	_Label_715
	.word	-84
	.word	4
	.word	_Label_716
	.word	-88
	.word	4
	.word	_Label_717
	.word	-92
	.word	4
	.word	_Label_718
	.word	-96
	.word	4
	.word	_Label_719
	.word	-100
	.word	4
	.word	_Label_720
	.word	-104
	.word	4
	.word	_Label_721
	.word	-108
	.word	4
	.word	_Label_722
	.word	-112
	.word	4
	.word	_Label_723
	.word	-116
	.word	4
	.word	_Label_724
	.word	-120
	.word	4
	.word	_Label_725
	.word	-124
	.word	4
	.word	_Label_726
	.word	-128
	.word	4
	.word	_Label_727
	.word	-132
	.word	4
	.word	_Label_728
	.word	-136
	.word	4
	.word	_Label_729
	.word	-140
	.word	4
	.word	_Label_730
	.word	-144
	.word	4
	.word	_Label_731
	.word	-148
	.word	4
	.word	_Label_732
	.word	-152
	.word	4
	.word	_Label_733
	.word	-9
	.word	1
	.word	_Label_734
	.word	-156
	.word	4
	.word	_Label_735
	.word	-160
	.word	4
	.word	_Label_736
	.word	-164
	.word	4
	.word	_Label_737
	.word	-10
	.word	1
	.word	_Label_738
	.word	-168
	.word	4
	.word	_Label_739
	.word	-172
	.word	4
	.word	_Label_740
	.word	-176
	.word	4
	.word	_Label_741
	.word	-180
	.word	4
	.word	_Label_742
	.word	-184
	.word	4
	.word	_Label_743
	.word	-188
	.word	4
	.word	_Label_744
	.word	-192
	.word	4
	.word	_Label_745
	.word	-196
	.word	4
	.word	_Label_746
	.word	-200
	.word	4
	.word	_Label_747
	.word	-204
	.word	4
	.word	_Label_748
	.word	-208
	.word	4
	.word	_Label_749
	.word	-212
	.word	4
	.word	_Label_750
	.word	-216
	.word	4
	.word	_Label_751
	.word	-220
	.word	4
	.word	_Label_752
	.word	-224
	.word	4
	.word	_Label_753
	.word	-228
	.word	4
	.word	_Label_754
	.word	-232
	.word	4
	.word	_Label_755
	.word	-236
	.word	4
	.word	_Label_756
	.word	-240
	.word	4
	.word	_Label_757
	.word	-244
	.word	4
	.word	_Label_758
	.word	-248
	.word	4
	.word	_Label_759
	.word	-252
	.word	4
	.word	_Label_760
	.word	-256
	.word	4
	.word	_Label_761
	.word	-260
	.word	4
	.word	_Label_762
	.word	-264
	.word	4
	.word	_Label_763
	.word	-268
	.word	4
	.word	_Label_764
	.word	-272
	.word	4
	.word	_Label_765
	.word	-276
	.word	4
	.word	_Label_766
	.word	-280
	.word	4
	.word	_Label_767
	.word	-284
	.word	4
	.word	_Label_768
	.word	-288
	.word	4
	.word	_Label_769
	.word	-292
	.word	4
	.word	_Label_770
	.word	-296
	.word	4
	.word	_Label_771
	.word	-300
	.word	4
	.word	_Label_772
	.word	-304
	.word	4
	.word	_Label_773
	.word	-308
	.word	4
	.word	_Label_774
	.word	-312
	.word	4
	.word	_Label_775
	.word	-316
	.word	4
	.word	_Label_776
	.word	-320
	.word	4
	.word	_Label_777
	.word	-324
	.word	4
	.word	_Label_778
	.word	-328
	.word	4
	.word	_Label_779
	.word	-332
	.word	4
	.word	_Label_780
	.word	-336
	.word	4
	.word	0
_Label_697:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_733:
	.byte	'C'
	.ascii	"_temp_654\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_737:
	.byte	'C'
	.ascii	"_temp_650\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_776:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_777:
	.byte	'P'
	.ascii	"newThr\0"
	.align
_Label_778:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_779:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_780:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_187_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_187_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3984:
	push	r0
	sub	r1,1,r1
	bne	_Label_3984
	mov	1860,r13		! source line 1860
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1865,r13		! source line 1865
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1865,r13		! source line 1865
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1866,r13		! source line 1866
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_782 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_781 = *_temp_782  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_781) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_783 = _temp_781 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Send message SetToThisPageTable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_785 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_785 [0 ] into _temp_786
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_784 = _temp_786		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_784  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1867,r13		! source line 1867
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1868,r13		! source line 1868
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_787 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_787 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_788 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_788 [14 ] into _temp_789
!     make sure index expr is >= 0
	mov	14,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: initUserStackTop = *_temp_789  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1870,r13		! source line 1870
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_790 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_790 [999 ] into _temp_791
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   initSystemStackTop = _temp_791		(4 bytes)
	load	[r14+-12],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=startPC  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+8]
!   Call the function
	mov	1871,r13		! source line 1871
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_187_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_792
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_793
	.word	8
	.word	4
	.word	_Label_794
	.word	-12
	.word	4
	.word	_Label_795
	.word	-16
	.word	4
	.word	_Label_796
	.word	-20
	.word	4
	.word	_Label_797
	.word	-24
	.word	4
	.word	_Label_798
	.word	-28
	.word	4
	.word	_Label_799
	.word	-32
	.word	4
	.word	_Label_800
	.word	-36
	.word	4
	.word	_Label_801
	.word	-40
	.word	4
	.word	_Label_802
	.word	-44
	.word	4
	.word	_Label_803
	.word	-48
	.word	4
	.word	_Label_804
	.word	-52
	.word	4
	.word	_Label_805
	.word	-56
	.word	4
	.word	_Label_806
	.word	-60
	.word	4
	.word	_Label_807
	.word	-64
	.word	4
	.word	0
_Label_792:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_793:
	.byte	'I'
	.ascii	"startPC\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_805:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_806:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_807:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	30,r1
_Label_3985:
	push	r0
	sub	r1,1,r1
	bne	_Label_3985
	mov	1877,r13		! source line 1877
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_812 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_813 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_812  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_808:
!   Perform the FOR-LOOP termination test
!   if i > _temp_813 then goto _Label_811		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_811
_Label_809:
	mov	1883,r13		! source line 1883
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0IF",r10
!   _temp_819 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_820 = _temp_819 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_820 [i ] into _temp_821
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_822 = _temp_821 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_818 = *_temp_822  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_818 != processID then goto _Label_815		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_815
!	jmp	_Label_817
_Label_817:
!   _temp_824 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_825 = _temp_824 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_825 [i ] into _temp_826
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_827 = _temp_826 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_823 = *_temp_827  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_830 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_829 = *_temp_830  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_829) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_831 = _temp_829 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_828 = *_temp_831  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_823 != _temp_828 then goto _Label_815		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_815
!	jmp	_Label_816
_Label_816:
!   _temp_833 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_834 = _temp_833 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_834 [i ] into _temp_835
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_836 = _temp_835 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_832 = *_temp_836  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_832 == 3 then goto _Label_815		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_815
!	jmp	_Label_814
_Label_814:
! THEN...
	mov	1885,r13		! source line 1885
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0AS",r10
	mov	1885,r13		! source line 1885
	mov	"\0\0SE",r10
!   _temp_838 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_839 = _temp_838 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_839 [i ] into _temp_840
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_837 = _temp_840		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_841 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_837  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message WaitForZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=childExitStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! RETURN STATEMENT...
	mov	1886,r13		! source line 1886
	mov	"\0\0RE",r10
!   ReturnResult: childExitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_815:
!   Increment the FOR-LOOP index variable and jump back
_Label_810:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_808
! END FOR
_Label_811:
! RETURN STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_842
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_843
	.word	8
	.word	4
	.word	_Label_844
	.word	-12
	.word	4
	.word	_Label_845
	.word	-16
	.word	4
	.word	_Label_846
	.word	-20
	.word	4
	.word	_Label_847
	.word	-24
	.word	4
	.word	_Label_848
	.word	-28
	.word	4
	.word	_Label_849
	.word	-32
	.word	4
	.word	_Label_850
	.word	-36
	.word	4
	.word	_Label_851
	.word	-40
	.word	4
	.word	_Label_852
	.word	-44
	.word	4
	.word	_Label_853
	.word	-48
	.word	4
	.word	_Label_854
	.word	-52
	.word	4
	.word	_Label_855
	.word	-56
	.word	4
	.word	_Label_856
	.word	-60
	.word	4
	.word	_Label_857
	.word	-64
	.word	4
	.word	_Label_858
	.word	-68
	.word	4
	.word	_Label_859
	.word	-72
	.word	4
	.word	_Label_860
	.word	-76
	.word	4
	.word	_Label_861
	.word	-80
	.word	4
	.word	_Label_862
	.word	-84
	.word	4
	.word	_Label_863
	.word	-88
	.word	4
	.word	_Label_864
	.word	-92
	.word	4
	.word	_Label_865
	.word	-96
	.word	4
	.word	_Label_866
	.word	-100
	.word	4
	.word	_Label_867
	.word	-104
	.word	4
	.word	_Label_868
	.word	-108
	.word	4
	.word	_Label_869
	.word	-112
	.word	4
	.word	_Label_870
	.word	-116
	.word	4
	.word	_Label_871
	.word	-120
	.word	4
	.word	0
_Label_842:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_843:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_870:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_871:
	.byte	'I'
	.ascii	"childExitStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	64,r1
_Label_3986:
	push	r0
	sub	r1,1,r1
	bne	_Label_3986
	mov	1894,r13		! source line 1894
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3987:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3987
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1904,r13		! source line 1904
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldVar  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0AS",r10
	mov	1905,r13		! source line 1905
	mov	"\0\0SE",r10
!   _temp_873 = &kernelAddr
	add	r14,-228,r1
	store	r1,[r14+-108]
!   _temp_874 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_876 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_875 = *_temp_876  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_875) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_877 = _temp_875 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_873  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_874  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=oldVar  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	1909,r13		! source line 1909
	mov	"\0\0IF",r10
!   if oldVar >= 0 then goto _Label_879		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_879
!	jmp	_Label_878
_Label_878:
! THEN...
	mov	1910,r13		! source line 1910
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1910,r13		! source line 1910
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_879:
! SEND STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0SE",r10
!   _temp_880 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-88]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0AS",r10
	mov	1914,r13		! source line 1914
	mov	"\0\0SE",r10
!   _temp_881 = &kernelAddr
	add	r14,-228,r1
	store	r1,[r14+-84]
!   _temp_882 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_881  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! IF STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_883
	load	[r14+-232],r1
	cmp	r1,r0
	be	_Label_883
	jmp	_Label_884
_Label_883:
! THEN...
	mov	1916,r13		! source line 1916
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_884:
! ASSIGNMENT STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0AS",r10
	mov	1919,r13		! source line 1919
	mov	"\0\0SE",r10
!   _temp_885 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_885  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-232],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! IF STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0IF",r10
!   if initUserPC >= 0 then goto _Label_887		(int)
	load	[r14+-236],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_887
!	jmp	_Label_886
_Label_886:
! THEN...
	mov	1921,r13		! source line 1921
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_887:
! SEND STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_890 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_889 = *_temp_890  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_889) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_891 = _temp_889 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_888 = _temp_891		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_892 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_888  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1926,r13		! source line 1926
	mov	"\0\0SE",r10
!   _temp_893 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_895 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_894 = *_temp_895  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_894) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_896 = _temp_894 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_896 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-40],r4
	mov	23,r3
_Label_3988:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3988
! ASSIGNMENT STATEMENT...
	mov	1929,r13		! source line 1929
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_897 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_897 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1930,r13		! source line 1930
	mov	"\0\0AS",r10
!   _temp_899 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-28]
!   _temp_900 = _temp_899 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_898 = *_temp_900  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   InitUserStackTop = _temp_898 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1931,r13		! source line 1931
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_901 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_901 [999 ] into _temp_902
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   initSystemStackTop = _temp_902		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-240]
! SEND STATEMENT...
	mov	1932,r13		! source line 1932
	mov	"\0\0SE",r10
!   _temp_903 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-12]
!   Send message SetToThisPageTable
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=InitUserStackTop  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initUserPC  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+8]
!   Call the function
	mov	1933,r13		! source line 1933
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1936,r13		! source line 1936
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_904
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_905
	.word	8
	.word	4
	.word	_Label_906
	.word	-12
	.word	4
	.word	_Label_907
	.word	-16
	.word	4
	.word	_Label_908
	.word	-20
	.word	4
	.word	_Label_909
	.word	-24
	.word	4
	.word	_Label_910
	.word	-28
	.word	4
	.word	_Label_911
	.word	-32
	.word	4
	.word	_Label_912
	.word	-36
	.word	4
	.word	_Label_913
	.word	-40
	.word	4
	.word	_Label_914
	.word	-44
	.word	4
	.word	_Label_915
	.word	-48
	.word	4
	.word	_Label_916
	.word	-52
	.word	4
	.word	_Label_917
	.word	-56
	.word	4
	.word	_Label_918
	.word	-60
	.word	4
	.word	_Label_919
	.word	-64
	.word	4
	.word	_Label_920
	.word	-68
	.word	4
	.word	_Label_921
	.word	-72
	.word	4
	.word	_Label_922
	.word	-76
	.word	4
	.word	_Label_923
	.word	-80
	.word	4
	.word	_Label_924
	.word	-84
	.word	4
	.word	_Label_925
	.word	-88
	.word	4
	.word	_Label_926
	.word	-92
	.word	4
	.word	_Label_927
	.word	-96
	.word	4
	.word	_Label_928
	.word	-100
	.word	4
	.word	_Label_929
	.word	-104
	.word	4
	.word	_Label_930
	.word	-108
	.word	4
	.word	_Label_931
	.word	-112
	.word	4
	.word	_Label_932
	.word	-204
	.word	92
	.word	_Label_933
	.word	-228
	.word	24
	.word	_Label_934
	.word	-232
	.word	4
	.word	_Label_935
	.word	-236
	.word	4
	.word	_Label_936
	.word	-240
	.word	4
	.word	_Label_937
	.word	-244
	.word	4
	.word	_Label_938
	.word	-248
	.word	4
	.word	0
_Label_904:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_905:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_932:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_933:
	.byte	'A'
	.ascii	"kernelAddr\0"
	.align
_Label_934:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_935:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_936:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_937:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_938:
	.byte	'I'
	.ascii	"oldVar\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	21,r1
_Label_3989:
	push	r0
	sub	r1,1,r1
	bne	_Label_3989
	mov	1944,r13		! source line 1944
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0AS",r10
	mov	1949,r13		! source line 1949
	mov	"\0\0SE",r10
!   _temp_939 = &kernelAddr
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_940 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_942 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_941 = *_temp_942  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_941) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_943 = _temp_941 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_939  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_940  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=oldVar  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_944 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_944  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1951,r13		! source line 1951
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_945 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_945  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1952,r13		! source line 1952
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_946 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_946  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1953,r13		! source line 1953
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1954,r13		! source line 1954
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_947 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_947  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_948 = &kernelAddr
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_948  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1957,r13		! source line 1957
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_949
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_950
	.word	8
	.word	4
	.word	_Label_951
	.word	-12
	.word	4
	.word	_Label_952
	.word	-16
	.word	4
	.word	_Label_953
	.word	-20
	.word	4
	.word	_Label_954
	.word	-24
	.word	4
	.word	_Label_955
	.word	-28
	.word	4
	.word	_Label_956
	.word	-32
	.word	4
	.word	_Label_957
	.word	-36
	.word	4
	.word	_Label_958
	.word	-40
	.word	4
	.word	_Label_959
	.word	-44
	.word	4
	.word	_Label_960
	.word	-48
	.word	4
	.word	_Label_961
	.word	-52
	.word	4
	.word	_Label_962
	.word	-76
	.word	24
	.word	0
_Label_949:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_950:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_961:
	.byte	'I'
	.ascii	"oldVar\0"
	.align
_Label_962:
	.byte	'A'
	.ascii	"kernelAddr\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	32,r1
_Label_3990:
	push	r0
	sub	r1,1,r1
	bne	_Label_3990
	mov	1963,r13		! source line 1963
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0AS",r10
	mov	1972,r13		! source line 1972
	mov	"\0\0SE",r10
!   _temp_963 = &kernelAddr
	add	r14,-120,r1
	store	r1,[r14+-80]
!   _temp_964 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_966 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_965 = *_temp_966  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_965) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_967 = _temp_965 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_963  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_964  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=oldVar  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0AS",r10
!   fileDescriptorIndex = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-88]
! FOR STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_972 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_973 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_972  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-84]
_Label_968:
!   Perform the FOR-LOOP termination test
!   if i > _temp_973 then goto _Label_971		
	load	[r14+-84],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_971
_Label_969:
	mov	1990,r13		! source line 1990
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_978 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_977 = *_temp_978  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_977) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_979 = _temp_977 + 124
	load	[r14+-48],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_979 [i ] into _temp_980
!     make sure index expr is >= 0
	load	[r14+-84],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_976 = *_temp_980  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_976) then goto _Label_974
	load	[r14+-52],r1
	cmp	r1,r0
	be	_Label_974
	jmp	_Label_975
_Label_974:
! THEN...
	mov	1992,r13		! source line 1992
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0AS",r10
!   fileDescriptorIndex = i		(4 bytes)
	load	[r14+-84],r1
	store	r1,[r14+-88]
! BREAK STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0BR",r10
	jmp	_Label_971
! END IF...
_Label_975:
!   Increment the FOR-LOOP index variable and jump back
_Label_970:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_968
! END FOR
_Label_971:
! IF STATEMENT...
	mov	1999,r13		! source line 1999
	mov	"\0\0IF",r10
!   if fileDescriptorIndex != -1 then goto _Label_982		(int)
	load	[r14+-88],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_982
!	jmp	_Label_981
_Label_981:
! THEN...
	mov	2000,r13		! source line 2000
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_982:
! ASSIGNMENT STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0AS",r10
	mov	2005,r13		! source line 2005
	mov	"\0\0SE",r10
!   _temp_983 = &kernelAddr
	add	r14,-120,r1
	store	r1,[r14+-32]
!   _temp_984 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_983  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	2006,r13		! source line 2006
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_985
	load	[r14+-96],r1
	cmp	r1,r0
	be	_Label_985
	jmp	_Label_986
_Label_985:
! THEN...
	mov	2007,r13		! source line 2007
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_986:
! ASSIGNMENT STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_988 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_987 = *_temp_988  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_987) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_989 = _temp_987 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_989 [fileDescriptorIndex ] into _temp_990
!     make sure index expr is >= 0
	load	[r14+-88],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: *_temp_990 = openFile  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0RE",r10
!   ReturnResult: fileDescriptorIndex  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_991
	.word	4		! total size of parameters
	.word	128		! frame size = 128
	.word	_Label_992
	.word	8
	.word	4
	.word	_Label_993
	.word	-12
	.word	4
	.word	_Label_994
	.word	-16
	.word	4
	.word	_Label_995
	.word	-20
	.word	4
	.word	_Label_996
	.word	-24
	.word	4
	.word	_Label_997
	.word	-28
	.word	4
	.word	_Label_998
	.word	-32
	.word	4
	.word	_Label_999
	.word	-36
	.word	4
	.word	_Label_1000
	.word	-40
	.word	4
	.word	_Label_1001
	.word	-44
	.word	4
	.word	_Label_1002
	.word	-48
	.word	4
	.word	_Label_1003
	.word	-52
	.word	4
	.word	_Label_1004
	.word	-56
	.word	4
	.word	_Label_1005
	.word	-60
	.word	4
	.word	_Label_1006
	.word	-64
	.word	4
	.word	_Label_1007
	.word	-68
	.word	4
	.word	_Label_1008
	.word	-72
	.word	4
	.word	_Label_1009
	.word	-76
	.word	4
	.word	_Label_1010
	.word	-80
	.word	4
	.word	_Label_1011
	.word	-84
	.word	4
	.word	_Label_1012
	.word	-88
	.word	4
	.word	_Label_1013
	.word	-92
	.word	4
	.word	_Label_1014
	.word	-96
	.word	4
	.word	_Label_1015
	.word	-120
	.word	24
	.word	0
_Label_991:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_992:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_1011:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1012:
	.byte	'I'
	.ascii	"fileDescriptorIndex\0"
	.align
_Label_1013:
	.byte	'I'
	.ascii	"oldVar\0"
	.align
_Label_1014:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1015:
	.byte	'A'
	.ascii	"kernelAddr\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	78,r1
_Label_3991:
	push	r0
	sub	r1,1,r1
	bne	_Label_3991
	mov	2019,r13		! source line 2019
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1020		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1020
	jmp	_Label_1016
_Label_1020:
!   if fileDesc <= 9 then goto _Label_1019		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1019
	jmp	_Label_1016
_Label_1019:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1023 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: _temp_1022 = *_temp_1023  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_1022) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1024 = _temp_1022 + 124
	load	[r14+-260],r1
	add	r1,124,r1
	store	r1,[r14+-252]
!   Move address of _temp_1024 [fileDesc ] into _temp_1025
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-252],r1
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
	store	r2,[r14+-248]
!   Data Move: _temp_1021 = *_temp_1025  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_1021) then goto _Label_1016
	load	[r14+-264],r1
	cmp	r1,r0
	be	_Label_1016
!	jmp	_Label_1018
_Label_1018:
!   if sizeInBytes >= 0 then goto _Label_1017		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1017
!	jmp	_Label_1016
_Label_1016:
! THEN...
	mov	2025,r13		! source line 2025
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1017:
! ASSIGNMENT STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1027 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-240]
!   Data Move: _temp_1026 = *_temp_1027  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   if intIsZero (_temp_1026) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1028 = _temp_1026 + 124
	load	[r14+-244],r1
	add	r1,124,r1
	store	r1,[r14+-236]
!   Move address of _temp_1028 [fileDesc ] into _temp_1029
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-236],r1
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
	store	r2,[r14+-232]
!   Data Move: openFile = *_temp_1029  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-300]
! ASSIGNMENT STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1030 = openFile + 16
	load	[r14+-300],r1
	add	r1,16,r1
	store	r1,[r14+-228]
!   Data Move: nextPosInFile = *_temp_1030  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1032 = openFile + 20
	load	[r14+-300],r1
	add	r1,20,r1
	store	r1,[r14+-220]
!   Data Move: _temp_1031 = *_temp_1032  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_1031) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1033 = _temp_1031 + 24
	load	[r14+-224],r1
	add	r1,24,r1
	store	r1,[r14+-216]
!   Data Move: fileSize = *_temp_1033  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-292]
! WHILE STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0WH",r10
_Label_1034:
!	jmp	_Label_1035
_Label_1035:
	mov	2037,r13		! source line 2037
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! IF STATEMENT...
	mov	2039,r13		! source line 2039
	mov	"\0\0IF",r10
!   _temp_1039 = nextPosInFile + chunkSize		(int)
	load	[r14+-284],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   if _temp_1039 <= fileSize then goto _Label_1038		(int)
	load	[r14+-212],r1
	load	[r14+-292],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1038
!	jmp	_Label_1037
_Label_1037:
! THEN...
	mov	2040,r13		! source line 2040
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-292],r1
	load	[r14+-284],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! END IF...
_Label_1038:
! IF STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0IF",r10
!   _temp_1042 = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if _temp_1042 <= sizeInBytes then goto _Label_1041		(int)
	load	[r14+-208],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1041
!	jmp	_Label_1040
_Label_1040:
! THEN...
	mov	2043,r13		! source line 2043
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! END IF...
_Label_1041:
! IF STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1044		(int)
	load	[r14+-288],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1044
!	jmp	_Label_1043
_Label_1043:
! THEN...
	mov	2046,r13		! source line 2046
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0BR",r10
	jmp	_Label_1036
! END IF...
_Label_1044:
! IF STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1049		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1049
	jmp	_Label_1045
_Label_1049:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1053 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1052 = *_temp_1053  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_1052) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1054 = _temp_1052 + 32
	load	[r14+-196],r1
	add	r1,32,r1
	store	r1,[r14+-188]
!   _temp_1055 = _temp_1054 + 4
	load	[r14+-188],r1
	add	r1,4,r1
	store	r1,[r14+-184]
!   Data Move: _temp_1051 = *_temp_1055  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   _temp_1050 = _temp_1051 - 1		(int)
	load	[r14+-200],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if virtPage <= _temp_1050 then goto _Label_1048		(int)
	load	[r14+-272],r1
	load	[r14+-204],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1048
	jmp	_Label_1045
_Label_1048:
	mov	2048,r13		! source line 2048
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1058 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_1057 = *_temp_1058  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_1057) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1059 = _temp_1057 + 32
	load	[r14+-180],r1
	add	r1,32,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1056  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1060 = _temp_1056 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1060 then goto _Label_1047 else goto _Label_1045
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1045
	jmp	_Label_1047
_Label_1047:
	mov	2048,r13		! source line 2048
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1063 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-164]
!   Data Move: _temp_1062 = *_temp_1063  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1062) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1064 = _temp_1062 + 32
	load	[r14+-168],r1
	add	r1,32,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1061  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1065 = _temp_1061 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1065 then goto _Label_1046 else goto _Label_1045
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1045
	jmp	_Label_1046
_Label_1045:
! THEN...
	mov	2049,r13		! source line 2049
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1046:
! ASSIGNMENT STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-284],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-272],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1067		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1067
!	jmp	_Label_1066
_Label_1066:
! THEN...
	mov	2056,r13		! source line 2056
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0BR",r10
	jmp	_Label_1036
! END IF...
_Label_1067:
! END WHILE...
	jmp	_Label_1034
_Label_1036:
! ASSIGNMENT STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1069 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_1068 = *_temp_1069  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_1068) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1070 = _temp_1068 + 124
	load	[r14+-156],r1
	add	r1,124,r1
	store	r1,[r14+-148]
!   Move address of _temp_1070 [fileDesc ] into _temp_1071
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Data Move: openFile = *_temp_1071  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-300]
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1072 = openFile + 16
	load	[r14+-300],r1
	add	r1,16,r1
	store	r1,[r14+-140]
!   Data Move: nextPosInFile = *_temp_1072  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1074 = openFile + 20
	load	[r14+-300],r1
	add	r1,20,r1
	store	r1,[r14+-132]
!   Data Move: _temp_1073 = *_temp_1074  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_1073) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1075 = _temp_1073 + 24
	load	[r14+-136],r1
	add	r1,24,r1
	store	r1,[r14+-128]
!   Data Move: fileSize = *_temp_1075  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-292]
! WHILE STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0WH",r10
_Label_1076:
!	jmp	_Label_1077
_Label_1077:
	mov	2070,r13		! source line 2070
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! IF STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0IF",r10
!   _temp_1081 = nextPosInFile + chunkSize		(int)
	load	[r14+-284],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   if _temp_1081 <= fileSize then goto _Label_1080		(int)
	load	[r14+-124],r1
	load	[r14+-292],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1080
!	jmp	_Label_1079
_Label_1079:
! THEN...
	mov	2073,r13		! source line 2073
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-292],r1
	load	[r14+-284],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! END IF...
_Label_1080:
! IF STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0IF",r10
!   _temp_1084 = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1084 <= sizeInBytes then goto _Label_1083		(int)
	load	[r14+-120],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1083
!	jmp	_Label_1082
_Label_1082:
! THEN...
	mov	2076,r13		! source line 2076
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! END IF...
_Label_1083:
! IF STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1086		(int)
	load	[r14+-288],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1086
!	jmp	_Label_1085
_Label_1085:
! THEN...
	mov	2079,r13		! source line 2079
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0BR",r10
	jmp	_Label_1078
! END IF...
_Label_1086:
! IF STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1091		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1091
	jmp	_Label_1087
_Label_1091:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1095 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1094 = *_temp_1095  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1094) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1096 = _temp_1094 + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   _temp_1097 = _temp_1096 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1093 = *_temp_1097  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   _temp_1092 = _temp_1093 - 1		(int)
	load	[r14+-112],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if virtPage <= _temp_1092 then goto _Label_1090		(int)
	load	[r14+-272],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1090
	jmp	_Label_1087
_Label_1090:
	mov	2081,r13		! source line 2081
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1100 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1099 = *_temp_1100  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1099) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1101 = _temp_1099 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1098  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1102 = _temp_1098 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1102 then goto _Label_1089 else goto _Label_1087
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1087
	jmp	_Label_1089
_Label_1089:
	mov	2081,r13		! source line 2081
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1105 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1104 = *_temp_1105  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1104) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1106 = _temp_1104 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1103  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1107 = _temp_1103 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1107 then goto _Label_1088 else goto _Label_1087
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1087
	jmp	_Label_1088
_Label_1087:
! THEN...
	mov	2082,r13		! source line 2082
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1088:
! SEND STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1109 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1108 = *_temp_1109  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1108) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1110 = _temp_1108 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1112 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1111 = *_temp_1112  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1111) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1113 = _temp_1111 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0AS",r10
	mov	2088,r13		! source line 2088
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1116 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1115 = *_temp_1116  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1115) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1117 = _temp_1115 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1114  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   destAddr = _temp_1114 + offset		(int)
	load	[r14+-44],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0AS",r10
	mov	2089,r13		! source line 2089
	mov	"\0\0SE",r10
!   _temp_1118 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=readSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-17]
! ASSIGNMENT STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-284],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-272],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1120		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1120
!	jmp	_Label_1119
_Label_1119:
! THEN...
	mov	2095,r13		! source line 2095
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0BR",r10
	jmp	_Label_1078
! END IF...
_Label_1120:
! END WHILE...
	jmp	_Label_1076
_Label_1078:
! ASSIGNMENT STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1121 = openFile + 16
	load	[r14+-300],r1
	add	r1,16,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1121 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r14+-24],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-280],r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1122
	.word	12		! total size of parameters
	.word	312		! frame size = 312
	.word	_Label_1123
	.word	8
	.word	4
	.word	_Label_1124
	.word	12
	.word	4
	.word	_Label_1125
	.word	16
	.word	4
	.word	_Label_1126
	.word	-24
	.word	4
	.word	_Label_1127
	.word	-28
	.word	4
	.word	_Label_1128
	.word	-32
	.word	4
	.word	_Label_1129
	.word	-36
	.word	4
	.word	_Label_1130
	.word	-40
	.word	4
	.word	_Label_1131
	.word	-44
	.word	4
	.word	_Label_1132
	.word	-48
	.word	4
	.word	_Label_1133
	.word	-52
	.word	4
	.word	_Label_1134
	.word	-56
	.word	4
	.word	_Label_1135
	.word	-60
	.word	4
	.word	_Label_1136
	.word	-64
	.word	4
	.word	_Label_1137
	.word	-68
	.word	4
	.word	_Label_1138
	.word	-9
	.word	1
	.word	_Label_1139
	.word	-72
	.word	4
	.word	_Label_1140
	.word	-76
	.word	4
	.word	_Label_1141
	.word	-80
	.word	4
	.word	_Label_1142
	.word	-10
	.word	1
	.word	_Label_1143
	.word	-11
	.word	1
	.word	_Label_1144
	.word	-84
	.word	4
	.word	_Label_1145
	.word	-88
	.word	4
	.word	_Label_1146
	.word	-92
	.word	4
	.word	_Label_1147
	.word	-12
	.word	1
	.word	_Label_1148
	.word	-96
	.word	4
	.word	_Label_1149
	.word	-100
	.word	4
	.word	_Label_1150
	.word	-104
	.word	4
	.word	_Label_1151
	.word	-108
	.word	4
	.word	_Label_1152
	.word	-112
	.word	4
	.word	_Label_1153
	.word	-116
	.word	4
	.word	_Label_1154
	.word	-120
	.word	4
	.word	_Label_1155
	.word	-124
	.word	4
	.word	_Label_1156
	.word	-128
	.word	4
	.word	_Label_1157
	.word	-132
	.word	4
	.word	_Label_1158
	.word	-136
	.word	4
	.word	_Label_1159
	.word	-140
	.word	4
	.word	_Label_1160
	.word	-144
	.word	4
	.word	_Label_1161
	.word	-148
	.word	4
	.word	_Label_1162
	.word	-152
	.word	4
	.word	_Label_1163
	.word	-156
	.word	4
	.word	_Label_1164
	.word	-13
	.word	1
	.word	_Label_1165
	.word	-160
	.word	4
	.word	_Label_1166
	.word	-164
	.word	4
	.word	_Label_1167
	.word	-168
	.word	4
	.word	_Label_1168
	.word	-14
	.word	1
	.word	_Label_1169
	.word	-15
	.word	1
	.word	_Label_1170
	.word	-172
	.word	4
	.word	_Label_1171
	.word	-176
	.word	4
	.word	_Label_1172
	.word	-180
	.word	4
	.word	_Label_1173
	.word	-16
	.word	1
	.word	_Label_1174
	.word	-184
	.word	4
	.word	_Label_1175
	.word	-188
	.word	4
	.word	_Label_1176
	.word	-192
	.word	4
	.word	_Label_1177
	.word	-196
	.word	4
	.word	_Label_1178
	.word	-200
	.word	4
	.word	_Label_1179
	.word	-204
	.word	4
	.word	_Label_1180
	.word	-208
	.word	4
	.word	_Label_1181
	.word	-212
	.word	4
	.word	_Label_1182
	.word	-216
	.word	4
	.word	_Label_1183
	.word	-220
	.word	4
	.word	_Label_1184
	.word	-224
	.word	4
	.word	_Label_1185
	.word	-228
	.word	4
	.word	_Label_1186
	.word	-232
	.word	4
	.word	_Label_1187
	.word	-236
	.word	4
	.word	_Label_1188
	.word	-240
	.word	4
	.word	_Label_1189
	.word	-244
	.word	4
	.word	_Label_1190
	.word	-248
	.word	4
	.word	_Label_1191
	.word	-252
	.word	4
	.word	_Label_1192
	.word	-256
	.word	4
	.word	_Label_1193
	.word	-260
	.word	4
	.word	_Label_1194
	.word	-264
	.word	4
	.word	_Label_1195
	.word	-268
	.word	4
	.word	_Label_1196
	.word	-272
	.word	4
	.word	_Label_1197
	.word	-276
	.word	4
	.word	_Label_1198
	.word	-280
	.word	4
	.word	_Label_1199
	.word	-284
	.word	4
	.word	_Label_1200
	.word	-288
	.word	4
	.word	_Label_1201
	.word	-292
	.word	4
	.word	_Label_1202
	.word	-296
	.word	4
	.word	_Label_1203
	.word	-300
	.word	4
	.word	_Label_1204
	.word	-17
	.word	1
	.word	0
_Label_1122:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1123:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1124:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1125:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1138:
	.byte	'C'
	.ascii	"_temp_1107\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1142:
	.byte	'C'
	.ascii	"_temp_1103\0"
	.align
_Label_1143:
	.byte	'C'
	.ascii	"_temp_1102\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1147:
	.byte	'C'
	.ascii	"_temp_1098\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1164:
	.byte	'C'
	.ascii	"_temp_1065\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1168:
	.byte	'C'
	.ascii	"_temp_1061\0"
	.align
_Label_1169:
	.byte	'C'
	.ascii	"_temp_1060\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1173:
	.byte	'C'
	.ascii	"_temp_1056\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1195:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1196:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1197:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1198:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1199:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1200:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1201:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1202:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1203:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1204:
	.byte	'B'
	.ascii	"readSuccess\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	78,r1
_Label_3992:
	push	r0
	sub	r1,1,r1
	bne	_Label_3992
	mov	2108,r13		! source line 2108
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1209		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1209
	jmp	_Label_1205
_Label_1209:
!   if fileDesc <= 9 then goto _Label_1208		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1208
	jmp	_Label_1205
_Label_1208:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1212 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: _temp_1211 = *_temp_1212  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_1211) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1213 = _temp_1211 + 124
	load	[r14+-260],r1
	add	r1,124,r1
	store	r1,[r14+-252]
!   Move address of _temp_1213 [fileDesc ] into _temp_1214
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-252],r1
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
	store	r2,[r14+-248]
!   Data Move: _temp_1210 = *_temp_1214  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_1210) then goto _Label_1205
	load	[r14+-264],r1
	cmp	r1,r0
	be	_Label_1205
!	jmp	_Label_1207
_Label_1207:
!   if sizeInBytes >= 0 then goto _Label_1206		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1206
!	jmp	_Label_1205
_Label_1205:
! THEN...
	mov	2114,r13		! source line 2114
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1206:
! ASSIGNMENT STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1216 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-240]
!   Data Move: _temp_1215 = *_temp_1216  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   if intIsZero (_temp_1215) then goto _runtimeErrorNullPointer
	load	[r14+-244],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1217 = _temp_1215 + 124
	load	[r14+-244],r1
	add	r1,124,r1
	store	r1,[r14+-236]
!   Move address of _temp_1217 [fileDesc ] into _temp_1218
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-236],r1
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
	store	r2,[r14+-232]
!   Data Move: openFile = *_temp_1218  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-300]
! ASSIGNMENT STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1219 = openFile + 16
	load	[r14+-300],r1
	add	r1,16,r1
	store	r1,[r14+-228]
!   Data Move: nextPosInFile = *_temp_1219  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1221 = openFile + 20
	load	[r14+-300],r1
	add	r1,20,r1
	store	r1,[r14+-220]
!   Data Move: _temp_1220 = *_temp_1221  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_1220) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1222 = _temp_1220 + 24
	load	[r14+-224],r1
	add	r1,24,r1
	store	r1,[r14+-216]
!   Data Move: fileSize = *_temp_1222  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-292]
! WHILE STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0WH",r10
_Label_1223:
!	jmp	_Label_1224
_Label_1224:
	mov	2126,r13		! source line 2126
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! IF STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0IF",r10
!   _temp_1228 = nextPosInFile + chunkSize		(int)
	load	[r14+-284],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   if _temp_1228 <= fileSize then goto _Label_1227		(int)
	load	[r14+-212],r1
	load	[r14+-292],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1227
!	jmp	_Label_1226
_Label_1226:
! THEN...
	mov	2129,r13		! source line 2129
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-292],r1
	load	[r14+-284],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! END IF...
_Label_1227:
! IF STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0IF",r10
!   _temp_1231 = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if _temp_1231 <= sizeInBytes then goto _Label_1230		(int)
	load	[r14+-208],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1230
!	jmp	_Label_1229
_Label_1229:
! THEN...
	mov	2132,r13		! source line 2132
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! END IF...
_Label_1230:
! IF STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1233		(int)
	load	[r14+-288],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1233
!	jmp	_Label_1232
_Label_1232:
! THEN...
	mov	2135,r13		! source line 2135
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0BR",r10
	jmp	_Label_1225
! END IF...
_Label_1233:
! IF STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1238		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1238
	jmp	_Label_1234
_Label_1238:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1242 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1241 = *_temp_1242  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_1241) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1243 = _temp_1241 + 32
	load	[r14+-196],r1
	add	r1,32,r1
	store	r1,[r14+-188]
!   _temp_1244 = _temp_1243 + 4
	load	[r14+-188],r1
	add	r1,4,r1
	store	r1,[r14+-184]
!   Data Move: _temp_1240 = *_temp_1244  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   _temp_1239 = _temp_1240 - 1		(int)
	load	[r14+-200],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-204]
!   if virtPage <= _temp_1239 then goto _Label_1237		(int)
	load	[r14+-272],r1
	load	[r14+-204],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1237
	jmp	_Label_1234
_Label_1237:
	mov	2137,r13		! source line 2137
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1247 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_1246 = *_temp_1247  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_1246) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1248 = _temp_1246 + 32
	load	[r14+-180],r1
	add	r1,32,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1245  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1249 = _temp_1245 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1249 then goto _Label_1236 else goto _Label_1234
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1234
	jmp	_Label_1236
_Label_1236:
	mov	2137,r13		! source line 2137
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1252 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-164]
!   Data Move: _temp_1251 = *_temp_1252  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1251) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1253 = _temp_1251 + 32
	load	[r14+-168],r1
	add	r1,32,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1250  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1254 = _temp_1250 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1254 then goto _Label_1235 else goto _Label_1234
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1234
	jmp	_Label_1235
_Label_1234:
! THEN...
	mov	2138,r13		! source line 2138
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1235:
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-284],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-272],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1256		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1256
!	jmp	_Label_1255
_Label_1255:
! THEN...
	mov	2145,r13		! source line 2145
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0BR",r10
	jmp	_Label_1225
! END IF...
_Label_1256:
! END WHILE...
	jmp	_Label_1223
_Label_1225:
! ASSIGNMENT STATEMENT...
	mov	2150,r13		! source line 2150
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1258 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-152]
!   Data Move: _temp_1257 = *_temp_1258  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_1257) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1259 = _temp_1257 + 124
	load	[r14+-156],r1
	add	r1,124,r1
	store	r1,[r14+-148]
!   Move address of _temp_1259 [fileDesc ] into _temp_1260
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Data Move: openFile = *_temp_1260  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-300]
! ASSIGNMENT STATEMENT...
	mov	2151,r13		! source line 2151
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-268],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	2154,r13		! source line 2154
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1261 = openFile + 16
	load	[r14+-300],r1
	add	r1,16,r1
	store	r1,[r14+-140]
!   Data Move: nextPosInFile = *_temp_1261  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1263 = openFile + 20
	load	[r14+-300],r1
	add	r1,20,r1
	store	r1,[r14+-132]
!   Data Move: _temp_1262 = *_temp_1263  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_1262) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1264 = _temp_1262 + 24
	load	[r14+-136],r1
	add	r1,24,r1
	store	r1,[r14+-128]
!   Data Move: fileSize = *_temp_1264  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-292]
! WHILE STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0WH",r10
_Label_1265:
!	jmp	_Label_1266
_Label_1266:
	mov	2158,r13		! source line 2158
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-276],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! IF STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0IF",r10
!   _temp_1270 = nextPosInFile + chunkSize		(int)
	load	[r14+-284],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   if _temp_1270 <= fileSize then goto _Label_1269		(int)
	load	[r14+-124],r1
	load	[r14+-292],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1269
!	jmp	_Label_1268
_Label_1268:
! THEN...
	mov	2161,r13		! source line 2161
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-292],r1
	load	[r14+-284],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! END IF...
_Label_1269:
! IF STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0IF",r10
!   _temp_1273 = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if _temp_1273 <= sizeInBytes then goto _Label_1272		(int)
	load	[r14+-120],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1272
!	jmp	_Label_1271
_Label_1271:
! THEN...
	mov	2164,r13		! source line 2164
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-280],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-288]
! END IF...
_Label_1272:
! IF STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1275		(int)
	load	[r14+-288],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1275
!	jmp	_Label_1274
_Label_1274:
! THEN...
	mov	2167,r13		! source line 2167
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0BR",r10
	jmp	_Label_1267
! END IF...
_Label_1275:
! IF STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1280		(int)
	load	[r14+-272],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1280
	jmp	_Label_1276
_Label_1280:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1284 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1283 = *_temp_1284  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1283) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1285 = _temp_1283 + 32
	load	[r14+-108],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   _temp_1286 = _temp_1285 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1282 = *_temp_1286  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   _temp_1281 = _temp_1282 - 1		(int)
	load	[r14+-112],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if virtPage <= _temp_1281 then goto _Label_1279		(int)
	load	[r14+-272],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1279
	jmp	_Label_1276
_Label_1279:
	mov	2169,r13		! source line 2169
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1289 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1288 = *_temp_1289  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1288) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1290 = _temp_1288 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1287  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1291 = _temp_1287 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1291 then goto _Label_1278 else goto _Label_1276
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1276
	jmp	_Label_1278
_Label_1278:
	mov	2169,r13		! source line 2169
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1294 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1293 = *_temp_1294  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1293) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1295 = _temp_1293 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1292  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1296 = _temp_1292 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1296 then goto _Label_1277 else goto _Label_1276
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1276
	jmp	_Label_1277
_Label_1276:
! THEN...
	mov	2170,r13		! source line 2170
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1277:
! SEND STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1298 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1297 = *_temp_1298  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1297) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1299 = _temp_1297 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1301 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1300 = *_temp_1301  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1300) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1302 = _temp_1300 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0AS",r10
	mov	2176,r13		! source line 2176
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1305 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1304 = *_temp_1305  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1304) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1306 = _temp_1304 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1303  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   destAddr = _temp_1303 + offset		(int)
	load	[r14+-44],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-296]
! ASSIGNMENT STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0AS",r10
	mov	2177,r13		! source line 2177
	mov	"\0\0SE",r10
!   _temp_1307 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-288],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=readSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-17]
! ASSIGNMENT STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-284],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-284]
! ASSIGNMENT STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-280],r1
	load	[r14+-288],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
! ASSIGNMENT STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-272],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2181,r13		! source line 2181
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-276]
! IF STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1309		(int)
	load	[r14+-280],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1309
!	jmp	_Label_1308
_Label_1308:
! THEN...
	mov	2183,r13		! source line 2183
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0BR",r10
	jmp	_Label_1267
! END IF...
_Label_1309:
! END WHILE...
	jmp	_Label_1265
_Label_1267:
! ASSIGNMENT STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1310 = openFile + 16
	load	[r14+-300],r1
	add	r1,16,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1310 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-284],r1
	load	[r14+-24],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-280],r1
	store	r1,[r14+8]
	add	r15,316,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1311
	.word	12		! total size of parameters
	.word	312		! frame size = 312
	.word	_Label_1312
	.word	8
	.word	4
	.word	_Label_1313
	.word	12
	.word	4
	.word	_Label_1314
	.word	16
	.word	4
	.word	_Label_1315
	.word	-24
	.word	4
	.word	_Label_1316
	.word	-28
	.word	4
	.word	_Label_1317
	.word	-32
	.word	4
	.word	_Label_1318
	.word	-36
	.word	4
	.word	_Label_1319
	.word	-40
	.word	4
	.word	_Label_1320
	.word	-44
	.word	4
	.word	_Label_1321
	.word	-48
	.word	4
	.word	_Label_1322
	.word	-52
	.word	4
	.word	_Label_1323
	.word	-56
	.word	4
	.word	_Label_1324
	.word	-60
	.word	4
	.word	_Label_1325
	.word	-64
	.word	4
	.word	_Label_1326
	.word	-68
	.word	4
	.word	_Label_1327
	.word	-9
	.word	1
	.word	_Label_1328
	.word	-72
	.word	4
	.word	_Label_1329
	.word	-76
	.word	4
	.word	_Label_1330
	.word	-80
	.word	4
	.word	_Label_1331
	.word	-10
	.word	1
	.word	_Label_1332
	.word	-11
	.word	1
	.word	_Label_1333
	.word	-84
	.word	4
	.word	_Label_1334
	.word	-88
	.word	4
	.word	_Label_1335
	.word	-92
	.word	4
	.word	_Label_1336
	.word	-12
	.word	1
	.word	_Label_1337
	.word	-96
	.word	4
	.word	_Label_1338
	.word	-100
	.word	4
	.word	_Label_1339
	.word	-104
	.word	4
	.word	_Label_1340
	.word	-108
	.word	4
	.word	_Label_1341
	.word	-112
	.word	4
	.word	_Label_1342
	.word	-116
	.word	4
	.word	_Label_1343
	.word	-120
	.word	4
	.word	_Label_1344
	.word	-124
	.word	4
	.word	_Label_1345
	.word	-128
	.word	4
	.word	_Label_1346
	.word	-132
	.word	4
	.word	_Label_1347
	.word	-136
	.word	4
	.word	_Label_1348
	.word	-140
	.word	4
	.word	_Label_1349
	.word	-144
	.word	4
	.word	_Label_1350
	.word	-148
	.word	4
	.word	_Label_1351
	.word	-152
	.word	4
	.word	_Label_1352
	.word	-156
	.word	4
	.word	_Label_1353
	.word	-13
	.word	1
	.word	_Label_1354
	.word	-160
	.word	4
	.word	_Label_1355
	.word	-164
	.word	4
	.word	_Label_1356
	.word	-168
	.word	4
	.word	_Label_1357
	.word	-14
	.word	1
	.word	_Label_1358
	.word	-15
	.word	1
	.word	_Label_1359
	.word	-172
	.word	4
	.word	_Label_1360
	.word	-176
	.word	4
	.word	_Label_1361
	.word	-180
	.word	4
	.word	_Label_1362
	.word	-16
	.word	1
	.word	_Label_1363
	.word	-184
	.word	4
	.word	_Label_1364
	.word	-188
	.word	4
	.word	_Label_1365
	.word	-192
	.word	4
	.word	_Label_1366
	.word	-196
	.word	4
	.word	_Label_1367
	.word	-200
	.word	4
	.word	_Label_1368
	.word	-204
	.word	4
	.word	_Label_1369
	.word	-208
	.word	4
	.word	_Label_1370
	.word	-212
	.word	4
	.word	_Label_1371
	.word	-216
	.word	4
	.word	_Label_1372
	.word	-220
	.word	4
	.word	_Label_1373
	.word	-224
	.word	4
	.word	_Label_1374
	.word	-228
	.word	4
	.word	_Label_1375
	.word	-232
	.word	4
	.word	_Label_1376
	.word	-236
	.word	4
	.word	_Label_1377
	.word	-240
	.word	4
	.word	_Label_1378
	.word	-244
	.word	4
	.word	_Label_1379
	.word	-248
	.word	4
	.word	_Label_1380
	.word	-252
	.word	4
	.word	_Label_1381
	.word	-256
	.word	4
	.word	_Label_1382
	.word	-260
	.word	4
	.word	_Label_1383
	.word	-264
	.word	4
	.word	_Label_1384
	.word	-268
	.word	4
	.word	_Label_1385
	.word	-272
	.word	4
	.word	_Label_1386
	.word	-276
	.word	4
	.word	_Label_1387
	.word	-280
	.word	4
	.word	_Label_1388
	.word	-284
	.word	4
	.word	_Label_1389
	.word	-288
	.word	4
	.word	_Label_1390
	.word	-292
	.word	4
	.word	_Label_1391
	.word	-296
	.word	4
	.word	_Label_1392
	.word	-300
	.word	4
	.word	_Label_1393
	.word	-17
	.word	1
	.word	0
_Label_1311:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1312:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1313:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1314:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1327:
	.byte	'C'
	.ascii	"_temp_1296\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1331:
	.byte	'C'
	.ascii	"_temp_1292\0"
	.align
_Label_1332:
	.byte	'C'
	.ascii	"_temp_1291\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1336:
	.byte	'C'
	.ascii	"_temp_1287\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1353:
	.byte	'C'
	.ascii	"_temp_1254\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1357:
	.byte	'C'
	.ascii	"_temp_1250\0"
	.align
_Label_1358:
	.byte	'C'
	.ascii	"_temp_1249\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1362:
	.byte	'C'
	.ascii	"_temp_1245\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1384:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1385:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1386:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1387:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1388:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1389:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1390:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1391:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1392:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1393:
	.byte	'B'
	.ascii	"readSuccess\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	38,r1
_Label_3993:
	push	r0
	sub	r1,1,r1
	bne	_Label_3993
	mov	2195,r13		! source line 2195
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0SE",r10
!   _temp_1394 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-152]
!   _temp_1395 = _temp_1394 + 4
	load	[r14+-152],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Send message Lock
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1401		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1401
	jmp	_Label_1396
_Label_1401:
!   if fileDesc <= 9 then goto _Label_1400		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1400
	jmp	_Label_1396
_Label_1400:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1404 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1403 = *_temp_1404  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1403) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1405 = _temp_1403 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1405 [fileDesc ] into _temp_1406
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-128]
!   Data Move: _temp_1402 = *_temp_1406  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1402) then goto _Label_1396
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_1396
!	jmp	_Label_1399
_Label_1399:
!   if newCurrentPos >= -1 then goto _Label_1398		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1398
	jmp	_Label_1396
_Label_1398:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1411 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1410 = *_temp_1411  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1410) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1412 = _temp_1410 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1412 [fileDesc ] into _temp_1413
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   Data Move: _temp_1409 = *_temp_1413  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1409) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1414 = _temp_1409 + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1408 = *_temp_1414  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1408) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1415 = _temp_1408 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1407 = *_temp_1415  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if newCurrentPos <= _temp_1407 then goto _Label_1397		(int)
	load	[r14+12],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1397
!	jmp	_Label_1396
_Label_1396:
! THEN...
	mov	2201,r13		! source line 2201
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0SE",r10
!   _temp_1416 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   _temp_1417 = _temp_1416 + 4
	load	[r14+-88],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Send message Unlock
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1397:
! ASSIGNMENT STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1419 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1418 = *_temp_1419  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1418) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1420 = _temp_1418 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1420 [fileDesc ] into _temp_1421
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Data Move: openFile = *_temp_1421  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1423		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1423
!	jmp	_Label_1422
_Label_1422:
! THEN...
	mov	2208,r13		! source line 2208
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1424 = openFile + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1427 = openFile + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1426 = *_temp_1427  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1426) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1428 = _temp_1426 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1425 = *_temp_1428  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1424 = _temp_1425  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0SE",r10
!   _temp_1429 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_1430 = _temp_1429 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0RE",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1433 = openFile + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1432 = *_temp_1433  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1432) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1434 = _temp_1432 + 24
	load	[r14+-32],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1431 = *_temp_1434  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1431  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1423:
! ASSIGNMENT STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1435 = openFile + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1435 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0SE",r10
!   _temp_1436 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1437 = _temp_1436 + 4
	load	[r14+-16],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0RE",r10
!   ReturnResult: newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1438
	.word	8		! total size of parameters
	.word	152		! frame size = 152
	.word	_Label_1439
	.word	8
	.word	4
	.word	_Label_1440
	.word	12
	.word	4
	.word	_Label_1441
	.word	-12
	.word	4
	.word	_Label_1442
	.word	-16
	.word	4
	.word	_Label_1443
	.word	-20
	.word	4
	.word	_Label_1444
	.word	-24
	.word	4
	.word	_Label_1445
	.word	-28
	.word	4
	.word	_Label_1446
	.word	-32
	.word	4
	.word	_Label_1447
	.word	-36
	.word	4
	.word	_Label_1448
	.word	-40
	.word	4
	.word	_Label_1449
	.word	-44
	.word	4
	.word	_Label_1450
	.word	-48
	.word	4
	.word	_Label_1451
	.word	-52
	.word	4
	.word	_Label_1452
	.word	-56
	.word	4
	.word	_Label_1453
	.word	-60
	.word	4
	.word	_Label_1454
	.word	-64
	.word	4
	.word	_Label_1455
	.word	-68
	.word	4
	.word	_Label_1456
	.word	-72
	.word	4
	.word	_Label_1457
	.word	-76
	.word	4
	.word	_Label_1458
	.word	-80
	.word	4
	.word	_Label_1459
	.word	-84
	.word	4
	.word	_Label_1460
	.word	-88
	.word	4
	.word	_Label_1461
	.word	-92
	.word	4
	.word	_Label_1462
	.word	-96
	.word	4
	.word	_Label_1463
	.word	-100
	.word	4
	.word	_Label_1464
	.word	-104
	.word	4
	.word	_Label_1465
	.word	-108
	.word	4
	.word	_Label_1466
	.word	-112
	.word	4
	.word	_Label_1467
	.word	-116
	.word	4
	.word	_Label_1468
	.word	-120
	.word	4
	.word	_Label_1469
	.word	-124
	.word	4
	.word	_Label_1470
	.word	-128
	.word	4
	.word	_Label_1471
	.word	-132
	.word	4
	.word	_Label_1472
	.word	-136
	.word	4
	.word	_Label_1473
	.word	-140
	.word	4
	.word	_Label_1474
	.word	-144
	.word	4
	.word	_Label_1475
	.word	-148
	.word	4
	.word	_Label_1476
	.word	-152
	.word	4
	.word	_Label_1477
	.word	-156
	.word	4
	.word	0
_Label_1438:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1439:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1440:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1477:
	.byte	'P'
	.ascii	"openFile\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	17,r1
_Label_3994:
	push	r0
	sub	r1,1,r1
	bne	_Label_3994
	mov	2219,r13		! source line 2219
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1481		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1481
	jmp	_Label_1478
_Label_1481:
!   if fileDesc <= 9 then goto _Label_1480		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1480
	jmp	_Label_1478
_Label_1480:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1484 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1483 = *_temp_1484  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1483) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1485 = _temp_1483 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1485 [fileDesc ] into _temp_1486
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Data Move: _temp_1482 = *_temp_1486  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1482) then goto _Label_1478
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1478
	jmp	_Label_1479
_Label_1478:
	jmp	_Label_1487
_Label_1479:
! ELSE...
	mov	2223,r13		! source line 2223
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1490 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1489 = *_temp_1490  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1489) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1491 = _temp_1489 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1491 [fileDesc ] into _temp_1492
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1488 = *_temp_1492  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1493 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1488  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1495 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1494 = *_temp_1495  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1494) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1496 = _temp_1494 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1496 [fileDesc ] into _temp_1497
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: *_temp_1497 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1487:
! RETURN STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1498
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1499
	.word	8
	.word	4
	.word	_Label_1500
	.word	-12
	.word	4
	.word	_Label_1501
	.word	-16
	.word	4
	.word	_Label_1502
	.word	-20
	.word	4
	.word	_Label_1503
	.word	-24
	.word	4
	.word	_Label_1504
	.word	-28
	.word	4
	.word	_Label_1505
	.word	-32
	.word	4
	.word	_Label_1506
	.word	-36
	.word	4
	.word	_Label_1507
	.word	-40
	.word	4
	.word	_Label_1508
	.word	-44
	.word	4
	.word	_Label_1509
	.word	-48
	.word	4
	.word	_Label_1510
	.word	-52
	.word	4
	.word	_Label_1511
	.word	-56
	.word	4
	.word	_Label_1512
	.word	-60
	.word	4
	.word	_Label_1513
	.word	-64
	.word	4
	.word	_Label_1514
	.word	-68
	.word	4
	.word	0
_Label_1498:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1499:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_186_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_186_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3995:
	push	r0
	sub	r1,1,r1
	bne	_Label_3995
	mov	2819,r13		! source line 2819
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2821,r13		! source line 2821
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1515 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1515  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0AS",r10
!   _temp_1516 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1516) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1518 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1518) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1517 = *_temp_1518  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1516 = _temp_1517  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0AS",r10
!   _temp_1519 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1519) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1521 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1521) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1520 = *_temp_1521  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1519 = _temp_1520  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2826,r13		! source line 2826
	mov	"\0\0AS",r10
!   _temp_1522 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1522) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1524 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1524) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1523 = *_temp_1524  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1522 = _temp_1523  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2826,r13		! source line 2826
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_186_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1525
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1526
	.word	8
	.word	4
	.word	_Label_1527
	.word	12
	.word	4
	.word	_Label_1528
	.word	-16
	.word	4
	.word	_Label_1529
	.word	-9
	.word	1
	.word	_Label_1530
	.word	-20
	.word	4
	.word	_Label_1531
	.word	-24
	.word	4
	.word	_Label_1532
	.word	-10
	.word	1
	.word	_Label_1533
	.word	-28
	.word	4
	.word	_Label_1534
	.word	-32
	.word	4
	.word	_Label_1535
	.word	-11
	.word	1
	.word	_Label_1536
	.word	-36
	.word	4
	.word	_Label_1537
	.word	-12
	.word	1
	.word	_Label_1538
	.word	-40
	.word	4
	.word	_Label_1539
	.word	-44
	.word	4
	.word	0
_Label_1525:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1526:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1527:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1529:
	.byte	'C'
	.ascii	"_temp_1523\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1532:
	.byte	'C'
	.ascii	"_temp_1520\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1535:
	.byte	'C'
	.ascii	"_temp_1517\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1537:
	.byte	'C'
	.ascii	"_temp_1515\0"
	.align
_Label_1538:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1539:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_185_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_185_printFCB,r1
	push	r1
	mov	3,r1
_Label_3996:
	push	r0
	sub	r1,1,r1
	bne	_Label_3996
	mov	2829,r13		! source line 2829
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1541 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1540 = *_temp_1541  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1540  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2830,r13		! source line 2830
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2831,r13		! source line 2831
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_185_printFCB:
	.word	_sourceFileName
	.word	_Label_1542
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1543
	.word	8
	.word	4
	.word	_Label_1544
	.word	-12
	.word	4
	.word	_Label_1545
	.word	-16
	.word	4
	.word	0
_Label_1542:
	.ascii	"printFCB\0"
	.align
_Label_1543:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_184_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_184_printOpen,r1
	push	r1
	mov	4,r1
_Label_3997:
	push	r0
	sub	r1,1,r1
	bne	_Label_3997
	mov	2834,r13		! source line 2834
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1546 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1546  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2835,r13		! source line 2835
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1547 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1547  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2836,r13		! source line 2836
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1548 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1548  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2837,r13		! source line 2837
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_184_printOpen:
	.word	_sourceFileName
	.word	_Label_1549
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1550
	.word	8
	.word	4
	.word	_Label_1551
	.word	-12
	.word	4
	.word	_Label_1552
	.word	-16
	.word	4
	.word	_Label_1553
	.word	-20
	.word	4
	.word	0
_Label_1549:
	.ascii	"printOpen\0"
	.align
_Label_1550:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1554
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1554:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1555
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1555:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3998:
	push	r0
	sub	r1,1,r1
	bne	_Label_3998
	mov	270,r13		! source line 270
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1557		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1557
!	jmp	_Label_1556
_Label_1556:
! THEN...
	mov	272,r13		! source line 272
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1558 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1558  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	272,r13		! source line 272
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1557:
! ASSIGNMENT STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_1560
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1561
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1562
	.word	12
	.word	4
	.word	_Label_1563
	.word	-12
	.word	4
	.word	_Label_1564
	.word	-16
	.word	4
	.word	0
_Label_1560:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1561:
	.ascii	"Pself\0"
	.align
_Label_1562:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3999:
	push	r0
	sub	r1,1,r1
	bne	_Label_3999
	mov	280,r13		! source line 280
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	284,r13		! source line 284
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	285,r13		! source line 285
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_1566		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1566
!	jmp	_Label_1565
_Label_1565:
! THEN...
	mov	286,r13		! source line 286
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1567 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1567  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	286,r13		! source line 286
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1566:
! ASSIGNMENT STATEMENT...
	mov	288,r13		! source line 288
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_1569		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1569
!	jmp	_Label_1568
_Label_1568:
! THEN...
	mov	290,r13		! source line 290
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0AS",r10
	mov	290,r13		! source line 290
	mov	"\0\0SE",r10
!   _temp_1570 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1571 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1571 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0SE",r10
!   _temp_1572 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1569:
! ASSIGNMENT STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	294,r13		! source line 294
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_1573
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1574
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1575
	.word	-12
	.word	4
	.word	_Label_1576
	.word	-16
	.word	4
	.word	_Label_1577
	.word	-20
	.word	4
	.word	_Label_1578
	.word	-24
	.word	4
	.word	_Label_1579
	.word	-28
	.word	4
	.word	_Label_1580
	.word	-32
	.word	4
	.word	0
_Label_1573:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1574:
	.ascii	"Pself\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1579:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1580:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_4000:
	push	r0
	sub	r1,1,r1
	bne	_Label_4000
	mov	299,r13		! source line 299
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	302,r13		! source line 302
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_1582		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1582
!	jmp	_Label_1581
_Label_1581:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1583 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1583  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1582:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_1585		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1585
!	jmp	_Label_1584
_Label_1584:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0SE",r10
!   _temp_1586 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_1585:
! ASSIGNMENT STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	311,r13		! source line 311
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_1587
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1588
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1589
	.word	-12
	.word	4
	.word	_Label_1590
	.word	-16
	.word	4
	.word	_Label_1591
	.word	-20
	.word	4
	.word	0
_Label_1587:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1588:
	.ascii	"Pself\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1591:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1592
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1592:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1593
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1593:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_4001:
	push	r0
	sub	r1,1,r1
	bne	_Label_4001
	mov	334,r13		! source line 334
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_1595
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1596
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1597
	.word	-12
	.word	4
	.word	0
_Label_1595:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1596:
	.ascii	"Pself\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_4002:
	push	r0
	sub	r1,1,r1
	bne	_Label_4002
	mov	340,r13		! source line 340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1599		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1599
!	jmp	_Label_1598
_Label_1598:
! THEN...
	mov	344,r13		! source line 344
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1600 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1600  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	344,r13		! source line 344
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1599:
! ASSIGNMENT STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	346,r13		! source line 346
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	347,r13		! source line 347
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_1604		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1604
!   _temp_1603 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1605
_Label_1604:
!   _temp_1603 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1605:
!   if _temp_1603 then goto _Label_1602 else goto _Label_1601
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1601
	jmp	_Label_1602
_Label_1601:
! THEN...
	mov	348,r13		! source line 348
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1606
_Label_1602:
! ELSE...
	mov	350,r13		! source line 350
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0SE",r10
!   _temp_1607 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_1606:
! ASSIGNMENT STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	353,r13		! source line 353
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_1608
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1609
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1610
	.word	-16
	.word	4
	.word	_Label_1611
	.word	-9
	.word	1
	.word	_Label_1612
	.word	-20
	.word	4
	.word	_Label_1613
	.word	-24
	.word	4
	.word	0
_Label_1608:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1609:
	.ascii	"Pself\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1611:
	.byte	'C'
	.ascii	"_temp_1603\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1613:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_4003:
	push	r0
	sub	r1,1,r1
	bne	_Label_4003
	mov	358,r13		! source line 358
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1615		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1615
!	jmp	_Label_1614
_Label_1614:
! THEN...
	mov	363,r13		! source line 363
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1616 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1616  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	363,r13		! source line 363
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1615:
! ASSIGNMENT STATEMENT...
	mov	365,r13		! source line 365
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	365,r13		! source line 365
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0AS",r10
	mov	366,r13		! source line 366
	mov	"\0\0SE",r10
!   _temp_1617 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	367,r13		! source line 367
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1619		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1619
!	jmp	_Label_1618
_Label_1618:
! THEN...
	mov	368,r13		! source line 368
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1620 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1620 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0SE",r10
!   _temp_1621 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	370,r13		! source line 370
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_1622
_Label_1619:
! ELSE...
	mov	372,r13		! source line 372
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_1622:
! ASSIGNMENT STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	374,r13		! source line 374
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_1623
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1624
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1625
	.word	-12
	.word	4
	.word	_Label_1626
	.word	-16
	.word	4
	.word	_Label_1627
	.word	-20
	.word	4
	.word	_Label_1628
	.word	-24
	.word	4
	.word	_Label_1629
	.word	-28
	.word	4
	.word	_Label_1630
	.word	-32
	.word	4
	.word	0
_Label_1623:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1624:
	.ascii	"Pself\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1629:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1630:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_4004:
	push	r0
	sub	r1,1,r1
	bne	_Label_4004
	mov	379,r13		! source line 379
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	380,r13		! source line 380
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1633		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1633
!	jmp	_Label_1632
_Label_1632:
!   _temp_1631 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1634
_Label_1633:
!   _temp_1631 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1634:
!   ReturnResult: _temp_1631  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_1635
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1636
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1637
	.word	-9
	.word	1
	.word	0
_Label_1635:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1636:
	.ascii	"Pself\0"
	.align
_Label_1637:
	.byte	'C'
	.ascii	"_temp_1631\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1638
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1638:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1639
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1639:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_4005:
	push	r0
	sub	r1,1,r1
	bne	_Label_4005
	mov	420,r13		! source line 420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	421,r13		! source line 421
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	421,r13		! source line 421
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_1641
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1642
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1643
	.word	-12
	.word	4
	.word	0
_Label_1641:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1642:
	.ascii	"Pself\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_4006:
	push	r0
	sub	r1,1,r1
	bne	_Label_4006
	mov	426,r13		! source line 426
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0IF",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1646  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1646 then goto _Label_1645 else goto _Label_1644
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1644
	jmp	_Label_1645
_Label_1644:
! THEN...
	mov	430,r13		! source line 430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1647 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1647  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	430,r13		! source line 430
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1645:
! ASSIGNMENT STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_1648 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_1649
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1650
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1651
	.word	12
	.word	4
	.word	_Label_1652
	.word	-16
	.word	4
	.word	_Label_1653
	.word	-20
	.word	4
	.word	_Label_1654
	.word	-9
	.word	1
	.word	_Label_1655
	.word	-24
	.word	4
	.word	0
_Label_1649:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1650:
	.ascii	"Pself\0"
	.align
_Label_1651:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1654:
	.byte	'C'
	.ascii	"_temp_1646\0"
	.align
_Label_1655:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_4007:
	push	r0
	sub	r1,1,r1
	bne	_Label_4007
	mov	442,r13		! source line 442
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0IF",r10
	mov	446,r13		! source line 446
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1658  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1658 then goto _Label_1657 else goto _Label_1656
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1656
	jmp	_Label_1657
_Label_1656:
! THEN...
	mov	447,r13		! source line 447
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1659 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1659  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	447,r13		! source line 447
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1657:
! ASSIGNMENT STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	449,r13		! source line 449
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0AS",r10
	mov	450,r13		! source line 450
	mov	"\0\0SE",r10
!   _temp_1660 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_1662		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1662
!	jmp	_Label_1661
_Label_1661:
! THEN...
	mov	452,r13		! source line 452
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1663 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1663 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0SE",r10
!   _temp_1664 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1662:
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	455,r13		! source line 455
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_1665
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1666
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1667
	.word	12
	.word	4
	.word	_Label_1668
	.word	-16
	.word	4
	.word	_Label_1669
	.word	-20
	.word	4
	.word	_Label_1670
	.word	-24
	.word	4
	.word	_Label_1671
	.word	-28
	.word	4
	.word	_Label_1672
	.word	-9
	.word	1
	.word	_Label_1673
	.word	-32
	.word	4
	.word	_Label_1674
	.word	-36
	.word	4
	.word	0
_Label_1665:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1666:
	.ascii	"Pself\0"
	.align
_Label_1667:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1672:
	.byte	'C'
	.ascii	"_temp_1658\0"
	.align
_Label_1673:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1674:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_4008:
	push	r0
	sub	r1,1,r1
	bne	_Label_4008
	mov	460,r13		! source line 460
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0IF",r10
	mov	464,r13		! source line 464
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1677  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1677 then goto _Label_1676 else goto _Label_1675
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1675
	jmp	_Label_1676
_Label_1675:
! THEN...
	mov	465,r13		! source line 465
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1678 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	465,r13		! source line 465
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1676:
! ASSIGNMENT STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	467,r13		! source line 467
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0WH",r10
_Label_1679:
!	jmp	_Label_1680
_Label_1680:
	mov	468,r13		! source line 468
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0AS",r10
	mov	469,r13		! source line 469
	mov	"\0\0SE",r10
!   _temp_1682 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	470,r13		! source line 470
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1683
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1683
	jmp	_Label_1684
_Label_1683:
! THEN...
	mov	471,r13		! source line 471
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0BR",r10
	jmp	_Label_1681
! END IF...
_Label_1684:
! ASSIGNMENT STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1685 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1685 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0SE",r10
!   _temp_1686 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1679
_Label_1681:
! ASSIGNMENT STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	476,r13		! source line 476
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_1687
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1688
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1689
	.word	12
	.word	4
	.word	_Label_1690
	.word	-16
	.word	4
	.word	_Label_1691
	.word	-20
	.word	4
	.word	_Label_1692
	.word	-24
	.word	4
	.word	_Label_1693
	.word	-28
	.word	4
	.word	_Label_1694
	.word	-9
	.word	1
	.word	_Label_1695
	.word	-32
	.word	4
	.word	_Label_1696
	.word	-36
	.word	4
	.word	0
_Label_1687:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1688:
	.ascii	"Pself\0"
	.align
_Label_1689:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1694:
	.byte	'C'
	.ascii	"_temp_1677\0"
	.align
_Label_1695:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1696:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1697
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_1697:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1698
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1698:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_4009:
	push	r0
	sub	r1,1,r1
	bne	_Label_4009
	mov	487,r13		! source line 487
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0AS",r10
!   _temp_1699 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1699) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1699 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   _temp_1700 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1700 [0 ] into _temp_1701
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_1701 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   _temp_1702 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1702 [999 ] into _temp_1703
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_1703 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   _temp_1704 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1704 [999 ] into _temp_1705
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
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
	store	r2,[r14+-164]
!   stackTop = _temp_1705		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   _temp_1706 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1708 = &_temp_1707
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1708 = _temp_1708 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1710:
!   Data Move: *_temp_1708 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1708 = _temp_1708 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1709 = _temp_1709 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1709) then goto _Label_1710
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1710
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1711 = &_temp_1707
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4010
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4010:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1706 = *_temp_1711  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4011:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4011
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0AS",r10
!   _temp_1712 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1714 = &_temp_1713
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1714 = _temp_1714 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1716:
!   Data Move: *_temp_1714 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1714 = _temp_1714 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1715 = _temp_1715 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1715) then goto _Label_1716
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1716
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1717 = &_temp_1713
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4012
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4012:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1712 = *_temp_1717  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4013:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4013
! RETURN STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_1718
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1719
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1720
	.word	12
	.word	4
	.word	_Label_1721
	.word	-12
	.word	4
	.word	_Label_1722
	.word	-16
	.word	4
	.word	_Label_1723
	.word	-20
	.word	4
	.word	_Label_1724
	.word	-84
	.word	64
	.word	_Label_1725
	.word	-88
	.word	4
	.word	_Label_1726
	.word	-92
	.word	4
	.word	_Label_1727
	.word	-96
	.word	4
	.word	_Label_1728
	.word	-100
	.word	4
	.word	_Label_1729
	.word	-156
	.word	56
	.word	_Label_1730
	.word	-160
	.word	4
	.word	_Label_1731
	.word	-164
	.word	4
	.word	_Label_1732
	.word	-168
	.word	4
	.word	_Label_1733
	.word	-172
	.word	4
	.word	_Label_1734
	.word	-176
	.word	4
	.word	_Label_1735
	.word	-180
	.word	4
	.word	_Label_1736
	.word	-184
	.word	4
	.word	_Label_1737
	.word	-188
	.word	4
	.word	0
_Label_1718:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1719:
	.ascii	"Pself\0"
	.align
_Label_1720:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_4014:
	push	r0
	sub	r1,1,r1
	bne	_Label_4014
	mov	506,r13		! source line 506
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	517,r13		! source line 517
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1738 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1738  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1740 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1739  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_1741
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1742
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1743
	.word	12
	.word	4
	.word	_Label_1744
	.word	16
	.word	4
	.word	_Label_1745
	.word	-12
	.word	4
	.word	_Label_1746
	.word	-16
	.word	4
	.word	_Label_1747
	.word	-20
	.word	4
	.word	_Label_1748
	.word	-24
	.word	4
	.word	_Label_1749
	.word	-28
	.word	4
	.word	0
_Label_1741:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1742:
	.ascii	"Pself\0"
	.align
_Label_1743:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1744:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1748:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1749:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_4015:
	push	r0
	sub	r1,1,r1
	bne	_Label_4015
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1752 == _P_Kernel_currentThread then goto _Label_1751		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1751
!	jmp	_Label_1750
_Label_1750:
! THEN...
	mov	547,r13		! source line 547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1753 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1753  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	547,r13		! source line 547
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1751:
! ASSIGNMENT STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	549,r13		! source line 549
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
	mov	553,r13		! source line 553
	mov	"\0\0SE",r10
!   _temp_1754 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1756		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1756
!	jmp	_Label_1755
_Label_1755:
! THEN...
	mov	558,r13		! source line 558
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1758		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1758
!	jmp	_Label_1757
_Label_1757:
! THEN...
	mov	559,r13		! source line 559
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1759 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1759  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	559,r13		! source line 559
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1758:
! ASSIGNMENT STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1761 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1760  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	563,r13		! source line 563
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1756:
! ASSIGNMENT STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	565,r13		! source line 565
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_1762
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1763
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1764
	.word	-12
	.word	4
	.word	_Label_1765
	.word	-16
	.word	4
	.word	_Label_1766
	.word	-20
	.word	4
	.word	_Label_1767
	.word	-24
	.word	4
	.word	_Label_1768
	.word	-28
	.word	4
	.word	_Label_1769
	.word	-32
	.word	4
	.word	_Label_1770
	.word	-36
	.word	4
	.word	_Label_1771
	.word	-40
	.word	4
	.word	_Label_1772
	.word	-44
	.word	4
	.word	0
_Label_1762:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1763:
	.ascii	"Pself\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1770:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1771:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1772:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_4016:
	push	r0
	sub	r1,1,r1
	bne	_Label_4016
	mov	570,r13		! source line 570
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	582,r13		! source line 582
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1774		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1774
!	jmp	_Label_1773
_Label_1773:
! THEN...
	mov	583,r13		! source line 583
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1775 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1775  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	583,r13		! source line 583
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1774:
! IF STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1778 == _P_Kernel_currentThread then goto _Label_1777		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1777
!	jmp	_Label_1776
_Label_1776:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1779 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1779  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	587,r13		! source line 587
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1777:
! ASSIGNMENT STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0AS",r10
	mov	593,r13		! source line 593
	mov	"\0\0SE",r10
!   _temp_1780 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1781
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1781
	jmp	_Label_1782
_Label_1781:
! THEN...
	mov	595,r13		! source line 595
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1783 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1783  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	595,r13		! source line 595
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1782:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1784
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1785
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1786
	.word	-12
	.word	4
	.word	_Label_1787
	.word	-16
	.word	4
	.word	_Label_1788
	.word	-20
	.word	4
	.word	_Label_1789
	.word	-24
	.word	4
	.word	_Label_1790
	.word	-28
	.word	4
	.word	_Label_1791
	.word	-32
	.word	4
	.word	0
_Label_1784:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1785:
	.ascii	"Pself\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1791:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_4017:
	push	r0
	sub	r1,1,r1
	bne	_Label_4017
	mov	602,r13		! source line 602
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0IF",r10
!   _temp_1795 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1795 [0 ] into _temp_1796
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1794 = *_temp_1796  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1794 == 606348324 then goto _Label_1793		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1793
!	jmp	_Label_1792
_Label_1792:
! THEN...
	mov	609,r13		! source line 609
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1797 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1797  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	609,r13		! source line 609
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1798
_Label_1793:
! ELSE...
	mov	610,r13		! source line 610
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0IF",r10
!   _temp_1802 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1802 [999 ] into _temp_1803
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1801 = *_temp_1803  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1801 == 606348324 then goto _Label_1800		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1800
!	jmp	_Label_1799
_Label_1799:
! THEN...
	mov	611,r13		! source line 611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1804 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1804  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	611,r13		! source line 611
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1800:
! END IF...
_Label_1798:
! RETURN STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1805
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1806
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1807
	.word	-12
	.word	4
	.word	_Label_1808
	.word	-16
	.word	4
	.word	_Label_1809
	.word	-20
	.word	4
	.word	_Label_1810
	.word	-24
	.word	4
	.word	_Label_1811
	.word	-28
	.word	4
	.word	_Label_1812
	.word	-32
	.word	4
	.word	_Label_1813
	.word	-36
	.word	4
	.word	_Label_1814
	.word	-40
	.word	4
	.word	0
_Label_1805:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1806:
	.ascii	"Pself\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_4018:
	push	r0
	sub	r1,1,r1
	bne	_Label_4018
	mov	617,r13		! source line 617
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	623,r13		! source line 623
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1815 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1815  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1816 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1816  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1817  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1818 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1818  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1819 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1819  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	630,r13		! source line 630
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1824 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1825 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1824  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1820:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1825 then goto _Label_1823		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1823
_Label_1821:
	mov	630,r13		! source line 630
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1826 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1826  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1827 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1827  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1828 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1828  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1830 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1830 [i ] into _temp_1831
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
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
	store	r2,[r14+-140]
!   Data Move: _temp_1829 = *_temp_1831  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1829  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1832 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1832  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1834 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1834 [i ] into _temp_1835
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_1833 = *_temp_1835  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1833  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1836 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1836  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1822:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1820
! END FOR
_Label_1823:
! CALL STATEMENT...
!   _temp_1837 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-116]
!   _temp_1838 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1837  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1838  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1839 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-108]
!   _temp_1841 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1841 [0 ] into _temp_1842
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1840 = _temp_1842		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1839  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1840  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	641,r13		! source line 641
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1845
	cmp	r1,2
	be	_Label_1846
	cmp	r1,3
	be	_Label_1847
	cmp	r1,4
	be	_Label_1848
	cmp	r1,5
	be	_Label_1849
	jmp	_Label_1843
! CASE 1...
_Label_1845:
! CALL STATEMENT...
!   _temp_1850 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1850  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	644,r13		! source line 644
	mov	"\0\0BR",r10
	jmp	_Label_1844
! CASE 2...
_Label_1846:
! CALL STATEMENT...
!   _temp_1851 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1851  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0BR",r10
	jmp	_Label_1844
! CASE 3...
_Label_1847:
! CALL STATEMENT...
!   _temp_1852 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1852  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0BR",r10
	jmp	_Label_1844
! CASE 4...
_Label_1848:
! CALL STATEMENT...
!   _temp_1853 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1853  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0BR",r10
	jmp	_Label_1844
! CASE 5...
_Label_1849:
! CALL STATEMENT...
!   _temp_1854 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1854  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0BR",r10
	jmp	_Label_1844
! DEFAULT CASE...
_Label_1843:
! CALL STATEMENT...
!   _temp_1855 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1855  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	658,r13		! source line 658
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1844:
! CALL STATEMENT...
!   _temp_1856 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1856  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1857 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1857  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	664,r13		! source line 664
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1862 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1863 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1862  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1858:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1863 then goto _Label_1861		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1861
_Label_1859:
	mov	664,r13		! source line 664
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1864 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1864  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1865 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1865  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1866 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1866  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1868 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1868 [i ] into _temp_1869
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1867 = *_temp_1869  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1867  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1870 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1870  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1872 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1872 [i ] into _temp_1873
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1871 = *_temp_1873  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1871  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1874 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1874  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1860:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1858
! END FOR
_Label_1861:
! ASSIGNMENT STATEMENT...
	mov	673,r13		! source line 673
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	673,r13		! source line 673
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1875
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1876
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1877
	.word	-12
	.word	4
	.word	_Label_1878
	.word	-16
	.word	4
	.word	_Label_1879
	.word	-20
	.word	4
	.word	_Label_1880
	.word	-24
	.word	4
	.word	_Label_1881
	.word	-28
	.word	4
	.word	_Label_1882
	.word	-32
	.word	4
	.word	_Label_1883
	.word	-36
	.word	4
	.word	_Label_1884
	.word	-40
	.word	4
	.word	_Label_1885
	.word	-44
	.word	4
	.word	_Label_1886
	.word	-48
	.word	4
	.word	_Label_1887
	.word	-52
	.word	4
	.word	_Label_1888
	.word	-56
	.word	4
	.word	_Label_1889
	.word	-60
	.word	4
	.word	_Label_1890
	.word	-64
	.word	4
	.word	_Label_1891
	.word	-68
	.word	4
	.word	_Label_1892
	.word	-72
	.word	4
	.word	_Label_1893
	.word	-76
	.word	4
	.word	_Label_1894
	.word	-80
	.word	4
	.word	_Label_1895
	.word	-84
	.word	4
	.word	_Label_1896
	.word	-88
	.word	4
	.word	_Label_1897
	.word	-92
	.word	4
	.word	_Label_1898
	.word	-96
	.word	4
	.word	_Label_1899
	.word	-100
	.word	4
	.word	_Label_1900
	.word	-104
	.word	4
	.word	_Label_1901
	.word	-108
	.word	4
	.word	_Label_1902
	.word	-112
	.word	4
	.word	_Label_1903
	.word	-116
	.word	4
	.word	_Label_1904
	.word	-120
	.word	4
	.word	_Label_1905
	.word	-124
	.word	4
	.word	_Label_1906
	.word	-128
	.word	4
	.word	_Label_1907
	.word	-132
	.word	4
	.word	_Label_1908
	.word	-136
	.word	4
	.word	_Label_1909
	.word	-140
	.word	4
	.word	_Label_1910
	.word	-144
	.word	4
	.word	_Label_1911
	.word	-148
	.word	4
	.word	_Label_1912
	.word	-152
	.word	4
	.word	_Label_1913
	.word	-156
	.word	4
	.word	_Label_1914
	.word	-160
	.word	4
	.word	_Label_1915
	.word	-164
	.word	4
	.word	_Label_1916
	.word	-168
	.word	4
	.word	_Label_1917
	.word	-172
	.word	4
	.word	_Label_1918
	.word	-176
	.word	4
	.word	_Label_1919
	.word	-180
	.word	4
	.word	_Label_1920
	.word	-184
	.word	4
	.word	_Label_1921
	.word	-188
	.word	4
	.word	_Label_1922
	.word	-192
	.word	4
	.word	_Label_1923
	.word	-196
	.word	4
	.word	0
_Label_1875:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1876:
	.ascii	"Pself\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1922:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1923:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1924
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1924:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1925
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1925:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11478,r1
_Label_4019:
	push	r0
	sub	r1,1,r1
	bne	_Label_4019
	mov	728,r13		! source line 728
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1926 = _StringConst_81
	set	_StringConst_81,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1926  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0AS",r10
!   _temp_1927 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1929 = &_temp_1928
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1929 = _temp_1929 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1931 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_4020:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4020
!   _temp_1931 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1933:
!   Data Move: *_temp_1929 = _temp_1931  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_4021:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4021
!   _temp_1929 = _temp_1929 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1930 = _temp_1930 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1930) then goto _Label_1933
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1933
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1934 = &_temp_1928
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4022
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4022:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1927 = *_temp_1934  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4023:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4023
! ASSIGNMENT STATEMENT...
	mov	742,r13		! source line 742
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0SE",r10
!   _temp_1937 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-68]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0SE",r10
!   _temp_1939 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1944 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1945 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1944  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1940:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1945 then goto _Label_1943		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1943
_Label_1941:
	mov	747,r13		! source line 747
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0SE",r10
!   _temp_1946 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-48]
!   _temp_1947 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1947 [i ] into _temp_1948
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1946  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0AS",r10
!   _temp_1949 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1949 [i ] into _temp_1950
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1951 = _temp_1950 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1951 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_1953 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1953 [i ] into _temp_1954
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1952 = _temp_1954		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1955 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1952  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1942:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1940
! END FOR
_Label_1943:
! RETURN STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0RE",r10
	set	45916,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1956
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1957
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1958
	.word	-12
	.word	4
	.word	_Label_1959
	.word	-16
	.word	4
	.word	_Label_1960
	.word	-20
	.word	4
	.word	_Label_1961
	.word	-24
	.word	4
	.word	_Label_1962
	.word	-28
	.word	4
	.word	_Label_1963
	.word	-32
	.word	4
	.word	_Label_1964
	.word	-36
	.word	4
	.word	_Label_1965
	.word	-40
	.word	4
	.word	_Label_1966
	.word	-44
	.word	4
	.word	_Label_1967
	.word	-48
	.word	4
	.word	_Label_1968
	.word	-52
	.word	4
	.word	_Label_1969
	.word	-56
	.word	4
	.word	_Label_1970
	.word	-60
	.word	4
	.word	_Label_1971
	.word	-64
	.word	4
	.word	_Label_1972
	.word	-68
	.word	4
	.word	_Label_1973
	.word	-72
	.word	4
	.word	_Label_1974
	.word	-76
	.word	4
	.word	_Label_1975
	.word	-80
	.word	4
	.word	_Label_1976
	.word	-84
	.word	4
	.word	_Label_1977
	.word	-4248
	.word	4164
	.word	_Label_1978
	.word	-4252
	.word	4
	.word	_Label_1979
	.word	-4256
	.word	4
	.word	_Label_1980
	.word	-45900
	.word	41644
	.word	_Label_1981
	.word	-45904
	.word	4
	.word	_Label_1982
	.word	-45908
	.word	4
	.word	_Label_1983
	.word	-45912
	.word	4
	.word	0
_Label_1956:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1957:
	.ascii	"Pself\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1983:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_4024:
	push	r0
	sub	r1,1,r1
	bne	_Label_4024
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	764,r13		! source line 764
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1984 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1984  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1989 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1990 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1989  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1985:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1990 then goto _Label_1988		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1988
_Label_1986:
	mov	766,r13		! source line 766
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1991 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1991  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1992 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1992  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1994 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1994 [i ] into _temp_1995
!     make sure index expr is >= 0
	load	[r14+-56],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1993 = _temp_1995		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1993  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CA",r10
	call	_function_190_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1987:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1985
! END FOR
_Label_1988:
! CALL STATEMENT...
!   _temp_1996 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1996  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0SE",r10
!   _temp_1997 = _function_189_PrintObjectAddr
	set	_function_189_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1998 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1997  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	774,r13		! source line 774
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1999
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2000
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2001
	.word	-12
	.word	4
	.word	_Label_2002
	.word	-16
	.word	4
	.word	_Label_2003
	.word	-20
	.word	4
	.word	_Label_2004
	.word	-24
	.word	4
	.word	_Label_2005
	.word	-28
	.word	4
	.word	_Label_2006
	.word	-32
	.word	4
	.word	_Label_2007
	.word	-36
	.word	4
	.word	_Label_2008
	.word	-40
	.word	4
	.word	_Label_2009
	.word	-44
	.word	4
	.word	_Label_2010
	.word	-48
	.word	4
	.word	_Label_2011
	.word	-52
	.word	4
	.word	_Label_2012
	.word	-56
	.word	4
	.word	_Label_2013
	.word	-60
	.word	4
	.word	0
_Label_1999:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2000:
	.ascii	"Pself\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2012:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2013:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_4025:
	push	r0
	sub	r1,1,r1
	bne	_Label_4025
	mov	780,r13		! source line 780
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_2014 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0WH",r10
_Label_2015:
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_2018 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2016 else goto _Label_2017
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2017
	jmp	_Label_2016
_Label_2016:
	mov	788,r13		! source line 788
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_2019 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2020 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2019  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2015
_Label_2017:
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_2021 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=NewThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0AS",r10
!   if intIsZero (NewThread) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2022 = NewThread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2022 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_2023 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0RE",r10
!   ReturnResult: NewThread  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_2024
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2025
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2026
	.word	-12
	.word	4
	.word	_Label_2027
	.word	-16
	.word	4
	.word	_Label_2028
	.word	-20
	.word	4
	.word	_Label_2029
	.word	-24
	.word	4
	.word	_Label_2030
	.word	-28
	.word	4
	.word	_Label_2031
	.word	-32
	.word	4
	.word	_Label_2032
	.word	-36
	.word	4
	.word	_Label_2033
	.word	-40
	.word	4
	.word	0
_Label_2024:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2025:
	.ascii	"Pself\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2033:
	.byte	'P'
	.ascii	"NewThread\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_4026:
	push	r0
	sub	r1,1,r1
	bne	_Label_4026
	mov	799,r13		! source line 799
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0SE",r10
!   _temp_2034 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2035 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2035 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0SE",r10
!   _temp_2036 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0SE",r10
!   _temp_2037 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2038 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2037  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0SE",r10
!   _temp_2039 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_2040
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2041
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2042
	.word	12
	.word	4
	.word	_Label_2043
	.word	-12
	.word	4
	.word	_Label_2044
	.word	-16
	.word	4
	.word	_Label_2045
	.word	-20
	.word	4
	.word	_Label_2046
	.word	-24
	.word	4
	.word	_Label_2047
	.word	-28
	.word	4
	.word	_Label_2048
	.word	-32
	.word	4
	.word	0
_Label_2040:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2041:
	.ascii	"Pself\0"
	.align
_Label_2042:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2049
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2049:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2050
	.word	_sourceFileName
	.word	213		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2050:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	18,r1
_Label_4027:
	push	r0
	sub	r1,1,r1
	bne	_Label_4027
	mov	821,r13		! source line 821
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_4028:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4028
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0SE",r10
!   _temp_2052 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0AS",r10
!   _temp_2053 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2055 = &_temp_2054
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2055 = _temp_2055 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2057:
!   Data Move: *_temp_2055 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2055 = _temp_2055 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2056 = _temp_2056 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2056) then goto _Label_2057
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2057
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2058 = &_temp_2054
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4029
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4029:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2053 = *_temp_2058  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4030:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4030
! RETURN STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2059
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2060
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2061
	.word	-12
	.word	4
	.word	_Label_2062
	.word	-16
	.word	4
	.word	_Label_2063
	.word	-20
	.word	4
	.word	_Label_2064
	.word	-64
	.word	44
	.word	_Label_2065
	.word	-68
	.word	4
	.word	_Label_2066
	.word	-72
	.word	4
	.word	_Label_2067
	.word	-76
	.word	4
	.word	0
_Label_2059:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2060:
	.ascii	"Pself\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_4031:
	push	r0
	sub	r1,1,r1
	bne	_Label_4031
	mov	835,r13		! source line 835
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2068) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0SE",r10
!   _temp_2069 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2070 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2070  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CA",r10
	call	_function_190_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	854,r13		! source line 854
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2071
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2072
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2073
	.word	-12
	.word	4
	.word	_Label_2074
	.word	-16
	.word	4
	.word	_Label_2075
	.word	-20
	.word	4
	.word	0
_Label_2071:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2072:
	.ascii	"Pself\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_4032:
	push	r0
	sub	r1,1,r1
	bne	_Label_4032
	mov	859,r13		! source line 859
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2076 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2076  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2077  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2078 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2078  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2079 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2079  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2081		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2081
!	jmp	_Label_2080
_Label_2080:
! THEN...
	mov	869,r13		! source line 869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2082 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2082  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2083
_Label_2081:
! ELSE...
	mov	870,r13		! source line 870
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	870,r13		! source line 870
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2085		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2085
!	jmp	_Label_2084
_Label_2084:
! THEN...
	mov	871,r13		! source line 871
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2086 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2086  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2087
_Label_2085:
! ELSE...
	mov	872,r13		! source line 872
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2089		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2089
!	jmp	_Label_2088
_Label_2088:
! THEN...
	mov	873,r13		! source line 873
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2090 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2090  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	873,r13		! source line 873
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2091
_Label_2089:
! ELSE...
	mov	875,r13		! source line 875
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2092 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2092  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	875,r13		! source line 875
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2091:
! END IF...
_Label_2087:
! END IF...
_Label_2083:
! CALL STATEMENT...
!   _temp_2093 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2093  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	877,r13		! source line 877
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	878,r13		! source line 878
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2094 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2094  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	879,r13		! source line 879
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_2095
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2096
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2097
	.word	-12
	.word	4
	.word	_Label_2098
	.word	-16
	.word	4
	.word	_Label_2099
	.word	-20
	.word	4
	.word	_Label_2100
	.word	-24
	.word	4
	.word	_Label_2101
	.word	-28
	.word	4
	.word	_Label_2102
	.word	-32
	.word	4
	.word	_Label_2103
	.word	-36
	.word	4
	.word	_Label_2104
	.word	-40
	.word	4
	.word	_Label_2105
	.word	-44
	.word	4
	.word	_Label_2106
	.word	-48
	.word	4
	.word	0
_Label_2095:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2096:
	.ascii	"Pself\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2107
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	jmp	_Method_P_Kernel_ProcessManager_6	! 24:	TurnIntoZombie
	jmp	_Method_P_Kernel_ProcessManager_7	! 28:	WaitForZombie
	.word	0
! 
! Class descriptor:
! 
_Label_2107:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2108
	.word	_sourceFileName
	.word	233		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2108:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	489,r1
_Label_4033:
	push	r0
	sub	r1,1,r1
	bne	_Label_4033
	mov	892,r13		! source line 892
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1688,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1688]
! SEND STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_2110 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-1948]
!   Send message Init
	load	[r14+-1948],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1708,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1708]
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_2112 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-1940]
!   Send message Init
	load	[r14+-1940],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1736,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1736]
! SEND STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_2114 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-1932]
!   Send message Init
	load	[r14+-1932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1752]
! ASSIGNMENT STATEMENT...
	mov	903,r13		! source line 903
	mov	"\0\0AS",r10
!   _temp_2115 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1928]
!   NEW ARRAY Constructor...
!   _temp_2117 = &_temp_2116
	add	r14,-1924,r1
	store	r1,[r14+-240]
!   _temp_2117 = _temp_2117 + 4
	load	[r14+-240],r1
	add	r1,4,r1
	store	r1,[r14+-240]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2119 = zeros  (sizeInBytes=168)
	add	r14,-232,r4
	mov	42,r3
_Label_4034:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4034
!   _temp_2119 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-232]
	mov	10,r1
	store	r1,[r14+-236]
_Label_2121:
!   Data Move: *_temp_2117 = _temp_2119  (sizeInBytes=168)
	add	r14,-232,r5
	load	[r14+-240],r4
	mov	42,r3
_Label_4035:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4035
!   _temp_2117 = _temp_2117 + 168
	load	[r14+-240],r1
	add	r1,168,r1
	store	r1,[r14+-240]
!   _temp_2118 = _temp_2118 + -1
	load	[r14+-236],r1
	add	r1,-1,r1
	store	r1,[r14+-236]
!   if intNotZero (_temp_2118) then goto _Label_2121
	load	[r14+-236],r1
	cmp	r1,r0
	bne	_Label_2121
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1924]
!   _temp_2122 = &_temp_2116
	add	r14,-1924,r1
	store	r1,[r14+-60]
!   make sure array has size 10
	load	[r14+-1928],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4036
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4036:
!   make sure array has size 10
	load	[r14+-60],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2115 = *_temp_2122  (sizeInBytes=1684)
	load	[r14+-60],r5
	load	[r14+-1928],r4
	mov	421,r3
_Label_4037:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4037
! ASSIGNMENT STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1724,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1724]
! FOR STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2128 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2129 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2128  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1956]
_Label_2124:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2129 then goto _Label_2127		
	load	[r14+-1956],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2127
_Label_2125:
	mov	906,r13		! source line 906
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0SE",r10
!   _temp_2130 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2130 [i ] into _temp_2131
!     make sure index expr is >= 0
	load	[r14+-1956],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   _temp_2132 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_2132 [i ] into _temp_2133
!     make sure index expr is >= 0
	load	[r14+-1956],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2134 = _temp_2133 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2134 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0SE",r10
!   _temp_2136 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2136 [i ] into _temp_2137
!     make sure index expr is >= 0
	load	[r14+-1956],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2135 = _temp_2137		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2138 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2135  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2126:
!   i = i + 1
	load	[r14+-1956],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1956]
	jmp	_Label_2124
! END FOR
_Label_2127:
! RETURN STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0RE",r10
	add	r15,1960,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_2139
	.word	4		! total size of parameters
	.word	1956		! frame size = 1956
	.word	_Label_2140
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2141
	.word	-12
	.word	4
	.word	_Label_2142
	.word	-16
	.word	4
	.word	_Label_2143
	.word	-20
	.word	4
	.word	_Label_2144
	.word	-24
	.word	4
	.word	_Label_2145
	.word	-28
	.word	4
	.word	_Label_2146
	.word	-32
	.word	4
	.word	_Label_2147
	.word	-36
	.word	4
	.word	_Label_2148
	.word	-40
	.word	4
	.word	_Label_2149
	.word	-44
	.word	4
	.word	_Label_2150
	.word	-48
	.word	4
	.word	_Label_2151
	.word	-52
	.word	4
	.word	_Label_2152
	.word	-56
	.word	4
	.word	_Label_2153
	.word	-60
	.word	4
	.word	_Label_2154
	.word	-64
	.word	4
	.word	_Label_2155
	.word	-232
	.word	168
	.word	_Label_2156
	.word	-236
	.word	4
	.word	_Label_2157
	.word	-240
	.word	4
	.word	_Label_2158
	.word	-1924
	.word	1684
	.word	_Label_2159
	.word	-1928
	.word	4
	.word	_Label_2160
	.word	-1932
	.word	4
	.word	_Label_2161
	.word	-1936
	.word	4
	.word	_Label_2162
	.word	-1940
	.word	4
	.word	_Label_2163
	.word	-1944
	.word	4
	.word	_Label_2164
	.word	-1948
	.word	4
	.word	_Label_2165
	.word	-1952
	.word	4
	.word	_Label_2166
	.word	-1956
	.word	4
	.word	0
_Label_2139:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2140:
	.ascii	"Pself\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2166:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_4038:
	push	r0
	sub	r1,1,r1
	bne	_Label_4038
	mov	916,r13		! source line 916
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_2167 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2167  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2172 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2173 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2172  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2168:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2173 then goto _Label_2171		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2171
_Label_2169:
	mov	925,r13		! source line 925
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2174 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2174  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2175 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2175  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0SE",r10
!   _temp_2176 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2176 [i ] into _temp_2177
!     make sure index expr is >= 0
	load	[r14+-52],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2170:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2168
! END FOR
_Label_2171:
! CALL STATEMENT...
!   _temp_2178 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2178  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_2179 = _function_189_PrintObjectAddr
	set	_function_189_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2180 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2179  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_2181
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2182
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2183
	.word	-12
	.word	4
	.word	_Label_2184
	.word	-16
	.word	4
	.word	_Label_2185
	.word	-20
	.word	4
	.word	_Label_2186
	.word	-24
	.word	4
	.word	_Label_2187
	.word	-28
	.word	4
	.word	_Label_2188
	.word	-32
	.word	4
	.word	_Label_2189
	.word	-36
	.word	4
	.word	_Label_2190
	.word	-40
	.word	4
	.word	_Label_2191
	.word	-44
	.word	4
	.word	_Label_2192
	.word	-48
	.word	4
	.word	_Label_2193
	.word	-52
	.word	4
	.word	_Label_2194
	.word	-56
	.word	4
	.word	0
_Label_2181:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2182:
	.ascii	"Pself\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2193:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2194:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_4039:
	push	r0
	sub	r1,1,r1
	bne	_Label_4039
	mov	939,r13		! source line 939
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_2195 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2195  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	947,r13		! source line 947
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2200 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2201 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2200  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2196:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2201 then goto _Label_2199		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2199
_Label_2197:
	mov	948,r13		! source line 948
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2202 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2202  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	950,r13		! source line 950
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_2203 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2203 [i ] into _temp_2204
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2198:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2196
! END FOR
_Label_2199:
! CALL STATEMENT...
!   _temp_2205 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2205  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_2206 = _function_189_PrintObjectAddr
	set	_function_189_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2207 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2206  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	955,r13		! source line 955
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	956,r13		! source line 956
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_2208
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2209
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2210
	.word	-12
	.word	4
	.word	_Label_2211
	.word	-16
	.word	4
	.word	_Label_2212
	.word	-20
	.word	4
	.word	_Label_2213
	.word	-24
	.word	4
	.word	_Label_2214
	.word	-28
	.word	4
	.word	_Label_2215
	.word	-32
	.word	4
	.word	_Label_2216
	.word	-36
	.word	4
	.word	_Label_2217
	.word	-40
	.word	4
	.word	_Label_2218
	.word	-44
	.word	4
	.word	_Label_2219
	.word	-48
	.word	4
	.word	_Label_2220
	.word	-52
	.word	4
	.word	0
_Label_2208:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2209:
	.ascii	"Pself\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2219:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2220:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_4040:
	push	r0
	sub	r1,1,r1
	bne	_Label_4040
	mov	961,r13		! source line 961
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_2221 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	968,r13		! source line 968
	mov	"\0\0WH",r10
_Label_2222:
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_2225 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2223 else goto _Label_2224
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2224
	jmp	_Label_2223
_Label_2223:
	mov	968,r13		! source line 968
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0SE",r10
!   _temp_2226 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2227 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2226  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2222
_Label_2224:
! ASSIGNMENT STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0AS",r10
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_2228 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=ptrToPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2229 = ptrToPCB + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2229 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1752],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1752]
! ASSIGNMENT STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2230 = ptrToPCB + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2230 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0SE",r10
!   _temp_2231 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0RE",r10
!   ReturnResult: ptrToPCB  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_2232
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2233
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2234
	.word	-12
	.word	4
	.word	_Label_2235
	.word	-16
	.word	4
	.word	_Label_2236
	.word	-20
	.word	4
	.word	_Label_2237
	.word	-24
	.word	4
	.word	_Label_2238
	.word	-28
	.word	4
	.word	_Label_2239
	.word	-32
	.word	4
	.word	_Label_2240
	.word	-36
	.word	4
	.word	_Label_2241
	.word	-40
	.word	4
	.word	_Label_2242
	.word	-44
	.word	4
	.word	0
_Label_2232:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2233:
	.ascii	"Pself\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2242:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	14,r1
_Label_4041:
	push	r0
	sub	r1,1,r1
	bne	_Label_4041
	mov	981,r13		! source line 981
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2243 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2243  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	984,r13		! source line 984
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! SEND STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_2244 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-52]
!   _temp_2245 = _temp_2244 + 1688
	load	[r14+-52],r1
	add	r1,1688,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2246 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_2246 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0SE",r10
!   _temp_2247 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0SE",r10
!   _temp_2249 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2250 = _temp_2249 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2248 = _temp_2250		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2251 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2252 = _temp_2251 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2248  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0SE",r10
!   _temp_2253 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2254 = _temp_2253 + 1688
	load	[r14+-16],r1
	add	r1,1688,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_2255
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2256
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2257
	.word	12
	.word	4
	.word	_Label_2258
	.word	-12
	.word	4
	.word	_Label_2259
	.word	-16
	.word	4
	.word	_Label_2260
	.word	-20
	.word	4
	.word	_Label_2261
	.word	-24
	.word	4
	.word	_Label_2262
	.word	-28
	.word	4
	.word	_Label_2263
	.word	-32
	.word	4
	.word	_Label_2264
	.word	-36
	.word	4
	.word	_Label_2265
	.word	-40
	.word	4
	.word	_Label_2266
	.word	-44
	.word	4
	.word	_Label_2267
	.word	-48
	.word	4
	.word	_Label_2268
	.word	-52
	.word	4
	.word	_Label_2269
	.word	-56
	.word	4
	.word	0
_Label_2255:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2256:
	.ascii	"Pself\0"
	.align
_Label_2257:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
! 
! ===============  METHOD TurnIntoZombie  ===============
! 
_Method_P_Kernel_ProcessManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_6,r1
	push	r1
	mov	70,r1
_Label_4042:
	push	r0
	sub	r1,1,r1
	bne	_Label_4042
	mov	992,r13		! source line 992
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_2270 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-276]
!   _temp_2271 = _temp_2270 + 1688
	load	[r14+-276],r1
	add	r1,1688,r1
	store	r1,[r14+-272]
!   Send message Lock
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2276 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2277 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-264]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2276  (sizeInBytes=4)
	load	[r14+-268],r1
	store	r1,[r14+-280]
_Label_2272:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2277 then goto _Label_2275		
	load	[r14+-280],r1
	load	[r14+-264],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2275
_Label_2273:
	mov	1003,r13		! source line 1003
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0IF",r10
!   _temp_2282 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-256]
!   _temp_2283 = _temp_2282 + 4
	load	[r14+-256],r1
	add	r1,4,r1
	store	r1,[r14+-252]
!   Move address of _temp_2283 [i ] into _temp_2284
!     make sure index expr is >= 0
	load	[r14+-280],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-252],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-248]
!   _temp_2285 = _temp_2284 + 16
	load	[r14+-248],r1
	add	r1,16,r1
	store	r1,[r14+-244]
!   Data Move: _temp_2281 = *_temp_2285  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2287 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-236]
!   Data Move: _temp_2286 = *_temp_2287  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if _temp_2281 != _temp_2286 then goto _Label_2279		(int)
	load	[r14+-260],r1
	load	[r14+-240],r2
	cmp	r1,r2
	bne	_Label_2279
!	jmp	_Label_2280
_Label_2280:
!   _temp_2289 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-228]
!   _temp_2290 = _temp_2289 + 4
	load	[r14+-228],r1
	add	r1,4,r1
	store	r1,[r14+-224]
!   Move address of _temp_2290 [i ] into _temp_2291
!     make sure index expr is >= 0
	load	[r14+-280],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-224],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-220]
!   _temp_2292 = _temp_2291 + 20
	load	[r14+-220],r1
	add	r1,20,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2288 = *_temp_2292  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if _temp_2288 != 2 then goto _Label_2279		(int)
	load	[r14+-232],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2279
!	jmp	_Label_2278
_Label_2278:
! THEN...
	mov	1005,r13		! source line 1005
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0AS",r10
!   _temp_2293 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-212]
!   _temp_2294 = _temp_2293 + 4
	load	[r14+-212],r1
	add	r1,4,r1
	store	r1,[r14+-208]
!   Move address of _temp_2294 [i ] into _temp_2295
!     make sure index expr is >= 0
	load	[r14+-280],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-204]
!   _temp_2296 = _temp_2295 + 20
	load	[r14+-204],r1
	add	r1,20,r1
	store	r1,[r14+-200]
!   Data Move: *_temp_2296 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-200],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0SE",r10
!   _temp_2298 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-192]
!   _temp_2299 = _temp_2298 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-188]
!   Move address of _temp_2299 [i ] into _temp_2300
!     make sure index expr is >= 0
	load	[r14+-280],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-184]
!   _temp_2297 = _temp_2300		(4 bytes)
	load	[r14+-184],r1
	store	r1,[r14+-196]
!   _temp_2301 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-180]
!   _temp_2302 = _temp_2301 + 1724
	load	[r14+-180],r1
	add	r1,1724,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=12  value=_temp_2297  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_2304 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-168]
!   _temp_2305 = _temp_2304 + 1688
	load	[r14+-168],r1
	add	r1,1688,r1
	store	r1,[r14+-164]
!   _temp_2303 = _temp_2305		(4 bytes)
	load	[r14+-164],r1
	store	r1,[r14+-172]
!   _temp_2306 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-160]
!   _temp_2307 = _temp_2306 + 1708
	load	[r14+-160],r1
	add	r1,1708,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_2303  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2279:
!   Increment the FOR-LOOP index variable and jump back
_Label_2274:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_2272
! END FOR
_Label_2275:
! FOR STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2312 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-152]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2313 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-148]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2312  (sizeInBytes=4)
	load	[r14+-152],r1
	store	r1,[r14+-280]
_Label_2308:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2313 then goto _Label_2311		
	load	[r14+-280],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2311
_Label_2309:
	mov	1011,r13		! source line 1011
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0IF",r10
!   _temp_2319 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_2320 = _temp_2319 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2320 [i ] into _temp_2321
!     make sure index expr is >= 0
	load	[r14+-280],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_2322 = _temp_2321 + 12
	load	[r14+-132],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Data Move: _temp_2318 = *_temp_2322  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2324 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-120]
!   Data Move: _temp_2323 = *_temp_2324  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if _temp_2318 != _temp_2323 then goto _Label_2315		(int)
	load	[r14+-144],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bne	_Label_2315
!	jmp	_Label_2317
_Label_2317:
!   _temp_2326 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-112]
!   _temp_2327 = _temp_2326 + 4
	load	[r14+-112],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Move address of _temp_2327 [i ] into _temp_2328
!     make sure index expr is >= 0
	load	[r14+-280],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-108],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-104]
!   _temp_2329 = _temp_2328 + 20
	load	[r14+-104],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2325 = *_temp_2329  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if _temp_2325 != 1 then goto _Label_2315		(int)
	load	[r14+-116],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2315
!	jmp	_Label_2316
_Label_2316:
!   _temp_2331 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-92]
!   _temp_2332 = _temp_2331 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_2332 [i ] into _temp_2333
!     make sure index expr is >= 0
	load	[r14+-280],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   _temp_2330 = _temp_2333		(4 bytes)
	load	[r14+-84],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2330) then goto _Label_2315
	load	[r14+-96],r1
	cmp	r1,r0
	be	_Label_2315
!	jmp	_Label_2314
_Label_2314:
! THEN...
	mov	1013,r13		! source line 1013
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2334 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_2334 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_2336 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-72]
!   _temp_2337 = _temp_2336 + 1688
	load	[r14+-72],r1
	add	r1,1688,r1
	store	r1,[r14+-68]
!   _temp_2335 = _temp_2337		(4 bytes)
	load	[r14+-68],r1
	store	r1,[r14+-76]
!   _temp_2338 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2339 = _temp_2338 + 1736
	load	[r14+-64],r1
	add	r1,1736,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_2335  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1015,r13		! source line 1015
	mov	"\0\0SE",r10
!   _temp_2340 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2341 = _temp_2340 + 1688
	load	[r14+-56],r1
	add	r1,1688,r1
	store	r1,[r14+-52]
!   Send message Unlock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0RE",r10
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2315:
!   Increment the FOR-LOOP index variable and jump back
_Label_2310:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_2308
! END FOR
_Label_2311:
! ASSIGNMENT STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2342 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2342 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0SE",r10
!   _temp_2343 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2344 = _temp_2343 + 1724
	load	[r14+-44],r1
	add	r1,1724,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
!   _temp_2346 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2347 = _temp_2346 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2345 = _temp_2347		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2348 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2349 = _temp_2348 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2345  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0SE",r10
!   _temp_2350 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2351 = _temp_2350 + 1688
	load	[r14+-16],r1
	add	r1,1688,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1025,r13		! source line 1025
	mov	"\0\0RE",r10
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_6:
	.word	_sourceFileName
	.word	_Label_2352
	.word	8		! total size of parameters
	.word	280		! frame size = 280
	.word	_Label_2353
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2354
	.word	12
	.word	4
	.word	_Label_2355
	.word	-12
	.word	4
	.word	_Label_2356
	.word	-16
	.word	4
	.word	_Label_2357
	.word	-20
	.word	4
	.word	_Label_2358
	.word	-24
	.word	4
	.word	_Label_2359
	.word	-28
	.word	4
	.word	_Label_2360
	.word	-32
	.word	4
	.word	_Label_2361
	.word	-36
	.word	4
	.word	_Label_2362
	.word	-40
	.word	4
	.word	_Label_2363
	.word	-44
	.word	4
	.word	_Label_2364
	.word	-48
	.word	4
	.word	_Label_2365
	.word	-52
	.word	4
	.word	_Label_2366
	.word	-56
	.word	4
	.word	_Label_2367
	.word	-60
	.word	4
	.word	_Label_2368
	.word	-64
	.word	4
	.word	_Label_2369
	.word	-68
	.word	4
	.word	_Label_2370
	.word	-72
	.word	4
	.word	_Label_2371
	.word	-76
	.word	4
	.word	_Label_2372
	.word	-80
	.word	4
	.word	_Label_2373
	.word	-84
	.word	4
	.word	_Label_2374
	.word	-88
	.word	4
	.word	_Label_2375
	.word	-92
	.word	4
	.word	_Label_2376
	.word	-96
	.word	4
	.word	_Label_2377
	.word	-100
	.word	4
	.word	_Label_2378
	.word	-104
	.word	4
	.word	_Label_2379
	.word	-108
	.word	4
	.word	_Label_2380
	.word	-112
	.word	4
	.word	_Label_2381
	.word	-116
	.word	4
	.word	_Label_2382
	.word	-120
	.word	4
	.word	_Label_2383
	.word	-124
	.word	4
	.word	_Label_2384
	.word	-128
	.word	4
	.word	_Label_2385
	.word	-132
	.word	4
	.word	_Label_2386
	.word	-136
	.word	4
	.word	_Label_2387
	.word	-140
	.word	4
	.word	_Label_2388
	.word	-144
	.word	4
	.word	_Label_2389
	.word	-148
	.word	4
	.word	_Label_2390
	.word	-152
	.word	4
	.word	_Label_2391
	.word	-156
	.word	4
	.word	_Label_2392
	.word	-160
	.word	4
	.word	_Label_2393
	.word	-164
	.word	4
	.word	_Label_2394
	.word	-168
	.word	4
	.word	_Label_2395
	.word	-172
	.word	4
	.word	_Label_2396
	.word	-176
	.word	4
	.word	_Label_2397
	.word	-180
	.word	4
	.word	_Label_2398
	.word	-184
	.word	4
	.word	_Label_2399
	.word	-188
	.word	4
	.word	_Label_2400
	.word	-192
	.word	4
	.word	_Label_2401
	.word	-196
	.word	4
	.word	_Label_2402
	.word	-200
	.word	4
	.word	_Label_2403
	.word	-204
	.word	4
	.word	_Label_2404
	.word	-208
	.word	4
	.word	_Label_2405
	.word	-212
	.word	4
	.word	_Label_2406
	.word	-216
	.word	4
	.word	_Label_2407
	.word	-220
	.word	4
	.word	_Label_2408
	.word	-224
	.word	4
	.word	_Label_2409
	.word	-228
	.word	4
	.word	_Label_2410
	.word	-232
	.word	4
	.word	_Label_2411
	.word	-236
	.word	4
	.word	_Label_2412
	.word	-240
	.word	4
	.word	_Label_2413
	.word	-244
	.word	4
	.word	_Label_2414
	.word	-248
	.word	4
	.word	_Label_2415
	.word	-252
	.word	4
	.word	_Label_2416
	.word	-256
	.word	4
	.word	_Label_2417
	.word	-260
	.word	4
	.word	_Label_2418
	.word	-264
	.word	4
	.word	_Label_2419
	.word	-268
	.word	4
	.word	_Label_2420
	.word	-272
	.word	4
	.word	_Label_2421
	.word	-276
	.word	4
	.word	_Label_2422
	.word	-280
	.word	4
	.word	0
_Label_2352:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2353:
	.ascii	"Pself\0"
	.align
_Label_2354:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2422:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD WaitForZombie  ===============
! 
_Method_P_Kernel_ProcessManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_7,r1
	push	r1
	mov	23,r1
_Label_4043:
	push	r0
	sub	r1,1,r1
	bne	_Label_4043
	mov	1028,r13		! source line 1028
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_2423 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2424 = _temp_2423 + 1688
	load	[r14+-88],r1
	add	r1,1688,r1
	store	r1,[r14+-84]
!   Send message Lock
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1034,r13		! source line 1034
	mov	"\0\0WH",r10
_Label_2425:
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2429 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2428 = *_temp_2429  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2428 == 2 then goto _Label_2427		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2427
!	jmp	_Label_2426
_Label_2426:
	mov	1034,r13		! source line 1034
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0SE",r10
!   _temp_2431 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_2432 = _temp_2431 + 1688
	load	[r14+-68],r1
	add	r1,1688,r1
	store	r1,[r14+-64]
!   _temp_2430 = _temp_2432		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_2433 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_2434 = _temp_2433 + 1736
	load	[r14+-60],r1
	add	r1,1736,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2430  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2425
_Label_2427:
! ASSIGNMENT STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2435 = p + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: p_exitStatus = *_temp_2435  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2436 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2436 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_2437 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2438 = _temp_2437 + 1724
	load	[r14+-44],r1
	add	r1,1724,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0SE",r10
!   _temp_2440 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2441 = _temp_2440 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2439 = _temp_2441		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2442 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2443 = _temp_2442 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2439  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0SE",r10
!   _temp_2444 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2445 = _temp_2444 + 1688
	load	[r14+-16],r1
	add	r1,1688,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0RE",r10
!   ReturnResult: p_exitStatus  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_7:
	.word	_sourceFileName
	.word	_Label_2446
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_2447
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2448
	.word	12
	.word	4
	.word	_Label_2449
	.word	-12
	.word	4
	.word	_Label_2450
	.word	-16
	.word	4
	.word	_Label_2451
	.word	-20
	.word	4
	.word	_Label_2452
	.word	-24
	.word	4
	.word	_Label_2453
	.word	-28
	.word	4
	.word	_Label_2454
	.word	-32
	.word	4
	.word	_Label_2455
	.word	-36
	.word	4
	.word	_Label_2456
	.word	-40
	.word	4
	.word	_Label_2457
	.word	-44
	.word	4
	.word	_Label_2458
	.word	-48
	.word	4
	.word	_Label_2459
	.word	-52
	.word	4
	.word	_Label_2460
	.word	-56
	.word	4
	.word	_Label_2461
	.word	-60
	.word	4
	.word	_Label_2462
	.word	-64
	.word	4
	.word	_Label_2463
	.word	-68
	.word	4
	.word	_Label_2464
	.word	-72
	.word	4
	.word	_Label_2465
	.word	-76
	.word	4
	.word	_Label_2466
	.word	-80
	.word	4
	.word	_Label_2467
	.word	-84
	.word	4
	.word	_Label_2468
	.word	-88
	.word	4
	.word	_Label_2469
	.word	-92
	.word	4
	.word	0
_Label_2446:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2447:
	.ascii	"Pself\0"
	.align
_Label_2448:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2469:
	.byte	'I'
	.ascii	"p_exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2470
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2470:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2471
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2471:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_4044:
	push	r0
	sub	r1,1,r1
	bne	_Label_4044
	mov	1095,r13		! source line 1095
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2472 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2472  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1101,r13		! source line 1101
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0SE",r10
!   _temp_2474 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=512  sizeInBytes=4
	mov	512,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0SE",r10
!   _temp_2476 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1108,r13		! source line 1108
	mov	"\0\0SE",r10
!   _temp_2478 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2483 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2484 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2483  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2479:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2484 then goto _Label_2482		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2482
_Label_2480:
	mov	1114,r13		! source line 1114
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2487 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2487) then goto _Label_2486
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2486
!	jmp	_Label_2485
_Label_2485:
! THEN...
	mov	1118,r13		! source line 1118
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2488 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2488  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1118,r13		! source line 1118
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2486:
!   Increment the FOR-LOOP index variable and jump back
_Label_2481:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2479
! END FOR
_Label_2482:
! RETURN STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_2489
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2490
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2491
	.word	-12
	.word	4
	.word	_Label_2492
	.word	-16
	.word	4
	.word	_Label_2493
	.word	-20
	.word	4
	.word	_Label_2494
	.word	-24
	.word	4
	.word	_Label_2495
	.word	-28
	.word	4
	.word	_Label_2496
	.word	-32
	.word	4
	.word	_Label_2497
	.word	-36
	.word	4
	.word	_Label_2498
	.word	-40
	.word	4
	.word	_Label_2499
	.word	-44
	.word	4
	.word	_Label_2500
	.word	-48
	.word	4
	.word	_Label_2501
	.word	-52
	.word	4
	.word	_Label_2502
	.word	-56
	.word	4
	.word	0
_Label_2489:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2490:
	.ascii	"Pself\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2502:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_4045:
	push	r0
	sub	r1,1,r1
	bne	_Label_4045
	mov	1125,r13		! source line 1125
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0SE",r10
!   _temp_2503 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2504 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2504  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1130,r13		! source line 1130
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2505 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2505  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1131,r13		! source line 1131
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2506 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2506  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1132,r13		! source line 1132
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0SE",r10
!   _temp_2507 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0SE",r10
!   _temp_2508 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_2509
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2510
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2511
	.word	-12
	.word	4
	.word	_Label_2512
	.word	-16
	.word	4
	.word	_Label_2513
	.word	-20
	.word	4
	.word	_Label_2514
	.word	-24
	.word	4
	.word	_Label_2515
	.word	-28
	.word	4
	.word	_Label_2516
	.word	-32
	.word	4
	.word	0
_Label_2509:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2510:
	.ascii	"Pself\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_4046:
	push	r0
	sub	r1,1,r1
	bne	_Label_4046
	mov	1139,r13		! source line 1139
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1147,r13		! source line 1147
	mov	"\0\0SE",r10
!   _temp_2517 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1150,r13		! source line 1150
	mov	"\0\0WH",r10
_Label_2518:
!   if numberFreeFrames >= 1 then goto _Label_2520		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2520
!	jmp	_Label_2519
_Label_2519:
	mov	1150,r13		! source line 1150
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0SE",r10
!   _temp_2521 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2522 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2521  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2518
_Label_2520:
! ASSIGNMENT STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0AS",r10
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
!   _temp_2523 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0SE",r10
!   _temp_2524 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0AS",r10
!   _temp_2525 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2525		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_2526
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2527
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2528
	.word	-12
	.word	4
	.word	_Label_2529
	.word	-16
	.word	4
	.word	_Label_2530
	.word	-20
	.word	4
	.word	_Label_2531
	.word	-24
	.word	4
	.word	_Label_2532
	.word	-28
	.word	4
	.word	_Label_2533
	.word	-32
	.word	4
	.word	_Label_2534
	.word	-36
	.word	4
	.word	_Label_2535
	.word	-40
	.word	4
	.word	0
_Label_2526:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2527:
	.ascii	"Pself\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2534:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2535:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_4047:
	push	r0
	sub	r1,1,r1
	bne	_Label_4047
	mov	1169,r13		! source line 1169
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0SE",r10
!   _temp_2536 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0WH",r10
_Label_2537:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2539		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2539
!	jmp	_Label_2538
_Label_2538:
	mov	1172,r13		! source line 1172
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0SE",r10
!   _temp_2540 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2541 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2540  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2537
_Label_2539:
! FOR STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2546 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2547 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2546  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_2542:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2547 then goto _Label_2545		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2545
_Label_2543:
	mov	1175,r13		! source line 1175
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0AS",r10
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_2548 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=fr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0AS",r10
!   _temp_2549 = fr * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2549		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2544:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2542
! END FOR
_Label_2545:
! ASSIGNMENT STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2550 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2550 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0SE",r10
!   _temp_2551 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_2552
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2553
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2554
	.word	12
	.word	4
	.word	_Label_2555
	.word	16
	.word	4
	.word	_Label_2556
	.word	-12
	.word	4
	.word	_Label_2557
	.word	-16
	.word	4
	.word	_Label_2558
	.word	-20
	.word	4
	.word	_Label_2559
	.word	-24
	.word	4
	.word	_Label_2560
	.word	-28
	.word	4
	.word	_Label_2561
	.word	-32
	.word	4
	.word	_Label_2562
	.word	-36
	.word	4
	.word	_Label_2563
	.word	-40
	.word	4
	.word	_Label_2564
	.word	-44
	.word	4
	.word	_Label_2565
	.word	-48
	.word	4
	.word	_Label_2566
	.word	-52
	.word	4
	.word	_Label_2567
	.word	-56
	.word	4
	.word	0
_Label_2552:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2553:
	.ascii	"Pself\0"
	.align
_Label_2554:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2555:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2565:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2566:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2567:
	.byte	'I'
	.ascii	"fr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	17,r1
_Label_4048:
	push	r0
	sub	r1,1,r1
	bne	_Label_4048
	mov	1187,r13		! source line 1187
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1189,r13		! source line 1189
	mov	"\0\0SE",r10
!   _temp_2568 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2573 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2576 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2575 = *_temp_2576  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2574 = _temp_2575 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2573  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2569:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2574 then goto _Label_2572		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2572
_Label_2570:
	mov	1190,r13		! source line 1190
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0AS",r10
	mov	1191,r13		! source line 1191
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0AS",r10
!   _temp_2577 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_2577 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0SE",r10
!   _temp_2578 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2571:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2569
! END FOR
_Label_2572:
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2580 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2579 = *_temp_2580  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2579		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1196,r13		! source line 1196
	mov	"\0\0SE",r10
!   _temp_2581 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2582 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2581  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1197,r13		! source line 1197
	mov	"\0\0SE",r10
!   _temp_2583 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1197,r13		! source line 1197
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_2584
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2585
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2586
	.word	12
	.word	4
	.word	_Label_2587
	.word	-12
	.word	4
	.word	_Label_2588
	.word	-16
	.word	4
	.word	_Label_2589
	.word	-20
	.word	4
	.word	_Label_2590
	.word	-24
	.word	4
	.word	_Label_2591
	.word	-28
	.word	4
	.word	_Label_2592
	.word	-32
	.word	4
	.word	_Label_2593
	.word	-36
	.word	4
	.word	_Label_2594
	.word	-40
	.word	4
	.word	_Label_2595
	.word	-44
	.word	4
	.word	_Label_2596
	.word	-48
	.word	4
	.word	_Label_2597
	.word	-52
	.word	4
	.word	_Label_2598
	.word	-56
	.word	4
	.word	_Label_2599
	.word	-60
	.word	4
	.word	_Label_2600
	.word	-64
	.word	4
	.word	_Label_2601
	.word	-68
	.word	4
	.word	0
_Label_2584:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2585:
	.ascii	"Pself\0"
	.align
_Label_2586:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2599:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2600:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2601:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2602
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_2602:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2603
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2603:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_4049:
	push	r0
	sub	r1,1,r1
	bne	_Label_4049
	mov	1207,r13		! source line 1207
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1212,r13		! source line 1212
	mov	"\0\0AS",r10
!   _temp_2604 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2606 = &_temp_2605
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2606 = _temp_2606 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2608:
!   Data Move: *_temp_2606 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2606 = _temp_2606 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2607 = _temp_2607 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2607) then goto _Label_2608
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2608
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2609 = &_temp_2605
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4050
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4050:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2604 = *_temp_2609  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4051:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4051
! RETURN STATEMENT...
	mov	1212,r13		! source line 1212
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_2610
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2611
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2612
	.word	-12
	.word	4
	.word	_Label_2613
	.word	-16
	.word	4
	.word	_Label_2614
	.word	-20
	.word	4
	.word	_Label_2615
	.word	-104
	.word	84
	.word	_Label_2616
	.word	-108
	.word	4
	.word	0
_Label_2610:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2611:
	.ascii	"Pself\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_4052:
	push	r0
	sub	r1,1,r1
	bne	_Label_4052
	mov	1217,r13		! source line 1217
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2617 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2617  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2618 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2618  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1223,r13		! source line 1223
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2623 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2624 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2623  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2619:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2624 then goto _Label_2622		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2622
_Label_2620:
	mov	1224,r13		! source line 1224
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2625 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2625  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2627 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2627 [i ] into _temp_2628
!     make sure index expr is >= 0
	load	[r14+-168],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_2626 = _temp_2628		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2626  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2629 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2629  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2631 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2631 [i ] into _temp_2632
!     make sure index expr is >= 0
	load	[r14+-168],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_2630 = *_temp_2632  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2630  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2633 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2633  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2634 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2634  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1230,r13		! source line 1230
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2635 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2635  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2637) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2636  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2636  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1232,r13		! source line 1232
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2638 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2638  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0IF",r10
	mov	1234,r13		! source line 1234
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2642) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2641  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2641) then goto _Label_2640
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2640
!	jmp	_Label_2639
_Label_2639:
! THEN...
	mov	1235,r13		! source line 1235
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2644) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_2643  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2643  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2645
_Label_2640:
! ELSE...
	mov	1237,r13		! source line 1237
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2646 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2646  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2645:
! CALL STATEMENT...
!   _temp_2647 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2647  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1240,r13		! source line 1240
	mov	"\0\0IF",r10
	mov	1240,r13		! source line 1240
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2650) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_2648 else goto _Label_2649
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2649
	jmp	_Label_2648
_Label_2648:
! THEN...
	mov	1241,r13		! source line 1241
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2651 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2651  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2652
_Label_2649:
! ELSE...
	mov	1243,r13		! source line 1243
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2653 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2653  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2652:
! CALL STATEMENT...
!   _temp_2654 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2654  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0IF",r10
	mov	1246,r13		! source line 1246
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2657) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_2655 else goto _Label_2656
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2656
	jmp	_Label_2655
_Label_2655:
! THEN...
	mov	1247,r13		! source line 1247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2658 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2658  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2659
_Label_2656:
! ELSE...
	mov	1249,r13		! source line 1249
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2660 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2660  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2659:
! CALL STATEMENT...
!   _temp_2661 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2661  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0IF",r10
	mov	1252,r13		! source line 1252
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2664) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_2662 else goto _Label_2663
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2663
	jmp	_Label_2662
_Label_2662:
! THEN...
	mov	1253,r13		! source line 1253
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2665 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2665  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2666
_Label_2663:
! ELSE...
	mov	1255,r13		! source line 1255
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2667 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2667  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2666:
! CALL STATEMENT...
!   _temp_2668 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2668  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0IF",r10
	mov	1258,r13		! source line 1258
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2671) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_2669 else goto _Label_2670
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2670
	jmp	_Label_2669
_Label_2669:
! THEN...
	mov	1259,r13		! source line 1259
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2672 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2672  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2673
_Label_2670:
! ELSE...
	mov	1261,r13		! source line 1261
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2674 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2674  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2673:
! CALL STATEMENT...
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2621:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2619
! END FOR
_Label_2622:
! RETURN STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_2675
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2676
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2677
	.word	-12
	.word	4
	.word	_Label_2678
	.word	-16
	.word	4
	.word	_Label_2679
	.word	-20
	.word	4
	.word	_Label_2680
	.word	-24
	.word	4
	.word	_Label_2681
	.word	-28
	.word	4
	.word	_Label_2682
	.word	-32
	.word	4
	.word	_Label_2683
	.word	-36
	.word	4
	.word	_Label_2684
	.word	-40
	.word	4
	.word	_Label_2685
	.word	-44
	.word	4
	.word	_Label_2686
	.word	-48
	.word	4
	.word	_Label_2687
	.word	-52
	.word	4
	.word	_Label_2688
	.word	-56
	.word	4
	.word	_Label_2689
	.word	-60
	.word	4
	.word	_Label_2690
	.word	-64
	.word	4
	.word	_Label_2691
	.word	-68
	.word	4
	.word	_Label_2692
	.word	-72
	.word	4
	.word	_Label_2693
	.word	-76
	.word	4
	.word	_Label_2694
	.word	-80
	.word	4
	.word	_Label_2695
	.word	-84
	.word	4
	.word	_Label_2696
	.word	-88
	.word	4
	.word	_Label_2697
	.word	-92
	.word	4
	.word	_Label_2698
	.word	-96
	.word	4
	.word	_Label_2699
	.word	-100
	.word	4
	.word	_Label_2700
	.word	-104
	.word	4
	.word	_Label_2701
	.word	-108
	.word	4
	.word	_Label_2702
	.word	-112
	.word	4
	.word	_Label_2703
	.word	-116
	.word	4
	.word	_Label_2704
	.word	-120
	.word	4
	.word	_Label_2705
	.word	-124
	.word	4
	.word	_Label_2706
	.word	-128
	.word	4
	.word	_Label_2707
	.word	-132
	.word	4
	.word	_Label_2708
	.word	-136
	.word	4
	.word	_Label_2709
	.word	-140
	.word	4
	.word	_Label_2710
	.word	-144
	.word	4
	.word	_Label_2711
	.word	-148
	.word	4
	.word	_Label_2712
	.word	-152
	.word	4
	.word	_Label_2713
	.word	-156
	.word	4
	.word	_Label_2714
	.word	-160
	.word	4
	.word	_Label_2715
	.word	-164
	.word	4
	.word	_Label_2716
	.word	-168
	.word	4
	.word	0
_Label_2675:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2676:
	.ascii	"Pself\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2716:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_4053:
	push	r0
	sub	r1,1,r1
	bne	_Label_4053
	mov	1269,r13		! source line 1269
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0RE",r10
!   _temp_2719 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2719 [entry ] into _temp_2720
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2718 = *_temp_2720  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2717 = _temp_2718 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2717  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_2721
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2722
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2723
	.word	12
	.word	4
	.word	_Label_2724
	.word	-12
	.word	4
	.word	_Label_2725
	.word	-16
	.word	4
	.word	_Label_2726
	.word	-20
	.word	4
	.word	_Label_2727
	.word	-24
	.word	4
	.word	0
_Label_2721:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2722:
	.ascii	"Pself\0"
	.align
_Label_2723:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_4054:
	push	r0
	sub	r1,1,r1
	bne	_Label_4054
	mov	1279,r13		! source line 1279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1283,r13		! source line 1283
	mov	"\0\0RE",r10
!   _temp_2730 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2730 [entry ] into _temp_2731
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2729 = *_temp_2731  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2728 = _temp_2729 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2728  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_2732
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2733
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2734
	.word	12
	.word	4
	.word	_Label_2735
	.word	-12
	.word	4
	.word	_Label_2736
	.word	-16
	.word	4
	.word	_Label_2737
	.word	-20
	.word	4
	.word	_Label_2738
	.word	-24
	.word	4
	.word	0
_Label_2732:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2733:
	.ascii	"Pself\0"
	.align
_Label_2734:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_4055:
	push	r0
	sub	r1,1,r1
	bne	_Label_4055
	mov	1288,r13		! source line 1288
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0AS",r10
!   _temp_2739 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2739 [entry ] into _temp_2740
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_2744 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2744 [entry ] into _temp_2745
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2743 = *_temp_2745  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2742 = _temp_2743 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2741 = _temp_2742 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2740 = _temp_2741  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_2746
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2747
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2748
	.word	12
	.word	4
	.word	_Label_2749
	.word	16
	.word	4
	.word	_Label_2750
	.word	-12
	.word	4
	.word	_Label_2751
	.word	-16
	.word	4
	.word	_Label_2752
	.word	-20
	.word	4
	.word	_Label_2753
	.word	-24
	.word	4
	.word	_Label_2754
	.word	-28
	.word	4
	.word	_Label_2755
	.word	-32
	.word	4
	.word	_Label_2756
	.word	-36
	.word	4
	.word	0
_Label_2746:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2747:
	.ascii	"Pself\0"
	.align
_Label_2748:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2749:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_4056:
	push	r0
	sub	r1,1,r1
	bne	_Label_4056
	mov	1298,r13		! source line 1298
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1302,r13		! source line 1302
	mov	"\0\0RE",r10
!   _temp_2760 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2760 [entry ] into _temp_2761
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2759 = *_temp_2761  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2758 = _temp_2759 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2758) then goto _Label_2762
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2762
!   _temp_2757 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2763
_Label_2762:
!   _temp_2757 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2763:
!   ReturnResult: _temp_2757  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_2764
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2765
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2766
	.word	12
	.word	4
	.word	_Label_2767
	.word	-16
	.word	4
	.word	_Label_2768
	.word	-20
	.word	4
	.word	_Label_2769
	.word	-24
	.word	4
	.word	_Label_2770
	.word	-28
	.word	4
	.word	_Label_2771
	.word	-9
	.word	1
	.word	0
_Label_2764:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2765:
	.ascii	"Pself\0"
	.align
_Label_2766:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2771:
	.byte	'C'
	.ascii	"_temp_2757\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_4057:
	push	r0
	sub	r1,1,r1
	bne	_Label_4057
	mov	1307,r13		! source line 1307
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0RE",r10
!   _temp_2775 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2775 [entry ] into _temp_2776
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2774 = *_temp_2776  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2773 = _temp_2774 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2773) then goto _Label_2777
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2777
!   _temp_2772 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2778
_Label_2777:
!   _temp_2772 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2778:
!   ReturnResult: _temp_2772  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_2779
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2780
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2781
	.word	12
	.word	4
	.word	_Label_2782
	.word	-16
	.word	4
	.word	_Label_2783
	.word	-20
	.word	4
	.word	_Label_2784
	.word	-24
	.word	4
	.word	_Label_2785
	.word	-28
	.word	4
	.word	_Label_2786
	.word	-9
	.word	1
	.word	0
_Label_2779:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2780:
	.ascii	"Pself\0"
	.align
_Label_2781:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2786:
	.byte	'C'
	.ascii	"_temp_2772\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_4058:
	push	r0
	sub	r1,1,r1
	bne	_Label_4058
	mov	1316,r13		! source line 1316
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0RE",r10
!   _temp_2790 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2790 [entry ] into _temp_2791
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2789 = *_temp_2791  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2788 = _temp_2789 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2788) then goto _Label_2792
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2792
!   _temp_2787 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2793
_Label_2792:
!   _temp_2787 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2793:
!   ReturnResult: _temp_2787  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_2794
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2795
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2796
	.word	12
	.word	4
	.word	_Label_2797
	.word	-16
	.word	4
	.word	_Label_2798
	.word	-20
	.word	4
	.word	_Label_2799
	.word	-24
	.word	4
	.word	_Label_2800
	.word	-28
	.word	4
	.word	_Label_2801
	.word	-9
	.word	1
	.word	0
_Label_2794:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2795:
	.ascii	"Pself\0"
	.align
_Label_2796:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2801:
	.byte	'C'
	.ascii	"_temp_2787\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_4059:
	push	r0
	sub	r1,1,r1
	bne	_Label_4059
	mov	1325,r13		! source line 1325
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0RE",r10
!   _temp_2805 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2805 [entry ] into _temp_2806
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2804 = *_temp_2806  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2803 = _temp_2804 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2803) then goto _Label_2807
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2807
!   _temp_2802 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2808
_Label_2807:
!   _temp_2802 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2808:
!   ReturnResult: _temp_2802  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_2809
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2810
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2811
	.word	12
	.word	4
	.word	_Label_2812
	.word	-16
	.word	4
	.word	_Label_2813
	.word	-20
	.word	4
	.word	_Label_2814
	.word	-24
	.word	4
	.word	_Label_2815
	.word	-28
	.word	4
	.word	_Label_2816
	.word	-9
	.word	1
	.word	0
_Label_2809:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2810:
	.ascii	"Pself\0"
	.align
_Label_2811:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2816:
	.byte	'C'
	.ascii	"_temp_2802\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_4060:
	push	r0
	sub	r1,1,r1
	bne	_Label_4060
	mov	1334,r13		! source line 1334
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0AS",r10
!   _temp_2817 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2817 [entry ] into _temp_2818
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2821 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2821 [entry ] into _temp_2822
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2820 = *_temp_2822  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2819 = _temp_2820 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2818 = _temp_2819  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_2823
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2824
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2825
	.word	12
	.word	4
	.word	_Label_2826
	.word	-12
	.word	4
	.word	_Label_2827
	.word	-16
	.word	4
	.word	_Label_2828
	.word	-20
	.word	4
	.word	_Label_2829
	.word	-24
	.word	4
	.word	_Label_2830
	.word	-28
	.word	4
	.word	_Label_2831
	.word	-32
	.word	4
	.word	0
_Label_2823:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2824:
	.ascii	"Pself\0"
	.align
_Label_2825:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_4061:
	push	r0
	sub	r1,1,r1
	bne	_Label_4061
	mov	1343,r13		! source line 1343
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0AS",r10
!   _temp_2832 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2832 [entry ] into _temp_2833
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2836 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2836 [entry ] into _temp_2837
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2835 = *_temp_2837  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2834 = _temp_2835 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2833 = _temp_2834  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_2838
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2839
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2840
	.word	12
	.word	4
	.word	_Label_2841
	.word	-12
	.word	4
	.word	_Label_2842
	.word	-16
	.word	4
	.word	_Label_2843
	.word	-20
	.word	4
	.word	_Label_2844
	.word	-24
	.word	4
	.word	_Label_2845
	.word	-28
	.word	4
	.word	_Label_2846
	.word	-32
	.word	4
	.word	0
_Label_2838:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2839:
	.ascii	"Pself\0"
	.align
_Label_2840:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_4062:
	push	r0
	sub	r1,1,r1
	bne	_Label_4062
	mov	1352,r13		! source line 1352
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1356,r13		! source line 1356
	mov	"\0\0AS",r10
!   _temp_2847 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2847 [entry ] into _temp_2848
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2851 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2851 [entry ] into _temp_2852
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2850 = *_temp_2852  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2849 = _temp_2850 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2848 = _temp_2849  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1356,r13		! source line 1356
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_2853
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2854
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2855
	.word	12
	.word	4
	.word	_Label_2856
	.word	-12
	.word	4
	.word	_Label_2857
	.word	-16
	.word	4
	.word	_Label_2858
	.word	-20
	.word	4
	.word	_Label_2859
	.word	-24
	.word	4
	.word	_Label_2860
	.word	-28
	.word	4
	.word	_Label_2861
	.word	-32
	.word	4
	.word	0
_Label_2853:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2854:
	.ascii	"Pself\0"
	.align
_Label_2855:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_4063:
	push	r0
	sub	r1,1,r1
	bne	_Label_4063
	mov	1361,r13		! source line 1361
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0AS",r10
!   _temp_2862 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2862 [entry ] into _temp_2863
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2866 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2866 [entry ] into _temp_2867
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2865 = *_temp_2867  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2864 = _temp_2865 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2863 = _temp_2864  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_2868
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2869
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2870
	.word	12
	.word	4
	.word	_Label_2871
	.word	-12
	.word	4
	.word	_Label_2872
	.word	-16
	.word	4
	.word	_Label_2873
	.word	-20
	.word	4
	.word	_Label_2874
	.word	-24
	.word	4
	.word	_Label_2875
	.word	-28
	.word	4
	.word	_Label_2876
	.word	-32
	.word	4
	.word	0
_Label_2868:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2869:
	.ascii	"Pself\0"
	.align
_Label_2870:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_4064:
	push	r0
	sub	r1,1,r1
	bne	_Label_4064
	mov	1370,r13		! source line 1370
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0AS",r10
!   _temp_2877 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2877 [entry ] into _temp_2878
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2881 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2881 [entry ] into _temp_2882
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2880 = *_temp_2882  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2879 = _temp_2880 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2878 = _temp_2879  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_2883
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2884
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2885
	.word	12
	.word	4
	.word	_Label_2886
	.word	-12
	.word	4
	.word	_Label_2887
	.word	-16
	.word	4
	.word	_Label_2888
	.word	-20
	.word	4
	.word	_Label_2889
	.word	-24
	.word	4
	.word	_Label_2890
	.word	-28
	.word	4
	.word	_Label_2891
	.word	-32
	.word	4
	.word	0
_Label_2883:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2884:
	.ascii	"Pself\0"
	.align
_Label_2885:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_4065:
	push	r0
	sub	r1,1,r1
	bne	_Label_4065
	mov	1379,r13		! source line 1379
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0AS",r10
!   _temp_2892 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2892 [entry ] into _temp_2893
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2896 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2896 [entry ] into _temp_2897
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2895 = *_temp_2897  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2894 = _temp_2895 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2893 = _temp_2894  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_2898
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2899
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2900
	.word	12
	.word	4
	.word	_Label_2901
	.word	-12
	.word	4
	.word	_Label_2902
	.word	-16
	.word	4
	.word	_Label_2903
	.word	-20
	.word	4
	.word	_Label_2904
	.word	-24
	.word	4
	.word	_Label_2905
	.word	-28
	.word	4
	.word	_Label_2906
	.word	-32
	.word	4
	.word	0
_Label_2898:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2899:
	.ascii	"Pself\0"
	.align
_Label_2900:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_4066:
	push	r0
	sub	r1,1,r1
	bne	_Label_4066
	mov	1388,r13		! source line 1388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0AS",r10
!   _temp_2907 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2907 [entry ] into _temp_2908
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2911 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2911 [entry ] into _temp_2912
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2910 = *_temp_2912  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2909 = _temp_2910 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2908 = _temp_2909  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_2913
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2914
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2915
	.word	12
	.word	4
	.word	_Label_2916
	.word	-12
	.word	4
	.word	_Label_2917
	.word	-16
	.word	4
	.word	_Label_2918
	.word	-20
	.word	4
	.word	_Label_2919
	.word	-24
	.word	4
	.word	_Label_2920
	.word	-28
	.word	4
	.word	_Label_2921
	.word	-32
	.word	4
	.word	0
_Label_2913:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2914:
	.ascii	"Pself\0"
	.align
_Label_2915:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_4067:
	push	r0
	sub	r1,1,r1
	bne	_Label_4067
	mov	1397,r13		! source line 1397
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0AS",r10
!   _temp_2922 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2922 [entry ] into _temp_2923
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2926 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2926 [entry ] into _temp_2927
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2925 = *_temp_2927  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2924 = _temp_2925 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2923 = _temp_2924  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2928
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2929
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2930
	.word	12
	.word	4
	.word	_Label_2931
	.word	-12
	.word	4
	.word	_Label_2932
	.word	-16
	.word	4
	.word	_Label_2933
	.word	-20
	.word	4
	.word	_Label_2934
	.word	-24
	.word	4
	.word	_Label_2935
	.word	-28
	.word	4
	.word	_Label_2936
	.word	-32
	.word	4
	.word	0
_Label_2928:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2929:
	.ascii	"Pself\0"
	.align
_Label_2930:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_4068:
	push	r0
	sub	r1,1,r1
	bne	_Label_4068
	mov	1406,r13		! source line 1406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2938 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2938 [0 ] into _temp_2939
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2937 = _temp_2939		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2940 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2937  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2940  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1412,r13		! source line 1412
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1412,r13		! source line 1412
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_2941
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2942
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2943
	.word	-12
	.word	4
	.word	_Label_2944
	.word	-16
	.word	4
	.word	_Label_2945
	.word	-20
	.word	4
	.word	_Label_2946
	.word	-24
	.word	4
	.word	0
_Label_2941:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2942:
	.ascii	"Pself\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_4069:
	push	r0
	sub	r1,1,r1
	bne	_Label_4069
	mov	1417,r13		! source line 1417
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2947
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2947
	jmp	_Label_2948
_Label_2947:
! THEN...
	mov	1433,r13		! source line 1433
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2949
_Label_2948:
! ELSE...
	mov	1434,r13		! source line 1434
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2951		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2951
!	jmp	_Label_2950
_Label_2950:
! THEN...
	mov	1435,r13		! source line 1435
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2951:
! END IF...
_Label_2949:
! ASSIGNMENT STATEMENT...
	mov	1437,r13		! source line 1437
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0WH",r10
_Label_2952:
!	jmp	_Label_2953
_Label_2953:
	mov	1441,r13		! source line 1441
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2956		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2956
!	jmp	_Label_2955
_Label_2955:
! THEN...
	mov	1443,r13		! source line 1443
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2957 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2957  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1443,r13		! source line 1443
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2956:
! IF STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0IF",r10
	mov	1446,r13		! source line 1446
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2961) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2960  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2960 then goto _Label_2959 else goto _Label_2958
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2958
	jmp	_Label_2959
_Label_2958:
! THEN...
	mov	1447,r13		! source line 1447
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2962 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2962  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1447,r13		! source line 1447
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2959:
! ASSIGNMENT STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0AS",r10
	mov	1450,r13		! source line 1450
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2964) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2963  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2963 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0WH",r10
_Label_2965:
!   if offset >= 8192 then goto _Label_2967		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2967
!	jmp	_Label_2966
_Label_2966:
	mov	1452,r13		! source line 1452
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2968 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2968  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1457,r13		! source line 1457
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1459,r13		! source line 1459
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2970		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2970
!	jmp	_Label_2969
_Label_2969:
! THEN...
	mov	1461,r13		! source line 1461
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2970:
! END WHILE...
	jmp	_Label_2965
_Label_2967:
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2952
_Label_2954:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2971
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2972
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2973
	.word	12
	.word	4
	.word	_Label_2974
	.word	16
	.word	4
	.word	_Label_2975
	.word	20
	.word	4
	.word	_Label_2976
	.word	-9
	.word	1
	.word	_Label_2977
	.word	-16
	.word	4
	.word	_Label_2978
	.word	-20
	.word	4
	.word	_Label_2979
	.word	-24
	.word	4
	.word	_Label_2980
	.word	-28
	.word	4
	.word	_Label_2981
	.word	-10
	.word	1
	.word	_Label_2982
	.word	-32
	.word	4
	.word	_Label_2983
	.word	-36
	.word	4
	.word	_Label_2984
	.word	-40
	.word	4
	.word	_Label_2985
	.word	-44
	.word	4
	.word	_Label_2986
	.word	-48
	.word	4
	.word	0
_Label_2971:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2972:
	.ascii	"Pself\0"
	.align
_Label_2973:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2974:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2975:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2976:
	.byte	'C'
	.ascii	"_temp_2968\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_2981:
	.byte	'C'
	.ascii	"_temp_2960\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_2983:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2984:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2985:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2986:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_4070:
	push	r0
	sub	r1,1,r1
	bne	_Label_4070
	mov	1471,r13		! source line 1471
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2987
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2987
	jmp	_Label_2988
_Label_2987:
! THEN...
	mov	1483,r13		! source line 1483
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2989
_Label_2988:
! ELSE...
	mov	1484,r13		! source line 1484
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2991		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2991
!	jmp	_Label_2990
_Label_2990:
! THEN...
	mov	1485,r13		! source line 1485
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2991:
! END IF...
_Label_2989:
! ASSIGNMENT STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0WH",r10
_Label_2992:
!	jmp	_Label_2993
_Label_2993:
	mov	1489,r13		! source line 1489
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2998		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2998
	jmp	_Label_2995
_Label_2998:
	mov	1491,r13		! source line 1491
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3000) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2999  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2999 then goto _Label_2997 else goto _Label_2995
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2995
	jmp	_Label_2997
_Label_2997:
	mov	1492,r13		! source line 1492
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3002) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_3001  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3001 then goto _Label_2996 else goto _Label_2995
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2995
	jmp	_Label_2996
_Label_2995:
! THEN...
	mov	1493,r13		! source line 1493
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2996:
! ASSIGNMENT STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0AS",r10
	mov	1495,r13		! source line 1495
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3004) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3003  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3003 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0WH",r10
_Label_3005:
!   if offset >= 8192 then goto _Label_3007		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3007
!	jmp	_Label_3006
_Label_3006:
	mov	1496,r13		! source line 1496
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3008 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3008  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_3010		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3010
!	jmp	_Label_3009
_Label_3009:
! THEN...
	mov	1503,r13		! source line 1503
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3010:
! END WHILE...
	jmp	_Label_3005
_Label_3007:
! ASSIGNMENT STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2992
_Label_2994:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3011
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3012
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3013
	.word	12
	.word	4
	.word	_Label_3014
	.word	16
	.word	4
	.word	_Label_3015
	.word	20
	.word	4
	.word	_Label_3016
	.word	-9
	.word	1
	.word	_Label_3017
	.word	-16
	.word	4
	.word	_Label_3018
	.word	-20
	.word	4
	.word	_Label_3019
	.word	-24
	.word	4
	.word	_Label_3020
	.word	-10
	.word	1
	.word	_Label_3021
	.word	-28
	.word	4
	.word	_Label_3022
	.word	-11
	.word	1
	.word	_Label_3023
	.word	-32
	.word	4
	.word	_Label_3024
	.word	-36
	.word	4
	.word	_Label_3025
	.word	-40
	.word	4
	.word	_Label_3026
	.word	-44
	.word	4
	.word	0
_Label_3011:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3012:
	.ascii	"Pself\0"
	.align
_Label_3013:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3014:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3015:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3016:
	.byte	'C'
	.ascii	"_temp_3008\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3020:
	.byte	'C'
	.ascii	"_temp_3001\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3022:
	.byte	'C'
	.ascii	"_temp_2999\0"
	.align
_Label_3023:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3024:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3025:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3026:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_4071:
	push	r0
	sub	r1,1,r1
	bne	_Label_4071
	mov	1513,r13		! source line 1513
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0IF",r10
	mov	1537,r13		! source line 1537
	mov	"\0\0SE",r10
!   _temp_3030 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3031) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3030  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_3029  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3029 >= 4 then goto _Label_3028		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3028
!	jmp	_Label_3027
_Label_3027:
! THEN...
	mov	1540,r13		! source line 1540
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3028:
! IF STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3033		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3033
!	jmp	_Label_3032
_Label_3032:
! THEN...
	mov	1545,r13		! source line 1545
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3033:
! ASSIGNMENT STATEMENT...
	mov	1548,r13		! source line 1548
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0RE",r10
	mov	1550,r13		! source line 1550
	mov	"\0\0SE",r10
!   _temp_3036 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3035 = _temp_3036 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3037 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3038) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3035  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3037  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_3034  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3034  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_3039
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3040
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3041
	.word	12
	.word	4
	.word	_Label_3042
	.word	16
	.word	4
	.word	_Label_3043
	.word	20
	.word	4
	.word	_Label_3044
	.word	-12
	.word	4
	.word	_Label_3045
	.word	-16
	.word	4
	.word	_Label_3046
	.word	-20
	.word	4
	.word	_Label_3047
	.word	-24
	.word	4
	.word	_Label_3048
	.word	-28
	.word	4
	.word	_Label_3049
	.word	-32
	.word	4
	.word	_Label_3050
	.word	-36
	.word	4
	.word	_Label_3051
	.word	-40
	.word	4
	.word	_Label_3052
	.word	-44
	.word	4
	.word	0
_Label_3039:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3040:
	.ascii	"Pself\0"
	.align
_Label_3041:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3042:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3043:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_3029\0"
	.align
_Label_3052:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3053
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3053:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3054
	.word	_sourceFileName
	.word	309		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3054:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_4072:
	push	r0
	sub	r1,1,r1
	bne	_Label_4072
	mov	2255,r13		! source line 2255
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3055 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3055  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2256,r13		! source line 2256
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0SE",r10
!   _temp_3057 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
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
! ASSIGNMENT STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0SE",r10
!   _temp_3059 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_3060
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3061
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3062
	.word	-12
	.word	4
	.word	_Label_3063
	.word	-16
	.word	4
	.word	_Label_3064
	.word	-20
	.word	4
	.word	_Label_3065
	.word	-24
	.word	4
	.word	_Label_3066
	.word	-28
	.word	4
	.word	0
_Label_3060:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3061:
	.ascii	"Pself\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_4073:
	push	r0
	sub	r1,1,r1
	bne	_Label_4073
	mov	2271,r13		! source line 2271
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0SE",r10
!   _temp_3067 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0WH",r10
_Label_3068:
!	jmp	_Label_3069
_Label_3069:
	mov	2285,r13		! source line 2285
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0SE",r10
!   _temp_3071 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3072) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_3071  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0SE",r10
!   _temp_3073 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2292,r13		! source line 2292
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3082 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3076
	cmp	r1,2
	be	_Label_3077
	cmp	r1,3
	be	_Label_3078
	cmp	r1,4
	be	_Label_3079
	cmp	r1,5
	be	_Label_3080
	cmp	r1,6
	be	_Label_3081
	jmp	_Label_3074
! CASE 1...
_Label_3076:
! SEND STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0SE",r10
!   _temp_3083 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3077:
! CALL STATEMENT...
!   _temp_3084 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3084  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2297,r13		! source line 2297
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3078:
! CALL STATEMENT...
!   _temp_3085 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3085  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2299,r13		! source line 2299
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3079:
! CALL STATEMENT...
!   _temp_3086 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3086  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2301,r13		! source line 2301
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3080:
! BREAK STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0BR",r10
	jmp	_Label_3075
! CASE 6...
_Label_3081:
! CALL STATEMENT...
!   _temp_3087 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3087  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2307,r13		! source line 2307
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3074:
! CALL STATEMENT...
!   _temp_3088 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3088  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2309,r13		! source line 2309
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3075:
! END WHILE...
	jmp	_Label_3068
_Label_3070:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3089
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3090
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3091
	.word	12
	.word	4
	.word	_Label_3092
	.word	16
	.word	4
	.word	_Label_3093
	.word	20
	.word	4
	.word	_Label_3094
	.word	-12
	.word	4
	.word	_Label_3095
	.word	-16
	.word	4
	.word	_Label_3096
	.word	-20
	.word	4
	.word	_Label_3097
	.word	-24
	.word	4
	.word	_Label_3098
	.word	-28
	.word	4
	.word	_Label_3099
	.word	-32
	.word	4
	.word	_Label_3100
	.word	-36
	.word	4
	.word	_Label_3101
	.word	-40
	.word	4
	.word	_Label_3102
	.word	-44
	.word	4
	.word	_Label_3103
	.word	-48
	.word	4
	.word	_Label_3104
	.word	-52
	.word	4
	.word	0
_Label_3089:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3090:
	.ascii	"Pself\0"
	.align
_Label_3091:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3092:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3093:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3082\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3067\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2318,r13		! source line 2318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_3105
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3106
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3107
	.word	12
	.word	4
	.word	_Label_3108
	.word	16
	.word	4
	.word	_Label_3109
	.word	20
	.word	4
	.word	_Label_3110
	.word	24
	.word	4
	.word	0
_Label_3105:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3106:
	.ascii	"Pself\0"
	.align
_Label_3107:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3108:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3109:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3110:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_4074:
	push	r0
	sub	r1,1,r1
	bne	_Label_4074
	mov	2344,r13		! source line 2344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2356,r13		! source line 2356
	mov	"\0\0SE",r10
!   _temp_3111 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0WH",r10
_Label_3112:
!	jmp	_Label_3113
_Label_3113:
	mov	2357,r13		! source line 2357
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2358,r13		! source line 2358
	mov	"\0\0SE",r10
!   _temp_3115 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3116) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_3115  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0SE",r10
!   _temp_3117 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2363,r13		! source line 2363
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3126 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3120
	cmp	r1,2
	be	_Label_3121
	cmp	r1,3
	be	_Label_3122
	cmp	r1,4
	be	_Label_3123
	cmp	r1,5
	be	_Label_3124
	cmp	r1,6
	be	_Label_3125
	jmp	_Label_3118
! CASE 1...
_Label_3120:
! SEND STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0SE",r10
!   _temp_3127 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3121:
! CALL STATEMENT...
!   _temp_3128 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3128  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2368,r13		! source line 2368
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3122:
! CALL STATEMENT...
!   _temp_3129 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3129  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2370,r13		! source line 2370
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3123:
! CALL STATEMENT...
!   _temp_3130 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3130  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2372,r13		! source line 2372
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3124:
! BREAK STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0BR",r10
	jmp	_Label_3119
! CASE 6...
_Label_3125:
! CALL STATEMENT...
!   _temp_3131 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3131  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2378,r13		! source line 2378
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3118:
! CALL STATEMENT...
!   _temp_3132 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3132  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2380,r13		! source line 2380
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3119:
! END WHILE...
	jmp	_Label_3112
_Label_3114:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3133
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3134
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3135
	.word	12
	.word	4
	.word	_Label_3136
	.word	16
	.word	4
	.word	_Label_3137
	.word	20
	.word	4
	.word	_Label_3138
	.word	-12
	.word	4
	.word	_Label_3139
	.word	-16
	.word	4
	.word	_Label_3140
	.word	-20
	.word	4
	.word	_Label_3141
	.word	-24
	.word	4
	.word	_Label_3142
	.word	-28
	.word	4
	.word	_Label_3143
	.word	-32
	.word	4
	.word	_Label_3144
	.word	-36
	.word	4
	.word	_Label_3145
	.word	-40
	.word	4
	.word	_Label_3146
	.word	-44
	.word	4
	.word	_Label_3147
	.word	-48
	.word	4
	.word	_Label_3148
	.word	-52
	.word	4
	.word	0
_Label_3133:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3134:
	.ascii	"Pself\0"
	.align
_Label_3135:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3136:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3137:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3111\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2389,r13		! source line 2389
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_3149
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3150
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3151
	.word	12
	.word	4
	.word	_Label_3152
	.word	16
	.word	4
	.word	_Label_3153
	.word	20
	.word	4
	.word	_Label_3154
	.word	24
	.word	4
	.word	0
_Label_3149:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3150:
	.ascii	"Pself\0"
	.align
_Label_3151:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3152:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3153:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3154:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3155
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_3155:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3156
	.word	_sourceFileName
	.word	332		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3156:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_4075:
	push	r0
	sub	r1,1,r1
	bne	_Label_4075
	mov	2420,r13		! source line 2420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3157 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3157  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2427,r13		! source line 2427
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0SE",r10
!   _temp_3159 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0SE",r10
!   _temp_3162 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0AS",r10
!   _temp_3163 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3165 = &_temp_3164
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3165 = _temp_3165 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3167 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4076:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4076
!   _temp_3167 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3169:
!   Data Move: *_temp_3165 = _temp_3167  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4077:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4077
!   _temp_3165 = _temp_3165 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3166 = _temp_3166 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3166) then goto _Label_3169
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3169
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3170 = &_temp_3164
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4078
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4078:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3163 = *_temp_3170  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4079:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4079
! FOR STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3175 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3176 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3175  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3171:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3176 then goto _Label_3174		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3174
_Label_3172:
	mov	2437,r13		! source line 2437
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0AS",r10
!   _temp_3177 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3177 [i ] into _temp_3178
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_3179 = _temp_3178 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3179 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2439,r13		! source line 2439
	mov	"\0\0SE",r10
!   _temp_3180 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3180 [i ] into _temp_3181
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0SE",r10
!   _temp_3183 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3183 [i ] into _temp_3184
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_3182 = _temp_3184		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3185 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3182  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3173:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3171
! END FOR
_Label_3174:
! ASSIGNMENT STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0SE",r10
!   _temp_3188 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2447,r13		! source line 2447
	mov	"\0\0AS",r10
!   _temp_3189 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3191 = &_temp_3190
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3191 = _temp_3191 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3193 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4080:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4080
!   _temp_3193 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3195:
!   Data Move: *_temp_3191 = _temp_3193  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4081:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4081
!   _temp_3191 = _temp_3191 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3192 = _temp_3192 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3192) then goto _Label_3195
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3195
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3196 = &_temp_3190
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4082
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4082:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3189 = *_temp_3196  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4083:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4083
! FOR STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3201 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3202 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3201  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3197:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3202 then goto _Label_3200		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3200
_Label_3198:
	mov	2449,r13		! source line 2449
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2450,r13		! source line 2450
	mov	"\0\0AS",r10
!   _temp_3203 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3203 [i ] into _temp_3204
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_3205 = _temp_3204 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3205 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0SE",r10
!   _temp_3207 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3207 [i ] into _temp_3208
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_3206 = _temp_3208		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3209 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3206  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3199:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3197
! END FOR
_Label_3200:
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4084:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4084
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0AS",r10
!   _temp_3211 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3212 = _temp_3211 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3212 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0AS",r10
	mov	2461,r13		! source line 2461
	mov	"\0\0SE",r10
!   _temp_3213 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0SE",r10
!   _temp_3214 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_3215
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3216
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3217
	.word	-12
	.word	4
	.word	_Label_3218
	.word	-16
	.word	4
	.word	_Label_3219
	.word	-20
	.word	4
	.word	_Label_3220
	.word	-24
	.word	4
	.word	_Label_3221
	.word	-28
	.word	4
	.word	_Label_3222
	.word	-32
	.word	4
	.word	_Label_3223
	.word	-36
	.word	4
	.word	_Label_3224
	.word	-40
	.word	4
	.word	_Label_3225
	.word	-44
	.word	4
	.word	_Label_3226
	.word	-48
	.word	4
	.word	_Label_3227
	.word	-52
	.word	4
	.word	_Label_3228
	.word	-56
	.word	4
	.word	_Label_3229
	.word	-60
	.word	4
	.word	_Label_3230
	.word	-64
	.word	4
	.word	_Label_3231
	.word	-68
	.word	4
	.word	_Label_3232
	.word	-72
	.word	4
	.word	_Label_3233
	.word	-100
	.word	28
	.word	_Label_3234
	.word	-104
	.word	4
	.word	_Label_3235
	.word	-108
	.word	4
	.word	_Label_3236
	.word	-392
	.word	284
	.word	_Label_3237
	.word	-396
	.word	4
	.word	_Label_3238
	.word	-400
	.word	4
	.word	_Label_3239
	.word	-404
	.word	4
	.word	_Label_3240
	.word	-408
	.word	4
	.word	_Label_3241
	.word	-412
	.word	4
	.word	_Label_3242
	.word	-416
	.word	4
	.word	_Label_3243
	.word	-420
	.word	4
	.word	_Label_3244
	.word	-424
	.word	4
	.word	_Label_3245
	.word	-428
	.word	4
	.word	_Label_3246
	.word	-432
	.word	4
	.word	_Label_3247
	.word	-436
	.word	4
	.word	_Label_3248
	.word	-440
	.word	4
	.word	_Label_3249
	.word	-444
	.word	4
	.word	_Label_3250
	.word	-448
	.word	4
	.word	_Label_3251
	.word	-452
	.word	4
	.word	_Label_3252
	.word	-456
	.word	4
	.word	_Label_3253
	.word	-460
	.word	4
	.word	_Label_3254
	.word	-500
	.word	40
	.word	_Label_3255
	.word	-504
	.word	4
	.word	_Label_3256
	.word	-508
	.word	4
	.word	_Label_3257
	.word	-912
	.word	404
	.word	_Label_3258
	.word	-916
	.word	4
	.word	_Label_3259
	.word	-920
	.word	4
	.word	_Label_3260
	.word	-924
	.word	4
	.word	_Label_3261
	.word	-928
	.word	4
	.word	_Label_3262
	.word	-932
	.word	4
	.word	_Label_3263
	.word	-936
	.word	4
	.word	_Label_3264
	.word	-940
	.word	4
	.word	_Label_3265
	.word	-944
	.word	4
	.word	0
_Label_3215:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3216:
	.ascii	"Pself\0"
	.align
_Label_3217:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3218:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3219:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3220:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3221:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3222:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3223:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3224:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3225:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3226:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3192\0"
	.align
_Label_3235:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3237:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3181\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3180\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3179\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3249:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3170\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3168\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3167\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3166\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3164\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3163\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3162\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3265:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_4085:
	push	r0
	sub	r1,1,r1
	bne	_Label_4085
	mov	2469,r13		! source line 2469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0SE",r10
!   _temp_3266 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_3267 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3267  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2472,r13		! source line 2472
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3272 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3273 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3272  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3268:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3273 then goto _Label_3271		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3271
_Label_3269:
	mov	2473,r13		! source line 2473
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3274 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3274  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2474,r13		! source line 2474
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2475,r13		! source line 2475
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3275 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3275  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2476,r13		! source line 2476
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2477,r13		! source line 2477
	mov	"\0\0SE",r10
!   _temp_3276 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3276 [i ] into _temp_3277
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3270:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3268
! END FOR
_Label_3271:
! CALL STATEMENT...
!   _temp_3278 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3278  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2479,r13		! source line 2479
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0SE",r10
!   _temp_3279 = _function_185_printFCB
	set	_function_185_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3280 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3279  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2481,r13		! source line 2481
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3281 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3281  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2482,r13		! source line 2482
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3286 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3287 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3286  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3282:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3287 then goto _Label_3285		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3285
_Label_3283:
	mov	2483,r13		! source line 2483
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3288 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3288  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2484,r13		! source line 2484
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2485,r13		! source line 2485
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3289 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3289  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2486,r13		! source line 2486
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3291 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3291 [i ] into _temp_3292
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_3290 = _temp_3292		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3290  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2487,r13		! source line 2487
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3293 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3293  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2488,r13		! source line 2488
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0SE",r10
!   _temp_3294 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3294 [i ] into _temp_3295
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_3284:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3282
! END FOR
_Label_3285:
! CALL STATEMENT...
!   _temp_3296 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3296  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2491,r13		! source line 2491
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2492,r13		! source line 2492
	mov	"\0\0SE",r10
!   _temp_3297 = _function_184_printOpen
	set	_function_184_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3298 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3297  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0SE",r10
!   _temp_3299 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_3300
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3301
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3302
	.word	-12
	.word	4
	.word	_Label_3303
	.word	-16
	.word	4
	.word	_Label_3304
	.word	-20
	.word	4
	.word	_Label_3305
	.word	-24
	.word	4
	.word	_Label_3306
	.word	-28
	.word	4
	.word	_Label_3307
	.word	-32
	.word	4
	.word	_Label_3308
	.word	-36
	.word	4
	.word	_Label_3309
	.word	-40
	.word	4
	.word	_Label_3310
	.word	-44
	.word	4
	.word	_Label_3311
	.word	-48
	.word	4
	.word	_Label_3312
	.word	-52
	.word	4
	.word	_Label_3313
	.word	-56
	.word	4
	.word	_Label_3314
	.word	-60
	.word	4
	.word	_Label_3315
	.word	-64
	.word	4
	.word	_Label_3316
	.word	-68
	.word	4
	.word	_Label_3317
	.word	-72
	.word	4
	.word	_Label_3318
	.word	-76
	.word	4
	.word	_Label_3319
	.word	-80
	.word	4
	.word	_Label_3320
	.word	-84
	.word	4
	.word	_Label_3321
	.word	-88
	.word	4
	.word	_Label_3322
	.word	-92
	.word	4
	.word	_Label_3323
	.word	-96
	.word	4
	.word	_Label_3324
	.word	-100
	.word	4
	.word	_Label_3325
	.word	-104
	.word	4
	.word	_Label_3326
	.word	-108
	.word	4
	.word	_Label_3327
	.word	-112
	.word	4
	.word	_Label_3328
	.word	-116
	.word	4
	.word	0
_Label_3300:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3301:
	.ascii	"Pself\0"
	.align
_Label_3302:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3303:
	.byte	'?'
	.ascii	"_temp_3298\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3294\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3293\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3292\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3291\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3288\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3287\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3286\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3281\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3277\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3276\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3275\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3274\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3273\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3272\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3328:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_4086:
	push	r0
	sub	r1,1,r1
	bne	_Label_4086
	mov	2498,r13		! source line 2498
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0AS",r10
	mov	2514,r13		! source line 2514
	mov	"\0\0SE",r10
!   _temp_3329 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3330
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3330
	jmp	_Label_3331
_Label_3330:
! THEN...
	mov	2516,r13		! source line 2516
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3331:
! SEND STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0SE",r10
!   _temp_3332 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0WH",r10
_Label_3333:
	mov	2521,r13		! source line 2521
	mov	"\0\0SE",r10
!   _temp_3336 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_3334 else goto _Label_3335
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3335
	jmp	_Label_3334
_Label_3334:
	mov	2521,r13		! source line 2521
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0SE",r10
!   _temp_3337 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3338 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3337  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3333
_Label_3335:
! ASSIGNMENT STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0AS",r10
	mov	2524,r13		! source line 2524
	mov	"\0\0SE",r10
!   _temp_3339 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3340 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3340 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3341 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3341 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3342 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3342 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0SE",r10
!   _temp_3343 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_3344
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3345
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3346
	.word	12
	.word	4
	.word	_Label_3347
	.word	-12
	.word	4
	.word	_Label_3348
	.word	-16
	.word	4
	.word	_Label_3349
	.word	-20
	.word	4
	.word	_Label_3350
	.word	-24
	.word	4
	.word	_Label_3351
	.word	-28
	.word	4
	.word	_Label_3352
	.word	-32
	.word	4
	.word	_Label_3353
	.word	-36
	.word	4
	.word	_Label_3354
	.word	-40
	.word	4
	.word	_Label_3355
	.word	-44
	.word	4
	.word	_Label_3356
	.word	-48
	.word	4
	.word	_Label_3357
	.word	-52
	.word	4
	.word	_Label_3358
	.word	-56
	.word	4
	.word	0
_Label_3344:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3345:
	.ascii	"Pself\0"
	.align
_Label_3346:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3343\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3342\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3341\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3340\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3339\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3338\0"
	.align
_Label_3353:
	.byte	'?'
	.ascii	"_temp_3337\0"
	.align
_Label_3354:
	.byte	'?'
	.ascii	"_temp_3336\0"
	.align
_Label_3355:
	.byte	'?'
	.ascii	"_temp_3332\0"
	.align
_Label_3356:
	.byte	'?'
	.ascii	"_temp_3329\0"
	.align
_Label_3357:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3358:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_4087:
	push	r0
	sub	r1,1,r1
	bne	_Label_4087
	mov	2539,r13		! source line 2539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3360		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3360
!	jmp	_Label_3359
_Label_3359:
! THEN...
	mov	2570,r13		! source line 2570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3361 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3361  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2570,r13		! source line 2570
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3360:
! ASSIGNMENT STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0WH",r10
_Label_3362:
!   if numFiles <= 0 then goto _Label_3364		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3364
!	jmp	_Label_3363
_Label_3363:
	mov	2580,r13		! source line 2580
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3365 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3365  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2581,r13		! source line 2581
	mov	"\0\0CA",r10
	call	_function_186_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3366 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3366  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2583,r13		! source line 2583
	mov	"\0\0CA",r10
	call	_function_186_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3367 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3367  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2585,r13		! source line 2585
	mov	"\0\0CA",r10
	call	_function_186_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3371 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3371 then goto _Label_3369		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3369
!	jmp	_Label_3370
_Label_3370:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3373
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
	store	r2,[r14+-108]
!   _temp_3372 = _temp_3373		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3372  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2588,r13		! source line 2588
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3368 else goto _Label_3369
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3369
	jmp	_Label_3368
_Label_3368:
! THEN...
	mov	2589,r13		! source line 2589
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0BR",r10
	jmp	_Label_3364
! END IF...
_Label_3369:
! ASSIGNMENT STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3362
_Label_3364:
! IF STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3375		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3375
!	jmp	_Label_3374
_Label_3374:
! THEN...
	mov	2597,r13		! source line 2597
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3375:
! SEND STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0SE",r10
!   _temp_3376 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3381 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3382 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3381  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3377:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3382 then goto _Label_3380		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3380
_Label_3378:
	mov	2602,r13		! source line 2602
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0AS",r10
!   _temp_3383 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3383 [i ] into _temp_3384
!     make sure index expr is >= 0
	load	[r14+-136],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_3384		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3388 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3387 = *_temp_3388  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3387 != start then goto _Label_3386		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3386
!	jmp	_Label_3385
_Label_3385:
! THEN...
	mov	2605,r13		! source line 2605
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3389 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3392 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3391 = *_temp_3392  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3390 = _temp_3391 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3389 = _temp_3390  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0SE",r10
!   _temp_3393 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3386:
!   Increment the FOR-LOOP index variable and jump back
_Label_3379:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3377
! END FOR
_Label_3380:
! WHILE STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0WH",r10
_Label_3394:
	mov	2612,r13		! source line 2612
	mov	"\0\0SE",r10
!   _temp_3397 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_3395 else goto _Label_3396
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3396
	jmp	_Label_3395
_Label_3395:
	mov	2612,r13		! source line 2612
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0SE",r10
!   _temp_3398 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3399 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3398  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3394
_Label_3396:
! ASSIGNMENT STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0AS",r10
	mov	2615,r13		! source line 2615
	mov	"\0\0SE",r10
!   _temp_3400 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0SE",r10
!   _temp_3401 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3402 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3402 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3403 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3403 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3404 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3404 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3409 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3408 = *_temp_3409  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3408 < 0 then goto _Label_3407		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3407
	jmp	_Label_3405
_Label_3407:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3410 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3410 ) then goto _Label_3406		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3406
!	jmp	_Label_3405
_Label_3405:
! THEN...
	mov	2625,r13		! source line 2625
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3411 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3411  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2625,r13		! source line 2625
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3406:
! RETURN STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_3412
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3413
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3414
	.word	12
	.word	4
	.word	_Label_3415
	.word	-12
	.word	4
	.word	_Label_3416
	.word	-16
	.word	4
	.word	_Label_3417
	.word	-20
	.word	4
	.word	_Label_3418
	.word	-24
	.word	4
	.word	_Label_3419
	.word	-28
	.word	4
	.word	_Label_3420
	.word	-32
	.word	4
	.word	_Label_3421
	.word	-36
	.word	4
	.word	_Label_3422
	.word	-40
	.word	4
	.word	_Label_3423
	.word	-44
	.word	4
	.word	_Label_3424
	.word	-48
	.word	4
	.word	_Label_3425
	.word	-52
	.word	4
	.word	_Label_3426
	.word	-56
	.word	4
	.word	_Label_3427
	.word	-60
	.word	4
	.word	_Label_3428
	.word	-64
	.word	4
	.word	_Label_3429
	.word	-68
	.word	4
	.word	_Label_3430
	.word	-72
	.word	4
	.word	_Label_3431
	.word	-76
	.word	4
	.word	_Label_3432
	.word	-80
	.word	4
	.word	_Label_3433
	.word	-84
	.word	4
	.word	_Label_3434
	.word	-88
	.word	4
	.word	_Label_3435
	.word	-92
	.word	4
	.word	_Label_3436
	.word	-96
	.word	4
	.word	_Label_3437
	.word	-100
	.word	4
	.word	_Label_3438
	.word	-104
	.word	4
	.word	_Label_3439
	.word	-108
	.word	4
	.word	_Label_3440
	.word	-112
	.word	4
	.word	_Label_3441
	.word	-116
	.word	4
	.word	_Label_3442
	.word	-120
	.word	4
	.word	_Label_3443
	.word	-124
	.word	4
	.word	_Label_3444
	.word	-128
	.word	4
	.word	_Label_3445
	.word	-132
	.word	4
	.word	_Label_3446
	.word	-136
	.word	4
	.word	_Label_3447
	.word	-140
	.word	4
	.word	_Label_3448
	.word	-144
	.word	4
	.word	_Label_3449
	.word	-148
	.word	4
	.word	_Label_3450
	.word	-152
	.word	4
	.word	_Label_3451
	.word	-156
	.word	4
	.word	_Label_3452
	.word	-160
	.word	4
	.word	0
_Label_3412:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3413:
	.ascii	"Pself\0"
	.align
_Label_3414:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3415:
	.byte	'?'
	.ascii	"_temp_3411\0"
	.align
_Label_3416:
	.byte	'?'
	.ascii	"_temp_3410\0"
	.align
_Label_3417:
	.byte	'?'
	.ascii	"_temp_3409\0"
	.align
_Label_3418:
	.byte	'?'
	.ascii	"_temp_3408\0"
	.align
_Label_3419:
	.byte	'?'
	.ascii	"_temp_3404\0"
	.align
_Label_3420:
	.byte	'?'
	.ascii	"_temp_3403\0"
	.align
_Label_3421:
	.byte	'?'
	.ascii	"_temp_3402\0"
	.align
_Label_3422:
	.byte	'?'
	.ascii	"_temp_3401\0"
	.align
_Label_3423:
	.byte	'?'
	.ascii	"_temp_3400\0"
	.align
_Label_3424:
	.byte	'?'
	.ascii	"_temp_3399\0"
	.align
_Label_3425:
	.byte	'?'
	.ascii	"_temp_3398\0"
	.align
_Label_3426:
	.byte	'?'
	.ascii	"_temp_3397\0"
	.align
_Label_3427:
	.byte	'?'
	.ascii	"_temp_3393\0"
	.align
_Label_3428:
	.byte	'?'
	.ascii	"_temp_3392\0"
	.align
_Label_3429:
	.byte	'?'
	.ascii	"_temp_3391\0"
	.align
_Label_3430:
	.byte	'?'
	.ascii	"_temp_3390\0"
	.align
_Label_3431:
	.byte	'?'
	.ascii	"_temp_3389\0"
	.align
_Label_3432:
	.byte	'?'
	.ascii	"_temp_3388\0"
	.align
_Label_3433:
	.byte	'?'
	.ascii	"_temp_3387\0"
	.align
_Label_3434:
	.byte	'?'
	.ascii	"_temp_3384\0"
	.align
_Label_3435:
	.byte	'?'
	.ascii	"_temp_3383\0"
	.align
_Label_3436:
	.byte	'?'
	.ascii	"_temp_3382\0"
	.align
_Label_3437:
	.byte	'?'
	.ascii	"_temp_3381\0"
	.align
_Label_3438:
	.byte	'?'
	.ascii	"_temp_3376\0"
	.align
_Label_3439:
	.byte	'?'
	.ascii	"_temp_3373\0"
	.align
_Label_3440:
	.byte	'?'
	.ascii	"_temp_3372\0"
	.align
_Label_3441:
	.byte	'?'
	.ascii	"_temp_3371\0"
	.align
_Label_3442:
	.byte	'?'
	.ascii	"_temp_3367\0"
	.align
_Label_3443:
	.byte	'?'
	.ascii	"_temp_3366\0"
	.align
_Label_3444:
	.byte	'?'
	.ascii	"_temp_3365\0"
	.align
_Label_3445:
	.byte	'?'
	.ascii	"_temp_3361\0"
	.align
_Label_3446:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3447:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3448:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3449:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3450:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3451:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3452:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_4088:
	push	r0
	sub	r1,1,r1
	bne	_Label_4088
	mov	2640,r13		! source line 2640
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0IF",r10
!   _temp_3455 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3455 then goto _Label_3454		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3454
!	jmp	_Label_3453
_Label_3453:
! THEN...
	mov	2643,r13		! source line 2643
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3454:
! SEND STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0SE",r10
!   _temp_3456 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0SE",r10
!   _temp_3457 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3458 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3458  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3459 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3462 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3461 = *_temp_3462  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3460 = _temp_3461 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3459 = _temp_3460  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3466 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3465 = *_temp_3466  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3465 > 0 then goto _Label_3464		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3464
!	jmp	_Label_3463
_Label_3463:
! THEN...
	mov	2650,r13		! source line 2650
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0SE",r10
!   _temp_3467 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0SE",r10
!   _temp_3468 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3469 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3468  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3470 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3473 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3472 = *_temp_3473  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3471 = _temp_3472 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3470 = _temp_3471  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3477 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3476 = *_temp_3477  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3476 > 0 then goto _Label_3475		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3475
!	jmp	_Label_3474
_Label_3474:
! THEN...
	mov	2654,r13		! source line 2654
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0SE",r10
!   _temp_3478 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0SE",r10
!   _temp_3479 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3480 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3479  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3475:
! END IF...
_Label_3464:
! SEND STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0SE",r10
!   _temp_3481 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_3482
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3483
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3484
	.word	12
	.word	4
	.word	_Label_3485
	.word	-12
	.word	4
	.word	_Label_3486
	.word	-16
	.word	4
	.word	_Label_3487
	.word	-20
	.word	4
	.word	_Label_3488
	.word	-24
	.word	4
	.word	_Label_3489
	.word	-28
	.word	4
	.word	_Label_3490
	.word	-32
	.word	4
	.word	_Label_3491
	.word	-36
	.word	4
	.word	_Label_3492
	.word	-40
	.word	4
	.word	_Label_3493
	.word	-44
	.word	4
	.word	_Label_3494
	.word	-48
	.word	4
	.word	_Label_3495
	.word	-52
	.word	4
	.word	_Label_3496
	.word	-56
	.word	4
	.word	_Label_3497
	.word	-60
	.word	4
	.word	_Label_3498
	.word	-64
	.word	4
	.word	_Label_3499
	.word	-68
	.word	4
	.word	_Label_3500
	.word	-72
	.word	4
	.word	_Label_3501
	.word	-76
	.word	4
	.word	_Label_3502
	.word	-80
	.word	4
	.word	_Label_3503
	.word	-84
	.word	4
	.word	_Label_3504
	.word	-88
	.word	4
	.word	_Label_3505
	.word	-92
	.word	4
	.word	_Label_3506
	.word	-96
	.word	4
	.word	_Label_3507
	.word	-100
	.word	4
	.word	_Label_3508
	.word	-104
	.word	4
	.word	0
_Label_3482:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3483:
	.ascii	"Pself\0"
	.align
_Label_3484:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3485:
	.byte	'?'
	.ascii	"_temp_3481\0"
	.align
_Label_3486:
	.byte	'?'
	.ascii	"_temp_3480\0"
	.align
_Label_3487:
	.byte	'?'
	.ascii	"_temp_3479\0"
	.align
_Label_3488:
	.byte	'?'
	.ascii	"_temp_3478\0"
	.align
_Label_3489:
	.byte	'?'
	.ascii	"_temp_3477\0"
	.align
_Label_3490:
	.byte	'?'
	.ascii	"_temp_3476\0"
	.align
_Label_3491:
	.byte	'?'
	.ascii	"_temp_3473\0"
	.align
_Label_3492:
	.byte	'?'
	.ascii	"_temp_3472\0"
	.align
_Label_3493:
	.byte	'?'
	.ascii	"_temp_3471\0"
	.align
_Label_3494:
	.byte	'?'
	.ascii	"_temp_3470\0"
	.align
_Label_3495:
	.byte	'?'
	.ascii	"_temp_3469\0"
	.align
_Label_3496:
	.byte	'?'
	.ascii	"_temp_3468\0"
	.align
_Label_3497:
	.byte	'?'
	.ascii	"_temp_3467\0"
	.align
_Label_3498:
	.byte	'?'
	.ascii	"_temp_3466\0"
	.align
_Label_3499:
	.byte	'?'
	.ascii	"_temp_3465\0"
	.align
_Label_3500:
	.byte	'?'
	.ascii	"_temp_3462\0"
	.align
_Label_3501:
	.byte	'?'
	.ascii	"_temp_3461\0"
	.align
_Label_3502:
	.byte	'?'
	.ascii	"_temp_3460\0"
	.align
_Label_3503:
	.byte	'?'
	.ascii	"_temp_3459\0"
	.align
_Label_3504:
	.byte	'?'
	.ascii	"_temp_3458\0"
	.align
_Label_3505:
	.byte	'?'
	.ascii	"_temp_3457\0"
	.align
_Label_3506:
	.byte	'?'
	.ascii	"_temp_3456\0"
	.align
_Label_3507:
	.byte	'?'
	.ascii	"_temp_3455\0"
	.align
_Label_3508:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_4089:
	push	r0
	sub	r1,1,r1
	bne	_Label_4089
	mov	2663,r13		! source line 2663
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2668,r13		! source line 2668
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3512 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3511 = *_temp_3512  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3511) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3513 = _temp_3511 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3513 ) then goto _Label_3510		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3510
!	jmp	_Label_3509
_Label_3509:
! THEN...
	mov	2669,r13		! source line 2669
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2669,r13		! source line 2669
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3518 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3517 = *_temp_3518  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3517) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3519 = _temp_3517 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3516 = *_temp_3519  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3516 >= 0 then goto _Label_3515		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3515
!	jmp	_Label_3514
_Label_3514:
! THEN...
	mov	2670,r13		! source line 2670
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3520 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3520  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2670,r13		! source line 2670
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3515:
! ASSIGNMENT STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3522 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3521 = *_temp_3522  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3521) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3523 = _temp_3521 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3523 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3527 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3526 = *_temp_3527  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3526) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3528 = _temp_3526 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3525 = *_temp_3528  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3531 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3530 = *_temp_3531  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3530) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3532 = _temp_3530 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3529 = *_temp_3532  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3524 = _temp_3525 + _temp_3529		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3535 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3534 = *_temp_3535  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3534) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3536 = _temp_3534 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3533 = *_temp_3536  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3537 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3524  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3533  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_3510:
! RETURN STATEMENT...
	mov	2668,r13		! source line 2668
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_3538
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3539
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3540
	.word	12
	.word	4
	.word	_Label_3541
	.word	-12
	.word	4
	.word	_Label_3542
	.word	-16
	.word	4
	.word	_Label_3543
	.word	-20
	.word	4
	.word	_Label_3544
	.word	-24
	.word	4
	.word	_Label_3545
	.word	-28
	.word	4
	.word	_Label_3546
	.word	-32
	.word	4
	.word	_Label_3547
	.word	-36
	.word	4
	.word	_Label_3548
	.word	-40
	.word	4
	.word	_Label_3549
	.word	-44
	.word	4
	.word	_Label_3550
	.word	-48
	.word	4
	.word	_Label_3551
	.word	-52
	.word	4
	.word	_Label_3552
	.word	-56
	.word	4
	.word	_Label_3553
	.word	-60
	.word	4
	.word	_Label_3554
	.word	-64
	.word	4
	.word	_Label_3555
	.word	-68
	.word	4
	.word	_Label_3556
	.word	-72
	.word	4
	.word	_Label_3557
	.word	-76
	.word	4
	.word	_Label_3558
	.word	-80
	.word	4
	.word	_Label_3559
	.word	-84
	.word	4
	.word	_Label_3560
	.word	-88
	.word	4
	.word	_Label_3561
	.word	-92
	.word	4
	.word	_Label_3562
	.word	-96
	.word	4
	.word	_Label_3563
	.word	-100
	.word	4
	.word	_Label_3564
	.word	-104
	.word	4
	.word	_Label_3565
	.word	-108
	.word	4
	.word	0
_Label_3538:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3539:
	.ascii	"Pself\0"
	.align
_Label_3540:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3541:
	.byte	'?'
	.ascii	"_temp_3537\0"
	.align
_Label_3542:
	.byte	'?'
	.ascii	"_temp_3536\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3535\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3534\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3533\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3531\0"
	.align
_Label_3548:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3549:
	.byte	'?'
	.ascii	"_temp_3529\0"
	.align
_Label_3550:
	.byte	'?'
	.ascii	"_temp_3528\0"
	.align
_Label_3551:
	.byte	'?'
	.ascii	"_temp_3527\0"
	.align
_Label_3552:
	.byte	'?'
	.ascii	"_temp_3526\0"
	.align
_Label_3553:
	.byte	'?'
	.ascii	"_temp_3525\0"
	.align
_Label_3554:
	.byte	'?'
	.ascii	"_temp_3524\0"
	.align
_Label_3555:
	.byte	'?'
	.ascii	"_temp_3523\0"
	.align
_Label_3556:
	.byte	'?'
	.ascii	"_temp_3522\0"
	.align
_Label_3557:
	.byte	'?'
	.ascii	"_temp_3521\0"
	.align
_Label_3558:
	.byte	'?'
	.ascii	"_temp_3520\0"
	.align
_Label_3559:
	.byte	'?'
	.ascii	"_temp_3519\0"
	.align
_Label_3560:
	.byte	'?'
	.ascii	"_temp_3518\0"
	.align
_Label_3561:
	.byte	'?'
	.ascii	"_temp_3517\0"
	.align
_Label_3562:
	.byte	'?'
	.ascii	"_temp_3516\0"
	.align
_Label_3563:
	.byte	'?'
	.ascii	"_temp_3513\0"
	.align
_Label_3564:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3565:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_4090:
	push	r0
	sub	r1,1,r1
	bne	_Label_4090
	mov	2682,r13		! source line 2682
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0SE",r10
!   _temp_3566 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2698,r13		! source line 2698
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3572		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3572
!   _temp_3571 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3573
_Label_3572:
!   _temp_3571 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3573:
!   if _temp_3571 then goto _Label_3570 else goto _Label_3567
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3567
	jmp	_Label_3570
_Label_3570:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3576 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3575 = *_temp_3576  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3575 == 0 then goto _Label_3577		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3577
!   _temp_3574 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3578
_Label_3577:
!   _temp_3574 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3578:
!   if _temp_3574 then goto _Label_3569 else goto _Label_3567
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3567
	jmp	_Label_3569
_Label_3569:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3581 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3580 = *_temp_3581  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3580) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3582 = _temp_3580 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3579 = *_temp_3582  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3579 >= 0 then goto _Label_3568		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3568
!	jmp	_Label_3567
_Label_3567:
! THEN...
	mov	2699,r13		! source line 2699
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3583 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3583  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2699,r13		! source line 2699
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3568:
! ASSIGNMENT STATEMENT...
	mov	2701,r13		! source line 2701
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3584 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3584  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0WH",r10
_Label_3585:
!   if numBytes <= 0 then goto _Label_3587		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3587
!	jmp	_Label_3586
_Label_3586:
	mov	2702,r13		! source line 2702
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3591 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3590 = *_temp_3591  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3590 == sector then goto _Label_3589		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3589
!	jmp	_Label_3588
_Label_3588:
! THEN...
	mov	2717,r13		! source line 2717
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3592) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2719,r13		! source line 2719
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3595 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3594 = *_temp_3595  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3593 = sector + _temp_3594		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3597 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3596 = *_temp_3597  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3598 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3593  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3596  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3599 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3599 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2723,r13		! source line 2723
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3600 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3600 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3589:
! ASSIGNMENT STATEMENT...
	mov	2725,r13		! source line 2725
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3602 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3601 = *_temp_3602  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3601 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0AS",r10
!   _temp_3603 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3603  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2726,r13		! source line 2726
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2730,r13		! source line 2730
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2733,r13		! source line 2733
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3585
_Label_3587:
! SEND STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0SE",r10
!   _temp_3604 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2741,r13		! source line 2741
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_3605
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3606
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3607
	.word	12
	.word	4
	.word	_Label_3608
	.word	16
	.word	4
	.word	_Label_3609
	.word	20
	.word	4
	.word	_Label_3610
	.word	24
	.word	4
	.word	_Label_3611
	.word	-16
	.word	4
	.word	_Label_3612
	.word	-20
	.word	4
	.word	_Label_3613
	.word	-24
	.word	4
	.word	_Label_3614
	.word	-28
	.word	4
	.word	_Label_3615
	.word	-32
	.word	4
	.word	_Label_3616
	.word	-36
	.word	4
	.word	_Label_3617
	.word	-40
	.word	4
	.word	_Label_3618
	.word	-44
	.word	4
	.word	_Label_3619
	.word	-48
	.word	4
	.word	_Label_3620
	.word	-52
	.word	4
	.word	_Label_3621
	.word	-56
	.word	4
	.word	_Label_3622
	.word	-60
	.word	4
	.word	_Label_3623
	.word	-64
	.word	4
	.word	_Label_3624
	.word	-68
	.word	4
	.word	_Label_3625
	.word	-72
	.word	4
	.word	_Label_3626
	.word	-76
	.word	4
	.word	_Label_3627
	.word	-80
	.word	4
	.word	_Label_3628
	.word	-84
	.word	4
	.word	_Label_3629
	.word	-88
	.word	4
	.word	_Label_3630
	.word	-92
	.word	4
	.word	_Label_3631
	.word	-96
	.word	4
	.word	_Label_3632
	.word	-100
	.word	4
	.word	_Label_3633
	.word	-104
	.word	4
	.word	_Label_3634
	.word	-9
	.word	1
	.word	_Label_3635
	.word	-10
	.word	1
	.word	_Label_3636
	.word	-108
	.word	4
	.word	_Label_3637
	.word	-112
	.word	4
	.word	_Label_3638
	.word	-116
	.word	4
	.word	_Label_3639
	.word	-120
	.word	4
	.word	_Label_3640
	.word	-124
	.word	4
	.word	_Label_3641
	.word	-128
	.word	4
	.word	0
_Label_3605:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3606:
	.ascii	"Pself\0"
	.align
_Label_3607:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3608:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3609:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3610:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3611:
	.byte	'?'
	.ascii	"_temp_3604\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3603\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3602\0"
	.align
_Label_3614:
	.byte	'?'
	.ascii	"_temp_3601\0"
	.align
_Label_3615:
	.byte	'?'
	.ascii	"_temp_3600\0"
	.align
_Label_3616:
	.byte	'?'
	.ascii	"_temp_3599\0"
	.align
_Label_3617:
	.byte	'?'
	.ascii	"_temp_3598\0"
	.align
_Label_3618:
	.byte	'?'
	.ascii	"_temp_3597\0"
	.align
_Label_3619:
	.byte	'?'
	.ascii	"_temp_3596\0"
	.align
_Label_3620:
	.byte	'?'
	.ascii	"_temp_3595\0"
	.align
_Label_3621:
	.byte	'?'
	.ascii	"_temp_3594\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3593\0"
	.align
_Label_3623:
	.byte	'?'
	.ascii	"_temp_3592\0"
	.align
_Label_3624:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3625:
	.byte	'?'
	.ascii	"_temp_3590\0"
	.align
_Label_3626:
	.byte	'?'
	.ascii	"_temp_3584\0"
	.align
_Label_3627:
	.byte	'?'
	.ascii	"_temp_3583\0"
	.align
_Label_3628:
	.byte	'?'
	.ascii	"_temp_3582\0"
	.align
_Label_3629:
	.byte	'?'
	.ascii	"_temp_3581\0"
	.align
_Label_3630:
	.byte	'?'
	.ascii	"_temp_3580\0"
	.align
_Label_3631:
	.byte	'?'
	.ascii	"_temp_3579\0"
	.align
_Label_3632:
	.byte	'?'
	.ascii	"_temp_3576\0"
	.align
_Label_3633:
	.byte	'?'
	.ascii	"_temp_3575\0"
	.align
_Label_3634:
	.byte	'C'
	.ascii	"_temp_3574\0"
	.align
_Label_3635:
	.byte	'C'
	.ascii	"_temp_3571\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3566\0"
	.align
_Label_3637:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3638:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3639:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3640:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3641:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_4091:
	push	r0
	sub	r1,1,r1
	bne	_Label_4091
	mov	2746,r13		! source line 2746
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0SE",r10
!   _temp_3642 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3648		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3648
!   _temp_3647 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3649
_Label_3648:
!   _temp_3647 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3649:
!   if _temp_3647 then goto _Label_3646 else goto _Label_3643
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3643
	jmp	_Label_3646
_Label_3646:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3652 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3651 = *_temp_3652  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3651 == 0 then goto _Label_3653		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3653
!   _temp_3650 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3654
_Label_3653:
!   _temp_3650 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3654:
!   if _temp_3650 then goto _Label_3645 else goto _Label_3643
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3643
	jmp	_Label_3645
_Label_3645:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3657 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3656 = *_temp_3657  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3656) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3658 = _temp_3656 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3655 = *_temp_3658  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3655 >= 0 then goto _Label_3644		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3644
!	jmp	_Label_3643
_Label_3643:
! THEN...
	mov	2764,r13		! source line 2764
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3659 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3659  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2764,r13		! source line 2764
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3644:
! ASSIGNMENT STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3660 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3660  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0WH",r10
_Label_3661:
!   if numBytes <= 0 then goto _Label_3663		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3663
!	jmp	_Label_3662
_Label_3662:
	mov	2767,r13		! source line 2767
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3667 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3666 = *_temp_3667  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3666 == sector then goto _Label_3665		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3665
!	jmp	_Label_3664
_Label_3664:
! THEN...
	mov	2783,r13		! source line 2783
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3668) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_3665:
! ASSIGNMENT STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3670 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3669 = *_temp_3670  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3669 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0AS",r10
!   _temp_3671 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3671  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2786,r13		! source line 2786
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3675 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3674 = *_temp_3675  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3674 != sector then goto _Label_3673		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3673
!	jmp	_Label_3672
_Label_3672:
	jmp	_Label_3676
_Label_3673:
! ELSE...
	mov	2789,r13		! source line 2789
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3679
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3679
	jmp	_Label_3678
_Label_3679:
!   if bytesToMove != 8192 then goto _Label_3678		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3678
!	jmp	_Label_3677
_Label_3677:
	jmp	_Label_3680
_Label_3678:
! ELSE...
	mov	2793,r13		! source line 2793
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3683 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3682 = *_temp_3683  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3681 = sector + _temp_3682		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3685 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3684 = *_temp_3685  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3686 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3681  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3684  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_3680:
! END IF...
_Label_3676:
! ASSIGNMENT STATEMENT...
	mov	2797,r13		! source line 2797
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3687 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3687 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3688 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3688 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2802,r13		! source line 2802
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2803,r13		! source line 2803
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2805,r13		! source line 2805
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3661
_Label_3663:
! SEND STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0SE",r10
!   _temp_3689 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_3690
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3692
	.word	12
	.word	4
	.word	_Label_3693
	.word	16
	.word	4
	.word	_Label_3694
	.word	20
	.word	4
	.word	_Label_3695
	.word	24
	.word	4
	.word	_Label_3696
	.word	-16
	.word	4
	.word	_Label_3697
	.word	-20
	.word	4
	.word	_Label_3698
	.word	-24
	.word	4
	.word	_Label_3699
	.word	-28
	.word	4
	.word	_Label_3700
	.word	-32
	.word	4
	.word	_Label_3701
	.word	-36
	.word	4
	.word	_Label_3702
	.word	-40
	.word	4
	.word	_Label_3703
	.word	-44
	.word	4
	.word	_Label_3704
	.word	-48
	.word	4
	.word	_Label_3705
	.word	-52
	.word	4
	.word	_Label_3706
	.word	-56
	.word	4
	.word	_Label_3707
	.word	-60
	.word	4
	.word	_Label_3708
	.word	-64
	.word	4
	.word	_Label_3709
	.word	-68
	.word	4
	.word	_Label_3710
	.word	-72
	.word	4
	.word	_Label_3711
	.word	-76
	.word	4
	.word	_Label_3712
	.word	-80
	.word	4
	.word	_Label_3713
	.word	-84
	.word	4
	.word	_Label_3714
	.word	-88
	.word	4
	.word	_Label_3715
	.word	-92
	.word	4
	.word	_Label_3716
	.word	-96
	.word	4
	.word	_Label_3717
	.word	-100
	.word	4
	.word	_Label_3718
	.word	-104
	.word	4
	.word	_Label_3719
	.word	-108
	.word	4
	.word	_Label_3720
	.word	-112
	.word	4
	.word	_Label_3721
	.word	-9
	.word	1
	.word	_Label_3722
	.word	-10
	.word	1
	.word	_Label_3723
	.word	-116
	.word	4
	.word	_Label_3724
	.word	-120
	.word	4
	.word	_Label_3725
	.word	-124
	.word	4
	.word	_Label_3726
	.word	-128
	.word	4
	.word	_Label_3727
	.word	-132
	.word	4
	.word	_Label_3728
	.word	-136
	.word	4
	.word	0
_Label_3690:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3691:
	.ascii	"Pself\0"
	.align
_Label_3692:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3693:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3694:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3695:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3696:
	.byte	'?'
	.ascii	"_temp_3689\0"
	.align
_Label_3697:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3698:
	.byte	'?'
	.ascii	"_temp_3687\0"
	.align
_Label_3699:
	.byte	'?'
	.ascii	"_temp_3686\0"
	.align
_Label_3700:
	.byte	'?'
	.ascii	"_temp_3685\0"
	.align
_Label_3701:
	.byte	'?'
	.ascii	"_temp_3684\0"
	.align
_Label_3702:
	.byte	'?'
	.ascii	"_temp_3683\0"
	.align
_Label_3703:
	.byte	'?'
	.ascii	"_temp_3682\0"
	.align
_Label_3704:
	.byte	'?'
	.ascii	"_temp_3681\0"
	.align
_Label_3705:
	.byte	'?'
	.ascii	"_temp_3675\0"
	.align
_Label_3706:
	.byte	'?'
	.ascii	"_temp_3674\0"
	.align
_Label_3707:
	.byte	'?'
	.ascii	"_temp_3671\0"
	.align
_Label_3708:
	.byte	'?'
	.ascii	"_temp_3670\0"
	.align
_Label_3709:
	.byte	'?'
	.ascii	"_temp_3669\0"
	.align
_Label_3710:
	.byte	'?'
	.ascii	"_temp_3668\0"
	.align
_Label_3711:
	.byte	'?'
	.ascii	"_temp_3667\0"
	.align
_Label_3712:
	.byte	'?'
	.ascii	"_temp_3666\0"
	.align
_Label_3713:
	.byte	'?'
	.ascii	"_temp_3660\0"
	.align
_Label_3714:
	.byte	'?'
	.ascii	"_temp_3659\0"
	.align
_Label_3715:
	.byte	'?'
	.ascii	"_temp_3658\0"
	.align
_Label_3716:
	.byte	'?'
	.ascii	"_temp_3657\0"
	.align
_Label_3717:
	.byte	'?'
	.ascii	"_temp_3656\0"
	.align
_Label_3718:
	.byte	'?'
	.ascii	"_temp_3655\0"
	.align
_Label_3719:
	.byte	'?'
	.ascii	"_temp_3652\0"
	.align
_Label_3720:
	.byte	'?'
	.ascii	"_temp_3651\0"
	.align
_Label_3721:
	.byte	'C'
	.ascii	"_temp_3650\0"
	.align
_Label_3722:
	.byte	'C'
	.ascii	"_temp_3647\0"
	.align
_Label_3723:
	.byte	'?'
	.ascii	"_temp_3642\0"
	.align
_Label_3724:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3725:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3726:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3727:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3728:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3729
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3729:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3730
	.word	_sourceFileName
	.word	357		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3730:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_4092:
	push	r0
	sub	r1,1,r1
	bne	_Label_4092
	mov	2850,r13		! source line 2850
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2852,r13		! source line 2852
	mov	"\0\0AS",r10
	mov	2852,r13		! source line 2852
	mov	"\0\0SE",r10
!   _temp_3731 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2854,r13		! source line 2854
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_3732
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3733
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3734
	.word	-12
	.word	4
	.word	0
_Label_3732:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3733:
	.ascii	"Pself\0"
	.align
_Label_3734:
	.byte	'?'
	.ascii	"_temp_3731\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_4093:
	push	r0
	sub	r1,1,r1
	bne	_Label_4093
	mov	2860,r13		! source line 2860
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3735 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3735  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2861,r13		! source line 2861
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2862,r13		! source line 2862
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3736 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3736  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2863,r13		! source line 2863
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2864,r13		! source line 2864
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3737 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3737  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2865,r13		! source line 2865
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2866,r13		! source line 2866
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3738 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3738  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2867,r13		! source line 2867
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2868,r13		! source line 2868
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3739 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3739  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2869,r13		! source line 2869
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2870,r13		! source line 2870
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3740 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3740  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2871,r13		! source line 2871
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2872,r13		! source line 2872
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2873,r13		! source line 2873
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_3741
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3742
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3743
	.word	-12
	.word	4
	.word	_Label_3744
	.word	-16
	.word	4
	.word	_Label_3745
	.word	-20
	.word	4
	.word	_Label_3746
	.word	-24
	.word	4
	.word	_Label_3747
	.word	-28
	.word	4
	.word	_Label_3748
	.word	-32
	.word	4
	.word	0
_Label_3741:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3742:
	.ascii	"Pself\0"
	.align
_Label_3743:
	.byte	'?'
	.ascii	"_temp_3740\0"
	.align
_Label_3744:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
_Label_3745:
	.byte	'?'
	.ascii	"_temp_3738\0"
	.align
_Label_3746:
	.byte	'?'
	.ascii	"_temp_3737\0"
	.align
_Label_3747:
	.byte	'?'
	.ascii	"_temp_3736\0"
	.align
_Label_3748:
	.byte	'?'
	.ascii	"_temp_3735\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3749
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3749:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3750
	.word	_sourceFileName
	.word	374		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3750:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_4094:
	push	r0
	sub	r1,1,r1
	bne	_Label_4094
	mov	2884,r13		! source line 2884
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3751 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3751  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2885,r13		! source line 2885
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2886,r13		! source line 2886
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3752 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3752  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2887,r13		! source line 2887
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2888,r13		! source line 2888
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3754		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3754
!	jmp	_Label_3753
_Label_3753:
! THEN...
	mov	2889,r13		! source line 2889
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2889,r13		! source line 2889
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_3755
_Label_3754:
! ELSE...
	mov	2891,r13		! source line 2891
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3756 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3756  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2891,r13		! source line 2891
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3755:
! RETURN STATEMENT...
	mov	2888,r13		! source line 2888
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_3757
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3758
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3759
	.word	-12
	.word	4
	.word	_Label_3760
	.word	-16
	.word	4
	.word	_Label_3761
	.word	-20
	.word	4
	.word	0
_Label_3757:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3758:
	.ascii	"Pself\0"
	.align
_Label_3759:
	.byte	'?'
	.ascii	"_temp_3756\0"
	.align
_Label_3760:
	.byte	'?'
	.ascii	"_temp_3752\0"
	.align
_Label_3761:
	.byte	'?'
	.ascii	"_temp_3751\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_4095:
	push	r0
	sub	r1,1,r1
	bne	_Label_4095
	mov	2897,r13		! source line 2897
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0SE",r10
!   _temp_3762 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3763 = _temp_3762 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2908,r13		! source line 2908
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2909,r13		! source line 2909
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2910,r13		! source line 2910
	mov	"\0\0SE",r10
!   _temp_3764 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3765 = _temp_3764 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0RE",r10
	mov	2911,r13		! source line 2911
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3768 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3767  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_3766  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3766  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_3769
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3770
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3771
	.word	12
	.word	4
	.word	_Label_3772
	.word	16
	.word	4
	.word	_Label_3773
	.word	-16
	.word	4
	.word	_Label_3774
	.word	-20
	.word	4
	.word	_Label_3775
	.word	-9
	.word	1
	.word	_Label_3776
	.word	-24
	.word	4
	.word	_Label_3777
	.word	-28
	.word	4
	.word	_Label_3778
	.word	-32
	.word	4
	.word	_Label_3779
	.word	-36
	.word	4
	.word	_Label_3780
	.word	-40
	.word	4
	.word	0
_Label_3769:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3770:
	.ascii	"Pself\0"
	.align
_Label_3771:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3772:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3773:
	.byte	'?'
	.ascii	"_temp_3768\0"
	.align
_Label_3774:
	.byte	'?'
	.ascii	"_temp_3767\0"
	.align
_Label_3775:
	.byte	'C'
	.ascii	"_temp_3766\0"
	.align
_Label_3776:
	.byte	'?'
	.ascii	"_temp_3765\0"
	.align
_Label_3777:
	.byte	'?'
	.ascii	"_temp_3764\0"
	.align
_Label_3778:
	.byte	'?'
	.ascii	"_temp_3763\0"
	.align
_Label_3779:
	.byte	'?'
	.ascii	"_temp_3762\0"
	.align
_Label_3780:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_4096:
	push	r0
	sub	r1,1,r1
	bne	_Label_4096
	mov	2916,r13		! source line 2916
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2921,r13		! source line 2921
	mov	"\0\0IF",r10
	mov	2921,r13		! source line 2921
	mov	"\0\0SE",r10
!   _temp_3784 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3785) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3784  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3783  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3783 then goto _Label_3782 else goto _Label_3781
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3781
	jmp	_Label_3782
_Label_3781:
! THEN...
	mov	2922,r13		! source line 2922
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3786 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3786  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2922,r13		! source line 2922
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3782:
! RETURN STATEMENT...
	mov	2924,r13		! source line 2924
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_3787
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3788
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3789
	.word	-16
	.word	4
	.word	_Label_3790
	.word	-20
	.word	4
	.word	_Label_3791
	.word	-24
	.word	4
	.word	_Label_3792
	.word	-9
	.word	1
	.word	_Label_3793
	.word	-28
	.word	4
	.word	0
_Label_3787:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3788:
	.ascii	"Pself\0"
	.align
_Label_3789:
	.byte	'?'
	.ascii	"_temp_3786\0"
	.align
_Label_3790:
	.byte	'?'
	.ascii	"_temp_3785\0"
	.align
_Label_3791:
	.byte	'?'
	.ascii	"_temp_3784\0"
	.align
_Label_3792:
	.byte	'C'
	.ascii	"_temp_3783\0"
	.align
_Label_3793:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_4097:
	push	r0
	sub	r1,1,r1
	bne	_Label_4097
	mov	2929,r13		! source line 2929
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2955,r13		! source line 2955
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3797 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3796 = *_temp_3797  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3796) then goto _Label_3795
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3795
!	jmp	_Label_3794
_Label_3794:
! THEN...
	mov	2956,r13		! source line 2956
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3798 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3798  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2956,r13		! source line 2956
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3795:
! IF STATEMENT...
	mov	2960,r13		! source line 2960
	mov	"\0\0IF",r10
	mov	2960,r13		! source line 2960
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3802) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3801  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3801 == 1112300152 then goto _Label_3800		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3800
!	jmp	_Label_3799
_Label_3799:
! THEN...
	mov	2961,r13		! source line 2961
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3803 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3803  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2961,r13		! source line 2961
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2962,r13		! source line 2962
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3800:
! ASSIGNMENT STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0AS",r10
	mov	2966,r13		! source line 2966
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3804) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2967,r13		! source line 2967
	mov	"\0\0AS",r10
	mov	2967,r13		! source line 2967
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3805) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2968,r13		! source line 2968
	mov	"\0\0AS",r10
	mov	2968,r13		! source line 2968
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3806) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2969,r13		! source line 2969
	mov	"\0\0AS",r10
	mov	2969,r13		! source line 2969
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3807) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2970,r13		! source line 2970
	mov	"\0\0AS",r10
	mov	2970,r13		! source line 2970
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3808) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2971,r13		! source line 2971
	mov	"\0\0AS",r10
	mov	2971,r13		! source line 2971
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3809) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2974,r13		! source line 2974
	mov	"\0\0IF",r10
!   _temp_3812 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3812) then goto _Label_3811
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3811
!	jmp	_Label_3810
_Label_3810:
! THEN...
	mov	2975,r13		! source line 2975
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3813 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3813  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2975,r13		! source line 2975
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2976,r13		! source line 2976
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3811:
! ASSIGNMENT STATEMENT...
	mov	2978,r13		! source line 2978
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2982,r13		! source line 2982
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3815
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3815
!	jmp	_Label_3814
_Label_3814:
! THEN...
	mov	2983,r13		! source line 2983
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3816 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3816  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2983,r13		! source line 2983
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2984,r13		! source line 2984
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3815:
! IF STATEMENT...
	mov	2988,r13		! source line 2988
	mov	"\0\0IF",r10
!   _temp_3819 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3819) then goto _Label_3818
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3818
!	jmp	_Label_3817
_Label_3817:
! THEN...
	mov	2989,r13		! source line 2989
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3820 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3820  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2989,r13		! source line 2989
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2990,r13		! source line 2990
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3818:
! IF STATEMENT...
	mov	2992,r13		! source line 2992
	mov	"\0\0IF",r10
!   _temp_3823 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3823 then goto _Label_3822		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3822
!	jmp	_Label_3821
_Label_3821:
! THEN...
	mov	2993,r13		! source line 2993
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3824 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3824  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2993,r13		! source line 2993
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2994,r13		! source line 2994
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3822:
! ASSIGNMENT STATEMENT...
	mov	2996,r13		! source line 2996
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2999,r13		! source line 2999
	mov	"\0\0IF",r10
!   _temp_3827 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3827) then goto _Label_3826
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3826
!	jmp	_Label_3825
_Label_3825:
! THEN...
	mov	3000,r13		! source line 3000
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3828 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3828  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3000,r13		! source line 3000
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3001,r13		! source line 3001
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3826:
! IF STATEMENT...
	mov	3003,r13		! source line 3003
	mov	"\0\0IF",r10
!   _temp_3831 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3831 then goto _Label_3830		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3830
!	jmp	_Label_3829
_Label_3829:
! THEN...
	mov	3004,r13		! source line 3004
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3832 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3832  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3004,r13		! source line 3004
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3830:
! ASSIGNMENT STATEMENT...
	mov	3007,r13		! source line 3007
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	3010,r13		! source line 3010
	mov	"\0\0AS",r10
!   _temp_3835 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3834 = _temp_3835 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3833 = _temp_3834 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3833 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3025,r13		! source line 3025
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3837		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3837
!	jmp	_Label_3836
_Label_3836:
! THEN...
	mov	3026,r13		! source line 3026
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3838 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3838  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3026,r13		! source line 3026
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3839 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3839  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3027,r13		! source line 3027
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3840 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3840  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3028,r13		! source line 3028
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3029,r13		! source line 3029
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3837:
! SEND STATEMENT...
	mov	3031,r13		! source line 3031
	mov	"\0\0SE",r10
!   _temp_3841 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	3037,r13		! source line 3037
	mov	"\0\0IF",r10
	mov	3037,r13		! source line 3037
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3845) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3844  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3844 == 707406378 then goto _Label_3843		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3843
!	jmp	_Label_3842
_Label_3842:
! THEN...
	mov	3038,r13		! source line 3038
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3846 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3846  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3038,r13		! source line 3038
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3039,r13		! source line 3039
	mov	"\0\0SE",r10
!   _temp_3847 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3040,r13		! source line 3040
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3843:
! ASSIGNMENT STATEMENT...
	mov	3044,r13		! source line 3044
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	3045,r13		! source line 3045
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3852 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3853 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3852  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3848:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3853 then goto _Label_3851		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3851
_Label_3849:
	mov	3045,r13		! source line 3045
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3046,r13		! source line 3046
	mov	"\0\0AS",r10
	mov	3046,r13		! source line 3046
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3049,r13		! source line 3049
	mov	"\0\0IF",r10
	mov	3049,r13		! source line 3049
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3857) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3856  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3856 then goto _Label_3855 else goto _Label_3854
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3854
	jmp	_Label_3855
_Label_3854:
! THEN...
	mov	3050,r13		! source line 3050
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3858 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3858  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3050,r13		! source line 3050
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3051,r13		! source line 3051
	mov	"\0\0SE",r10
!   _temp_3859 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3052,r13		! source line 3052
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3855:
! SEND STATEMENT...
	mov	3054,r13		! source line 3054
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3055,r13		! source line 3055
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3850:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3848
! END FOR
_Label_3851:
! IF STATEMENT...
	mov	3059,r13		! source line 3059
	mov	"\0\0IF",r10
	mov	3059,r13		! source line 3059
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3863) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3862  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3862 == 707406378 then goto _Label_3861		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3861
!	jmp	_Label_3860
_Label_3860:
! THEN...
	mov	3060,r13		! source line 3060
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3864 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3864  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3060,r13		! source line 3060
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3061,r13		! source line 3061
	mov	"\0\0SE",r10
!   _temp_3865 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3062,r13		! source line 3062
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3861:
! FOR STATEMENT...
	mov	3066,r13		! source line 3066
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3870 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3871 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3870  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3866:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3871 then goto _Label_3869		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3869
_Label_3867:
	mov	3066,r13		! source line 3066
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3067,r13		! source line 3067
	mov	"\0\0AS",r10
	mov	3067,r13		! source line 3067
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3070,r13		! source line 3070
	mov	"\0\0IF",r10
	mov	3070,r13		! source line 3070
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3875) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3874  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3874 then goto _Label_3873 else goto _Label_3872
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3872
	jmp	_Label_3873
_Label_3872:
! THEN...
	mov	3071,r13		! source line 3071
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3876 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3876  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3071,r13		! source line 3071
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3072,r13		! source line 3072
	mov	"\0\0SE",r10
!   _temp_3877 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3073,r13		! source line 3073
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3873:
! ASSIGNMENT STATEMENT...
	mov	3075,r13		! source line 3075
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3868:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3866
! END FOR
_Label_3869:
! IF STATEMENT...
	mov	3079,r13		! source line 3079
	mov	"\0\0IF",r10
	mov	3079,r13		! source line 3079
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3881) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3880  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3880 == 707406378 then goto _Label_3879		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3879
!	jmp	_Label_3878
_Label_3878:
! THEN...
	mov	3080,r13		! source line 3080
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3882 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3882  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3080,r13		! source line 3080
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3081,r13		! source line 3081
	mov	"\0\0SE",r10
!   _temp_3883 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3082,r13		! source line 3082
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3879:
! ASSIGNMENT STATEMENT...
	mov	3086,r13		! source line 3086
	mov	"\0\0AS",r10
	mov	3086,r13		! source line 3086
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	3090,r13		! source line 3090
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3093,r13		! source line 3093
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_3884
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3885
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3886
	.word	12
	.word	4
	.word	_Label_3887
	.word	-16
	.word	4
	.word	_Label_3888
	.word	-20
	.word	4
	.word	_Label_3889
	.word	-24
	.word	4
	.word	_Label_3890
	.word	-28
	.word	4
	.word	_Label_3891
	.word	-32
	.word	4
	.word	_Label_3892
	.word	-36
	.word	4
	.word	_Label_3893
	.word	-40
	.word	4
	.word	_Label_3894
	.word	-9
	.word	1
	.word	_Label_3895
	.word	-44
	.word	4
	.word	_Label_3896
	.word	-48
	.word	4
	.word	_Label_3897
	.word	-52
	.word	4
	.word	_Label_3898
	.word	-56
	.word	4
	.word	_Label_3899
	.word	-60
	.word	4
	.word	_Label_3900
	.word	-64
	.word	4
	.word	_Label_3901
	.word	-68
	.word	4
	.word	_Label_3902
	.word	-72
	.word	4
	.word	_Label_3903
	.word	-76
	.word	4
	.word	_Label_3904
	.word	-10
	.word	1
	.word	_Label_3905
	.word	-80
	.word	4
	.word	_Label_3906
	.word	-84
	.word	4
	.word	_Label_3907
	.word	-88
	.word	4
	.word	_Label_3908
	.word	-92
	.word	4
	.word	_Label_3909
	.word	-96
	.word	4
	.word	_Label_3910
	.word	-100
	.word	4
	.word	_Label_3911
	.word	-104
	.word	4
	.word	_Label_3912
	.word	-108
	.word	4
	.word	_Label_3913
	.word	-112
	.word	4
	.word	_Label_3914
	.word	-116
	.word	4
	.word	_Label_3915
	.word	-120
	.word	4
	.word	_Label_3916
	.word	-124
	.word	4
	.word	_Label_3917
	.word	-128
	.word	4
	.word	_Label_3918
	.word	-132
	.word	4
	.word	_Label_3919
	.word	-136
	.word	4
	.word	_Label_3920
	.word	-140
	.word	4
	.word	_Label_3921
	.word	-144
	.word	4
	.word	_Label_3922
	.word	-148
	.word	4
	.word	_Label_3923
	.word	-152
	.word	4
	.word	_Label_3924
	.word	-156
	.word	4
	.word	_Label_3925
	.word	-160
	.word	4
	.word	_Label_3926
	.word	-164
	.word	4
	.word	_Label_3927
	.word	-168
	.word	4
	.word	_Label_3928
	.word	-172
	.word	4
	.word	_Label_3929
	.word	-176
	.word	4
	.word	_Label_3930
	.word	-180
	.word	4
	.word	_Label_3931
	.word	-184
	.word	4
	.word	_Label_3932
	.word	-188
	.word	4
	.word	_Label_3933
	.word	-192
	.word	4
	.word	_Label_3934
	.word	-196
	.word	4
	.word	_Label_3935
	.word	-200
	.word	4
	.word	_Label_3936
	.word	-204
	.word	4
	.word	_Label_3937
	.word	-208
	.word	4
	.word	_Label_3938
	.word	-212
	.word	4
	.word	_Label_3939
	.word	-216
	.word	4
	.word	_Label_3940
	.word	-220
	.word	4
	.word	_Label_3941
	.word	-224
	.word	4
	.word	_Label_3942
	.word	-228
	.word	4
	.word	_Label_3943
	.word	-232
	.word	4
	.word	_Label_3944
	.word	-236
	.word	4
	.word	_Label_3945
	.word	-240
	.word	4
	.word	_Label_3946
	.word	-244
	.word	4
	.word	_Label_3947
	.word	-248
	.word	4
	.word	_Label_3948
	.word	-252
	.word	4
	.word	_Label_3949
	.word	-256
	.word	4
	.word	_Label_3950
	.word	-260
	.word	4
	.word	_Label_3951
	.word	-264
	.word	4
	.word	_Label_3952
	.word	-268
	.word	4
	.word	0
_Label_3884:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3885:
	.ascii	"Pself\0"
	.align
_Label_3886:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3887:
	.byte	'?'
	.ascii	"_temp_3883\0"
	.align
_Label_3888:
	.byte	'?'
	.ascii	"_temp_3882\0"
	.align
_Label_3889:
	.byte	'?'
	.ascii	"_temp_3881\0"
	.align
_Label_3890:
	.byte	'?'
	.ascii	"_temp_3880\0"
	.align
_Label_3891:
	.byte	'?'
	.ascii	"_temp_3877\0"
	.align
_Label_3892:
	.byte	'?'
	.ascii	"_temp_3876\0"
	.align
_Label_3893:
	.byte	'?'
	.ascii	"_temp_3875\0"
	.align
_Label_3894:
	.byte	'C'
	.ascii	"_temp_3874\0"
	.align
_Label_3895:
	.byte	'?'
	.ascii	"_temp_3871\0"
	.align
_Label_3896:
	.byte	'?'
	.ascii	"_temp_3870\0"
	.align
_Label_3897:
	.byte	'?'
	.ascii	"_temp_3865\0"
	.align
_Label_3898:
	.byte	'?'
	.ascii	"_temp_3864\0"
	.align
_Label_3899:
	.byte	'?'
	.ascii	"_temp_3863\0"
	.align
_Label_3900:
	.byte	'?'
	.ascii	"_temp_3862\0"
	.align
_Label_3901:
	.byte	'?'
	.ascii	"_temp_3859\0"
	.align
_Label_3902:
	.byte	'?'
	.ascii	"_temp_3858\0"
	.align
_Label_3903:
	.byte	'?'
	.ascii	"_temp_3857\0"
	.align
_Label_3904:
	.byte	'C'
	.ascii	"_temp_3856\0"
	.align
_Label_3905:
	.byte	'?'
	.ascii	"_temp_3853\0"
	.align
_Label_3906:
	.byte	'?'
	.ascii	"_temp_3852\0"
	.align
_Label_3907:
	.byte	'?'
	.ascii	"_temp_3847\0"
	.align
_Label_3908:
	.byte	'?'
	.ascii	"_temp_3846\0"
	.align
_Label_3909:
	.byte	'?'
	.ascii	"_temp_3845\0"
	.align
_Label_3910:
	.byte	'?'
	.ascii	"_temp_3844\0"
	.align
_Label_3911:
	.byte	'?'
	.ascii	"_temp_3841\0"
	.align
_Label_3912:
	.byte	'?'
	.ascii	"_temp_3840\0"
	.align
_Label_3913:
	.byte	'?'
	.ascii	"_temp_3839\0"
	.align
_Label_3914:
	.byte	'?'
	.ascii	"_temp_3838\0"
	.align
_Label_3915:
	.byte	'?'
	.ascii	"_temp_3835\0"
	.align
_Label_3916:
	.byte	'?'
	.ascii	"_temp_3834\0"
	.align
_Label_3917:
	.byte	'?'
	.ascii	"_temp_3833\0"
	.align
_Label_3918:
	.byte	'?'
	.ascii	"_temp_3832\0"
	.align
_Label_3919:
	.byte	'?'
	.ascii	"_temp_3831\0"
	.align
_Label_3920:
	.byte	'?'
	.ascii	"_temp_3828\0"
	.align
_Label_3921:
	.byte	'?'
	.ascii	"_temp_3827\0"
	.align
_Label_3922:
	.byte	'?'
	.ascii	"_temp_3824\0"
	.align
_Label_3923:
	.byte	'?'
	.ascii	"_temp_3823\0"
	.align
_Label_3924:
	.byte	'?'
	.ascii	"_temp_3820\0"
	.align
_Label_3925:
	.byte	'?'
	.ascii	"_temp_3819\0"
	.align
_Label_3926:
	.byte	'?'
	.ascii	"_temp_3816\0"
	.align
_Label_3927:
	.byte	'?'
	.ascii	"_temp_3813\0"
	.align
_Label_3928:
	.byte	'?'
	.ascii	"_temp_3812\0"
	.align
_Label_3929:
	.byte	'?'
	.ascii	"_temp_3809\0"
	.align
_Label_3930:
	.byte	'?'
	.ascii	"_temp_3808\0"
	.align
_Label_3931:
	.byte	'?'
	.ascii	"_temp_3807\0"
	.align
_Label_3932:
	.byte	'?'
	.ascii	"_temp_3806\0"
	.align
_Label_3933:
	.byte	'?'
	.ascii	"_temp_3805\0"
	.align
_Label_3934:
	.byte	'?'
	.ascii	"_temp_3804\0"
	.align
_Label_3935:
	.byte	'?'
	.ascii	"_temp_3803\0"
	.align
_Label_3936:
	.byte	'?'
	.ascii	"_temp_3802\0"
	.align
_Label_3937:
	.byte	'?'
	.ascii	"_temp_3801\0"
	.align
_Label_3938:
	.byte	'?'
	.ascii	"_temp_3798\0"
	.align
_Label_3939:
	.byte	'?'
	.ascii	"_temp_3797\0"
	.align
_Label_3940:
	.byte	'?'
	.ascii	"_temp_3796\0"
	.align
_Label_3941:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3942:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3943:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3944:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3945:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3946:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3947:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3948:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3949:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3950:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3951:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3952:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
