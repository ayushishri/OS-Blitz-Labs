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
! The following class and its methods are from this package
	.export	_P_Kernel_SerialDriver
	.export	_Method_P_Kernel_SerialDriver_1
	.export	_Method_P_Kernel_SerialDriver_2
	.export	_Method_P_Kernel_SerialDriver_3
	.export	_Method_P_Kernel_SerialDriver_4
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
	.export	_P_Kernel_serialDriver
	.export	_P_Kernel_fileManager
	.export	_P_Kernel_serialHasBeenInitialized
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
_P_Kernel_serialDriver:
	.skip	4308
_P_Kernel_fileManager:
	.skip	800
_P_Kernel_serialHasBeenInitialized:
	.skip	1
	.align
! String constants
_StringConst_188:
	.word	14			! length
	.ascii	"\' was ignored\n"
	.align
_StringConst_187:
	.word	42			! length
	.ascii	"\nSerial input buffer overrun - character \'"
	.align
_StringConst_186:
	.word	19			! length
	.ascii	"serialHandlerThread"
	.align
_StringConst_185:
	.word	29			! length
	.ascii	"Initializing Serial Driver..."
	.align
_StringConst_184:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_183:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_182:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_181:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_180:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_179:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_178:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_177:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_176:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_175:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_174:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_173:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_172:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_171:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_170:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_169:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_168:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_167:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_166:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_165:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_164:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_163:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_162:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_161:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_160:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_159:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_158:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_157:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_156:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_155:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_154:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_153:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_152:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_151:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_150:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_149:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_148:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_147:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_146:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_145:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_144:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_143:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_142:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_141:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_140:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_139:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_138:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_137:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_136:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_135:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_134:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_133:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_132:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_131:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_129:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_128:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_126:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_125:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_122:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_119:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_118:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_117:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_116:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_115:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_113:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_112:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_111:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_110:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_109:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_108:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_107:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_106:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_105:
	.word	22			! length
	.ascii	"should never be called"
	.align
_StringConst_104:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_103:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_102:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_101:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_100:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_99:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_98:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_97:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_96:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_95:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_94:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_93:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_92:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_91:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_90:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_89:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_88:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_87:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_86:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_85:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_84:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_83:
	.word	10			! length
	.ascii	"threadname"
	.align
_StringConst_82:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_81:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_80:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_79:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_78:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_77:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_73:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_72:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_71:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_70:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_69:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_68:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_67:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_66:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_65:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_64:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_62:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_61:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_60:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_59:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_58:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_57:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_56:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_55:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_54:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_53:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_52:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_51:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_50:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_49:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_48:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_47:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_46:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_45:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_44:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_43:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_42:
	.word	8			! length
	.ascii	"terminal"
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
	.ascii	"TestProgram5"
	.align
_StringConst_2:
	.word	12			! length
	.ascii	"TestProgram5"
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
	set	0xebad7129,r4		! myHashVal = -340954839
	cmp	r3,r4
	be	_Label_199
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
_Label_199:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_200
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_200
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_200
_Label_200:
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
_Label_4367:
	push	r0
	sub	r1,1,r1
	bne	_Label_4367
	mov	6,r13		! source line 6
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	10,r13		! source line 10
	mov	"\0\0AS",r10
	mov	10,r13		! source line 10
	mov	"\0\0SE",r10
!   _temp_201 = &_P_Kernel_threadManager
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
!   _temp_202 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-20]
!   if intIsZero (thPtr) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_202  sizeInBytes=4
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
!   _temp_203 = _function_198_StartUserProcess
	set	_function_198_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_204 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-12]
!   if intIsZero (thPtr) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_203  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_204  sizeInBytes=4
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
	.word	_Label_205
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_206
	.word	-12
	.word	4
	.word	_Label_207
	.word	-16
	.word	4
	.word	_Label_208
	.word	-20
	.word	4
	.word	_Label_209
	.word	-24
	.word	4
	.word	_Label_210
	.word	-28
	.word	4
	.word	0
_Label_205:
	.ascii	"InitFirstProcess\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_210:
	.byte	'P'
	.ascii	"thPtr\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_198_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_198_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_4368:
	push	r0
	sub	r1,1,r1
	bne	_Label_4368
	mov	15,r13		! source line 15
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_211 = &_P_Kernel_processManager
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
!   _temp_212 = PCB + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_212 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_213 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_213 = PCB  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
	mov	27,r13		! source line 27
	mov	"\0\0SE",r10
!   _temp_214 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-56]
!   _temp_215 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_214  sizeInBytes=4
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
!   _temp_217 = PCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_216 = _temp_217		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_216  sizeInBytes=4
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
!   _temp_218 = &_P_Kernel_fileManager
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
!   _temp_219 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_219 [999 ] into _temp_220
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
!   initSystemStackTop = _temp_220		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_222 = PCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   _temp_223 = _temp_222 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: _temp_221 = *_temp_223  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   InitUserStackTop = _temp_221 * 8192		(int)
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
!   _temp_224 = PCB + 32
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
!   _temp_225 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_225 = 1  (sizeInBytes=1)
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
_RoutineDescriptor__function_198_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_226
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_227
	.word	8
	.word	4
	.word	_Label_228
	.word	-12
	.word	4
	.word	_Label_229
	.word	-16
	.word	4
	.word	_Label_230
	.word	-20
	.word	4
	.word	_Label_231
	.word	-24
	.word	4
	.word	_Label_232
	.word	-28
	.word	4
	.word	_Label_233
	.word	-32
	.word	4
	.word	_Label_234
	.word	-36
	.word	4
	.word	_Label_235
	.word	-40
	.word	4
	.word	_Label_236
	.word	-44
	.word	4
	.word	_Label_237
	.word	-48
	.word	4
	.word	_Label_238
	.word	-52
	.word	4
	.word	_Label_239
	.word	-56
	.word	4
	.word	_Label_240
	.word	-60
	.word	4
	.word	_Label_241
	.word	-64
	.word	4
	.word	_Label_242
	.word	-68
	.word	4
	.word	_Label_243
	.word	-72
	.word	4
	.word	_Label_244
	.word	-76
	.word	4
	.word	_Label_245
	.word	-80
	.word	4
	.word	_Label_246
	.word	-84
	.word	4
	.word	_Label_247
	.word	-88
	.word	4
	.word	_Label_248
	.word	-92
	.word	4
	.word	0
_Label_226:
	.ascii	"StartUserProcess\0"
	.align
_Label_227:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_243:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_244:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_245:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_246:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_247:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_248:
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
_Label_4369:
	push	r0
	sub	r1,1,r1
	bne	_Label_4369
	mov	47,r13		! source line 47
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	54,r13		! source line 54
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_249 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_249  sizeInBytes=4
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
_Label_4370:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4370
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0SE",r10
!   _temp_253 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-44]
!   _temp_254 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_253  sizeInBytes=4
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
!   _temp_255 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_256 = _temp_255 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_256 = 3  (sizeInBytes=4)
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
_Label_4371:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4371
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0SE",r10
!   _temp_258 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-24]
!   _temp_259 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_258  sizeInBytes=4
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
!   _temp_260 = _function_197_IdleFunction
	set	_function_197_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_261 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_260  sizeInBytes=4
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
	.word	_Label_262
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_263
	.word	-12
	.word	4
	.word	_Label_264
	.word	-16
	.word	4
	.word	_Label_265
	.word	-20
	.word	4
	.word	_Label_266
	.word	-24
	.word	4
	.word	_Label_267
	.word	-28
	.word	4
	.word	_Label_268
	.word	-32
	.word	4
	.word	_Label_269
	.word	-36
	.word	4
	.word	_Label_270
	.word	-40
	.word	4
	.word	_Label_271
	.word	-44
	.word	4
	.word	_Label_272
	.word	-48
	.word	4
	.word	_Label_273
	.word	-52
	.word	4
	.word	_Label_274
	.word	-56
	.word	4
	.word	_Label_275
	.word	-60
	.word	4
	.word	0
_Label_262:
	.ascii	"InitializeScheduler\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_197_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_197_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_4372:
	push	r0
	sub	r1,1,r1
	bne	_Label_4372
	mov	72,r13		! source line 72
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0WH",r10
_Label_276:
!	jmp	_Label_277
_Label_277:
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
!   _temp_281 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_279 else goto _Label_280
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_280
	jmp	_Label_279
_Label_279:
! THEN...
	mov	85,r13		! source line 85
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	85,r13		! source line 85
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_282
_Label_280:
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
_Label_282:
! END WHILE...
	jmp	_Label_276
_Label_278:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_197_IdleFunction:
	.word	_sourceFileName
	.word	_Label_283
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_284
	.word	8
	.word	4
	.word	_Label_285
	.word	-12
	.word	4
	.word	_Label_286
	.word	-16
	.word	4
	.word	0
_Label_283:
	.ascii	"IdleFunction\0"
	.align
_Label_284:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_286:
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
_Label_4373:
	push	r0
	sub	r1,1,r1
	bne	_Label_4373
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
!   _temp_289 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_289 ) then goto _Label_288		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_288
!	jmp	_Label_287
_Label_287:
! THEN...
	mov	111,r13		! source line 111
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_291 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_291 [0 ] into _temp_292
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
!   _temp_290 = _temp_292		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_288:
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
!   _temp_293 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_293 = 3  (sizeInBytes=4)
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
_Label_294:
	mov	124,r13		! source line 124
	mov	"\0\0SE",r10
!   _temp_298 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_297  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_297 then goto _Label_296 else goto _Label_295
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_295
	jmp	_Label_296
_Label_295:
	mov	124,r13		! source line 124
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
	mov	125,r13		! source line 125
	mov	"\0\0SE",r10
!   _temp_299 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_300 = &_P_Kernel_threadManager
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
	jmp	_Label_294
_Label_296:
! IF STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_303 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_303 ) then goto _Label_302		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_302
!	jmp	_Label_301
_Label_301:
! THEN...
	mov	130,r13		! source line 130
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_305 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_305 [0 ] into _temp_306
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
!   _temp_304 = _temp_306		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_304  sizeInBytes=4
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
!   _temp_308 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_307 = *_temp_308  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_307) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_309 = _temp_307 + 32
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
_Label_302:
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
	.word	_Label_310
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_311
	.word	8
	.word	4
	.word	_Label_312
	.word	-16
	.word	4
	.word	_Label_313
	.word	-20
	.word	4
	.word	_Label_314
	.word	-24
	.word	4
	.word	_Label_315
	.word	-28
	.word	4
	.word	_Label_316
	.word	-32
	.word	4
	.word	_Label_317
	.word	-36
	.word	4
	.word	_Label_318
	.word	-40
	.word	4
	.word	_Label_319
	.word	-44
	.word	4
	.word	_Label_320
	.word	-48
	.word	4
	.word	_Label_321
	.word	-52
	.word	4
	.word	_Label_322
	.word	-9
	.word	1
	.word	_Label_323
	.word	-56
	.word	4
	.word	_Label_324
	.word	-60
	.word	4
	.word	_Label_325
	.word	-64
	.word	4
	.word	_Label_326
	.word	-68
	.word	4
	.word	_Label_327
	.word	-72
	.word	4
	.word	_Label_328
	.word	-76
	.word	4
	.word	_Label_329
	.word	-80
	.word	4
	.word	0
_Label_310:
	.ascii	"Run\0"
	.align
_Label_311:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_322:
	.byte	'C'
	.ascii	"_temp_297\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_328:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_329:
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
_Label_4374:
	push	r0
	sub	r1,1,r1
	bne	_Label_4374
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
!   _temp_330 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0SE",r10
!   _temp_331 = _function_196_ThreadPrintShort
	set	_function_196_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_332 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_331  sizeInBytes=4
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
	.word	_Label_333
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_334
	.word	-12
	.word	4
	.word	_Label_335
	.word	-16
	.word	4
	.word	_Label_336
	.word	-20
	.word	4
	.word	_Label_337
	.word	-24
	.word	4
	.word	0
_Label_333:
	.ascii	"PrintReadyList\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_337:
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
_Label_4375:
	push	r0
	sub	r1,1,r1
	bne	_Label_4375
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
!   _temp_338 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_338  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_340 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_339 = *_temp_340  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
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
!   _temp_341 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
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
	.word	_Label_342
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_343
	.word	-12
	.word	4
	.word	_Label_344
	.word	-16
	.word	4
	.word	_Label_345
	.word	-20
	.word	4
	.word	_Label_346
	.word	-24
	.word	4
	.word	_Label_347
	.word	-28
	.word	4
	.word	_Label_348
	.word	-32
	.word	4
	.word	0
_Label_342:
	.ascii	"ThreadStartMain\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_347:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_348:
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
_Label_4376:
	push	r0
	sub	r1,1,r1
	bne	_Label_4376
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
!   _temp_349 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_350 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
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
	.word	_Label_351
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_352
	.word	-12
	.word	4
	.word	_Label_353
	.word	-16
	.word	4
	.word	_Label_354
	.word	-20
	.word	4
	.word	0
_Label_351:
	.ascii	"ThreadFinish\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_354:
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
_Label_4377:
	push	r0
	sub	r1,1,r1
	bne	_Label_4377
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
!   _temp_355 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	205,r13		! source line 205
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_357		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_357
!	jmp	_Label_356
_Label_356:
! THEN...
	mov	207,r13		! source line 207
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_358 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
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
!   _temp_360 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_359 = *_temp_360  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	208,r13		! source line 208
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_357:
! CALL STATEMENT...
!   _temp_361 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
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
!   _temp_362 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_363 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
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
	.word	_Label_364
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_365
	.word	8
	.word	4
	.word	_Label_366
	.word	-12
	.word	4
	.word	_Label_367
	.word	-16
	.word	4
	.word	_Label_368
	.word	-20
	.word	4
	.word	_Label_369
	.word	-24
	.word	4
	.word	_Label_370
	.word	-28
	.word	4
	.word	_Label_371
	.word	-32
	.word	4
	.word	_Label_372
	.word	-36
	.word	4
	.word	_Label_373
	.word	-40
	.word	4
	.word	0
_Label_364:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_365:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_373:
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
_Label_4378:
	push	r0
	sub	r1,1,r1
	bne	_Label_4378
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
!   if newStatus != 1 then goto _Label_375		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_375
!	jmp	_Label_374
_Label_374:
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
	jmp	_Label_376
_Label_375:
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
_Label_376:
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
	.word	_Label_377
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_378
	.word	8
	.word	4
	.word	_Label_379
	.word	-12
	.word	4
	.word	0
_Label_377:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_378:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_379:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_196_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_196_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_4379:
	push	r0
	sub	r1,1,r1
	bne	_Label_4379
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
!   if t == 0 then goto _Label_383		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_383
!   _temp_382 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_384
_Label_383:
!   _temp_382 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_384:
!   if _temp_382 then goto _Label_381 else goto _Label_380
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_380
	jmp	_Label_381
_Label_380:
! THEN...
	mov	689,r13		! source line 689
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_385 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
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
_Label_381:
! CALL STATEMENT...
!   _temp_386 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
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
!   _temp_388 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_387 = *_temp_388  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_389 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
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
!   _temp_398 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_397 = *_temp_398  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_392
	cmp	r1,2
	be	_Label_393
	cmp	r1,3
	be	_Label_394
	cmp	r1,4
	be	_Label_395
	cmp	r1,5
	be	_Label_396
	jmp	_Label_390
! CASE 1...
_Label_392:
! CALL STATEMENT...
!   _temp_399 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0BR",r10
	jmp	_Label_391
! CASE 2...
_Label_393:
! CALL STATEMENT...
!   _temp_400 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0BR",r10
	jmp	_Label_391
! CASE 3...
_Label_394:
! CALL STATEMENT...
!   _temp_401 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0BR",r10
	jmp	_Label_391
! CASE 4...
_Label_395:
! CALL STATEMENT...
!   _temp_402 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0BR",r10
	jmp	_Label_391
! CASE 5...
_Label_396:
! CALL STATEMENT...
!   _temp_403 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_403  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0BR",r10
	jmp	_Label_391
! DEFAULT CASE...
_Label_390:
! CALL STATEMENT...
!   _temp_404 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_404  sizeInBytes=4
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
_Label_391:
! CALL STATEMENT...
!   _temp_405 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_405  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_406 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_406  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_407 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_407  sizeInBytes=4
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
_RoutineDescriptor__function_196_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_408
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_409
	.word	8
	.word	4
	.word	_Label_410
	.word	-16
	.word	4
	.word	_Label_411
	.word	-20
	.word	4
	.word	_Label_412
	.word	-24
	.word	4
	.word	_Label_413
	.word	-28
	.word	4
	.word	_Label_414
	.word	-32
	.word	4
	.word	_Label_415
	.word	-36
	.word	4
	.word	_Label_416
	.word	-40
	.word	4
	.word	_Label_417
	.word	-44
	.word	4
	.word	_Label_418
	.word	-48
	.word	4
	.word	_Label_419
	.word	-52
	.word	4
	.word	_Label_420
	.word	-56
	.word	4
	.word	_Label_421
	.word	-60
	.word	4
	.word	_Label_422
	.word	-64
	.word	4
	.word	_Label_423
	.word	-68
	.word	4
	.word	_Label_424
	.word	-72
	.word	4
	.word	_Label_425
	.word	-76
	.word	4
	.word	_Label_426
	.word	-9
	.word	1
	.word	_Label_427
	.word	-80
	.word	4
	.word	0
_Label_408:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_409:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_426:
	.byte	'C'
	.ascii	"_temp_382\0"
	.align
_Label_427:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_195_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_195_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_4380:
	push	r0
	sub	r1,1,r1
	bne	_Label_4380
	mov	1050,r13		! source line 1050
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_428 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_428  sizeInBytes=4
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
_RoutineDescriptor__function_195_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_429
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_430
	.word	8
	.word	4
	.word	_Label_431
	.word	-12
	.word	4
	.word	0
_Label_429:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_430:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_428\0"
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
_Label_4381:
	push	r0
	sub	r1,1,r1
	bne	_Label_4381
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
!   _temp_433 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_432 = *_temp_433  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_432) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_434 = _temp_432 + 28
	load	[r14+-140],r1
	add	r1,28,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_434 = exitStatus  (sizeInBytes=4)
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
!   _temp_435 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_435 = 0  (sizeInBytes=1)
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
!   _temp_438 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-116]
!   Data Move: _temp_437 = *_temp_438  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_437) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_439 = _temp_437 + 32
	load	[r14+-120],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   _temp_436 = _temp_439		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-124]
!   _temp_440 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_436  sizeInBytes=4
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
!   _temp_442 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-100]
!   Data Move: _temp_441 = *_temp_442  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   _temp_443 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_441  sizeInBytes=4
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
!   _temp_448 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_449 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_448  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-148]
_Label_444:
!   Perform the FOR-LOOP termination test
!   if i > _temp_449 then goto _Label_447		
	load	[r14+-148],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_447
_Label_445:
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
!   _temp_454 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_453 = *_temp_454  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_453) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_455 = _temp_453 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_455 [i ] into _temp_456
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
!   Data Move: _temp_452 = *_temp_456  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_452) then goto _Label_451
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_451
!	jmp	_Label_450
_Label_450:
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
!   _temp_459 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_458 = *_temp_459  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_458) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_460 = _temp_458 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_460 [i ] into _temp_461
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
!   Data Move: _temp_457 = *_temp_461  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   _temp_462 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_457  sizeInBytes=4
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
!   _temp_464 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_463 = *_temp_464  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_463) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_465 = _temp_463 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_465 [i ] into _temp_466
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
!   Data Move: *_temp_466 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_451:
!   Increment the FOR-LOOP index variable and jump back
_Label_446:
!   i = i + 1
	load	[r14+-148],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
	jmp	_Label_444
! END FOR
_Label_447:
! ASSIGNMENT STATEMENT...
	mov	1084,r13		! source line 1084
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_468 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_467 = *_temp_468  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_467) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_469 = _temp_467 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_469 = 0  (sizeInBytes=4)
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
!   _temp_470 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_470 = 0  (sizeInBytes=4)
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
	.word	_Label_471
	.word	4		! total size of parameters
	.word	148		! frame size = 148
	.word	_Label_472
	.word	8
	.word	4
	.word	_Label_473
	.word	-12
	.word	4
	.word	_Label_474
	.word	-16
	.word	4
	.word	_Label_475
	.word	-20
	.word	4
	.word	_Label_476
	.word	-24
	.word	4
	.word	_Label_477
	.word	-28
	.word	4
	.word	_Label_478
	.word	-32
	.word	4
	.word	_Label_479
	.word	-36
	.word	4
	.word	_Label_480
	.word	-40
	.word	4
	.word	_Label_481
	.word	-44
	.word	4
	.word	_Label_482
	.word	-48
	.word	4
	.word	_Label_483
	.word	-52
	.word	4
	.word	_Label_484
	.word	-56
	.word	4
	.word	_Label_485
	.word	-60
	.word	4
	.word	_Label_486
	.word	-64
	.word	4
	.word	_Label_487
	.word	-68
	.word	4
	.word	_Label_488
	.word	-72
	.word	4
	.word	_Label_489
	.word	-76
	.word	4
	.word	_Label_490
	.word	-80
	.word	4
	.word	_Label_491
	.word	-84
	.word	4
	.word	_Label_492
	.word	-88
	.word	4
	.word	_Label_493
	.word	-92
	.word	4
	.word	_Label_494
	.word	-96
	.word	4
	.word	_Label_495
	.word	-100
	.word	4
	.word	_Label_496
	.word	-104
	.word	4
	.word	_Label_497
	.word	-108
	.word	4
	.word	_Label_498
	.word	-112
	.word	4
	.word	_Label_499
	.word	-116
	.word	4
	.word	_Label_500
	.word	-120
	.word	4
	.word	_Label_501
	.word	-124
	.word	4
	.word	_Label_502
	.word	-128
	.word	4
	.word	_Label_503
	.word	-132
	.word	4
	.word	_Label_504
	.word	-136
	.word	4
	.word	_Label_505
	.word	-140
	.word	4
	.word	_Label_506
	.word	-144
	.word	4
	.word	_Label_507
	.word	-148
	.word	4
	.word	0
_Label_471:
	.ascii	"ProcessFinish\0"
	.align
_Label_472:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_506:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_507:
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
_Label_4382:
	push	r0
	sub	r1,1,r1
	bne	_Label_4382
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
	.word	_Label_508
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_508:
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
_Label_4383:
	push	r0
	sub	r1,1,r1
	bne	_Label_4383
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
!   _temp_512 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_513 = _temp_512 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_511 = *_temp_513  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_511 == 0 then goto _Label_510		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_510
!	jmp	_Label_509
_Label_509:
! THEN...
	mov	1592,r13		! source line 1592
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1592,r13		! source line 1592
	mov	"\0\0SE",r10
!   _temp_515 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_516 = _temp_515 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_514 = *_temp_516  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_514) then goto _runtimeErrorNullPointer
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
_Label_510:
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
	.word	_Label_517
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_518
	.word	-12
	.word	4
	.word	_Label_519
	.word	-16
	.word	4
	.word	_Label_520
	.word	-20
	.word	4
	.word	_Label_521
	.word	-24
	.word	4
	.word	_Label_522
	.word	-28
	.word	4
	.word	_Label_523
	.word	-32
	.word	4
	.word	0
_Label_517:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_511\0"
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
	mov	3,r1
_Label_4384:
	push	r0
	sub	r1,1,r1
	bne	_Label_4384
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
! IF STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0IF",r10
!   if _P_Kernel_serialHasBeenInitialized then goto _Label_524 else goto _Label_525
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_525
	jmp	_Label_524
_Label_524:
! THEN...
	mov	1610,r13		! source line 1610
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0SE",r10
!   _temp_526 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-16]
!   _temp_527 = _temp_526 + 124
	load	[r14+-16],r1
	add	r1,124,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_525:
! RETURN STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_528
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_529
	.word	-12
	.word	4
	.word	_Label_530
	.word	-16
	.word	4
	.word	0
_Label_528:
	.ascii	"SerialInterruptHandler\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_526\0"
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
_Label_4385:
	push	r0
	sub	r1,1,r1
	bne	_Label_4385
	mov	1615,r13		! source line 1615
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_531 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_531  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1622,r13		! source line 1622
	mov	"\0\0CA",r10
	call	_function_194_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1622,r13		! source line 1622
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
	.word	_Label_532
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_533
	.word	-12
	.word	4
	.word	0
_Label_532:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_531\0"
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
_Label_4386:
	push	r0
	sub	r1,1,r1
	bne	_Label_4386
	mov	1627,r13		! source line 1627
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_534 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_534  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1634,r13		! source line 1634
	mov	"\0\0CA",r10
	call	_function_194_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1634,r13		! source line 1634
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
	.word	_Label_535
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_536
	.word	-12
	.word	4
	.word	0
_Label_535:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_534\0"
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
_Label_4387:
	push	r0
	sub	r1,1,r1
	bne	_Label_4387
	mov	1639,r13		! source line 1639
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1645,r13		! source line 1645
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_537 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_537  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1646,r13		! source line 1646
	mov	"\0\0CA",r10
	call	_function_194_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1646,r13		! source line 1646
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
	.word	_Label_538
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_539
	.word	-12
	.word	4
	.word	0
_Label_538:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_537\0"
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
_Label_4388:
	push	r0
	sub	r1,1,r1
	bne	_Label_4388
	mov	1651,r13		! source line 1651
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_540 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_540  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1658,r13		! source line 1658
	mov	"\0\0CA",r10
	call	_function_194_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1658,r13		! source line 1658
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
	.word	_Label_541
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_542
	.word	-12
	.word	4
	.word	0
_Label_541:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_540\0"
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
_Label_4389:
	push	r0
	sub	r1,1,r1
	bne	_Label_4389
	mov	1663,r13		! source line 1663
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_543 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_543  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1670,r13		! source line 1670
	mov	"\0\0CA",r10
	call	_function_194_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1670,r13		! source line 1670
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
	.word	_Label_544
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_545
	.word	-12
	.word	4
	.word	0
_Label_544:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_543\0"
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
_Label_4390:
	push	r0
	sub	r1,1,r1
	bne	_Label_4390
	mov	1675,r13		! source line 1675
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_546 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_546  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1682,r13		! source line 1682
	mov	"\0\0CA",r10
	call	_function_194_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1682,r13		! source line 1682
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
	.word	_Label_547
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_548
	.word	-12
	.word	4
	.word	0
_Label_547:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_546\0"
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
_Label_4391:
	push	r0
	sub	r1,1,r1
	bne	_Label_4391
	mov	1687,r13		! source line 1687
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_549 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_549  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CA",r10
	call	_function_194_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1694,r13		! source line 1694
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
	.word	_Label_550
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_551
	.word	-12
	.word	4
	.word	0
_Label_550:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_194_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_194_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_4392:
	push	r0
	sub	r1,1,r1
	bne	_Label_4392
	mov	1699,r13		! source line 1699
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_552 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_552  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1704,r13		! source line 1704
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1705,r13		! source line 1705
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_553 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_553  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1706,r13		! source line 1706
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_557 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_556 = *_temp_557  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_556 == 0 then goto _Label_555		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_555
!	jmp	_Label_554
_Label_554:
! THEN...
	mov	1710,r13		! source line 1710
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1710,r13		! source line 1710
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_559 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_558 = *_temp_559  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_558) then goto _runtimeErrorNullPointer
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
	jmp	_Label_560
_Label_555:
! ELSE...
	mov	1712,r13		! source line 1712
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_561 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_561  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1712,r13		! source line 1712
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_560:
! SEND STATEMENT...
	mov	1714,r13		! source line 1714
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
	mov	1720,r13		! source line 1720
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1720,r13		! source line 1720
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_194_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_562
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_563
	.word	8
	.word	4
	.word	_Label_564
	.word	-12
	.word	4
	.word	_Label_565
	.word	-16
	.word	4
	.word	_Label_566
	.word	-20
	.word	4
	.word	_Label_567
	.word	-24
	.word	4
	.word	_Label_568
	.word	-28
	.word	4
	.word	_Label_569
	.word	-32
	.word	4
	.word	_Label_570
	.word	-36
	.word	4
	.word	0
_Label_562:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_563:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_552\0"
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
_Label_4393:
	push	r0
	sub	r1,1,r1
	bne	_Label_4393
	mov	1725,r13		! source line 1725
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1732,r13		! source line 1732
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1746,r13		! source line 1746
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_4394
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_571
_Label_4394:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_571
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_571
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_585,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_585:
	jmp	_Label_577	! 1:	
	jmp	_Label_584	! 2:	
	jmp	_Label_574	! 3:	
	jmp	_Label_573	! 4:	
	jmp	_Label_576	! 5:	
	jmp	_Label_575	! 6:	
	jmp	_Label_578	! 7:	
	jmp	_Label_579	! 8:	
	jmp	_Label_580	! 9:	
	jmp	_Label_581	! 10:	
	jmp	_Label_582	! 11:	
	jmp	_Label_583	! 12:	
! CASE 4...
_Label_573:
! RETURN STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0RE",r10
!   Call the function
	mov	1748,r13		! source line 1748
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_586  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_586  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_574:
! CALL STATEMENT...
!   Call the function
	mov	1750,r13		! source line 1750
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_575:
! RETURN STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_587  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_587  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_576:
! RETURN STATEMENT...
	mov	1755,r13		! source line 1755
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1755,r13		! source line 1755
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_588  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_588  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_577:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1757,r13		! source line 1757
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1758,r13		! source line 1758
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_578:
! RETURN STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1760,r13		! source line 1760
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_589  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_589  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_579:
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_590  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_590  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_580:
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
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_591  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_591  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_581:
! RETURN STATEMENT...
	mov	1766,r13		! source line 1766
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
	mov	1766,r13		! source line 1766
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_592  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_592  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_582:
! RETURN STATEMENT...
	mov	1768,r13		! source line 1768
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1768,r13		! source line 1768
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_593  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_593  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_583:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1770,r13		! source line 1770
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_584:
! CALL STATEMENT...
!   Call the function
	mov	1773,r13		! source line 1773
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_571:
! CALL STATEMENT...
!   _temp_594 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_594  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1776,r13		! source line 1776
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1777,r13		! source line 1777
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1778,r13		! source line 1778
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_595 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_595  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1779,r13		! source line 1779
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_572:
! RETURN STATEMENT...
	mov	1781,r13		! source line 1781
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
	.word	_Label_596
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_597
	.word	8
	.word	4
	.word	_Label_598
	.word	12
	.word	4
	.word	_Label_599
	.word	16
	.word	4
	.word	_Label_600
	.word	20
	.word	4
	.word	_Label_601
	.word	24
	.word	4
	.word	_Label_602
	.word	-12
	.word	4
	.word	_Label_603
	.word	-16
	.word	4
	.word	_Label_604
	.word	-20
	.word	4
	.word	_Label_605
	.word	-24
	.word	4
	.word	_Label_606
	.word	-28
	.word	4
	.word	_Label_607
	.word	-32
	.word	4
	.word	_Label_608
	.word	-36
	.word	4
	.word	_Label_609
	.word	-40
	.word	4
	.word	_Label_610
	.word	-44
	.word	4
	.word	_Label_611
	.word	-48
	.word	4
	.word	0
_Label_596:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_597:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_598:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_599:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_600:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_601:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_586\0"
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
_Label_4395:
	push	r0
	sub	r1,1,r1
	bne	_Label_4395
	mov	1786,r13		! source line 1786
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1787,r13		! source line 1787
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1787,r13		! source line 1787
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
	.word	_Label_612
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_613
	.word	8
	.word	4
	.word	0
_Label_612:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_613:
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
_Label_4396:
	push	r0
	sub	r1,1,r1
	bne	_Label_4396
	mov	1792,r13		! source line 1792
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_614 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_614  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1793,r13		! source line 1793
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
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
	.word	_Label_615
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_616
	.word	-12
	.word	4
	.word	0
_Label_615:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_614\0"
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
_Label_4397:
	push	r0
	sub	r1,1,r1
	bne	_Label_4397
	mov	1798,r13		! source line 1798
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1799,r13		! source line 1799
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
	mov	1799,r13		! source line 1799
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
	.word	_Label_617
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_617:
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
_Label_4398:
	push	r0
	sub	r1,1,r1
	bne	_Label_4398
	mov	1804,r13		! source line 1804
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1811,r13		! source line 1811
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! ASSIGNMENT STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0AS",r10
	mov	1812,r13		! source line 1812
	mov	"\0\0SE",r10
!   _temp_618 = &_P_Kernel_threadManager
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
	mov	1813,r13		! source line 1813
	mov	"\0\0AS",r10
	mov	1813,r13		! source line 1813
	mov	"\0\0SE",r10
!   _temp_619 = &_P_Kernel_processManager
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
	mov	1818,r13		! source line 1818
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = newPCB + 24
	load	[r14+-320],r1
	add	r1,24,r1
	store	r1,[r14+-308]
!   Data Move: *_temp_620 = newThr  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r14+-308],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1819,r13		! source line 1819
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_621 = newPCB + 16
	load	[r14+-320],r1
	add	r1,16,r1
	store	r1,[r14+-304]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_624 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-292]
!   Data Move: _temp_623 = *_temp_624  (sizeInBytes=4)
	load	[r14+-292],r1
	load	[r1],r1
	store	r1,[r14+-296]
!   if intIsZero (_temp_623) then goto _runtimeErrorNullPointer
	load	[r14+-296],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_625 = _temp_623 + 12
	load	[r14+-296],r1
	add	r1,12,r1
	store	r1,[r14+-288]
!   Data Move: _temp_622 = *_temp_625  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   Data Move: *_temp_621 = _temp_622  (sizeInBytes=4)
	load	[r14+-300],r1
	load	[r14+-304],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0AS",r10
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_626 = newThr + 76
	load	[r14+-324],r1
	add	r1,76,r1
	store	r1,[r14+-284]
!   Data Move: *_temp_626 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-284],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0AS",r10
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = newThr + 4160
	load	[r14+-324],r1
	add	r1,4160,r1
	store	r1,[r14+-280]
!   Data Move: *_temp_627 = newPCB  (sizeInBytes=4)
	load	[r14+-320],r1
	load	[r14+-280],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = newThr + 4096
	load	[r14+-324],r1
	add	r1,4096,r1
	store	r1,[r14+-272]
!   Move address of _temp_629 [0 ] into _temp_630
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
!   _temp_628 = _temp_630		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=8  value=_temp_628  sizeInBytes=4
	load	[r14+-276],r1
	store	r1,[r15+0]
!   Call the function
	mov	1824,r13		! source line 1824
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-332]
! ASSIGNMENT STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0AS",r10
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_631 = newThr + 68
	load	[r14+-324],r1
	add	r1,68,r1
	store	r1,[r14+-264]
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_633 = newThr + 88
	load	[r14+-324],r1
	add	r1,88,r1
	store	r1,[r14+-256]
!   Move address of _temp_633 [999 ] into _temp_634
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
!   _temp_632 = _temp_634		(4 bytes)
	load	[r14+-252],r1
	store	r1,[r14+-260]
!   Data Move: *_temp_631 = _temp_632  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r14+-264],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_636 = newPCB + 32
	load	[r14+-320],r1
	add	r1,32,r1
	store	r1,[r14+-244]
!   _temp_635 = _temp_636		(4 bytes)
	load	[r14+-244],r1
	store	r1,[r14+-248]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_639 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-232]
!   Data Move: _temp_638 = *_temp_639  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_638) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_640 = _temp_638 + 32
	load	[r14+-236],r1
	add	r1,32,r1
	store	r1,[r14+-228]
!   _temp_641 = _temp_640 + 4
	load	[r14+-228],r1
	add	r1,4,r1
	store	r1,[r14+-224]
!   Data Move: _temp_637 = *_temp_641  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   _temp_642 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-220]
!   Prepare Argument: offset=12  value=_temp_635  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_637  sizeInBytes=4
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
	mov	1837,r13		! source line 1837
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_647 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-216]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_651 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-200]
!   Data Move: _temp_650 = *_temp_651  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_650) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_652 = _temp_650 + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-196]
!   _temp_653 = _temp_652 + 4
	load	[r14+-196],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Data Move: _temp_649 = *_temp_653  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_648 = _temp_649 - 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_647  (sizeInBytes=4)
	load	[r14+-216],r1
	store	r1,[r14+-336]
_Label_643:
!   Perform the FOR-LOOP termination test
!   if i > _temp_648 then goto _Label_646		
	load	[r14+-336],r1
	load	[r14+-212],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_646
_Label_644:
	mov	1837,r13		! source line 1837
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_655 = newPCB + 32
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
!   Retrieve Result: targetName=_temp_654  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-188]
	mov	1839,r13		! source line 1839
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_658 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_657 = *_temp_658  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_657) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_659 = _temp_657 + 32
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
!   Retrieve Result: targetName=_temp_656  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_654  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_656  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1839,r13		! source line 1839
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0IF",r10
	mov	1841,r13		! source line 1841
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_664 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_663 = *_temp_664  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_663) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_665 = _temp_663 + 32
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
!   Retrieve Result: targetName=_temp_662  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_666 = _temp_662 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_666 then goto _Label_661 else goto _Label_660
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_660
	jmp	_Label_661
_Label_660:
! THEN...
	mov	1842,r13		! source line 1842
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1842,r13		! source line 1842
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_667 = newPCB + 32
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
	jmp	_Label_668
_Label_661:
! ELSE...
	mov	1844,r13		! source line 1844
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1844,r13		! source line 1844
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_669 = newPCB + 32
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
_Label_668:
!   Increment the FOR-LOOP index variable and jump back
_Label_645:
!   i = i + 1
	load	[r14+-336],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
	jmp	_Label_643
! END FOR
_Label_646:
! FOR STATEMENT...
	mov	1848,r13		! source line 1848
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_674 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-144]
!   Calculate and save the FOR-LOOP ending value
!   _temp_675 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-140]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_674  (sizeInBytes=4)
	load	[r14+-144],r1
	store	r1,[r14+-336]
_Label_670:
!   Perform the FOR-LOOP termination test
!   if i > _temp_675 then goto _Label_673		
	load	[r14+-336],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_673
_Label_671:
	mov	1848,r13		! source line 1848
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_680 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-128]
!   Data Move: _temp_679 = *_temp_680  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_679) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_681 = _temp_679 + 124
	load	[r14+-132],r1
	add	r1,124,r1
	store	r1,[r14+-124]
!   Move address of _temp_681 [i ] into _temp_682
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
!   Data Move: _temp_678 = *_temp_682  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_678) then goto _Label_677
	load	[r14+-136],r1
	cmp	r1,r0
	be	_Label_677
!	jmp	_Label_676
_Label_676:
! THEN...
	mov	1850,r13		! source line 1850
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1850,r13		! source line 1850
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_685 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_684 = *_temp_685  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_684) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_686 = _temp_684 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_686 [i ] into _temp_687
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
!   Data Move: _temp_683 = *_temp_687  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_683) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_688 = _temp_683 + 24
	load	[r14+-116],r1
	add	r1,24,r1
	store	r1,[r14+-96]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_693 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_692 = *_temp_693  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_692) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_694 = _temp_692 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_694 [i ] into _temp_695
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
!   Data Move: _temp_691 = *_temp_695  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_691) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_696 = _temp_691 + 24
	load	[r14+-84],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_690 = *_temp_696  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_689 = _temp_690 + 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Data Move: *_temp_688 = _temp_689  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r14+-96],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0AS",r10
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_698 = newThr + 4160
	load	[r14+-324],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_697 = *_temp_698  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_697) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_699 = _temp_697 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_699 [i ] into _temp_700
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
!   _temp_703 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_702 = *_temp_703  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_702) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_704 = _temp_702 + 124
	load	[r14+-40],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_704 [i ] into _temp_705
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
!   Data Move: _temp_701 = *_temp_705  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   Data Move: *_temp_700 = _temp_701  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! END IF...
_Label_677:
!   Increment the FOR-LOOP index variable and jump back
_Label_672:
!   i = i + 1
	load	[r14+-336],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
	jmp	_Label_670
! END FOR
_Label_673:
! ASSIGNMENT STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0AS",r10
!   Call the function
	mov	1856,r13		! source line 1856
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-328]
! SEND STATEMENT...
	mov	1858,r13		! source line 1858
	mov	"\0\0SE",r10
!   _temp_706 = _function_193_ResumeChildAfterFork
	set	_function_193_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-324],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_706  sizeInBytes=4
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
	mov	1859,r13		! source line 1859
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_708 = newPCB + 12
	load	[r14+-320],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_707 = *_temp_708  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_707  (sizeInBytes=4)
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
	.word	_Label_709
	.word	0		! total size of parameters
	.word	340		! frame size = 340
	.word	_Label_710
	.word	-16
	.word	4
	.word	_Label_711
	.word	-20
	.word	4
	.word	_Label_712
	.word	-24
	.word	4
	.word	_Label_713
	.word	-28
	.word	4
	.word	_Label_714
	.word	-32
	.word	4
	.word	_Label_715
	.word	-36
	.word	4
	.word	_Label_716
	.word	-40
	.word	4
	.word	_Label_717
	.word	-44
	.word	4
	.word	_Label_718
	.word	-48
	.word	4
	.word	_Label_719
	.word	-52
	.word	4
	.word	_Label_720
	.word	-56
	.word	4
	.word	_Label_721
	.word	-60
	.word	4
	.word	_Label_722
	.word	-64
	.word	4
	.word	_Label_723
	.word	-68
	.word	4
	.word	_Label_724
	.word	-72
	.word	4
	.word	_Label_725
	.word	-76
	.word	4
	.word	_Label_726
	.word	-80
	.word	4
	.word	_Label_727
	.word	-84
	.word	4
	.word	_Label_728
	.word	-88
	.word	4
	.word	_Label_729
	.word	-92
	.word	4
	.word	_Label_730
	.word	-96
	.word	4
	.word	_Label_731
	.word	-100
	.word	4
	.word	_Label_732
	.word	-104
	.word	4
	.word	_Label_733
	.word	-108
	.word	4
	.word	_Label_734
	.word	-112
	.word	4
	.word	_Label_735
	.word	-116
	.word	4
	.word	_Label_736
	.word	-120
	.word	4
	.word	_Label_737
	.word	-124
	.word	4
	.word	_Label_738
	.word	-128
	.word	4
	.word	_Label_739
	.word	-132
	.word	4
	.word	_Label_740
	.word	-136
	.word	4
	.word	_Label_741
	.word	-140
	.word	4
	.word	_Label_742
	.word	-144
	.word	4
	.word	_Label_743
	.word	-148
	.word	4
	.word	_Label_744
	.word	-152
	.word	4
	.word	_Label_745
	.word	-9
	.word	1
	.word	_Label_746
	.word	-156
	.word	4
	.word	_Label_747
	.word	-160
	.word	4
	.word	_Label_748
	.word	-164
	.word	4
	.word	_Label_749
	.word	-10
	.word	1
	.word	_Label_750
	.word	-168
	.word	4
	.word	_Label_751
	.word	-172
	.word	4
	.word	_Label_752
	.word	-176
	.word	4
	.word	_Label_753
	.word	-180
	.word	4
	.word	_Label_754
	.word	-184
	.word	4
	.word	_Label_755
	.word	-188
	.word	4
	.word	_Label_756
	.word	-192
	.word	4
	.word	_Label_757
	.word	-196
	.word	4
	.word	_Label_758
	.word	-200
	.word	4
	.word	_Label_759
	.word	-204
	.word	4
	.word	_Label_760
	.word	-208
	.word	4
	.word	_Label_761
	.word	-212
	.word	4
	.word	_Label_762
	.word	-216
	.word	4
	.word	_Label_763
	.word	-220
	.word	4
	.word	_Label_764
	.word	-224
	.word	4
	.word	_Label_765
	.word	-228
	.word	4
	.word	_Label_766
	.word	-232
	.word	4
	.word	_Label_767
	.word	-236
	.word	4
	.word	_Label_768
	.word	-240
	.word	4
	.word	_Label_769
	.word	-244
	.word	4
	.word	_Label_770
	.word	-248
	.word	4
	.word	_Label_771
	.word	-252
	.word	4
	.word	_Label_772
	.word	-256
	.word	4
	.word	_Label_773
	.word	-260
	.word	4
	.word	_Label_774
	.word	-264
	.word	4
	.word	_Label_775
	.word	-268
	.word	4
	.word	_Label_776
	.word	-272
	.word	4
	.word	_Label_777
	.word	-276
	.word	4
	.word	_Label_778
	.word	-280
	.word	4
	.word	_Label_779
	.word	-284
	.word	4
	.word	_Label_780
	.word	-288
	.word	4
	.word	_Label_781
	.word	-292
	.word	4
	.word	_Label_782
	.word	-296
	.word	4
	.word	_Label_783
	.word	-300
	.word	4
	.word	_Label_784
	.word	-304
	.word	4
	.word	_Label_785
	.word	-308
	.word	4
	.word	_Label_786
	.word	-312
	.word	4
	.word	_Label_787
	.word	-316
	.word	4
	.word	_Label_788
	.word	-320
	.word	4
	.word	_Label_789
	.word	-324
	.word	4
	.word	_Label_790
	.word	-328
	.word	4
	.word	_Label_791
	.word	-332
	.word	4
	.word	_Label_792
	.word	-336
	.word	4
	.word	0
_Label_709:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_708\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_707\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_745:
	.byte	'C'
	.ascii	"_temp_666\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_749:
	.byte	'C'
	.ascii	"_temp_662\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_788:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_789:
	.byte	'P'
	.ascii	"newThr\0"
	.align
_Label_790:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_791:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_792:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_193_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_193_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_4399:
	push	r0
	sub	r1,1,r1
	bne	_Label_4399
	mov	1862,r13		! source line 1862
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1867,r13		! source line 1867
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1868,r13		! source line 1868
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_794 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_793 = *_temp_794  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_793) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_795 = _temp_793 + 32
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
!   _temp_797 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_797 [0 ] into _temp_798
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
!   _temp_796 = _temp_798		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_796  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1869,r13		! source line 1869
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1870,r13		! source line 1870
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_799 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_799 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_800 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_800 [14 ] into _temp_801
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
!   Data Move: initUserStackTop = *_temp_801  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_802 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_802 [999 ] into _temp_803
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
!   initSystemStackTop = _temp_803		(4 bytes)
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
	mov	1873,r13		! source line 1873
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1873,r13		! source line 1873
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_193_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_804
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_805
	.word	8
	.word	4
	.word	_Label_806
	.word	-12
	.word	4
	.word	_Label_807
	.word	-16
	.word	4
	.word	_Label_808
	.word	-20
	.word	4
	.word	_Label_809
	.word	-24
	.word	4
	.word	_Label_810
	.word	-28
	.word	4
	.word	_Label_811
	.word	-32
	.word	4
	.word	_Label_812
	.word	-36
	.word	4
	.word	_Label_813
	.word	-40
	.word	4
	.word	_Label_814
	.word	-44
	.word	4
	.word	_Label_815
	.word	-48
	.word	4
	.word	_Label_816
	.word	-52
	.word	4
	.word	_Label_817
	.word	-56
	.word	4
	.word	_Label_818
	.word	-60
	.word	4
	.word	_Label_819
	.word	-64
	.word	4
	.word	0
_Label_804:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_805:
	.byte	'I'
	.ascii	"startPC\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_817:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_818:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_819:
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
_Label_4400:
	push	r0
	sub	r1,1,r1
	bne	_Label_4400
	mov	1879,r13		! source line 1879
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_824 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_825 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_824  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_820:
!   Perform the FOR-LOOP termination test
!   if i > _temp_825 then goto _Label_823		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_823
_Label_821:
	mov	1885,r13		! source line 1885
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1886,r13		! source line 1886
	mov	"\0\0IF",r10
!   _temp_831 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_832 = _temp_831 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_832 [i ] into _temp_833
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
!   _temp_834 = _temp_833 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_830 = *_temp_834  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_830 != processID then goto _Label_827		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_827
!	jmp	_Label_829
_Label_829:
!   _temp_836 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_837 = _temp_836 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_837 [i ] into _temp_838
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
!   _temp_839 = _temp_838 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_835 = *_temp_839  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_842 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_841 = *_temp_842  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_841) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_843 = _temp_841 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_840 = *_temp_843  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_835 != _temp_840 then goto _Label_827		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_827
!	jmp	_Label_828
_Label_828:
!   _temp_845 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_846 = _temp_845 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_846 [i ] into _temp_847
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
!   _temp_848 = _temp_847 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_844 = *_temp_848  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_844 == 3 then goto _Label_827		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_827
!	jmp	_Label_826
_Label_826:
! THEN...
	mov	1887,r13		! source line 1887
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0AS",r10
	mov	1887,r13		! source line 1887
	mov	"\0\0SE",r10
!   _temp_850 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_851 = _temp_850 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_851 [i ] into _temp_852
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
!   _temp_849 = _temp_852		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_853 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_849  sizeInBytes=4
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
	mov	1888,r13		! source line 1888
	mov	"\0\0RE",r10
!   ReturnResult: childExitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_827:
!   Increment the FOR-LOOP index variable and jump back
_Label_822:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_820
! END FOR
_Label_823:
! RETURN STATEMENT...
	mov	1891,r13		! source line 1891
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
	.word	_Label_854
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_855
	.word	8
	.word	4
	.word	_Label_856
	.word	-12
	.word	4
	.word	_Label_857
	.word	-16
	.word	4
	.word	_Label_858
	.word	-20
	.word	4
	.word	_Label_859
	.word	-24
	.word	4
	.word	_Label_860
	.word	-28
	.word	4
	.word	_Label_861
	.word	-32
	.word	4
	.word	_Label_862
	.word	-36
	.word	4
	.word	_Label_863
	.word	-40
	.word	4
	.word	_Label_864
	.word	-44
	.word	4
	.word	_Label_865
	.word	-48
	.word	4
	.word	_Label_866
	.word	-52
	.word	4
	.word	_Label_867
	.word	-56
	.word	4
	.word	_Label_868
	.word	-60
	.word	4
	.word	_Label_869
	.word	-64
	.word	4
	.word	_Label_870
	.word	-68
	.word	4
	.word	_Label_871
	.word	-72
	.word	4
	.word	_Label_872
	.word	-76
	.word	4
	.word	_Label_873
	.word	-80
	.word	4
	.word	_Label_874
	.word	-84
	.word	4
	.word	_Label_875
	.word	-88
	.word	4
	.word	_Label_876
	.word	-92
	.word	4
	.word	_Label_877
	.word	-96
	.word	4
	.word	_Label_878
	.word	-100
	.word	4
	.word	_Label_879
	.word	-104
	.word	4
	.word	_Label_880
	.word	-108
	.word	4
	.word	_Label_881
	.word	-112
	.word	4
	.word	_Label_882
	.word	-116
	.word	4
	.word	_Label_883
	.word	-120
	.word	4
	.word	0
_Label_854:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_855:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_882:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_883:
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
_Label_4401:
	push	r0
	sub	r1,1,r1
	bne	_Label_4401
	mov	1896,r13		! source line 1896
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_4402:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4402
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1906,r13		! source line 1906
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldVar  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1907,r13		! source line 1907
	mov	"\0\0AS",r10
	mov	1907,r13		! source line 1907
	mov	"\0\0SE",r10
!   _temp_885 = &kernelAddr
	add	r14,-228,r1
	store	r1,[r14+-108]
!   _temp_886 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_888 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_887 = *_temp_888  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_887) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_889 = _temp_887 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_885  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_886  sizeInBytes=4
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
	mov	1911,r13		! source line 1911
	mov	"\0\0IF",r10
!   if oldVar >= 0 then goto _Label_891		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_891
!	jmp	_Label_890
_Label_890:
! THEN...
	mov	1912,r13		! source line 1912
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_891:
! SEND STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0SE",r10
!   _temp_892 = &newAddrSpace
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
	mov	1916,r13		! source line 1916
	mov	"\0\0AS",r10
	mov	1916,r13		! source line 1916
	mov	"\0\0SE",r10
!   _temp_893 = &kernelAddr
	add	r14,-228,r1
	store	r1,[r14+-84]
!   _temp_894 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_893  sizeInBytes=4
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
	mov	1917,r13		! source line 1917
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_895
	load	[r14+-232],r1
	cmp	r1,r0
	be	_Label_895
	jmp	_Label_896
_Label_895:
! THEN...
	mov	1918,r13		! source line 1918
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_896:
! ASSIGNMENT STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0AS",r10
	mov	1921,r13		! source line 1921
	mov	"\0\0SE",r10
!   _temp_897 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_897  sizeInBytes=4
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
	mov	1922,r13		! source line 1922
	mov	"\0\0IF",r10
!   if initUserPC >= 0 then goto _Label_899		(int)
	load	[r14+-236],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_899
!	jmp	_Label_898
_Label_898:
! THEN...
	mov	1923,r13		! source line 1923
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_899:
! SEND STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_902 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_901 = *_temp_902  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_901) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_903 = _temp_901 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_900 = _temp_903		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_904 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_900  sizeInBytes=4
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
	mov	1928,r13		! source line 1928
	mov	"\0\0SE",r10
!   _temp_905 = &_P_Kernel_fileManager
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
	mov	1930,r13		! source line 1930
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_907 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_906 = *_temp_907  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_906) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_908 = _temp_906 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_908 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-40],r4
	mov	23,r3
_Label_4403:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4403
! ASSIGNMENT STATEMENT...
	mov	1931,r13		! source line 1931
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_909 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_909 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1932,r13		! source line 1932
	mov	"\0\0AS",r10
!   _temp_911 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-28]
!   _temp_912 = _temp_911 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_910 = *_temp_912  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   InitUserStackTop = _temp_910 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1933,r13		! source line 1933
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_913 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_913 [999 ] into _temp_914
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
!   initSystemStackTop = _temp_914		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-240]
! SEND STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0SE",r10
!   _temp_915 = &newAddrSpace
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
	mov	1935,r13		! source line 1935
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1938,r13		! source line 1938
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
	.word	_Label_916
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_917
	.word	8
	.word	4
	.word	_Label_918
	.word	-12
	.word	4
	.word	_Label_919
	.word	-16
	.word	4
	.word	_Label_920
	.word	-20
	.word	4
	.word	_Label_921
	.word	-24
	.word	4
	.word	_Label_922
	.word	-28
	.word	4
	.word	_Label_923
	.word	-32
	.word	4
	.word	_Label_924
	.word	-36
	.word	4
	.word	_Label_925
	.word	-40
	.word	4
	.word	_Label_926
	.word	-44
	.word	4
	.word	_Label_927
	.word	-48
	.word	4
	.word	_Label_928
	.word	-52
	.word	4
	.word	_Label_929
	.word	-56
	.word	4
	.word	_Label_930
	.word	-60
	.word	4
	.word	_Label_931
	.word	-64
	.word	4
	.word	_Label_932
	.word	-68
	.word	4
	.word	_Label_933
	.word	-72
	.word	4
	.word	_Label_934
	.word	-76
	.word	4
	.word	_Label_935
	.word	-80
	.word	4
	.word	_Label_936
	.word	-84
	.word	4
	.word	_Label_937
	.word	-88
	.word	4
	.word	_Label_938
	.word	-92
	.word	4
	.word	_Label_939
	.word	-96
	.word	4
	.word	_Label_940
	.word	-100
	.word	4
	.word	_Label_941
	.word	-104
	.word	4
	.word	_Label_942
	.word	-108
	.word	4
	.word	_Label_943
	.word	-112
	.word	4
	.word	_Label_944
	.word	-204
	.word	92
	.word	_Label_945
	.word	-228
	.word	24
	.word	_Label_946
	.word	-232
	.word	4
	.word	_Label_947
	.word	-236
	.word	4
	.word	_Label_948
	.word	-240
	.word	4
	.word	_Label_949
	.word	-244
	.word	4
	.word	_Label_950
	.word	-248
	.word	4
	.word	0
_Label_916:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_917:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_944:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_945:
	.byte	'A'
	.ascii	"kernelAddr\0"
	.align
_Label_946:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_947:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_948:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_949:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_950:
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
_Label_4404:
	push	r0
	sub	r1,1,r1
	bne	_Label_4404
	mov	1946,r13		! source line 1946
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0AS",r10
	mov	1951,r13		! source line 1951
	mov	"\0\0SE",r10
!   _temp_951 = &kernelAddr
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_952 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_954 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_953 = *_temp_954  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_953) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_955 = _temp_953 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_951  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_952  sizeInBytes=4
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
!   _temp_956 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_956  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1953,r13		! source line 1953
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_957 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_957  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1954,r13		! source line 1954
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_958 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_958  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_959 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_959  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1957,r13		! source line 1957
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_960 = &kernelAddr
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_960  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1959,r13		! source line 1959
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1960,r13		! source line 1960
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
	.word	_Label_961
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_962
	.word	8
	.word	4
	.word	_Label_963
	.word	-12
	.word	4
	.word	_Label_964
	.word	-16
	.word	4
	.word	_Label_965
	.word	-20
	.word	4
	.word	_Label_966
	.word	-24
	.word	4
	.word	_Label_967
	.word	-28
	.word	4
	.word	_Label_968
	.word	-32
	.word	4
	.word	_Label_969
	.word	-36
	.word	4
	.word	_Label_970
	.word	-40
	.word	4
	.word	_Label_971
	.word	-44
	.word	4
	.word	_Label_972
	.word	-48
	.word	4
	.word	_Label_973
	.word	-52
	.word	4
	.word	_Label_974
	.word	-76
	.word	24
	.word	0
_Label_961:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_962:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_973:
	.byte	'I'
	.ascii	"oldVar\0"
	.align
_Label_974:
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
	mov	36,r1
_Label_4405:
	push	r0
	sub	r1,1,r1
	bne	_Label_4405
	mov	1965,r13		! source line 1965
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0AS",r10
	mov	1974,r13		! source line 1974
	mov	"\0\0SE",r10
!   _temp_975 = &kernelAddr
	add	r14,-136,r1
	store	r1,[r14+-96]
!   _temp_976 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-92]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_978 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_977 = *_temp_978  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_977) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_979 = _temp_977 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_975  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_976  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=oldVar  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! ASSIGNMENT STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0AS",r10
!   fileDescriptorIndex = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-104]
! FOR STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_984 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_985 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_984  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-100]
_Label_980:
!   Perform the FOR-LOOP termination test
!   if i > _temp_985 then goto _Label_983		
	load	[r14+-100],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_983
_Label_981:
	mov	1992,r13		! source line 1992
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_990 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_989 = *_temp_990  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_989) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_991 = _temp_989 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_991 [i ] into _temp_992
!     make sure index expr is >= 0
	load	[r14+-100],r2
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
!   Data Move: _temp_988 = *_temp_992  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_988) then goto _Label_986
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_986
	jmp	_Label_987
_Label_986:
! THEN...
	mov	1994,r13		! source line 1994
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0AS",r10
!   fileDescriptorIndex = i		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-104]
! BREAK STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0BR",r10
	jmp	_Label_983
! END IF...
_Label_987:
!   Increment the FOR-LOOP index variable and jump back
_Label_982:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_980
! END FOR
_Label_983:
! IF STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0IF",r10
!   if fileDescriptorIndex != -1 then goto _Label_994		(int)
	load	[r14+-104],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_994
!	jmp	_Label_993
_Label_993:
! THEN...
	mov	2002,r13		! source line 2002
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_994:
! IF STATEMENT...
	mov	2008,r13		! source line 2008
	mov	"\0\0IF",r10
!   _temp_997 = &kernelAddr
	add	r14,-136,r1
	store	r1,[r14+-48]
!   _temp_998 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_997  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_998  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	2008,r13		! source line 2008
	mov	"\0\0CA",r10
	call	_P_System_StrEqual
!   if result==true then goto _Label_995 else goto _Label_996
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_996
	jmp	_Label_995
_Label_995:
! THEN...
	mov	2009,r13		! source line 2009
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0AS",r10
!   _temp_999 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   _temp_1000 = _temp_999 + 772
	load	[r14+-40],r1
	add	r1,772,r1
	store	r1,[r14+-36]
!   openFile = _temp_1000		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-112]
	jmp	_Label_1001
_Label_996:
! ELSE...
	mov	2012,r13		! source line 2012
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0AS",r10
	mov	2012,r13		! source line 2012
	mov	"\0\0SE",r10
!   _temp_1002 = &kernelAddr
	add	r14,-136,r1
	store	r1,[r14+-32]
!   _temp_1003 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1002  sizeInBytes=4
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
	store	r1,[r14+-112]
! END IF...
_Label_1001:
! IF STATEMENT...
	mov	2015,r13		! source line 2015
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_1004
	load	[r14+-112],r1
	cmp	r1,r0
	be	_Label_1004
	jmp	_Label_1005
_Label_1004:
! THEN...
	mov	2016,r13		! source line 2016
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1005:
! ASSIGNMENT STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1007 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1006 = *_temp_1007  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1006) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1008 = _temp_1006 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1008 [fileDescriptorIndex ] into _temp_1009
!     make sure index expr is >= 0
	load	[r14+-104],r2
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
!   Data Move: *_temp_1009 = openFile  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0RE",r10
!   ReturnResult: fileDescriptorIndex  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_1010
	.word	4		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_1011
	.word	8
	.word	4
	.word	_Label_1012
	.word	-12
	.word	4
	.word	_Label_1013
	.word	-16
	.word	4
	.word	_Label_1014
	.word	-20
	.word	4
	.word	_Label_1015
	.word	-24
	.word	4
	.word	_Label_1016
	.word	-28
	.word	4
	.word	_Label_1017
	.word	-32
	.word	4
	.word	_Label_1018
	.word	-36
	.word	4
	.word	_Label_1019
	.word	-40
	.word	4
	.word	_Label_1020
	.word	-44
	.word	4
	.word	_Label_1021
	.word	-48
	.word	4
	.word	_Label_1022
	.word	-52
	.word	4
	.word	_Label_1023
	.word	-56
	.word	4
	.word	_Label_1024
	.word	-60
	.word	4
	.word	_Label_1025
	.word	-64
	.word	4
	.word	_Label_1026
	.word	-68
	.word	4
	.word	_Label_1027
	.word	-72
	.word	4
	.word	_Label_1028
	.word	-76
	.word	4
	.word	_Label_1029
	.word	-80
	.word	4
	.word	_Label_1030
	.word	-84
	.word	4
	.word	_Label_1031
	.word	-88
	.word	4
	.word	_Label_1032
	.word	-92
	.word	4
	.word	_Label_1033
	.word	-96
	.word	4
	.word	_Label_1034
	.word	-100
	.word	4
	.word	_Label_1035
	.word	-104
	.word	4
	.word	_Label_1036
	.word	-108
	.word	4
	.word	_Label_1037
	.word	-112
	.word	4
	.word	_Label_1038
	.word	-136
	.word	24
	.word	0
_Label_1010:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_1011:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1034:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1035:
	.byte	'I'
	.ascii	"fileDescriptorIndex\0"
	.align
_Label_1036:
	.byte	'I'
	.ascii	"oldVar\0"
	.align
_Label_1037:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1038:
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
	mov	114,r1
_Label_4406:
	push	r0
	sub	r1,1,r1
	bne	_Label_4406
	mov	2028,r13		! source line 2028
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1043		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1043
	jmp	_Label_1039
_Label_1043:
!   if fileDesc <= 9 then goto _Label_1042		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1042
	jmp	_Label_1039
_Label_1042:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1046 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-396]
!   Data Move: _temp_1045 = *_temp_1046  (sizeInBytes=4)
	load	[r14+-396],r1
	load	[r1],r1
	store	r1,[r14+-400]
!   if intIsZero (_temp_1045) then goto _runtimeErrorNullPointer
	load	[r14+-400],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1047 = _temp_1045 + 124
	load	[r14+-400],r1
	add	r1,124,r1
	store	r1,[r14+-392]
!   Move address of _temp_1047 [fileDesc ] into _temp_1048
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-392],r1
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
	store	r2,[r14+-388]
!   Data Move: _temp_1044 = *_temp_1048  (sizeInBytes=4)
	load	[r14+-388],r1
	load	[r1],r1
	store	r1,[r14+-404]
!   if intIsZero (_temp_1044) then goto _Label_1039
	load	[r14+-404],r1
	cmp	r1,r0
	be	_Label_1039
!	jmp	_Label_1041
_Label_1041:
!   if sizeInBytes >= 0 then goto _Label_1040		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1040
!	jmp	_Label_1039
_Label_1039:
! THEN...
	mov	2035,r13		! source line 2035
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,460,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1040:
! IF STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1054 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-372]
!   Data Move: _temp_1053 = *_temp_1054  (sizeInBytes=4)
	load	[r14+-372],r1
	load	[r1],r1
	store	r1,[r14+-376]
!   if intIsZero (_temp_1053) then goto _runtimeErrorNullPointer
	load	[r14+-376],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1055 = _temp_1053 + 124
	load	[r14+-376],r1
	add	r1,124,r1
	store	r1,[r14+-368]
!   Move address of _temp_1055 [fileDesc ] into _temp_1056
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-368],r1
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
	store	r2,[r14+-364]
!   Data Move: _temp_1052 = *_temp_1056  (sizeInBytes=4)
	load	[r14+-364],r1
	load	[r1],r1
	store	r1,[r14+-380]
!   if intIsZero (_temp_1052) then goto _runtimeErrorNullPointer
	load	[r14+-380],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1057 = _temp_1052 + 12
	load	[r14+-380],r1
	add	r1,12,r1
	store	r1,[r14+-360]
!   Data Move: _temp_1051 = *_temp_1057  (sizeInBytes=4)
	load	[r14+-360],r1
	load	[r1],r1
	store	r1,[r14+-384]
!   if _temp_1051 != 2 then goto _Label_1050		(int)
	load	[r14+-384],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1050
!	jmp	_Label_1049
_Label_1049:
! THEN...
	mov	2041,r13		! source line 2041
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-420]
! FOR STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1062 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-356]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1063 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-352]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1062  (sizeInBytes=4)
	load	[r14+-356],r1
	store	r1,[r14+-440]
_Label_1058:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1063 then goto _Label_1061		
	load	[r14+-440],r1
	load	[r14+-352],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1061
_Label_1059:
	mov	2042,r13		! source line 2042
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0AS",r10
!   _temp_1064 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-348]
!   virtPage = _temp_1064 div 8192		(int)
	load	[r14+-348],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! ASSIGNMENT STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-408]
! IF STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1069		(int)
	load	[r14+-412],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1069
	jmp	_Label_1065
_Label_1069:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1073 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-332]
!   Data Move: _temp_1072 = *_temp_1073  (sizeInBytes=4)
	load	[r14+-332],r1
	load	[r1],r1
	store	r1,[r14+-336]
!   if intIsZero (_temp_1072) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1074 = _temp_1072 + 32
	load	[r14+-336],r1
	add	r1,32,r1
	store	r1,[r14+-328]
!   _temp_1075 = _temp_1074 + 4
	load	[r14+-328],r1
	add	r1,4,r1
	store	r1,[r14+-324]
!   Data Move: _temp_1071 = *_temp_1075  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r1],r1
	store	r1,[r14+-340]
!   _temp_1070 = _temp_1071 - 1		(int)
	load	[r14+-340],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-344]
!   if virtPage <= _temp_1070 then goto _Label_1068		(int)
	load	[r14+-412],r1
	load	[r14+-344],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1068
	jmp	_Label_1065
_Label_1068:
	mov	2045,r13		! source line 2045
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1078 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-316]
!   Data Move: _temp_1077 = *_temp_1078  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-320]
!   if intIsZero (_temp_1077) then goto _runtimeErrorNullPointer
	load	[r14+-320],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1079 = _temp_1077 + 32
	load	[r14+-320],r1
	add	r1,32,r1
	store	r1,[r14+-312]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-312],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1076  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-22]
!   _temp_1080 = _temp_1076 XOR 0		(bool)
	loadb	[r14+-22],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-21]
!   if _temp_1080 then goto _Label_1067 else goto _Label_1065
	loadb	[r14+-21],r1
	cmp	r1,0
	be	_Label_1065
	jmp	_Label_1067
_Label_1067:
	mov	2045,r13		! source line 2045
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1083 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-304]
!   Data Move: _temp_1082 = *_temp_1083  (sizeInBytes=4)
	load	[r14+-304],r1
	load	[r1],r1
	store	r1,[r14+-308]
!   if intIsZero (_temp_1082) then goto _runtimeErrorNullPointer
	load	[r14+-308],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1084 = _temp_1082 + 32
	load	[r14+-308],r1
	add	r1,32,r1
	store	r1,[r14+-300]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-300],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1081  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-20]
!   _temp_1085 = _temp_1081 XOR 0		(bool)
	loadb	[r14+-20],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-19]
!   if _temp_1085 then goto _Label_1066 else goto _Label_1065
	loadb	[r14+-19],r1
	cmp	r1,0
	be	_Label_1065
	jmp	_Label_1066
_Label_1065:
! THEN...
	mov	2046,r13		! source line 2046
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-420],r1
	store	r1,[r14+8]
	add	r15,460,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1066:
! ASSIGNMENT STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-408],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-416]
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
	mov	2049,r13		! source line 2049
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1088 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-288]
!   Data Move: _temp_1087 = *_temp_1088  (sizeInBytes=4)
	load	[r14+-288],r1
	load	[r1],r1
	store	r1,[r14+-292]
!   if intIsZero (_temp_1087) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1089 = _temp_1087 + 32
	load	[r14+-292],r1
	add	r1,32,r1
	store	r1,[r14+-284]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-284],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1086  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-296]
!   destAddr = _temp_1086 + offset		(int)
	load	[r14+-296],r1
	load	[r14+-416],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-436]
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
	mov	2050,r13		! source line 2050
	mov	"\0\0SE",r10
!   _temp_1090 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-280]
!   Send message GetChar
	load	[r14+-280],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=c  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-24]
! IF STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0IF",r10
!   _temp_1093 = charToInt (c)
	loadb	[r14+-24],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-276]
!   if _temp_1093 != 4 then goto _Label_1092		(int)
	load	[r14+-276],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1092
!	jmp	_Label_1091
_Label_1091:
! THEN...
	mov	2052,r13		! source line 2052
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0BR",r10
	jmp	_Label_1061
! END IF...
_Label_1092:
! IF STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0IF",r10
!   _temp_1096 = c XOR 13		(bool)
	loadb	[r14+-24],r1
	mov	13,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-18]
!   if _temp_1096 then goto _Label_1095 else goto _Label_1094
	loadb	[r14+-18],r1
	cmp	r1,0
	be	_Label_1094
	jmp	_Label_1095
_Label_1094:
! THEN...
	mov	2055,r13		! source line 2055
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0AS",r10
!   c = 10		(1 byte)
	mov	10,r1
	storeb	r1,[r14+-24]
! END IF...
_Label_1095:
! ASSIGNMENT STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-436],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *destAddr = c  (sizeInBytes=1)
	loadb	[r14+-24],r1
	load	[r14+-436],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1098 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-268]
!   Data Move: _temp_1097 = *_temp_1098  (sizeInBytes=4)
	load	[r14+-268],r1
	load	[r1],r1
	store	r1,[r14+-272]
!   if intIsZero (_temp_1097) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1099 = _temp_1097 + 32
	load	[r14+-272],r1
	add	r1,32,r1
	store	r1,[r14+-264]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-264],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1101 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: _temp_1100 = *_temp_1101  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (_temp_1100) then goto _runtimeErrorNullPointer
	load	[r14+-260],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1102 = _temp_1100 + 32
	load	[r14+-260],r1
	add	r1,32,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-420],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-420]
! ASSIGNMENT STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0AS",r10
!   buffer = buffer + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! IF STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0IF",r10
!   _temp_1105 = c XOR 10		(bool)
	loadb	[r14+-24],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1105 then goto _Label_1104 else goto _Label_1103
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1103
	jmp	_Label_1104
_Label_1103:
! THEN...
	mov	2064,r13		! source line 2064
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0BR",r10
	jmp	_Label_1061
! END IF...
_Label_1104:
!   Increment the FOR-LOOP index variable and jump back
_Label_1060:
!   i = i + 1
	load	[r14+-440],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-440]
	jmp	_Label_1058
! END FOR
_Label_1061:
! RETURN STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-420],r1
	store	r1,[r14+8]
	add	r15,460,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1106
_Label_1050:
! ELSE...
	mov	2073,r13		! source line 2073
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1108 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-244]
!   Data Move: _temp_1107 = *_temp_1108  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-248]
!   if intIsZero (_temp_1107) then goto _runtimeErrorNullPointer
	load	[r14+-248],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1109 = _temp_1107 + 124
	load	[r14+-248],r1
	add	r1,124,r1
	store	r1,[r14+-240]
!   Move address of _temp_1109 [fileDesc ] into _temp_1110
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-240],r1
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
	store	r2,[r14+-236]
!   Data Move: openFile = *_temp_1110  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-408]
! ASSIGNMENT STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-408],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! ASSIGNMENT STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-408],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-416]
! ASSIGNMENT STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-420]
! ASSIGNMENT STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-444],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1111 = openFile + 16
	load	[r14+-444],r1
	add	r1,16,r1
	store	r1,[r14+-232]
!   Data Move: nextPosInFile = *_temp_1111  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-424]
! ASSIGNMENT STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-444],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1113 = openFile + 20
	load	[r14+-444],r1
	add	r1,20,r1
	store	r1,[r14+-224]
!   Data Move: _temp_1112 = *_temp_1113  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-228]
!   if intIsZero (_temp_1112) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1114 = _temp_1112 + 24
	load	[r14+-228],r1
	add	r1,24,r1
	store	r1,[r14+-220]
!   Data Move: fileSize = *_temp_1114  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-432]
! WHILE STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0WH",r10
_Label_1115:
!	jmp	_Label_1116
_Label_1116:
	mov	2081,r13		! source line 2081
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-416],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-428]
! IF STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0IF",r10
!   _temp_1120 = nextPosInFile + chunkSize		(int)
	load	[r14+-424],r1
	load	[r14+-428],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
!   if _temp_1120 <= fileSize then goto _Label_1119		(int)
	load	[r14+-216],r1
	load	[r14+-432],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1119
!	jmp	_Label_1118
_Label_1118:
! THEN...
	mov	2084,r13		! source line 2084
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-432],r1
	load	[r14+-424],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-428]
! END IF...
_Label_1119:
! IF STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0IF",r10
!   _temp_1123 = copiedSoFar + chunkSize		(int)
	load	[r14+-420],r1
	load	[r14+-428],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   if _temp_1123 <= sizeInBytes then goto _Label_1122		(int)
	load	[r14+-212],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1122
!	jmp	_Label_1121
_Label_1121:
! THEN...
	mov	2087,r13		! source line 2087
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-420],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-428]
! END IF...
_Label_1122:
! IF STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1125		(int)
	load	[r14+-428],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1125
!	jmp	_Label_1124
_Label_1124:
! THEN...
	mov	2090,r13		! source line 2090
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0BR",r10
	jmp	_Label_1117
! END IF...
_Label_1125:
! IF STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1130		(int)
	load	[r14+-412],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1130
	jmp	_Label_1126
_Label_1130:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1134 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-196]
!   Data Move: _temp_1133 = *_temp_1134  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_1133) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1135 = _temp_1133 + 32
	load	[r14+-200],r1
	add	r1,32,r1
	store	r1,[r14+-192]
!   _temp_1136 = _temp_1135 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1132 = *_temp_1136  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   _temp_1131 = _temp_1132 - 1		(int)
	load	[r14+-204],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if virtPage <= _temp_1131 then goto _Label_1129		(int)
	load	[r14+-412],r1
	load	[r14+-208],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1129
	jmp	_Label_1126
_Label_1129:
	mov	2092,r13		! source line 2092
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1139 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-180]
!   Data Move: _temp_1138 = *_temp_1139  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_1138) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1140 = _temp_1138 + 32
	load	[r14+-184],r1
	add	r1,32,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1137  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1141 = _temp_1137 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1141 then goto _Label_1128 else goto _Label_1126
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1126
	jmp	_Label_1128
_Label_1128:
	mov	2092,r13		! source line 2092
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1144 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-168]
!   Data Move: _temp_1143 = *_temp_1144  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_1143) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1145 = _temp_1143 + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1142  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1146 = _temp_1142 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1146 then goto _Label_1127 else goto _Label_1126
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1126
	jmp	_Label_1127
_Label_1126:
! THEN...
	mov	2093,r13		! source line 2093
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,460,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1127:
! ASSIGNMENT STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-424],r1
	load	[r14+-428],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-424]
! ASSIGNMENT STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-420],r1
	load	[r14+-428],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-420]
! ASSIGNMENT STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-412],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! ASSIGNMENT STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-416]
! IF STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1148		(int)
	load	[r14+-420],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1148
!	jmp	_Label_1147
_Label_1147:
! THEN...
	mov	2100,r13		! source line 2100
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0BR",r10
	jmp	_Label_1117
! END IF...
_Label_1148:
! END WHILE...
	jmp	_Label_1115
_Label_1117:
! ASSIGNMENT STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1150 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-156]
!   Data Move: _temp_1149 = *_temp_1150  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_1149) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1151 = _temp_1149 + 124
	load	[r14+-160],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_1151 [fileDesc ] into _temp_1152
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-148]
!   Data Move: openFile = *_temp_1152  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-444]
! ASSIGNMENT STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-408]
! ASSIGNMENT STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-408],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! ASSIGNMENT STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-408],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-416]
! ASSIGNMENT STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-420]
! ASSIGNMENT STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-444],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1153 = openFile + 16
	load	[r14+-444],r1
	add	r1,16,r1
	store	r1,[r14+-144]
!   Data Move: nextPosInFile = *_temp_1153  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-424]
! ASSIGNMENT STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-444],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1155 = openFile + 20
	load	[r14+-444],r1
	add	r1,20,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1154 = *_temp_1155  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1154) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1156 = _temp_1154 + 24
	load	[r14+-140],r1
	add	r1,24,r1
	store	r1,[r14+-132]
!   Data Move: fileSize = *_temp_1156  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-432]
! WHILE STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0WH",r10
_Label_1157:
!	jmp	_Label_1158
_Label_1158:
	mov	2114,r13		! source line 2114
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-416],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-428]
! IF STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0IF",r10
!   _temp_1162 = nextPosInFile + chunkSize		(int)
	load	[r14+-424],r1
	load	[r14+-428],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   if _temp_1162 <= fileSize then goto _Label_1161		(int)
	load	[r14+-128],r1
	load	[r14+-432],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1161
!	jmp	_Label_1160
_Label_1160:
! THEN...
	mov	2117,r13		! source line 2117
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-432],r1
	load	[r14+-424],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-428]
! END IF...
_Label_1161:
! IF STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0IF",r10
!   _temp_1165 = copiedSoFar + chunkSize		(int)
	load	[r14+-420],r1
	load	[r14+-428],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   if _temp_1165 <= sizeInBytes then goto _Label_1164		(int)
	load	[r14+-124],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1164
!	jmp	_Label_1163
_Label_1163:
! THEN...
	mov	2120,r13		! source line 2120
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-420],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-428]
! END IF...
_Label_1164:
! IF STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1167		(int)
	load	[r14+-428],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1167
!	jmp	_Label_1166
_Label_1166:
! THEN...
	mov	2123,r13		! source line 2123
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0BR",r10
	jmp	_Label_1159
! END IF...
_Label_1167:
! IF STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1172		(int)
	load	[r14+-412],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1172
	jmp	_Label_1168
_Label_1172:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1176 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1175 = *_temp_1176  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1175) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1177 = _temp_1175 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   _temp_1178 = _temp_1177 + 4
	load	[r14+-104],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1174 = *_temp_1178  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   _temp_1173 = _temp_1174 - 1		(int)
	load	[r14+-116],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   if virtPage <= _temp_1173 then goto _Label_1171		(int)
	load	[r14+-412],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1171
	jmp	_Label_1168
_Label_1171:
	mov	2125,r13		! source line 2125
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1181 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1180 = *_temp_1181  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1180) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1182 = _temp_1180 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1179  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1183 = _temp_1179 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1183 then goto _Label_1170 else goto _Label_1168
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1168
	jmp	_Label_1170
_Label_1170:
	mov	2125,r13		! source line 2125
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1186 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_1185 = *_temp_1186  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1185) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1187 = _temp_1185 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1184  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1188 = _temp_1184 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1188 then goto _Label_1169 else goto _Label_1168
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1168
	jmp	_Label_1169
_Label_1168:
! THEN...
	mov	2126,r13		! source line 2126
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,460,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1169:
! SEND STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1190 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1189 = *_temp_1190  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1189) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1191 = _temp_1189 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1193 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1192 = *_temp_1193  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1192) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1194 = _temp_1192 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0AS",r10
	mov	2132,r13		! source line 2132
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1197 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1196 = *_temp_1197  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1196) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1198 = _temp_1196 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-412],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1195  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   destAddr = _temp_1195 + offset		(int)
	load	[r14+-48],r1
	load	[r14+-416],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-436]
! ASSIGNMENT STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0AS",r10
	mov	2133,r13		! source line 2133
	mov	"\0\0SE",r10
!   _temp_1199 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-444],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-436],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-428],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=readSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-23]
! ASSIGNMENT STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-424],r1
	load	[r14+-428],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-424]
! ASSIGNMENT STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-420],r1
	load	[r14+-428],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-420]
! ASSIGNMENT STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-412],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-412]
! ASSIGNMENT STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-416]
! IF STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1201		(int)
	load	[r14+-420],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1201
!	jmp	_Label_1200
_Label_1200:
! THEN...
	mov	2139,r13		! source line 2139
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0BR",r10
	jmp	_Label_1159
! END IF...
_Label_1201:
! END WHILE...
	jmp	_Label_1157
_Label_1159:
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-444],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1202 = openFile + 16
	load	[r14+-444],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1202 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-424],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-420],r1
	store	r1,[r14+8]
	add	r15,460,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1106:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1203
	.word	12		! total size of parameters
	.word	456		! frame size = 456
	.word	_Label_1204
	.word	8
	.word	4
	.word	_Label_1205
	.word	12
	.word	4
	.word	_Label_1206
	.word	16
	.word	4
	.word	_Label_1207
	.word	-28
	.word	4
	.word	_Label_1208
	.word	-32
	.word	4
	.word	_Label_1209
	.word	-36
	.word	4
	.word	_Label_1210
	.word	-40
	.word	4
	.word	_Label_1211
	.word	-44
	.word	4
	.word	_Label_1212
	.word	-48
	.word	4
	.word	_Label_1213
	.word	-52
	.word	4
	.word	_Label_1214
	.word	-56
	.word	4
	.word	_Label_1215
	.word	-60
	.word	4
	.word	_Label_1216
	.word	-64
	.word	4
	.word	_Label_1217
	.word	-68
	.word	4
	.word	_Label_1218
	.word	-72
	.word	4
	.word	_Label_1219
	.word	-9
	.word	1
	.word	_Label_1220
	.word	-76
	.word	4
	.word	_Label_1221
	.word	-80
	.word	4
	.word	_Label_1222
	.word	-84
	.word	4
	.word	_Label_1223
	.word	-10
	.word	1
	.word	_Label_1224
	.word	-11
	.word	1
	.word	_Label_1225
	.word	-88
	.word	4
	.word	_Label_1226
	.word	-92
	.word	4
	.word	_Label_1227
	.word	-96
	.word	4
	.word	_Label_1228
	.word	-12
	.word	1
	.word	_Label_1229
	.word	-100
	.word	4
	.word	_Label_1230
	.word	-104
	.word	4
	.word	_Label_1231
	.word	-108
	.word	4
	.word	_Label_1232
	.word	-112
	.word	4
	.word	_Label_1233
	.word	-116
	.word	4
	.word	_Label_1234
	.word	-120
	.word	4
	.word	_Label_1235
	.word	-124
	.word	4
	.word	_Label_1236
	.word	-128
	.word	4
	.word	_Label_1237
	.word	-132
	.word	4
	.word	_Label_1238
	.word	-136
	.word	4
	.word	_Label_1239
	.word	-140
	.word	4
	.word	_Label_1240
	.word	-144
	.word	4
	.word	_Label_1241
	.word	-148
	.word	4
	.word	_Label_1242
	.word	-152
	.word	4
	.word	_Label_1243
	.word	-156
	.word	4
	.word	_Label_1244
	.word	-160
	.word	4
	.word	_Label_1245
	.word	-13
	.word	1
	.word	_Label_1246
	.word	-164
	.word	4
	.word	_Label_1247
	.word	-168
	.word	4
	.word	_Label_1248
	.word	-172
	.word	4
	.word	_Label_1249
	.word	-14
	.word	1
	.word	_Label_1250
	.word	-15
	.word	1
	.word	_Label_1251
	.word	-176
	.word	4
	.word	_Label_1252
	.word	-180
	.word	4
	.word	_Label_1253
	.word	-184
	.word	4
	.word	_Label_1254
	.word	-16
	.word	1
	.word	_Label_1255
	.word	-188
	.word	4
	.word	_Label_1256
	.word	-192
	.word	4
	.word	_Label_1257
	.word	-196
	.word	4
	.word	_Label_1258
	.word	-200
	.word	4
	.word	_Label_1259
	.word	-204
	.word	4
	.word	_Label_1260
	.word	-208
	.word	4
	.word	_Label_1261
	.word	-212
	.word	4
	.word	_Label_1262
	.word	-216
	.word	4
	.word	_Label_1263
	.word	-220
	.word	4
	.word	_Label_1264
	.word	-224
	.word	4
	.word	_Label_1265
	.word	-228
	.word	4
	.word	_Label_1266
	.word	-232
	.word	4
	.word	_Label_1267
	.word	-236
	.word	4
	.word	_Label_1268
	.word	-240
	.word	4
	.word	_Label_1269
	.word	-244
	.word	4
	.word	_Label_1270
	.word	-248
	.word	4
	.word	_Label_1271
	.word	-17
	.word	1
	.word	_Label_1272
	.word	-252
	.word	4
	.word	_Label_1273
	.word	-256
	.word	4
	.word	_Label_1274
	.word	-260
	.word	4
	.word	_Label_1275
	.word	-264
	.word	4
	.word	_Label_1276
	.word	-268
	.word	4
	.word	_Label_1277
	.word	-272
	.word	4
	.word	_Label_1278
	.word	-18
	.word	1
	.word	_Label_1279
	.word	-276
	.word	4
	.word	_Label_1280
	.word	-280
	.word	4
	.word	_Label_1281
	.word	-284
	.word	4
	.word	_Label_1282
	.word	-288
	.word	4
	.word	_Label_1283
	.word	-292
	.word	4
	.word	_Label_1284
	.word	-296
	.word	4
	.word	_Label_1285
	.word	-19
	.word	1
	.word	_Label_1286
	.word	-300
	.word	4
	.word	_Label_1287
	.word	-304
	.word	4
	.word	_Label_1288
	.word	-308
	.word	4
	.word	_Label_1289
	.word	-20
	.word	1
	.word	_Label_1290
	.word	-21
	.word	1
	.word	_Label_1291
	.word	-312
	.word	4
	.word	_Label_1292
	.word	-316
	.word	4
	.word	_Label_1293
	.word	-320
	.word	4
	.word	_Label_1294
	.word	-22
	.word	1
	.word	_Label_1295
	.word	-324
	.word	4
	.word	_Label_1296
	.word	-328
	.word	4
	.word	_Label_1297
	.word	-332
	.word	4
	.word	_Label_1298
	.word	-336
	.word	4
	.word	_Label_1299
	.word	-340
	.word	4
	.word	_Label_1300
	.word	-344
	.word	4
	.word	_Label_1301
	.word	-348
	.word	4
	.word	_Label_1302
	.word	-352
	.word	4
	.word	_Label_1303
	.word	-356
	.word	4
	.word	_Label_1304
	.word	-360
	.word	4
	.word	_Label_1305
	.word	-364
	.word	4
	.word	_Label_1306
	.word	-368
	.word	4
	.word	_Label_1307
	.word	-372
	.word	4
	.word	_Label_1308
	.word	-376
	.word	4
	.word	_Label_1309
	.word	-380
	.word	4
	.word	_Label_1310
	.word	-384
	.word	4
	.word	_Label_1311
	.word	-388
	.word	4
	.word	_Label_1312
	.word	-392
	.word	4
	.word	_Label_1313
	.word	-396
	.word	4
	.word	_Label_1314
	.word	-400
	.word	4
	.word	_Label_1315
	.word	-404
	.word	4
	.word	_Label_1316
	.word	-408
	.word	4
	.word	_Label_1317
	.word	-412
	.word	4
	.word	_Label_1318
	.word	-416
	.word	4
	.word	_Label_1319
	.word	-420
	.word	4
	.word	_Label_1320
	.word	-424
	.word	4
	.word	_Label_1321
	.word	-428
	.word	4
	.word	_Label_1322
	.word	-432
	.word	4
	.word	_Label_1323
	.word	-436
	.word	4
	.word	_Label_1324
	.word	-440
	.word	4
	.word	_Label_1325
	.word	-444
	.word	4
	.word	_Label_1326
	.word	-23
	.word	1
	.word	_Label_1327
	.word	-24
	.word	1
	.word	0
_Label_1203:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1204:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1205:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1206:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1219:
	.byte	'C'
	.ascii	"_temp_1188\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1223:
	.byte	'C'
	.ascii	"_temp_1184\0"
	.align
_Label_1224:
	.byte	'C'
	.ascii	"_temp_1183\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1228:
	.byte	'C'
	.ascii	"_temp_1179\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1245:
	.byte	'C'
	.ascii	"_temp_1146\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1249:
	.byte	'C'
	.ascii	"_temp_1142\0"
	.align
_Label_1250:
	.byte	'C'
	.ascii	"_temp_1141\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1254:
	.byte	'C'
	.ascii	"_temp_1137\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1271:
	.byte	'C'
	.ascii	"_temp_1105\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1278:
	.byte	'C'
	.ascii	"_temp_1096\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1285:
	.byte	'C'
	.ascii	"_temp_1085\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1289:
	.byte	'C'
	.ascii	"_temp_1081\0"
	.align
_Label_1290:
	.byte	'C'
	.ascii	"_temp_1080\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1294:
	.byte	'C'
	.ascii	"_temp_1076\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1316:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1317:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1318:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1319:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1320:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1321:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1322:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1323:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1324:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1325:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1326:
	.byte	'B'
	.ascii	"readSuccess\0"
	.align
_Label_1327:
	.byte	'C'
	.ascii	"c\0"
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
	mov	128,r1
_Label_4407:
	push	r0
	sub	r1,1,r1
	bne	_Label_4407
	mov	2152,r13		! source line 2152
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1332		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1332
	jmp	_Label_1328
_Label_1332:
!   if fileDesc <= 9 then goto _Label_1331		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1331
	jmp	_Label_1328
_Label_1331:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1335 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-448]
!   Data Move: _temp_1334 = *_temp_1335  (sizeInBytes=4)
	load	[r14+-448],r1
	load	[r1],r1
	store	r1,[r14+-452]
!   if intIsZero (_temp_1334) then goto _runtimeErrorNullPointer
	load	[r14+-452],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1336 = _temp_1334 + 124
	load	[r14+-452],r1
	add	r1,124,r1
	store	r1,[r14+-444]
!   Move address of _temp_1336 [fileDesc ] into _temp_1337
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   Data Move: _temp_1333 = *_temp_1337  (sizeInBytes=4)
	load	[r14+-440],r1
	load	[r1],r1
	store	r1,[r14+-456]
!   if intIsZero (_temp_1333) then goto _Label_1328
	load	[r14+-456],r1
	cmp	r1,r0
	be	_Label_1328
!	jmp	_Label_1330
_Label_1330:
!   if sizeInBytes >= 0 then goto _Label_1329		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1329
!	jmp	_Label_1328
_Label_1328:
! THEN...
	mov	2160,r13		! source line 2160
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2160,r13		! source line 2160
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,516,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1329:
! IF STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1343 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-424]
!   Data Move: _temp_1342 = *_temp_1343  (sizeInBytes=4)
	load	[r14+-424],r1
	load	[r1],r1
	store	r1,[r14+-428]
!   if intIsZero (_temp_1342) then goto _runtimeErrorNullPointer
	load	[r14+-428],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1344 = _temp_1342 + 124
	load	[r14+-428],r1
	add	r1,124,r1
	store	r1,[r14+-420]
!   Move address of _temp_1344 [fileDesc ] into _temp_1345
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   Data Move: _temp_1341 = *_temp_1345  (sizeInBytes=4)
	load	[r14+-416],r1
	load	[r1],r1
	store	r1,[r14+-432]
!   if intIsZero (_temp_1341) then goto _runtimeErrorNullPointer
	load	[r14+-432],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1346 = _temp_1341 + 12
	load	[r14+-432],r1
	add	r1,12,r1
	store	r1,[r14+-412]
!   Data Move: _temp_1340 = *_temp_1346  (sizeInBytes=4)
	load	[r14+-412],r1
	load	[r1],r1
	store	r1,[r14+-436]
!   if _temp_1340 != 2 then goto _Label_1339		(int)
	load	[r14+-436],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1339
!	jmp	_Label_1338
_Label_1338:
! THEN...
	mov	2166,r13		! source line 2166
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   tbuff = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-500]
! FOR STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1351 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-408]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1352 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-404]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1351  (sizeInBytes=4)
	load	[r14+-408],r1
	store	r1,[r14+-492]
_Label_1347:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1352 then goto _Label_1350		
	load	[r14+-492],r1
	load	[r14+-404],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1350
_Label_1348:
	mov	2167,r13		! source line 2167
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0AS",r10
!   _temp_1353 = tbuff		(4 bytes)
	load	[r14+-500],r1
	store	r1,[r14+-400]
!   virtPage = _temp_1353 div 8192		(int)
	load	[r14+-400],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0AS",r10
!   virtAddr = tbuff		(4 bytes)
	load	[r14+-500],r1
	store	r1,[r14+-460]
! IF STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1358		(int)
	load	[r14+-464],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1358
	jmp	_Label_1354
_Label_1358:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1362 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-384]
!   Data Move: _temp_1361 = *_temp_1362  (sizeInBytes=4)
	load	[r14+-384],r1
	load	[r1],r1
	store	r1,[r14+-388]
!   if intIsZero (_temp_1361) then goto _runtimeErrorNullPointer
	load	[r14+-388],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1363 = _temp_1361 + 32
	load	[r14+-388],r1
	add	r1,32,r1
	store	r1,[r14+-380]
!   _temp_1364 = _temp_1363 + 4
	load	[r14+-380],r1
	add	r1,4,r1
	store	r1,[r14+-376]
!   Data Move: _temp_1360 = *_temp_1364  (sizeInBytes=4)
	load	[r14+-376],r1
	load	[r1],r1
	store	r1,[r14+-392]
!   _temp_1359 = _temp_1360 - 1		(int)
	load	[r14+-392],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-396]
!   if virtPage <= _temp_1359 then goto _Label_1357		(int)
	load	[r14+-464],r1
	load	[r14+-396],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1357
	jmp	_Label_1354
_Label_1357:
	mov	2170,r13		! source line 2170
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1367 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-368]
!   Data Move: _temp_1366 = *_temp_1367  (sizeInBytes=4)
	load	[r14+-368],r1
	load	[r1],r1
	store	r1,[r14+-372]
!   if intIsZero (_temp_1366) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1368 = _temp_1366 + 32
	load	[r14+-372],r1
	add	r1,32,r1
	store	r1,[r14+-364]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-364],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1365  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-25]
!   _temp_1369 = _temp_1365 XOR 0		(bool)
	loadb	[r14+-25],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-24]
!   if _temp_1369 then goto _Label_1356 else goto _Label_1354
	loadb	[r14+-24],r1
	cmp	r1,0
	be	_Label_1354
	jmp	_Label_1356
_Label_1356:
	mov	2170,r13		! source line 2170
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1372 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-356]
!   Data Move: _temp_1371 = *_temp_1372  (sizeInBytes=4)
	load	[r14+-356],r1
	load	[r1],r1
	store	r1,[r14+-360]
!   if intIsZero (_temp_1371) then goto _runtimeErrorNullPointer
	load	[r14+-360],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1373 = _temp_1371 + 32
	load	[r14+-360],r1
	add	r1,32,r1
	store	r1,[r14+-352]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-352],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1370  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-23]
!   _temp_1374 = _temp_1370 XOR 0		(bool)
	loadb	[r14+-23],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-22]
!   if _temp_1374 then goto _Label_1355 else goto _Label_1354
	loadb	[r14+-22],r1
	cmp	r1,0
	be	_Label_1354
	jmp	_Label_1355
_Label_1354:
! THEN...
	mov	2171,r13		! source line 2171
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,516,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1355:
! ASSIGNMENT STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0AS",r10
!   tbuff = tbuff + 1		(int)
	load	[r14+-500],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-500]
!   Increment the FOR-LOOP index variable and jump back
_Label_1349:
!   i = i + 1
	load	[r14+-492],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-492]
	jmp	_Label_1347
! END FOR
_Label_1350:
! ASSIGNMENT STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-472]
! FOR STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1379 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-348]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1380 = sizeInBytes - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-344]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1379  (sizeInBytes=4)
	load	[r14+-348],r1
	store	r1,[r14+-492]
_Label_1375:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1380 then goto _Label_1378		
	load	[r14+-492],r1
	load	[r14+-344],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1378
_Label_1376:
	mov	2176,r13		! source line 2176
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0AS",r10
!   _temp_1381 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-340]
!   virtPage = _temp_1381 div 8192		(int)
	load	[r14+-340],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-460]
! IF STATEMENT...
	mov	2179,r13		! source line 2179
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1386		(int)
	load	[r14+-464],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1386
	jmp	_Label_1382
_Label_1386:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1390 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-324]
!   Data Move: _temp_1389 = *_temp_1390  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r1],r1
	store	r1,[r14+-328]
!   if intIsZero (_temp_1389) then goto _runtimeErrorNullPointer
	load	[r14+-328],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1391 = _temp_1389 + 32
	load	[r14+-328],r1
	add	r1,32,r1
	store	r1,[r14+-320]
!   _temp_1392 = _temp_1391 + 4
	load	[r14+-320],r1
	add	r1,4,r1
	store	r1,[r14+-316]
!   Data Move: _temp_1388 = *_temp_1392  (sizeInBytes=4)
	load	[r14+-316],r1
	load	[r1],r1
	store	r1,[r14+-332]
!   _temp_1387 = _temp_1388 - 1		(int)
	load	[r14+-332],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-336]
!   if virtPage <= _temp_1387 then goto _Label_1385		(int)
	load	[r14+-464],r1
	load	[r14+-336],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1385
	jmp	_Label_1382
_Label_1385:
	mov	2179,r13		! source line 2179
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1395 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-308]
!   Data Move: _temp_1394 = *_temp_1395  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r1],r1
	store	r1,[r14+-312]
!   if intIsZero (_temp_1394) then goto _runtimeErrorNullPointer
	load	[r14+-312],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1396 = _temp_1394 + 32
	load	[r14+-312],r1
	add	r1,32,r1
	store	r1,[r14+-304]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-304],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1393  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-21]
!   _temp_1397 = _temp_1393 XOR 0		(bool)
	loadb	[r14+-21],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-20]
!   if _temp_1397 then goto _Label_1384 else goto _Label_1382
	loadb	[r14+-20],r1
	cmp	r1,0
	be	_Label_1382
	jmp	_Label_1384
_Label_1384:
	mov	2179,r13		! source line 2179
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1400 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-296]
!   Data Move: _temp_1399 = *_temp_1400  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r1],r1
	store	r1,[r14+-300]
!   if intIsZero (_temp_1399) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1401 = _temp_1399 + 32
	load	[r14+-300],r1
	add	r1,32,r1
	store	r1,[r14+-292]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-292],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1398  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-19]
!   _temp_1402 = _temp_1398 XOR 0		(bool)
	loadb	[r14+-19],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-18]
!   if _temp_1402 then goto _Label_1383 else goto _Label_1382
	loadb	[r14+-18],r1
	cmp	r1,0
	be	_Label_1382
	jmp	_Label_1383
_Label_1382:
! THEN...
	mov	2180,r13		! source line 2180
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,516,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1383:
! ASSIGNMENT STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-460],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2183,r13		! source line 2183
	mov	"\0\0AS",r10
	mov	2183,r13		! source line 2183
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1405 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-280]
!   Data Move: _temp_1404 = *_temp_1405  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-284]
!   if intIsZero (_temp_1404) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1406 = _temp_1404 + 32
	load	[r14+-284],r1
	add	r1,32,r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-276],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1403  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-288]
!   destAddr = _temp_1403 + offset		(int)
	load	[r14+-288],r1
	load	[r14+-468],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-488]
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-488],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: ch = *destAddr  (sizeInBytes=1)
	load	[r14+-488],r1
	loadb	[r1],r1
	storeb	r1,[r14+-27]
! IF STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0IF",r10
!   _temp_1409 = ch XOR 10		(bool)
	loadb	[r14+-27],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-17]
!   if _temp_1409 then goto _Label_1408 else goto _Label_1407
	loadb	[r14+-17],r1
	cmp	r1,0
	be	_Label_1407
	jmp	_Label_1408
_Label_1407:
! THEN...
	mov	2186,r13		! source line 2186
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0SE",r10
!   _temp_1410 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-272]
!   Prepare Argument: offset=12  value=13  sizeInBytes=1
	mov	13,r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1408:
! SEND STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0SE",r10
!   _temp_1411 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-268]
!   Prepare Argument: offset=12  value=ch  sizeInBytes=1
	loadb	[r14+-27],r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-268],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-472],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
! ASSIGNMENT STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0AS",r10
!   buffer = buffer + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
!   Increment the FOR-LOOP index variable and jump back
_Label_1377:
!   i = i + 1
	load	[r14+-492],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-492]
	jmp	_Label_1375
! END FOR
_Label_1378:
! SEND STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1413 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-260]
!   Data Move: _temp_1412 = *_temp_1413  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_1412) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1414 = _temp_1412 + 32
	load	[r14+-264],r1
	add	r1,32,r1
	store	r1,[r14+-256]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-256],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! RETURN STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-472],r1
	store	r1,[r14+8]
	add	r15,516,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1415
_Label_1339:
! ELSE...
	mov	2200,r13		! source line 2200
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1417 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-248]
!   Data Move: _temp_1416 = *_temp_1417  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r1],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_1416) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1418 = _temp_1416 + 124
	load	[r14+-252],r1
	add	r1,124,r1
	store	r1,[r14+-244]
!   Move address of _temp_1418 [fileDesc ] into _temp_1419
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-240]
!   Data Move: openFile = *_temp_1419  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-496]
! ASSIGNMENT STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-460]
! ASSIGNMENT STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-460],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-460],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-472]
! ASSIGNMENT STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-496],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1420 = openFile + 16
	load	[r14+-496],r1
	add	r1,16,r1
	store	r1,[r14+-236]
!   Data Move: nextPosInFile = *_temp_1420  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-476]
! ASSIGNMENT STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-496],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1422 = openFile + 20
	load	[r14+-496],r1
	add	r1,20,r1
	store	r1,[r14+-228]
!   Data Move: _temp_1421 = *_temp_1422  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if intIsZero (_temp_1421) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1423 = _temp_1421 + 24
	load	[r14+-232],r1
	add	r1,24,r1
	store	r1,[r14+-224]
!   Data Move: fileSize = *_temp_1423  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-484]
! WHILE STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0WH",r10
_Label_1424:
!	jmp	_Label_1425
_Label_1425:
	mov	2208,r13		! source line 2208
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-468],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-480]
! IF STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0IF",r10
!   _temp_1429 = nextPosInFile + chunkSize		(int)
	load	[r14+-476],r1
	load	[r14+-480],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
!   if _temp_1429 <= fileSize then goto _Label_1428		(int)
	load	[r14+-220],r1
	load	[r14+-484],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1428
!	jmp	_Label_1427
_Label_1427:
! THEN...
	mov	2211,r13		! source line 2211
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-484],r1
	load	[r14+-476],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-480]
! END IF...
_Label_1428:
! IF STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0IF",r10
!   _temp_1432 = copiedSoFar + chunkSize		(int)
	load	[r14+-472],r1
	load	[r14+-480],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
!   if _temp_1432 <= sizeInBytes then goto _Label_1431		(int)
	load	[r14+-216],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1431
!	jmp	_Label_1430
_Label_1430:
! THEN...
	mov	2214,r13		! source line 2214
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-472],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-480]
! END IF...
_Label_1431:
! IF STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1434		(int)
	load	[r14+-480],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1434
!	jmp	_Label_1433
_Label_1433:
! THEN...
	mov	2217,r13		! source line 2217
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0BR",r10
	jmp	_Label_1426
! END IF...
_Label_1434:
! IF STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1439		(int)
	load	[r14+-464],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1439
	jmp	_Label_1435
_Label_1439:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1443 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-200]
!   Data Move: _temp_1442 = *_temp_1443  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_1442) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1444 = _temp_1442 + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-196]
!   _temp_1445 = _temp_1444 + 4
	load	[r14+-196],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Data Move: _temp_1441 = *_temp_1445  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r1],r1
	store	r1,[r14+-208]
!   _temp_1440 = _temp_1441 - 1		(int)
	load	[r14+-208],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-212]
!   if virtPage <= _temp_1440 then goto _Label_1438		(int)
	load	[r14+-464],r1
	load	[r14+-212],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1438
	jmp	_Label_1435
_Label_1438:
	mov	2219,r13		! source line 2219
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1448 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-184]
!   Data Move: _temp_1447 = *_temp_1448  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1447) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1449 = _temp_1447 + 32
	load	[r14+-188],r1
	add	r1,32,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1446  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
!   _temp_1450 = _temp_1446 XOR 0		(bool)
	loadb	[r14+-16],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-15]
!   if _temp_1450 then goto _Label_1437 else goto _Label_1435
	loadb	[r14+-15],r1
	cmp	r1,0
	be	_Label_1435
	jmp	_Label_1437
_Label_1437:
	mov	2219,r13		! source line 2219
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1453 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_1452 = *_temp_1453  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_1452) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1454 = _temp_1452 + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1451  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   _temp_1455 = _temp_1451 XOR 0		(bool)
	loadb	[r14+-14],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-13]
!   if _temp_1455 then goto _Label_1436 else goto _Label_1435
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1435
	jmp	_Label_1436
_Label_1435:
! THEN...
	mov	2220,r13		! source line 2220
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,516,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1436:
! ASSIGNMENT STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-476],r1
	load	[r14+-480],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-476]
! ASSIGNMENT STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-472],r1
	load	[r14+-480],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
! ASSIGNMENT STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-464],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-468]
! IF STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1457		(int)
	load	[r14+-472],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1457
!	jmp	_Label_1456
_Label_1456:
! THEN...
	mov	2227,r13		! source line 2227
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0BR",r10
	jmp	_Label_1426
! END IF...
_Label_1457:
! END WHILE...
	jmp	_Label_1424
_Label_1426:
! ASSIGNMENT STATEMENT...
	mov	2232,r13		! source line 2232
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1459 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: _temp_1458 = *_temp_1459  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_1458) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1460 = _temp_1458 + 124
	load	[r14+-164],r1
	add	r1,124,r1
	store	r1,[r14+-156]
!   Move address of _temp_1460 [fileDesc ] into _temp_1461
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-152]
!   Data Move: openFile = *_temp_1461  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r1],r1
	store	r1,[r14+-496]
! ASSIGNMENT STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-460]
! ASSIGNMENT STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-460],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-460],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-468]
! ASSIGNMENT STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-472]
! ASSIGNMENT STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-496],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1462 = openFile + 16
	load	[r14+-496],r1
	add	r1,16,r1
	store	r1,[r14+-148]
!   Data Move: nextPosInFile = *_temp_1462  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-476]
! ASSIGNMENT STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-496],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1464 = openFile + 20
	load	[r14+-496],r1
	add	r1,20,r1
	store	r1,[r14+-140]
!   Data Move: _temp_1463 = *_temp_1464  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1463) then goto _runtimeErrorNullPointer
	load	[r14+-144],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1465 = _temp_1463 + 24
	load	[r14+-144],r1
	add	r1,24,r1
	store	r1,[r14+-136]
!   Data Move: fileSize = *_temp_1465  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-484]
! WHILE STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0WH",r10
_Label_1466:
!	jmp	_Label_1467
_Label_1467:
	mov	2240,r13		! source line 2240
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0AS",r10
!   chunkSize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-468],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-480]
! IF STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0IF",r10
!   _temp_1471 = nextPosInFile + chunkSize		(int)
	load	[r14+-476],r1
	load	[r14+-480],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   if _temp_1471 <= fileSize then goto _Label_1470		(int)
	load	[r14+-132],r1
	load	[r14+-484],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1470
!	jmp	_Label_1469
_Label_1469:
! THEN...
	mov	2243,r13		! source line 2243
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0AS",r10
!   chunkSize = fileSize - nextPosInFile		(int)
	load	[r14+-484],r1
	load	[r14+-476],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-480]
! END IF...
_Label_1470:
! IF STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0IF",r10
!   _temp_1474 = copiedSoFar + chunkSize		(int)
	load	[r14+-472],r1
	load	[r14+-480],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   if _temp_1474 <= sizeInBytes then goto _Label_1473		(int)
	load	[r14+-128],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1473
!	jmp	_Label_1472
_Label_1472:
! THEN...
	mov	2246,r13		! source line 2246
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0AS",r10
!   chunkSize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-472],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-480]
! END IF...
_Label_1473:
! IF STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0IF",r10
!   if chunkSize > 0 then goto _Label_1476		(int)
	load	[r14+-480],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1476
!	jmp	_Label_1475
_Label_1475:
! THEN...
	mov	2249,r13		! source line 2249
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0BR",r10
	jmp	_Label_1468
! END IF...
_Label_1476:
! IF STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1481		(int)
	load	[r14+-464],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1481
	jmp	_Label_1477
_Label_1481:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1485 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1484 = *_temp_1485  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1484) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1486 = _temp_1484 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_1487 = _temp_1486 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1483 = *_temp_1487  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_1482 = _temp_1483 - 1		(int)
	load	[r14+-120],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   if virtPage <= _temp_1482 then goto _Label_1480		(int)
	load	[r14+-464],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1480
	jmp	_Label_1477
_Label_1480:
	mov	2251,r13		! source line 2251
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
	store	r1,[r14+-96]
!   Data Move: _temp_1489 = *_temp_1490  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1489) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1491 = _temp_1489 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1488  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   _temp_1492 = _temp_1488 XOR 0		(bool)
	loadb	[r14+-12],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1492 then goto _Label_1479 else goto _Label_1477
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1477
	jmp	_Label_1479
_Label_1479:
	mov	2251,r13		! source line 2251
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1495 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1494 = *_temp_1495  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1494) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1496 = _temp_1494 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1493  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_1497 = _temp_1493 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_1497 then goto _Label_1478 else goto _Label_1477
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1477
	jmp	_Label_1478
_Label_1477:
! THEN...
	mov	2252,r13		! source line 2252
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,516,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1478:
! SEND STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1499 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1498 = *_temp_1499  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1498) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1500 = _temp_1498 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! SEND STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1502 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1501 = *_temp_1502  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1501) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1503 = _temp_1501 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0AS",r10
	mov	2258,r13		! source line 2258
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1506 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1505 = *_temp_1506  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1505) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1507 = _temp_1505 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-464],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1504  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   destAddr = _temp_1504 + offset		(int)
	load	[r14+-52],r1
	load	[r14+-468],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-488]
! ASSIGNMENT STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0AS",r10
	mov	2259,r13		! source line 2259
	mov	"\0\0SE",r10
!   _temp_1508 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-496],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-488],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-476],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=chunkSize  sizeInBytes=4
	load	[r14+-480],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=writeSuccess  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-26]
! ASSIGNMENT STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + chunkSize		(int)
	load	[r14+-476],r1
	load	[r14+-480],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-476]
! ASSIGNMENT STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + chunkSize		(int)
	load	[r14+-472],r1
	load	[r14+-480],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-472]
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-464],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-464]
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-468]
! IF STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1510		(int)
	load	[r14+-472],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1510
!	jmp	_Label_1509
_Label_1509:
! THEN...
	mov	2265,r13		! source line 2265
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0BR",r10
	jmp	_Label_1468
! END IF...
_Label_1510:
! END WHILE...
	jmp	_Label_1466
_Label_1468:
! ASSIGNMENT STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-496],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1511 = openFile + 16
	load	[r14+-496],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1511 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-476],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-472],r1
	store	r1,[r14+8]
	add	r15,516,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1415:
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1512
	.word	12		! total size of parameters
	.word	512		! frame size = 512
	.word	_Label_1513
	.word	8
	.word	4
	.word	_Label_1514
	.word	12
	.word	4
	.word	_Label_1515
	.word	16
	.word	4
	.word	_Label_1516
	.word	-32
	.word	4
	.word	_Label_1517
	.word	-36
	.word	4
	.word	_Label_1518
	.word	-40
	.word	4
	.word	_Label_1519
	.word	-44
	.word	4
	.word	_Label_1520
	.word	-48
	.word	4
	.word	_Label_1521
	.word	-52
	.word	4
	.word	_Label_1522
	.word	-56
	.word	4
	.word	_Label_1523
	.word	-60
	.word	4
	.word	_Label_1524
	.word	-64
	.word	4
	.word	_Label_1525
	.word	-68
	.word	4
	.word	_Label_1526
	.word	-72
	.word	4
	.word	_Label_1527
	.word	-76
	.word	4
	.word	_Label_1528
	.word	-9
	.word	1
	.word	_Label_1529
	.word	-80
	.word	4
	.word	_Label_1530
	.word	-84
	.word	4
	.word	_Label_1531
	.word	-88
	.word	4
	.word	_Label_1532
	.word	-10
	.word	1
	.word	_Label_1533
	.word	-11
	.word	1
	.word	_Label_1534
	.word	-92
	.word	4
	.word	_Label_1535
	.word	-96
	.word	4
	.word	_Label_1536
	.word	-100
	.word	4
	.word	_Label_1537
	.word	-12
	.word	1
	.word	_Label_1538
	.word	-104
	.word	4
	.word	_Label_1539
	.word	-108
	.word	4
	.word	_Label_1540
	.word	-112
	.word	4
	.word	_Label_1541
	.word	-116
	.word	4
	.word	_Label_1542
	.word	-120
	.word	4
	.word	_Label_1543
	.word	-124
	.word	4
	.word	_Label_1544
	.word	-128
	.word	4
	.word	_Label_1545
	.word	-132
	.word	4
	.word	_Label_1546
	.word	-136
	.word	4
	.word	_Label_1547
	.word	-140
	.word	4
	.word	_Label_1548
	.word	-144
	.word	4
	.word	_Label_1549
	.word	-148
	.word	4
	.word	_Label_1550
	.word	-152
	.word	4
	.word	_Label_1551
	.word	-156
	.word	4
	.word	_Label_1552
	.word	-160
	.word	4
	.word	_Label_1553
	.word	-164
	.word	4
	.word	_Label_1554
	.word	-13
	.word	1
	.word	_Label_1555
	.word	-168
	.word	4
	.word	_Label_1556
	.word	-172
	.word	4
	.word	_Label_1557
	.word	-176
	.word	4
	.word	_Label_1558
	.word	-14
	.word	1
	.word	_Label_1559
	.word	-15
	.word	1
	.word	_Label_1560
	.word	-180
	.word	4
	.word	_Label_1561
	.word	-184
	.word	4
	.word	_Label_1562
	.word	-188
	.word	4
	.word	_Label_1563
	.word	-16
	.word	1
	.word	_Label_1564
	.word	-192
	.word	4
	.word	_Label_1565
	.word	-196
	.word	4
	.word	_Label_1566
	.word	-200
	.word	4
	.word	_Label_1567
	.word	-204
	.word	4
	.word	_Label_1568
	.word	-208
	.word	4
	.word	_Label_1569
	.word	-212
	.word	4
	.word	_Label_1570
	.word	-216
	.word	4
	.word	_Label_1571
	.word	-220
	.word	4
	.word	_Label_1572
	.word	-224
	.word	4
	.word	_Label_1573
	.word	-228
	.word	4
	.word	_Label_1574
	.word	-232
	.word	4
	.word	_Label_1575
	.word	-236
	.word	4
	.word	_Label_1576
	.word	-240
	.word	4
	.word	_Label_1577
	.word	-244
	.word	4
	.word	_Label_1578
	.word	-248
	.word	4
	.word	_Label_1579
	.word	-252
	.word	4
	.word	_Label_1580
	.word	-256
	.word	4
	.word	_Label_1581
	.word	-260
	.word	4
	.word	_Label_1582
	.word	-264
	.word	4
	.word	_Label_1583
	.word	-268
	.word	4
	.word	_Label_1584
	.word	-272
	.word	4
	.word	_Label_1585
	.word	-17
	.word	1
	.word	_Label_1586
	.word	-276
	.word	4
	.word	_Label_1587
	.word	-280
	.word	4
	.word	_Label_1588
	.word	-284
	.word	4
	.word	_Label_1589
	.word	-288
	.word	4
	.word	_Label_1590
	.word	-18
	.word	1
	.word	_Label_1591
	.word	-292
	.word	4
	.word	_Label_1592
	.word	-296
	.word	4
	.word	_Label_1593
	.word	-300
	.word	4
	.word	_Label_1594
	.word	-19
	.word	1
	.word	_Label_1595
	.word	-20
	.word	1
	.word	_Label_1596
	.word	-304
	.word	4
	.word	_Label_1597
	.word	-308
	.word	4
	.word	_Label_1598
	.word	-312
	.word	4
	.word	_Label_1599
	.word	-21
	.word	1
	.word	_Label_1600
	.word	-316
	.word	4
	.word	_Label_1601
	.word	-320
	.word	4
	.word	_Label_1602
	.word	-324
	.word	4
	.word	_Label_1603
	.word	-328
	.word	4
	.word	_Label_1604
	.word	-332
	.word	4
	.word	_Label_1605
	.word	-336
	.word	4
	.word	_Label_1606
	.word	-340
	.word	4
	.word	_Label_1607
	.word	-344
	.word	4
	.word	_Label_1608
	.word	-348
	.word	4
	.word	_Label_1609
	.word	-22
	.word	1
	.word	_Label_1610
	.word	-352
	.word	4
	.word	_Label_1611
	.word	-356
	.word	4
	.word	_Label_1612
	.word	-360
	.word	4
	.word	_Label_1613
	.word	-23
	.word	1
	.word	_Label_1614
	.word	-24
	.word	1
	.word	_Label_1615
	.word	-364
	.word	4
	.word	_Label_1616
	.word	-368
	.word	4
	.word	_Label_1617
	.word	-372
	.word	4
	.word	_Label_1618
	.word	-25
	.word	1
	.word	_Label_1619
	.word	-376
	.word	4
	.word	_Label_1620
	.word	-380
	.word	4
	.word	_Label_1621
	.word	-384
	.word	4
	.word	_Label_1622
	.word	-388
	.word	4
	.word	_Label_1623
	.word	-392
	.word	4
	.word	_Label_1624
	.word	-396
	.word	4
	.word	_Label_1625
	.word	-400
	.word	4
	.word	_Label_1626
	.word	-404
	.word	4
	.word	_Label_1627
	.word	-408
	.word	4
	.word	_Label_1628
	.word	-412
	.word	4
	.word	_Label_1629
	.word	-416
	.word	4
	.word	_Label_1630
	.word	-420
	.word	4
	.word	_Label_1631
	.word	-424
	.word	4
	.word	_Label_1632
	.word	-428
	.word	4
	.word	_Label_1633
	.word	-432
	.word	4
	.word	_Label_1634
	.word	-436
	.word	4
	.word	_Label_1635
	.word	-440
	.word	4
	.word	_Label_1636
	.word	-444
	.word	4
	.word	_Label_1637
	.word	-448
	.word	4
	.word	_Label_1638
	.word	-452
	.word	4
	.word	_Label_1639
	.word	-456
	.word	4
	.word	_Label_1640
	.word	-460
	.word	4
	.word	_Label_1641
	.word	-464
	.word	4
	.word	_Label_1642
	.word	-468
	.word	4
	.word	_Label_1643
	.word	-472
	.word	4
	.word	_Label_1644
	.word	-476
	.word	4
	.word	_Label_1645
	.word	-480
	.word	4
	.word	_Label_1646
	.word	-484
	.word	4
	.word	_Label_1647
	.word	-488
	.word	4
	.word	_Label_1648
	.word	-492
	.word	4
	.word	_Label_1649
	.word	-496
	.word	4
	.word	_Label_1650
	.word	-26
	.word	1
	.word	_Label_1651
	.word	-27
	.word	1
	.word	_Label_1652
	.word	-500
	.word	4
	.word	0
_Label_1512:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1513:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1514:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1515:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1528:
	.byte	'C'
	.ascii	"_temp_1497\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1532:
	.byte	'C'
	.ascii	"_temp_1493\0"
	.align
_Label_1533:
	.byte	'C'
	.ascii	"_temp_1492\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1537:
	.byte	'C'
	.ascii	"_temp_1488\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1554:
	.byte	'C'
	.ascii	"_temp_1455\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1558:
	.byte	'C'
	.ascii	"_temp_1451\0"
	.align
_Label_1559:
	.byte	'C'
	.ascii	"_temp_1450\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1563:
	.byte	'C'
	.ascii	"_temp_1446\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1585:
	.byte	'C'
	.ascii	"_temp_1409\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1590:
	.byte	'C'
	.ascii	"_temp_1402\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1594:
	.byte	'C'
	.ascii	"_temp_1398\0"
	.align
_Label_1595:
	.byte	'C'
	.ascii	"_temp_1397\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1599:
	.byte	'C'
	.ascii	"_temp_1393\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1609:
	.byte	'C'
	.ascii	"_temp_1374\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1613:
	.byte	'C'
	.ascii	"_temp_1370\0"
	.align
_Label_1614:
	.byte	'C'
	.ascii	"_temp_1369\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1618:
	.byte	'C'
	.ascii	"_temp_1365\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1640:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1641:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1642:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1643:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1644:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1645:
	.byte	'I'
	.ascii	"chunkSize\0"
	.align
_Label_1646:
	.byte	'I'
	.ascii	"fileSize\0"
	.align
_Label_1647:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1648:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1649:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_1650:
	.byte	'B'
	.ascii	"writeSuccess\0"
	.align
_Label_1651:
	.byte	'C'
	.ascii	"ch\0"
	.align
_Label_1652:
	.byte	'P'
	.ascii	"tbuff\0"
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
_Label_4408:
	push	r0
	sub	r1,1,r1
	bne	_Label_4408
	mov	2278,r13		! source line 2278
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0SE",r10
!   _temp_1653 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-152]
!   _temp_1654 = _temp_1653 + 4
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
	mov	2284,r13		! source line 2284
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1660		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1660
	jmp	_Label_1655
_Label_1660:
!   if fileDesc <= 9 then goto _Label_1659		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1659
	jmp	_Label_1655
_Label_1659:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1663 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-136]
!   Data Move: _temp_1662 = *_temp_1663  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_1662) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1664 = _temp_1662 + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-132]
!   Move address of _temp_1664 [fileDesc ] into _temp_1665
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
!   Data Move: _temp_1661 = *_temp_1665  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (_temp_1661) then goto _Label_1655
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_1655
!	jmp	_Label_1658
_Label_1658:
!   if newCurrentPos >= -1 then goto _Label_1657		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1657
	jmp	_Label_1655
_Label_1657:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1670 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1669 = *_temp_1670  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1669) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1671 = _temp_1669 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1671 [fileDesc ] into _temp_1672
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
!   Data Move: _temp_1668 = *_temp_1672  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1668) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1673 = _temp_1668 + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_1667 = *_temp_1673  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1667) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1674 = _temp_1667 + 24
	load	[r14+-120],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1666 = *_temp_1674  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if newCurrentPos <= _temp_1666 then goto _Label_1656		(int)
	load	[r14+12],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1656
!	jmp	_Label_1655
_Label_1655:
! THEN...
	mov	2285,r13		! source line 2285
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0SE",r10
!   _temp_1675 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   _temp_1676 = _temp_1675 + 4
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
	mov	2286,r13		! source line 2286
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1656:
! ASSIGNMENT STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1678 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1677 = *_temp_1678  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1677) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1679 = _temp_1677 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1679 [fileDesc ] into _temp_1680
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
!   Data Move: openFile = *_temp_1680  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1682		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1682
!	jmp	_Label_1681
_Label_1681:
! THEN...
	mov	2292,r13		! source line 2292
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1683 = openFile + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1686 = openFile + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1685 = *_temp_1686  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1685) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1687 = _temp_1685 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1684 = *_temp_1687  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   Data Move: *_temp_1683 = _temp_1684  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r14+-64],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0SE",r10
!   _temp_1688 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   _temp_1689 = _temp_1688 + 4
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
	mov	2294,r13		! source line 2294
	mov	"\0\0RE",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1692 = openFile + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1691 = *_temp_1692  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1691) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1693 = _temp_1691 + 24
	load	[r14+-32],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1690 = *_temp_1693  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_1690  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1682:
! ASSIGNMENT STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0AS",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1694 = openFile + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1694 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0SE",r10
!   _temp_1695 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1696 = _temp_1695 + 4
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
	mov	2298,r13		! source line 2298
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
	.word	_Label_1697
	.word	8		! total size of parameters
	.word	152		! frame size = 152
	.word	_Label_1698
	.word	8
	.word	4
	.word	_Label_1699
	.word	12
	.word	4
	.word	_Label_1700
	.word	-12
	.word	4
	.word	_Label_1701
	.word	-16
	.word	4
	.word	_Label_1702
	.word	-20
	.word	4
	.word	_Label_1703
	.word	-24
	.word	4
	.word	_Label_1704
	.word	-28
	.word	4
	.word	_Label_1705
	.word	-32
	.word	4
	.word	_Label_1706
	.word	-36
	.word	4
	.word	_Label_1707
	.word	-40
	.word	4
	.word	_Label_1708
	.word	-44
	.word	4
	.word	_Label_1709
	.word	-48
	.word	4
	.word	_Label_1710
	.word	-52
	.word	4
	.word	_Label_1711
	.word	-56
	.word	4
	.word	_Label_1712
	.word	-60
	.word	4
	.word	_Label_1713
	.word	-64
	.word	4
	.word	_Label_1714
	.word	-68
	.word	4
	.word	_Label_1715
	.word	-72
	.word	4
	.word	_Label_1716
	.word	-76
	.word	4
	.word	_Label_1717
	.word	-80
	.word	4
	.word	_Label_1718
	.word	-84
	.word	4
	.word	_Label_1719
	.word	-88
	.word	4
	.word	_Label_1720
	.word	-92
	.word	4
	.word	_Label_1721
	.word	-96
	.word	4
	.word	_Label_1722
	.word	-100
	.word	4
	.word	_Label_1723
	.word	-104
	.word	4
	.word	_Label_1724
	.word	-108
	.word	4
	.word	_Label_1725
	.word	-112
	.word	4
	.word	_Label_1726
	.word	-116
	.word	4
	.word	_Label_1727
	.word	-120
	.word	4
	.word	_Label_1728
	.word	-124
	.word	4
	.word	_Label_1729
	.word	-128
	.word	4
	.word	_Label_1730
	.word	-132
	.word	4
	.word	_Label_1731
	.word	-136
	.word	4
	.word	_Label_1732
	.word	-140
	.word	4
	.word	_Label_1733
	.word	-144
	.word	4
	.word	_Label_1734
	.word	-148
	.word	4
	.word	_Label_1735
	.word	-152
	.word	4
	.word	_Label_1736
	.word	-156
	.word	4
	.word	0
_Label_1697:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1698:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1699:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1736:
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
_Label_4409:
	push	r0
	sub	r1,1,r1
	bne	_Label_4409
	mov	2303,r13		! source line 2303
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0IF",r10
!   if fileDesc >= 0 then goto _Label_1740		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1740
	jmp	_Label_1737
_Label_1740:
!   if fileDesc <= 9 then goto _Label_1739		(int)
	load	[r14+8],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1739
	jmp	_Label_1737
_Label_1739:
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1743 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1742 = *_temp_1743  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1742) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1744 = _temp_1742 + 124
	load	[r14+-64],r1
	add	r1,124,r1
	store	r1,[r14+-56]
!   Move address of _temp_1744 [fileDesc ] into _temp_1745
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
!   Data Move: _temp_1741 = *_temp_1745  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1741) then goto _Label_1737
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_1737
	jmp	_Label_1738
_Label_1737:
	jmp	_Label_1746
_Label_1738:
! ELSE...
	mov	2307,r13		! source line 2307
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1749 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1748 = *_temp_1749  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1748) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1750 = _temp_1748 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1750 [fileDesc ] into _temp_1751
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
!   Data Move: _temp_1747 = *_temp_1751  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_1752 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1747  sizeInBytes=4
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
	mov	2308,r13		! source line 2308
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1754 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_1753 = *_temp_1754  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1753) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1755 = _temp_1753 + 124
	load	[r14+-24],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_1755 [fileDesc ] into _temp_1756
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
!   Data Move: *_temp_1756 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! END IF...
_Label_1746:
! RETURN STATEMENT...
	mov	2304,r13		! source line 2304
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
	.word	_Label_1757
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1758
	.word	8
	.word	4
	.word	_Label_1759
	.word	-12
	.word	4
	.word	_Label_1760
	.word	-16
	.word	4
	.word	_Label_1761
	.word	-20
	.word	4
	.word	_Label_1762
	.word	-24
	.word	4
	.word	_Label_1763
	.word	-28
	.word	4
	.word	_Label_1764
	.word	-32
	.word	4
	.word	_Label_1765
	.word	-36
	.word	4
	.word	_Label_1766
	.word	-40
	.word	4
	.word	_Label_1767
	.word	-44
	.word	4
	.word	_Label_1768
	.word	-48
	.word	4
	.word	_Label_1769
	.word	-52
	.word	4
	.word	_Label_1770
	.word	-56
	.word	4
	.word	_Label_1771
	.word	-60
	.word	4
	.word	_Label_1772
	.word	-64
	.word	4
	.word	_Label_1773
	.word	-68
	.word	4
	.word	0
_Label_1757:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1758:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_192_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_192_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_4410:
	push	r0
	sub	r1,1,r1
	bne	_Label_4410
	mov	2903,r13		! source line 2903
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2905,r13		! source line 2905
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2906,r13		! source line 2906
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1774 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1774  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2908,r13		! source line 2908
	mov	"\0\0AS",r10
!   _temp_1775 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1775) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1777 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1777) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1776 = *_temp_1777  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1775 = _temp_1776  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2909,r13		! source line 2909
	mov	"\0\0AS",r10
!   _temp_1778 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1778) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1780 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1780) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1779 = *_temp_1780  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1778 = _temp_1779  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2910,r13		! source line 2910
	mov	"\0\0AS",r10
!   _temp_1781 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1781) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1783 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1783) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1782 = *_temp_1783  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1781 = _temp_1782  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2910,r13		! source line 2910
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_192_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1784
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1785
	.word	8
	.word	4
	.word	_Label_1786
	.word	12
	.word	4
	.word	_Label_1787
	.word	-16
	.word	4
	.word	_Label_1788
	.word	-9
	.word	1
	.word	_Label_1789
	.word	-20
	.word	4
	.word	_Label_1790
	.word	-24
	.word	4
	.word	_Label_1791
	.word	-10
	.word	1
	.word	_Label_1792
	.word	-28
	.word	4
	.word	_Label_1793
	.word	-32
	.word	4
	.word	_Label_1794
	.word	-11
	.word	1
	.word	_Label_1795
	.word	-36
	.word	4
	.word	_Label_1796
	.word	-12
	.word	1
	.word	_Label_1797
	.word	-40
	.word	4
	.word	_Label_1798
	.word	-44
	.word	4
	.word	0
_Label_1784:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1785:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1786:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1788:
	.byte	'C'
	.ascii	"_temp_1782\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1791:
	.byte	'C'
	.ascii	"_temp_1779\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1794:
	.byte	'C'
	.ascii	"_temp_1776\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1796:
	.byte	'C'
	.ascii	"_temp_1774\0"
	.align
_Label_1797:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1798:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_191_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_191_printFCB,r1
	push	r1
	mov	3,r1
_Label_4411:
	push	r0
	sub	r1,1,r1
	bne	_Label_4411
	mov	2913,r13		! source line 2913
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1800 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1799 = *_temp_1800  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1799  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2914,r13		! source line 2914
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2915,r13		! source line 2915
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2915,r13		! source line 2915
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_191_printFCB:
	.word	_sourceFileName
	.word	_Label_1801
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1802
	.word	8
	.word	4
	.word	_Label_1803
	.word	-12
	.word	4
	.word	_Label_1804
	.word	-16
	.word	4
	.word	0
_Label_1801:
	.ascii	"printFCB\0"
	.align
_Label_1802:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_190_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_190_printOpen,r1
	push	r1
	mov	4,r1
_Label_4412:
	push	r0
	sub	r1,1,r1
	bne	_Label_4412
	mov	2918,r13		! source line 2918
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1805 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1805  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2919,r13		! source line 2919
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1806 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1806  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2920,r13		! source line 2920
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1807 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1807  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2921,r13		! source line 2921
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2922,r13		! source line 2922
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
	mov	2922,r13		! source line 2922
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_190_printOpen:
	.word	_sourceFileName
	.word	_Label_1808
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1809
	.word	8
	.word	4
	.word	_Label_1810
	.word	-12
	.word	4
	.word	_Label_1811
	.word	-16
	.word	4
	.word	_Label_1812
	.word	-20
	.word	4
	.word	0
_Label_1808:
	.ascii	"printOpen\0"
	.align
_Label_1809:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
! 
! ===============  FUNCTION SerialHandlerFunction  ===============
! 
_function_189_SerialHandlerFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_189_SerialHandlerFunction,r1
	push	r1
	mov	2,r1
_Label_4413:
	push	r0
	sub	r1,1,r1
	bne	_Label_4413
	mov	3289,r13		! source line 3289
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3290,r13		! source line 3290
	mov	"\0\0SE",r10
!   _temp_1813 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-12]
!   Send message SerialHandler
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	3290,r13		! source line 3290
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_189_SerialHandlerFunction:
	.word	_sourceFileName
	.word	_Label_1814
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_1815
	.word	8
	.word	4
	.word	_Label_1816
	.word	-12
	.word	4
	.word	0
_Label_1814:
	.ascii	"SerialHandlerFunction\0"
	.align
_Label_1815:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1817
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1817:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1818
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1818:
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
_Label_4414:
	push	r0
	sub	r1,1,r1
	bne	_Label_4414
	mov	270,r13		! source line 270
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1820		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1820
!	jmp	_Label_1819
_Label_1819:
! THEN...
	mov	272,r13		! source line 272
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1821 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1821  sizeInBytes=4
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
_Label_1820:
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
	.word	_Label_1823
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1824
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1825
	.word	12
	.word	4
	.word	_Label_1826
	.word	-12
	.word	4
	.word	_Label_1827
	.word	-16
	.word	4
	.word	0
_Label_1823:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1824:
	.ascii	"Pself\0"
	.align
_Label_1825:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1821\0"
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
_Label_4415:
	push	r0
	sub	r1,1,r1
	bne	_Label_4415
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
!   if count != 2147483647 then goto _Label_1829		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1829
!	jmp	_Label_1828
_Label_1828:
! THEN...
	mov	286,r13		! source line 286
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1830 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1830  sizeInBytes=4
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
_Label_1829:
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
!   if count > 0 then goto _Label_1832		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1832
!	jmp	_Label_1831
_Label_1831:
! THEN...
	mov	290,r13		! source line 290
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0AS",r10
	mov	290,r13		! source line 290
	mov	"\0\0SE",r10
!   _temp_1833 = &waitingThreads
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
!   _temp_1834 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1834 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0SE",r10
!   _temp_1835 = &_P_Kernel_readyList
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
_Label_1832:
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
	.word	_Label_1836
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1837
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1838
	.word	-12
	.word	4
	.word	_Label_1839
	.word	-16
	.word	4
	.word	_Label_1840
	.word	-20
	.word	4
	.word	_Label_1841
	.word	-24
	.word	4
	.word	_Label_1842
	.word	-28
	.word	4
	.word	_Label_1843
	.word	-32
	.word	4
	.word	0
_Label_1836:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1837:
	.ascii	"Pself\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1842:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1843:
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
_Label_4416:
	push	r0
	sub	r1,1,r1
	bne	_Label_4416
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
!   if count != -2147483648 then goto _Label_1845		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1845
!	jmp	_Label_1844
_Label_1844:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1846 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1846  sizeInBytes=4
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
_Label_1845:
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
!   if count >= 0 then goto _Label_1848		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1848
!	jmp	_Label_1847
_Label_1847:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0SE",r10
!   _temp_1849 = &waitingThreads
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
_Label_1848:
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
	.word	_Label_1850
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1851
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1852
	.word	-12
	.word	4
	.word	_Label_1853
	.word	-16
	.word	4
	.word	_Label_1854
	.word	-20
	.word	4
	.word	0
_Label_1850:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1851:
	.ascii	"Pself\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1854:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1855
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1855:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1856
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1856:
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
_Label_4417:
	push	r0
	sub	r1,1,r1
	bne	_Label_4417
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
	.word	_Label_1858
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1859
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1860
	.word	-12
	.word	4
	.word	0
_Label_1858:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1859:
	.ascii	"Pself\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1857\0"
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
_Label_4418:
	push	r0
	sub	r1,1,r1
	bne	_Label_4418
	mov	340,r13		! source line 340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1862		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1862
!	jmp	_Label_1861
_Label_1861:
! THEN...
	mov	344,r13		! source line 344
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1863 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1863  sizeInBytes=4
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
_Label_1862:
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
!   if heldBy == 0 then goto _Label_1867		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1867
!   _temp_1866 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1868
_Label_1867:
!   _temp_1866 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1868:
!   if _temp_1866 then goto _Label_1865 else goto _Label_1864
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1864
	jmp	_Label_1865
_Label_1864:
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
	jmp	_Label_1869
_Label_1865:
! ELSE...
	mov	350,r13		! source line 350
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0SE",r10
!   _temp_1870 = &waitingThreads
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
_Label_1869:
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
	.word	_Label_1871
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1872
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1873
	.word	-16
	.word	4
	.word	_Label_1874
	.word	-9
	.word	1
	.word	_Label_1875
	.word	-20
	.word	4
	.word	_Label_1876
	.word	-24
	.word	4
	.word	0
_Label_1871:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1872:
	.ascii	"Pself\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1874:
	.byte	'C'
	.ascii	"_temp_1866\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1876:
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
_Label_4419:
	push	r0
	sub	r1,1,r1
	bne	_Label_4419
	mov	358,r13		! source line 358
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1878		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1878
!	jmp	_Label_1877
_Label_1877:
! THEN...
	mov	363,r13		! source line 363
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1879 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1879  sizeInBytes=4
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
_Label_1878:
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
!   _temp_1880 = &waitingThreads
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
!   if t == 0 then goto _Label_1882		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1882
!	jmp	_Label_1881
_Label_1881:
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
!   _temp_1883 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1883 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0SE",r10
!   _temp_1884 = &_P_Kernel_readyList
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
	jmp	_Label_1885
_Label_1882:
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
_Label_1885:
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
	.word	_Label_1886
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1887
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1888
	.word	-12
	.word	4
	.word	_Label_1889
	.word	-16
	.word	4
	.word	_Label_1890
	.word	-20
	.word	4
	.word	_Label_1891
	.word	-24
	.word	4
	.word	_Label_1892
	.word	-28
	.word	4
	.word	_Label_1893
	.word	-32
	.word	4
	.word	0
_Label_1886:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1887:
	.ascii	"Pself\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1892:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1893:
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
_Label_4420:
	push	r0
	sub	r1,1,r1
	bne	_Label_4420
	mov	379,r13		! source line 379
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	380,r13		! source line 380
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1896		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1896
!	jmp	_Label_1895
_Label_1895:
!   _temp_1894 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1897
_Label_1896:
!   _temp_1894 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1897:
!   ReturnResult: _temp_1894  (sizeInBytes=1)
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
	.word	_Label_1898
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1899
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1900
	.word	-9
	.word	1
	.word	0
_Label_1898:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1899:
	.ascii	"Pself\0"
	.align
_Label_1900:
	.byte	'C'
	.ascii	"_temp_1894\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1901
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1901:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1902
	.word	_sourceFileName
	.word	153		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1902:
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
_Label_4421:
	push	r0
	sub	r1,1,r1
	bne	_Label_4421
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
	.word	_Label_1904
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1905
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1906
	.word	-12
	.word	4
	.word	0
_Label_1904:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1905:
	.ascii	"Pself\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1903\0"
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
_Label_4422:
	push	r0
	sub	r1,1,r1
	bne	_Label_4422
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
!   Retrieve Result: targetName=_temp_1909  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1909 then goto _Label_1908 else goto _Label_1907
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1907
	jmp	_Label_1908
_Label_1907:
! THEN...
	mov	430,r13		! source line 430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1910 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1910  sizeInBytes=4
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
_Label_1908:
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
!   _temp_1911 = &waitingThreads
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
	.word	_Label_1912
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1913
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1914
	.word	12
	.word	4
	.word	_Label_1915
	.word	-16
	.word	4
	.word	_Label_1916
	.word	-20
	.word	4
	.word	_Label_1917
	.word	-9
	.word	1
	.word	_Label_1918
	.word	-24
	.word	4
	.word	0
_Label_1912:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1913:
	.ascii	"Pself\0"
	.align
_Label_1914:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1917:
	.byte	'C'
	.ascii	"_temp_1909\0"
	.align
_Label_1918:
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
_Label_4423:
	push	r0
	sub	r1,1,r1
	bne	_Label_4423
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
!   Retrieve Result: targetName=_temp_1921  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1921 then goto _Label_1920 else goto _Label_1919
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1919
	jmp	_Label_1920
_Label_1919:
! THEN...
	mov	447,r13		! source line 447
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1922 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1922  sizeInBytes=4
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
_Label_1920:
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
!   _temp_1923 = &waitingThreads
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
!   if t == 0 then goto _Label_1925		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1925
!	jmp	_Label_1924
_Label_1924:
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
!   _temp_1926 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1926 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0SE",r10
!   _temp_1927 = &_P_Kernel_readyList
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
_Label_1925:
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
	.word	_Label_1928
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1929
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1930
	.word	12
	.word	4
	.word	_Label_1931
	.word	-16
	.word	4
	.word	_Label_1932
	.word	-20
	.word	4
	.word	_Label_1933
	.word	-24
	.word	4
	.word	_Label_1934
	.word	-28
	.word	4
	.word	_Label_1935
	.word	-9
	.word	1
	.word	_Label_1936
	.word	-32
	.word	4
	.word	_Label_1937
	.word	-36
	.word	4
	.word	0
_Label_1928:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1929:
	.ascii	"Pself\0"
	.align
_Label_1930:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1935:
	.byte	'C'
	.ascii	"_temp_1921\0"
	.align
_Label_1936:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1937:
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
_Label_4424:
	push	r0
	sub	r1,1,r1
	bne	_Label_4424
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
!   Retrieve Result: targetName=_temp_1940  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1940 then goto _Label_1939 else goto _Label_1938
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1938
	jmp	_Label_1939
_Label_1938:
! THEN...
	mov	465,r13		! source line 465
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1941 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1941  sizeInBytes=4
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
_Label_1939:
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
_Label_1942:
!	jmp	_Label_1943
_Label_1943:
	mov	468,r13		! source line 468
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0AS",r10
	mov	469,r13		! source line 469
	mov	"\0\0SE",r10
!   _temp_1945 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1946
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1946
	jmp	_Label_1947
_Label_1946:
! THEN...
	mov	471,r13		! source line 471
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0BR",r10
	jmp	_Label_1944
! END IF...
_Label_1947:
! ASSIGNMENT STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1948 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1948 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0SE",r10
!   _temp_1949 = &_P_Kernel_readyList
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
	jmp	_Label_1942
_Label_1944:
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
	.word	_Label_1950
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1951
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1952
	.word	12
	.word	4
	.word	_Label_1953
	.word	-16
	.word	4
	.word	_Label_1954
	.word	-20
	.word	4
	.word	_Label_1955
	.word	-24
	.word	4
	.word	_Label_1956
	.word	-28
	.word	4
	.word	_Label_1957
	.word	-9
	.word	1
	.word	_Label_1958
	.word	-32
	.word	4
	.word	_Label_1959
	.word	-36
	.word	4
	.word	0
_Label_1950:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1951:
	.ascii	"Pself\0"
	.align
_Label_1952:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1957:
	.byte	'C'
	.ascii	"_temp_1940\0"
	.align
_Label_1958:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1959:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1960
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
_Label_1960:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1961
	.word	_sourceFileName
	.word	166		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1961:
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
_Label_4425:
	push	r0
	sub	r1,1,r1
	bne	_Label_4425
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
!   _temp_1962 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1962) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1962 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   _temp_1963 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1963 [0 ] into _temp_1964
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
!   Data Move: *_temp_1964 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   _temp_1965 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1965 [999 ] into _temp_1966
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
!   Data Move: *_temp_1966 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   _temp_1967 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1967 [999 ] into _temp_1968
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
!   stackTop = _temp_1968		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   _temp_1969 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1971 = &_temp_1970
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1971 = _temp_1971 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1973:
!   Data Move: *_temp_1971 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1971 = _temp_1971 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1972 = _temp_1972 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1972) then goto _Label_1973
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1973
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1974 = &_temp_1970
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4426
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4426:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1969 = *_temp_1974  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4427:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4427
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
!   _temp_1975 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1977 = &_temp_1976
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1977 = _temp_1977 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1979:
!   Data Move: *_temp_1977 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1977 = _temp_1977 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1978 = _temp_1978 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1978) then goto _Label_1979
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1979
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1980 = &_temp_1976
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4428
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4428:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1975 = *_temp_1980  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4429:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4429
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
	.word	_Label_1981
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1982
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1983
	.word	12
	.word	4
	.word	_Label_1984
	.word	-12
	.word	4
	.word	_Label_1985
	.word	-16
	.word	4
	.word	_Label_1986
	.word	-20
	.word	4
	.word	_Label_1987
	.word	-84
	.word	64
	.word	_Label_1988
	.word	-88
	.word	4
	.word	_Label_1989
	.word	-92
	.word	4
	.word	_Label_1990
	.word	-96
	.word	4
	.word	_Label_1991
	.word	-100
	.word	4
	.word	_Label_1992
	.word	-156
	.word	56
	.word	_Label_1993
	.word	-160
	.word	4
	.word	_Label_1994
	.word	-164
	.word	4
	.word	_Label_1995
	.word	-168
	.word	4
	.word	_Label_1996
	.word	-172
	.word	4
	.word	_Label_1997
	.word	-176
	.word	4
	.word	_Label_1998
	.word	-180
	.word	4
	.word	_Label_1999
	.word	-184
	.word	4
	.word	_Label_2000
	.word	-188
	.word	4
	.word	0
_Label_1981:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1982:
	.ascii	"Pself\0"
	.align
_Label_1983:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1962\0"
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
_Label_4430:
	push	r0
	sub	r1,1,r1
	bne	_Label_4430
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
!   _temp_2001 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_2001  (sizeInBytes=4)
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
!   _temp_2003 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2002  sizeInBytes=4
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
	.word	_Label_2004
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2005
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2006
	.word	12
	.word	4
	.word	_Label_2007
	.word	16
	.word	4
	.word	_Label_2008
	.word	-12
	.word	4
	.word	_Label_2009
	.word	-16
	.word	4
	.word	_Label_2010
	.word	-20
	.word	4
	.word	_Label_2011
	.word	-24
	.word	4
	.word	_Label_2012
	.word	-28
	.word	4
	.word	0
_Label_2004:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_2005:
	.ascii	"Pself\0"
	.align
_Label_2006:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_2007:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2011:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2012:
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
_Label_4431:
	push	r0
	sub	r1,1,r1
	bne	_Label_4431
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_2015 == _P_Kernel_currentThread then goto _Label_2014		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2014
!	jmp	_Label_2013
_Label_2013:
! THEN...
	mov	547,r13		! source line 547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2016 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2016  sizeInBytes=4
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
_Label_2014:
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
!   _temp_2017 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_2019		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2019
!	jmp	_Label_2018
_Label_2018:
! THEN...
	mov	558,r13		! source line 558
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_2021		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_2021
!	jmp	_Label_2020
_Label_2020:
! THEN...
	mov	559,r13		! source line 559
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2022 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2022  sizeInBytes=4
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
_Label_2021:
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
!   _temp_2024 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2023  sizeInBytes=4
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
_Label_2019:
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
	.word	_Label_2025
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2026
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2027
	.word	-12
	.word	4
	.word	_Label_2028
	.word	-16
	.word	4
	.word	_Label_2029
	.word	-20
	.word	4
	.word	_Label_2030
	.word	-24
	.word	4
	.word	_Label_2031
	.word	-28
	.word	4
	.word	_Label_2032
	.word	-32
	.word	4
	.word	_Label_2033
	.word	-36
	.word	4
	.word	_Label_2034
	.word	-40
	.word	4
	.word	_Label_2035
	.word	-44
	.word	4
	.word	0
_Label_2025:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_2026:
	.ascii	"Pself\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2033:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_2034:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_2035:
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
_Label_4432:
	push	r0
	sub	r1,1,r1
	bne	_Label_4432
	mov	570,r13		! source line 570
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	582,r13		! source line 582
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_2037		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2037
!	jmp	_Label_2036
_Label_2036:
! THEN...
	mov	583,r13		! source line 583
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2038 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2038  sizeInBytes=4
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
_Label_2037:
! IF STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_2041 == _P_Kernel_currentThread then goto _Label_2040		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_2040
!	jmp	_Label_2039
_Label_2039:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2042 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2042  sizeInBytes=4
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
_Label_2040:
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
!   _temp_2043 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_2044
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_2044
	jmp	_Label_2045
_Label_2044:
! THEN...
	mov	595,r13		! source line 595
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2046 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2046  sizeInBytes=4
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
_Label_2045:
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
	.word	_Label_2047
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2048
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2049
	.word	-12
	.word	4
	.word	_Label_2050
	.word	-16
	.word	4
	.word	_Label_2051
	.word	-20
	.word	4
	.word	_Label_2052
	.word	-24
	.word	4
	.word	_Label_2053
	.word	-28
	.word	4
	.word	_Label_2054
	.word	-32
	.word	4
	.word	0
_Label_2047:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_2048:
	.ascii	"Pself\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2054:
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
_Label_4433:
	push	r0
	sub	r1,1,r1
	bne	_Label_4433
	mov	602,r13		! source line 602
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0IF",r10
!   _temp_2058 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_2058 [0 ] into _temp_2059
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
!   Data Move: _temp_2057 = *_temp_2059  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_2057 == 606348324 then goto _Label_2056		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2056
!	jmp	_Label_2055
_Label_2055:
! THEN...
	mov	609,r13		! source line 609
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2060 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2060  sizeInBytes=4
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
	jmp	_Label_2061
_Label_2056:
! ELSE...
	mov	610,r13		! source line 610
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0IF",r10
!   _temp_2065 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_2065 [999 ] into _temp_2066
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
!   Data Move: _temp_2064 = *_temp_2066  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2064 == 606348324 then goto _Label_2063		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_2063
!	jmp	_Label_2062
_Label_2062:
! THEN...
	mov	611,r13		! source line 611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2067 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2067  sizeInBytes=4
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
_Label_2063:
! END IF...
_Label_2061:
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
	.word	_Label_2068
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2069
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2070
	.word	-12
	.word	4
	.word	_Label_2071
	.word	-16
	.word	4
	.word	_Label_2072
	.word	-20
	.word	4
	.word	_Label_2073
	.word	-24
	.word	4
	.word	_Label_2074
	.word	-28
	.word	4
	.word	_Label_2075
	.word	-32
	.word	4
	.word	_Label_2076
	.word	-36
	.word	4
	.word	_Label_2077
	.word	-40
	.word	4
	.word	0
_Label_2068:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_2069:
	.ascii	"Pself\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2057\0"
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
_Label_4434:
	push	r0
	sub	r1,1,r1
	bne	_Label_4434
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
!   _temp_2078 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_2078  sizeInBytes=4
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
!   _temp_2079 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_2079  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_2080  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2081 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_2081  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2082 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_2082  sizeInBytes=4
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
!   _temp_2087 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2088 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2087  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_2083:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2088 then goto _Label_2086		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2086
_Label_2084:
	mov	630,r13		! source line 630
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2089 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2089  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2090 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2090  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2091 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_2091  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2093 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_2093 [i ] into _temp_2094
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
!   Data Move: _temp_2092 = *_temp_2094  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2092  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2095 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_2095  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2097 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_2097 [i ] into _temp_2098
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
!   Data Move: _temp_2096 = *_temp_2098  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2096  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2099 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2099  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2085:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2083
! END FOR
_Label_2086:
! CALL STATEMENT...
!   _temp_2100 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-116]
!   _temp_2101 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2100  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2101  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_2102 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-108]
!   _temp_2104 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_2104 [0 ] into _temp_2105
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
!   _temp_2103 = _temp_2105		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2102  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2103  sizeInBytes=4
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
	be	_Label_2108
	cmp	r1,2
	be	_Label_2109
	cmp	r1,3
	be	_Label_2110
	cmp	r1,4
	be	_Label_2111
	cmp	r1,5
	be	_Label_2112
	jmp	_Label_2106
! CASE 1...
_Label_2108:
! CALL STATEMENT...
!   _temp_2113 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2113  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	644,r13		! source line 644
	mov	"\0\0BR",r10
	jmp	_Label_2107
! CASE 2...
_Label_2109:
! CALL STATEMENT...
!   _temp_2114 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2114  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0BR",r10
	jmp	_Label_2107
! CASE 3...
_Label_2110:
! CALL STATEMENT...
!   _temp_2115 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2115  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0BR",r10
	jmp	_Label_2107
! CASE 4...
_Label_2111:
! CALL STATEMENT...
!   _temp_2116 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2116  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0BR",r10
	jmp	_Label_2107
! CASE 5...
_Label_2112:
! CALL STATEMENT...
!   _temp_2117 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2117  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0BR",r10
	jmp	_Label_2107
! DEFAULT CASE...
_Label_2106:
! CALL STATEMENT...
!   _temp_2118 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2118  sizeInBytes=4
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
_Label_2107:
! CALL STATEMENT...
!   _temp_2119 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2119  sizeInBytes=4
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
!   _temp_2120 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2120  sizeInBytes=4
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
!   _temp_2125 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2126 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2125  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_2121:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2126 then goto _Label_2124		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2124
_Label_2122:
	mov	664,r13		! source line 664
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2127 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2127  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2128 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2128  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2129 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2129  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2131 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_2131 [i ] into _temp_2132
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
!   Data Move: _temp_2130 = *_temp_2132  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2130  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2133 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2133  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2135 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_2135 [i ] into _temp_2136
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
!   Data Move: _temp_2134 = *_temp_2136  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2134  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2137 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2137  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_2123:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_2121
! END FOR
_Label_2124:
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
	.word	_Label_2138
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_2139
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2140
	.word	-12
	.word	4
	.word	_Label_2141
	.word	-16
	.word	4
	.word	_Label_2142
	.word	-20
	.word	4
	.word	_Label_2143
	.word	-24
	.word	4
	.word	_Label_2144
	.word	-28
	.word	4
	.word	_Label_2145
	.word	-32
	.word	4
	.word	_Label_2146
	.word	-36
	.word	4
	.word	_Label_2147
	.word	-40
	.word	4
	.word	_Label_2148
	.word	-44
	.word	4
	.word	_Label_2149
	.word	-48
	.word	4
	.word	_Label_2150
	.word	-52
	.word	4
	.word	_Label_2151
	.word	-56
	.word	4
	.word	_Label_2152
	.word	-60
	.word	4
	.word	_Label_2153
	.word	-64
	.word	4
	.word	_Label_2154
	.word	-68
	.word	4
	.word	_Label_2155
	.word	-72
	.word	4
	.word	_Label_2156
	.word	-76
	.word	4
	.word	_Label_2157
	.word	-80
	.word	4
	.word	_Label_2158
	.word	-84
	.word	4
	.word	_Label_2159
	.word	-88
	.word	4
	.word	_Label_2160
	.word	-92
	.word	4
	.word	_Label_2161
	.word	-96
	.word	4
	.word	_Label_2162
	.word	-100
	.word	4
	.word	_Label_2163
	.word	-104
	.word	4
	.word	_Label_2164
	.word	-108
	.word	4
	.word	_Label_2165
	.word	-112
	.word	4
	.word	_Label_2166
	.word	-116
	.word	4
	.word	_Label_2167
	.word	-120
	.word	4
	.word	_Label_2168
	.word	-124
	.word	4
	.word	_Label_2169
	.word	-128
	.word	4
	.word	_Label_2170
	.word	-132
	.word	4
	.word	_Label_2171
	.word	-136
	.word	4
	.word	_Label_2172
	.word	-140
	.word	4
	.word	_Label_2173
	.word	-144
	.word	4
	.word	_Label_2174
	.word	-148
	.word	4
	.word	_Label_2175
	.word	-152
	.word	4
	.word	_Label_2176
	.word	-156
	.word	4
	.word	_Label_2177
	.word	-160
	.word	4
	.word	_Label_2178
	.word	-164
	.word	4
	.word	_Label_2179
	.word	-168
	.word	4
	.word	_Label_2180
	.word	-172
	.word	4
	.word	_Label_2181
	.word	-176
	.word	4
	.word	_Label_2182
	.word	-180
	.word	4
	.word	_Label_2183
	.word	-184
	.word	4
	.word	_Label_2184
	.word	-188
	.word	4
	.word	_Label_2185
	.word	-192
	.word	4
	.word	_Label_2186
	.word	-196
	.word	4
	.word	0
_Label_2138:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2139:
	.ascii	"Pself\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2097\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2185:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2186:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_2187
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_2187:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2188
	.word	_sourceFileName
	.word	193		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_2188:
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
_Label_4435:
	push	r0
	sub	r1,1,r1
	bne	_Label_4435
	mov	728,r13		! source line 728
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2189 = _StringConst_82
	set	_StringConst_82,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_2189  sizeInBytes=4
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
!   _temp_2190 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_2192 = &_temp_2191
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_2192 = _temp_2192 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2194 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_4436:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4436
!   _temp_2194 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_2196:
!   Data Move: *_temp_2192 = _temp_2194  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_4437:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4437
!   _temp_2192 = _temp_2192 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_2193 = _temp_2193 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_2193) then goto _Label_2196
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_2196
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_2197 = &_temp_2191
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4438
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4438:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2190 = *_temp_2197  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4439:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4439
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
!   _temp_2200 = &threadManagerLock
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
!   _temp_2202 = &aThreadBecameFree
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
!   _temp_2207 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2208 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2207  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_2203:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2208 then goto _Label_2206		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2206
_Label_2204:
	mov	747,r13		! source line 747
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0SE",r10
!   _temp_2209 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-48]
!   _temp_2210 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2210 [i ] into _temp_2211
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
!   Prepare Argument: offset=12  value=_temp_2209  sizeInBytes=4
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
!   _temp_2212 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_2212 [i ] into _temp_2213
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
!   _temp_2214 = _temp_2213 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2214 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_2216 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2216 [i ] into _temp_2217
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
!   _temp_2215 = _temp_2217		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2218 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2215  sizeInBytes=4
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
_Label_2205:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_2203
! END FOR
_Label_2206:
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
	.word	_Label_2219
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_2220
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2221
	.word	-12
	.word	4
	.word	_Label_2222
	.word	-16
	.word	4
	.word	_Label_2223
	.word	-20
	.word	4
	.word	_Label_2224
	.word	-24
	.word	4
	.word	_Label_2225
	.word	-28
	.word	4
	.word	_Label_2226
	.word	-32
	.word	4
	.word	_Label_2227
	.word	-36
	.word	4
	.word	_Label_2228
	.word	-40
	.word	4
	.word	_Label_2229
	.word	-44
	.word	4
	.word	_Label_2230
	.word	-48
	.word	4
	.word	_Label_2231
	.word	-52
	.word	4
	.word	_Label_2232
	.word	-56
	.word	4
	.word	_Label_2233
	.word	-60
	.word	4
	.word	_Label_2234
	.word	-64
	.word	4
	.word	_Label_2235
	.word	-68
	.word	4
	.word	_Label_2236
	.word	-72
	.word	4
	.word	_Label_2237
	.word	-76
	.word	4
	.word	_Label_2238
	.word	-80
	.word	4
	.word	_Label_2239
	.word	-84
	.word	4
	.word	_Label_2240
	.word	-4248
	.word	4164
	.word	_Label_2241
	.word	-4252
	.word	4
	.word	_Label_2242
	.word	-4256
	.word	4
	.word	_Label_2243
	.word	-45900
	.word	41644
	.word	_Label_2244
	.word	-45904
	.word	4
	.word	_Label_2245
	.word	-45908
	.word	4
	.word	_Label_2246
	.word	-45912
	.word	4
	.word	0
_Label_2219:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2220:
	.ascii	"Pself\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2246:
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
_Label_4440:
	push	r0
	sub	r1,1,r1
	bne	_Label_4440
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
!   _temp_2247 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2247  sizeInBytes=4
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
!   _temp_2252 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2253 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2252  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_2248:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2253 then goto _Label_2251		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2251
_Label_2249:
	mov	766,r13		! source line 766
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2254 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2254  sizeInBytes=4
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
!   _temp_2255 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2255  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2257 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2257 [i ] into _temp_2258
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
!   _temp_2256 = _temp_2258		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2256  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CA",r10
	call	_function_196_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_2250:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2248
! END FOR
_Label_2251:
! CALL STATEMENT...
!   _temp_2259 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2259  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0SE",r10
!   _temp_2260 = _function_195_PrintObjectAddr
	set	_function_195_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2261 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2260  sizeInBytes=4
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
	.word	_Label_2262
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2263
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2264
	.word	-12
	.word	4
	.word	_Label_2265
	.word	-16
	.word	4
	.word	_Label_2266
	.word	-20
	.word	4
	.word	_Label_2267
	.word	-24
	.word	4
	.word	_Label_2268
	.word	-28
	.word	4
	.word	_Label_2269
	.word	-32
	.word	4
	.word	_Label_2270
	.word	-36
	.word	4
	.word	_Label_2271
	.word	-40
	.word	4
	.word	_Label_2272
	.word	-44
	.word	4
	.word	_Label_2273
	.word	-48
	.word	4
	.word	_Label_2274
	.word	-52
	.word	4
	.word	_Label_2275
	.word	-56
	.word	4
	.word	_Label_2276
	.word	-60
	.word	4
	.word	0
_Label_2262:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2263:
	.ascii	"Pself\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2275:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2276:
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
_Label_4441:
	push	r0
	sub	r1,1,r1
	bne	_Label_4441
	mov	780,r13		! source line 780
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_2277 = &threadManagerLock
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
_Label_2278:
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_2281 = &freeList
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
!   if result==true then goto _Label_2279 else goto _Label_2280
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2280
	jmp	_Label_2279
_Label_2279:
	mov	788,r13		! source line 788
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_2282 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_2283 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2282  sizeInBytes=4
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
	jmp	_Label_2278
_Label_2280:
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_2284 = &freeList
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
!   _temp_2285 = NewThread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2285 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_2286 = &threadManagerLock
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
	.word	_Label_2287
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2288
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2289
	.word	-12
	.word	4
	.word	_Label_2290
	.word	-16
	.word	4
	.word	_Label_2291
	.word	-20
	.word	4
	.word	_Label_2292
	.word	-24
	.word	4
	.word	_Label_2293
	.word	-28
	.word	4
	.word	_Label_2294
	.word	-32
	.word	4
	.word	_Label_2295
	.word	-36
	.word	4
	.word	_Label_2296
	.word	-40
	.word	4
	.word	0
_Label_2287:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2288:
	.ascii	"Pself\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2296:
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
_Label_4442:
	push	r0
	sub	r1,1,r1
	bne	_Label_4442
	mov	799,r13		! source line 799
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0SE",r10
!   _temp_2297 = &threadManagerLock
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
!   _temp_2298 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2298 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0SE",r10
!   _temp_2299 = &freeList
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
!   _temp_2300 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_2301 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2300  sizeInBytes=4
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
!   _temp_2302 = &threadManagerLock
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
	.word	_Label_2303
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2304
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2305
	.word	12
	.word	4
	.word	_Label_2306
	.word	-12
	.word	4
	.word	_Label_2307
	.word	-16
	.word	4
	.word	_Label_2308
	.word	-20
	.word	4
	.word	_Label_2309
	.word	-24
	.word	4
	.word	_Label_2310
	.word	-28
	.word	4
	.word	_Label_2311
	.word	-32
	.word	4
	.word	0
_Label_2303:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2304:
	.ascii	"Pself\0"
	.align
_Label_2305:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2312
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2312:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2313
	.word	_sourceFileName
	.word	214		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2313:
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
_Label_4443:
	push	r0
	sub	r1,1,r1
	bne	_Label_4443
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
_Label_4444:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4444
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0SE",r10
!   _temp_2315 = &addrSpace
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
!   _temp_2316 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2318 = &_temp_2317
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2318 = _temp_2318 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2320:
!   Data Move: *_temp_2318 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2318 = _temp_2318 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2319 = _temp_2319 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2319) then goto _Label_2320
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2320
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2321 = &_temp_2317
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4445
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4445:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2316 = *_temp_2321  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4446:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4446
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
	.word	_Label_2322
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2323
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2324
	.word	-12
	.word	4
	.word	_Label_2325
	.word	-16
	.word	4
	.word	_Label_2326
	.word	-20
	.word	4
	.word	_Label_2327
	.word	-64
	.word	44
	.word	_Label_2328
	.word	-68
	.word	4
	.word	_Label_2329
	.word	-72
	.word	4
	.word	_Label_2330
	.word	-76
	.word	4
	.word	0
_Label_2322:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2323:
	.ascii	"Pself\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2314\0"
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
_Label_4447:
	push	r0
	sub	r1,1,r1
	bne	_Label_4447
	mov	835,r13		! source line 835
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2331) then goto _runtimeErrorNullPointer
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
!   _temp_2332 = &addrSpace
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
!   _temp_2333 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2333  sizeInBytes=4
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
	call	_function_196_ThreadPrintShort
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
	.word	_Label_2334
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2335
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2336
	.word	-12
	.word	4
	.word	_Label_2337
	.word	-16
	.word	4
	.word	_Label_2338
	.word	-20
	.word	4
	.word	0
_Label_2334:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2335:
	.ascii	"Pself\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2331\0"
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
_Label_4448:
	push	r0
	sub	r1,1,r1
	bne	_Label_4448
	mov	859,r13		! source line 859
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2339 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2339  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2340  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2341 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2341  sizeInBytes=4
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
!   _temp_2342 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2342  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2344		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2344
!	jmp	_Label_2343
_Label_2343:
! THEN...
	mov	869,r13		! source line 869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2345 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2345  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2346
_Label_2344:
! ELSE...
	mov	870,r13		! source line 870
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	870,r13		! source line 870
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2348		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2348
!	jmp	_Label_2347
_Label_2347:
! THEN...
	mov	871,r13		! source line 871
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2349 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2349  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2350
_Label_2348:
! ELSE...
	mov	872,r13		! source line 872
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2352		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2352
!	jmp	_Label_2351
_Label_2351:
! THEN...
	mov	873,r13		! source line 873
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2353 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2353  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	873,r13		! source line 873
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2354
_Label_2352:
! ELSE...
	mov	875,r13		! source line 875
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2355 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2355  sizeInBytes=4
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
_Label_2354:
! END IF...
_Label_2350:
! END IF...
_Label_2346:
! CALL STATEMENT...
!   _temp_2356 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2356  sizeInBytes=4
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
!   _temp_2357 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2357  sizeInBytes=4
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
	.word	_Label_2358
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2359
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2360
	.word	-12
	.word	4
	.word	_Label_2361
	.word	-16
	.word	4
	.word	_Label_2362
	.word	-20
	.word	4
	.word	_Label_2363
	.word	-24
	.word	4
	.word	_Label_2364
	.word	-28
	.word	4
	.word	_Label_2365
	.word	-32
	.word	4
	.word	_Label_2366
	.word	-36
	.word	4
	.word	_Label_2367
	.word	-40
	.word	4
	.word	_Label_2368
	.word	-44
	.word	4
	.word	_Label_2369
	.word	-48
	.word	4
	.word	0
_Label_2358:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2359:
	.ascii	"Pself\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2370
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
_Label_2370:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2371
	.word	_sourceFileName
	.word	234		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2371:
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
_Label_4449:
	push	r0
	sub	r1,1,r1
	bne	_Label_4449
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
!   _temp_2373 = &processManagerLock
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
!   _temp_2375 = &aProcessBecameFree
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
!   _temp_2377 = &aProcessDied
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
!   _temp_2378 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1928]
!   NEW ARRAY Constructor...
!   _temp_2380 = &_temp_2379
	add	r14,-1924,r1
	store	r1,[r14+-240]
!   _temp_2380 = _temp_2380 + 4
	load	[r14+-240],r1
	add	r1,4,r1
	store	r1,[r14+-240]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2382 = zeros  (sizeInBytes=168)
	add	r14,-232,r4
	mov	42,r3
_Label_4450:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4450
!   _temp_2382 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-232]
	mov	10,r1
	store	r1,[r14+-236]
_Label_2384:
!   Data Move: *_temp_2380 = _temp_2382  (sizeInBytes=168)
	add	r14,-232,r5
	load	[r14+-240],r4
	mov	42,r3
_Label_4451:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4451
!   _temp_2380 = _temp_2380 + 168
	load	[r14+-240],r1
	add	r1,168,r1
	store	r1,[r14+-240]
!   _temp_2381 = _temp_2381 + -1
	load	[r14+-236],r1
	add	r1,-1,r1
	store	r1,[r14+-236]
!   if intNotZero (_temp_2381) then goto _Label_2384
	load	[r14+-236],r1
	cmp	r1,r0
	bne	_Label_2384
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1924]
!   _temp_2385 = &_temp_2379
	add	r14,-1924,r1
	store	r1,[r14+-60]
!   make sure array has size 10
	load	[r14+-1928],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4452
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4452:
!   make sure array has size 10
	load	[r14+-60],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2378 = *_temp_2385  (sizeInBytes=1684)
	load	[r14+-60],r5
	load	[r14+-1928],r4
	mov	421,r3
_Label_4453:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4453
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
!   _temp_2391 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2392 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2391  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1956]
_Label_2387:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2392 then goto _Label_2390		
	load	[r14+-1956],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2390
_Label_2388:
	mov	906,r13		! source line 906
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0SE",r10
!   _temp_2393 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2393 [i ] into _temp_2394
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
!   _temp_2395 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_2395 [i ] into _temp_2396
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
!   _temp_2397 = _temp_2396 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2397 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0SE",r10
!   _temp_2399 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_2399 [i ] into _temp_2400
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
!   _temp_2398 = _temp_2400		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2401 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2398  sizeInBytes=4
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
_Label_2389:
!   i = i + 1
	load	[r14+-1956],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1956]
	jmp	_Label_2387
! END FOR
_Label_2390:
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
	.word	_Label_2402
	.word	4		! total size of parameters
	.word	1956		! frame size = 1956
	.word	_Label_2403
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2404
	.word	-12
	.word	4
	.word	_Label_2405
	.word	-16
	.word	4
	.word	_Label_2406
	.word	-20
	.word	4
	.word	_Label_2407
	.word	-24
	.word	4
	.word	_Label_2408
	.word	-28
	.word	4
	.word	_Label_2409
	.word	-32
	.word	4
	.word	_Label_2410
	.word	-36
	.word	4
	.word	_Label_2411
	.word	-40
	.word	4
	.word	_Label_2412
	.word	-44
	.word	4
	.word	_Label_2413
	.word	-48
	.word	4
	.word	_Label_2414
	.word	-52
	.word	4
	.word	_Label_2415
	.word	-56
	.word	4
	.word	_Label_2416
	.word	-60
	.word	4
	.word	_Label_2417
	.word	-64
	.word	4
	.word	_Label_2418
	.word	-232
	.word	168
	.word	_Label_2419
	.word	-236
	.word	4
	.word	_Label_2420
	.word	-240
	.word	4
	.word	_Label_2421
	.word	-1924
	.word	1684
	.word	_Label_2422
	.word	-1928
	.word	4
	.word	_Label_2423
	.word	-1932
	.word	4
	.word	_Label_2424
	.word	-1936
	.word	4
	.word	_Label_2425
	.word	-1940
	.word	4
	.word	_Label_2426
	.word	-1944
	.word	4
	.word	_Label_2427
	.word	-1948
	.word	4
	.word	_Label_2428
	.word	-1952
	.word	4
	.word	_Label_2429
	.word	-1956
	.word	4
	.word	0
_Label_2402:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2403:
	.ascii	"Pself\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2429:
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
_Label_4454:
	push	r0
	sub	r1,1,r1
	bne	_Label_4454
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
!   _temp_2430 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2430  sizeInBytes=4
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
!   _temp_2435 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2436 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2435  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2431:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2436 then goto _Label_2434		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2434
_Label_2432:
	mov	925,r13		! source line 925
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2437 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2437  sizeInBytes=4
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
!   _temp_2438 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2438  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0SE",r10
!   _temp_2439 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2439 [i ] into _temp_2440
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
_Label_2433:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2431
! END FOR
_Label_2434:
! CALL STATEMENT...
!   _temp_2441 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2441  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_2442 = _function_195_PrintObjectAddr
	set	_function_195_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2443 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2442  sizeInBytes=4
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
	.word	_Label_2444
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2445
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2446
	.word	-12
	.word	4
	.word	_Label_2447
	.word	-16
	.word	4
	.word	_Label_2448
	.word	-20
	.word	4
	.word	_Label_2449
	.word	-24
	.word	4
	.word	_Label_2450
	.word	-28
	.word	4
	.word	_Label_2451
	.word	-32
	.word	4
	.word	_Label_2452
	.word	-36
	.word	4
	.word	_Label_2453
	.word	-40
	.word	4
	.word	_Label_2454
	.word	-44
	.word	4
	.word	_Label_2455
	.word	-48
	.word	4
	.word	_Label_2456
	.word	-52
	.word	4
	.word	_Label_2457
	.word	-56
	.word	4
	.word	0
_Label_2444:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2445:
	.ascii	"Pself\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2456:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2457:
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
_Label_4455:
	push	r0
	sub	r1,1,r1
	bne	_Label_4455
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
!   _temp_2458 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2458  sizeInBytes=4
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
!   _temp_2463 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2464 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2463  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2459:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2464 then goto _Label_2462		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2462
_Label_2460:
	mov	948,r13		! source line 948
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2465 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2465  sizeInBytes=4
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
!   _temp_2466 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2466 [i ] into _temp_2467
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
_Label_2461:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2459
! END FOR
_Label_2462:
! CALL STATEMENT...
!   _temp_2468 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2468  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_2469 = _function_195_PrintObjectAddr
	set	_function_195_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2470 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2469  sizeInBytes=4
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
	.word	_Label_2471
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2472
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2473
	.word	-12
	.word	4
	.word	_Label_2474
	.word	-16
	.word	4
	.word	_Label_2475
	.word	-20
	.word	4
	.word	_Label_2476
	.word	-24
	.word	4
	.word	_Label_2477
	.word	-28
	.word	4
	.word	_Label_2478
	.word	-32
	.word	4
	.word	_Label_2479
	.word	-36
	.word	4
	.word	_Label_2480
	.word	-40
	.word	4
	.word	_Label_2481
	.word	-44
	.word	4
	.word	_Label_2482
	.word	-48
	.word	4
	.word	_Label_2483
	.word	-52
	.word	4
	.word	0
_Label_2471:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2472:
	.ascii	"Pself\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2482:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2483:
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
_Label_4456:
	push	r0
	sub	r1,1,r1
	bne	_Label_4456
	mov	961,r13		! source line 961
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_2484 = &processManagerLock
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
_Label_2485:
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_2488 = &freeList
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
!   if result==true then goto _Label_2486 else goto _Label_2487
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2487
	jmp	_Label_2486
_Label_2486:
	mov	968,r13		! source line 968
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0SE",r10
!   _temp_2489 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2490 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2489  sizeInBytes=4
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
	jmp	_Label_2485
_Label_2487:
! ASSIGNMENT STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0AS",r10
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_2491 = &freeList
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
!   _temp_2492 = ptrToPCB + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2492 = nextPid  (sizeInBytes=4)
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
!   _temp_2493 = ptrToPCB + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2493 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0SE",r10
!   _temp_2494 = &processManagerLock
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
	.word	_Label_2495
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2496
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2497
	.word	-12
	.word	4
	.word	_Label_2498
	.word	-16
	.word	4
	.word	_Label_2499
	.word	-20
	.word	4
	.word	_Label_2500
	.word	-24
	.word	4
	.word	_Label_2501
	.word	-28
	.word	4
	.word	_Label_2502
	.word	-32
	.word	4
	.word	_Label_2503
	.word	-36
	.word	4
	.word	_Label_2504
	.word	-40
	.word	4
	.word	_Label_2505
	.word	-44
	.word	4
	.word	0
_Label_2495:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2496:
	.ascii	"Pself\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2505:
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
_Label_4457:
	push	r0
	sub	r1,1,r1
	bne	_Label_4457
	mov	981,r13		! source line 981
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2506 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2506  sizeInBytes=4
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
!   _temp_2507 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-52]
!   _temp_2508 = _temp_2507 + 1688
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
!   _temp_2509 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_2509 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0SE",r10
!   _temp_2510 = &freeList
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
!   _temp_2512 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2513 = _temp_2512 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2511 = _temp_2513		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2514 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2515 = _temp_2514 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2511  sizeInBytes=4
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
!   _temp_2516 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2517 = _temp_2516 + 1688
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
	.word	_Label_2518
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2519
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2520
	.word	12
	.word	4
	.word	_Label_2521
	.word	-12
	.word	4
	.word	_Label_2522
	.word	-16
	.word	4
	.word	_Label_2523
	.word	-20
	.word	4
	.word	_Label_2524
	.word	-24
	.word	4
	.word	_Label_2525
	.word	-28
	.word	4
	.word	_Label_2526
	.word	-32
	.word	4
	.word	_Label_2527
	.word	-36
	.word	4
	.word	_Label_2528
	.word	-40
	.word	4
	.word	_Label_2529
	.word	-44
	.word	4
	.word	_Label_2530
	.word	-48
	.word	4
	.word	_Label_2531
	.word	-52
	.word	4
	.word	_Label_2532
	.word	-56
	.word	4
	.word	0
_Label_2518:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2519:
	.ascii	"Pself\0"
	.align
_Label_2520:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2506\0"
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
_Label_4458:
	push	r0
	sub	r1,1,r1
	bne	_Label_4458
	mov	992,r13		! source line 992
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_2533 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-276]
!   _temp_2534 = _temp_2533 + 1688
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
!   _temp_2539 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2540 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-264]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2539  (sizeInBytes=4)
	load	[r14+-268],r1
	store	r1,[r14+-280]
_Label_2535:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2540 then goto _Label_2538		
	load	[r14+-280],r1
	load	[r14+-264],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2538
_Label_2536:
	mov	1003,r13		! source line 1003
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0IF",r10
!   _temp_2545 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-256]
!   _temp_2546 = _temp_2545 + 4
	load	[r14+-256],r1
	add	r1,4,r1
	store	r1,[r14+-252]
!   Move address of _temp_2546 [i ] into _temp_2547
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
!   _temp_2548 = _temp_2547 + 16
	load	[r14+-248],r1
	add	r1,16,r1
	store	r1,[r14+-244]
!   Data Move: _temp_2544 = *_temp_2548  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2550 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-236]
!   Data Move: _temp_2549 = *_temp_2550  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if _temp_2544 != _temp_2549 then goto _Label_2542		(int)
	load	[r14+-260],r1
	load	[r14+-240],r2
	cmp	r1,r2
	bne	_Label_2542
!	jmp	_Label_2543
_Label_2543:
!   _temp_2552 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-228]
!   _temp_2553 = _temp_2552 + 4
	load	[r14+-228],r1
	add	r1,4,r1
	store	r1,[r14+-224]
!   Move address of _temp_2553 [i ] into _temp_2554
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
!   _temp_2555 = _temp_2554 + 20
	load	[r14+-220],r1
	add	r1,20,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2551 = *_temp_2555  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if _temp_2551 != 2 then goto _Label_2542		(int)
	load	[r14+-232],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2542
!	jmp	_Label_2541
_Label_2541:
! THEN...
	mov	1005,r13		! source line 1005
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0AS",r10
!   _temp_2556 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-212]
!   _temp_2557 = _temp_2556 + 4
	load	[r14+-212],r1
	add	r1,4,r1
	store	r1,[r14+-208]
!   Move address of _temp_2557 [i ] into _temp_2558
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
!   _temp_2559 = _temp_2558 + 20
	load	[r14+-204],r1
	add	r1,20,r1
	store	r1,[r14+-200]
!   Data Move: *_temp_2559 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-200],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0SE",r10
!   _temp_2561 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-192]
!   _temp_2562 = _temp_2561 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-188]
!   Move address of _temp_2562 [i ] into _temp_2563
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
!   _temp_2560 = _temp_2563		(4 bytes)
	load	[r14+-184],r1
	store	r1,[r14+-196]
!   _temp_2564 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-180]
!   _temp_2565 = _temp_2564 + 1724
	load	[r14+-180],r1
	add	r1,1724,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=12  value=_temp_2560  sizeInBytes=4
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
!   _temp_2567 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-168]
!   _temp_2568 = _temp_2567 + 1688
	load	[r14+-168],r1
	add	r1,1688,r1
	store	r1,[r14+-164]
!   _temp_2566 = _temp_2568		(4 bytes)
	load	[r14+-164],r1
	store	r1,[r14+-172]
!   _temp_2569 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-160]
!   _temp_2570 = _temp_2569 + 1708
	load	[r14+-160],r1
	add	r1,1708,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_2566  sizeInBytes=4
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
_Label_2542:
!   Increment the FOR-LOOP index variable and jump back
_Label_2537:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_2535
! END FOR
_Label_2538:
! FOR STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2575 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-152]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2576 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-148]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2575  (sizeInBytes=4)
	load	[r14+-152],r1
	store	r1,[r14+-280]
_Label_2571:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2576 then goto _Label_2574		
	load	[r14+-280],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2574
_Label_2572:
	mov	1011,r13		! source line 1011
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0IF",r10
!   _temp_2582 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_2583 = _temp_2582 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2583 [i ] into _temp_2584
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
!   _temp_2585 = _temp_2584 + 12
	load	[r14+-132],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Data Move: _temp_2581 = *_temp_2585  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2587 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-120]
!   Data Move: _temp_2586 = *_temp_2587  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if _temp_2581 != _temp_2586 then goto _Label_2578		(int)
	load	[r14+-144],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bne	_Label_2578
!	jmp	_Label_2580
_Label_2580:
!   _temp_2589 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-112]
!   _temp_2590 = _temp_2589 + 4
	load	[r14+-112],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Move address of _temp_2590 [i ] into _temp_2591
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
!   _temp_2592 = _temp_2591 + 20
	load	[r14+-104],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2588 = *_temp_2592  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if _temp_2588 != 1 then goto _Label_2578		(int)
	load	[r14+-116],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2578
!	jmp	_Label_2579
_Label_2579:
!   _temp_2594 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-92]
!   _temp_2595 = _temp_2594 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_2595 [i ] into _temp_2596
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
!   _temp_2593 = _temp_2596		(4 bytes)
	load	[r14+-84],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2593) then goto _Label_2578
	load	[r14+-96],r1
	cmp	r1,r0
	be	_Label_2578
!	jmp	_Label_2577
_Label_2577:
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
!   _temp_2597 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_2597 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_2599 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-72]
!   _temp_2600 = _temp_2599 + 1688
	load	[r14+-72],r1
	add	r1,1688,r1
	store	r1,[r14+-68]
!   _temp_2598 = _temp_2600		(4 bytes)
	load	[r14+-68],r1
	store	r1,[r14+-76]
!   _temp_2601 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_2602 = _temp_2601 + 1736
	load	[r14+-64],r1
	add	r1,1736,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_2598  sizeInBytes=4
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
!   _temp_2603 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_2604 = _temp_2603 + 1688
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
_Label_2578:
!   Increment the FOR-LOOP index variable and jump back
_Label_2573:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_2571
! END FOR
_Label_2574:
! ASSIGNMENT STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2605 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2605 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0SE",r10
!   _temp_2606 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2607 = _temp_2606 + 1724
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
!   _temp_2609 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2610 = _temp_2609 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2608 = _temp_2610		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2611 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2612 = _temp_2611 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2608  sizeInBytes=4
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
!   _temp_2613 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2614 = _temp_2613 + 1688
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
	.word	_Label_2615
	.word	8		! total size of parameters
	.word	280		! frame size = 280
	.word	_Label_2616
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2617
	.word	12
	.word	4
	.word	_Label_2618
	.word	-12
	.word	4
	.word	_Label_2619
	.word	-16
	.word	4
	.word	_Label_2620
	.word	-20
	.word	4
	.word	_Label_2621
	.word	-24
	.word	4
	.word	_Label_2622
	.word	-28
	.word	4
	.word	_Label_2623
	.word	-32
	.word	4
	.word	_Label_2624
	.word	-36
	.word	4
	.word	_Label_2625
	.word	-40
	.word	4
	.word	_Label_2626
	.word	-44
	.word	4
	.word	_Label_2627
	.word	-48
	.word	4
	.word	_Label_2628
	.word	-52
	.word	4
	.word	_Label_2629
	.word	-56
	.word	4
	.word	_Label_2630
	.word	-60
	.word	4
	.word	_Label_2631
	.word	-64
	.word	4
	.word	_Label_2632
	.word	-68
	.word	4
	.word	_Label_2633
	.word	-72
	.word	4
	.word	_Label_2634
	.word	-76
	.word	4
	.word	_Label_2635
	.word	-80
	.word	4
	.word	_Label_2636
	.word	-84
	.word	4
	.word	_Label_2637
	.word	-88
	.word	4
	.word	_Label_2638
	.word	-92
	.word	4
	.word	_Label_2639
	.word	-96
	.word	4
	.word	_Label_2640
	.word	-100
	.word	4
	.word	_Label_2641
	.word	-104
	.word	4
	.word	_Label_2642
	.word	-108
	.word	4
	.word	_Label_2643
	.word	-112
	.word	4
	.word	_Label_2644
	.word	-116
	.word	4
	.word	_Label_2645
	.word	-120
	.word	4
	.word	_Label_2646
	.word	-124
	.word	4
	.word	_Label_2647
	.word	-128
	.word	4
	.word	_Label_2648
	.word	-132
	.word	4
	.word	_Label_2649
	.word	-136
	.word	4
	.word	_Label_2650
	.word	-140
	.word	4
	.word	_Label_2651
	.word	-144
	.word	4
	.word	_Label_2652
	.word	-148
	.word	4
	.word	_Label_2653
	.word	-152
	.word	4
	.word	_Label_2654
	.word	-156
	.word	4
	.word	_Label_2655
	.word	-160
	.word	4
	.word	_Label_2656
	.word	-164
	.word	4
	.word	_Label_2657
	.word	-168
	.word	4
	.word	_Label_2658
	.word	-172
	.word	4
	.word	_Label_2659
	.word	-176
	.word	4
	.word	_Label_2660
	.word	-180
	.word	4
	.word	_Label_2661
	.word	-184
	.word	4
	.word	_Label_2662
	.word	-188
	.word	4
	.word	_Label_2663
	.word	-192
	.word	4
	.word	_Label_2664
	.word	-196
	.word	4
	.word	_Label_2665
	.word	-200
	.word	4
	.word	_Label_2666
	.word	-204
	.word	4
	.word	_Label_2667
	.word	-208
	.word	4
	.word	_Label_2668
	.word	-212
	.word	4
	.word	_Label_2669
	.word	-216
	.word	4
	.word	_Label_2670
	.word	-220
	.word	4
	.word	_Label_2671
	.word	-224
	.word	4
	.word	_Label_2672
	.word	-228
	.word	4
	.word	_Label_2673
	.word	-232
	.word	4
	.word	_Label_2674
	.word	-236
	.word	4
	.word	_Label_2675
	.word	-240
	.word	4
	.word	_Label_2676
	.word	-244
	.word	4
	.word	_Label_2677
	.word	-248
	.word	4
	.word	_Label_2678
	.word	-252
	.word	4
	.word	_Label_2679
	.word	-256
	.word	4
	.word	_Label_2680
	.word	-260
	.word	4
	.word	_Label_2681
	.word	-264
	.word	4
	.word	_Label_2682
	.word	-268
	.word	4
	.word	_Label_2683
	.word	-272
	.word	4
	.word	_Label_2684
	.word	-276
	.word	4
	.word	_Label_2685
	.word	-280
	.word	4
	.word	0
_Label_2615:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2616:
	.ascii	"Pself\0"
	.align
_Label_2617:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2685:
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
_Label_4459:
	push	r0
	sub	r1,1,r1
	bne	_Label_4459
	mov	1028,r13		! source line 1028
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_2686 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_2687 = _temp_2686 + 1688
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
_Label_2688:
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2692 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2691 = *_temp_2692  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2691 == 2 then goto _Label_2690		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2690
!	jmp	_Label_2689
_Label_2689:
	mov	1034,r13		! source line 1034
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0SE",r10
!   _temp_2694 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_2695 = _temp_2694 + 1688
	load	[r14+-68],r1
	add	r1,1688,r1
	store	r1,[r14+-64]
!   _temp_2693 = _temp_2695		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_2696 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_2697 = _temp_2696 + 1736
	load	[r14+-60],r1
	add	r1,1736,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_2693  sizeInBytes=4
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
	jmp	_Label_2688
_Label_2690:
! ASSIGNMENT STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2698 = p + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: p_exitStatus = *_temp_2698  (sizeInBytes=4)
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
!   _temp_2699 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2699 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_2700 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_2701 = _temp_2700 + 1724
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
!   _temp_2703 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_2704 = _temp_2703 + 1688
	load	[r14+-32],r1
	add	r1,1688,r1
	store	r1,[r14+-28]
!   _temp_2702 = _temp_2704		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_2705 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_2706 = _temp_2705 + 1708
	load	[r14+-24],r1
	add	r1,1708,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2702  sizeInBytes=4
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
!   _temp_2707 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_2708 = _temp_2707 + 1688
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
	.word	_Label_2709
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_2710
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2711
	.word	12
	.word	4
	.word	_Label_2712
	.word	-12
	.word	4
	.word	_Label_2713
	.word	-16
	.word	4
	.word	_Label_2714
	.word	-20
	.word	4
	.word	_Label_2715
	.word	-24
	.word	4
	.word	_Label_2716
	.word	-28
	.word	4
	.word	_Label_2717
	.word	-32
	.word	4
	.word	_Label_2718
	.word	-36
	.word	4
	.word	_Label_2719
	.word	-40
	.word	4
	.word	_Label_2720
	.word	-44
	.word	4
	.word	_Label_2721
	.word	-48
	.word	4
	.word	_Label_2722
	.word	-52
	.word	4
	.word	_Label_2723
	.word	-56
	.word	4
	.word	_Label_2724
	.word	-60
	.word	4
	.word	_Label_2725
	.word	-64
	.word	4
	.word	_Label_2726
	.word	-68
	.word	4
	.word	_Label_2727
	.word	-72
	.word	4
	.word	_Label_2728
	.word	-76
	.word	4
	.word	_Label_2729
	.word	-80
	.word	4
	.word	_Label_2730
	.word	-84
	.word	4
	.word	_Label_2731
	.word	-88
	.word	4
	.word	_Label_2732
	.word	-92
	.word	4
	.word	0
_Label_2709:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2710:
	.ascii	"Pself\0"
	.align
_Label_2711:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2732:
	.byte	'I'
	.ascii	"p_exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2733
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2733:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2734
	.word	_sourceFileName
	.word	257		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2734:
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
_Label_4460:
	push	r0
	sub	r1,1,r1
	bne	_Label_4460
	mov	1095,r13		! source line 1095
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2735 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2735  sizeInBytes=4
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
!   _temp_2737 = &framesInUse
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
!   _temp_2739 = &frameManagerLock
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
!   _temp_2741 = &newFramesAvailable
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
!   _temp_2746 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2747 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2746  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2742:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2747 then goto _Label_2745		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2745
_Label_2743:
	mov	1114,r13		! source line 1114
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2750 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2750) then goto _Label_2749
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2749
!	jmp	_Label_2748
_Label_2748:
! THEN...
	mov	1118,r13		! source line 1118
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2751 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2751  sizeInBytes=4
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
_Label_2749:
!   Increment the FOR-LOOP index variable and jump back
_Label_2744:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2742
! END FOR
_Label_2745:
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
	.word	_Label_2752
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2753
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2754
	.word	-12
	.word	4
	.word	_Label_2755
	.word	-16
	.word	4
	.word	_Label_2756
	.word	-20
	.word	4
	.word	_Label_2757
	.word	-24
	.word	4
	.word	_Label_2758
	.word	-28
	.word	4
	.word	_Label_2759
	.word	-32
	.word	4
	.word	_Label_2760
	.word	-36
	.word	4
	.word	_Label_2761
	.word	-40
	.word	4
	.word	_Label_2762
	.word	-44
	.word	4
	.word	_Label_2763
	.word	-48
	.word	4
	.word	_Label_2764
	.word	-52
	.word	4
	.word	_Label_2765
	.word	-56
	.word	4
	.word	0
_Label_2752:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2753:
	.ascii	"Pself\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2765:
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
_Label_4461:
	push	r0
	sub	r1,1,r1
	bne	_Label_4461
	mov	1125,r13		! source line 1125
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0SE",r10
!   _temp_2766 = &frameManagerLock
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
!   _temp_2767 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2767  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1130,r13		! source line 1130
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2768 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2768  sizeInBytes=4
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
!   _temp_2769 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2769  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1132,r13		! source line 1132
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0SE",r10
!   _temp_2770 = &framesInUse
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
!   _temp_2771 = &frameManagerLock
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
	.word	_Label_2772
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2773
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2774
	.word	-12
	.word	4
	.word	_Label_2775
	.word	-16
	.word	4
	.word	_Label_2776
	.word	-20
	.word	4
	.word	_Label_2777
	.word	-24
	.word	4
	.word	_Label_2778
	.word	-28
	.word	4
	.word	_Label_2779
	.word	-32
	.word	4
	.word	0
_Label_2772:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2773:
	.ascii	"Pself\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2766\0"
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
_Label_4462:
	push	r0
	sub	r1,1,r1
	bne	_Label_4462
	mov	1139,r13		! source line 1139
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1147,r13		! source line 1147
	mov	"\0\0SE",r10
!   _temp_2780 = &frameManagerLock
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
_Label_2781:
!   if numberFreeFrames >= 1 then goto _Label_2783		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2783
!	jmp	_Label_2782
_Label_2782:
	mov	1150,r13		! source line 1150
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0SE",r10
!   _temp_2784 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2785 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2784  sizeInBytes=4
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
	jmp	_Label_2781
_Label_2783:
! ASSIGNMENT STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0AS",r10
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
!   _temp_2786 = &framesInUse
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
!   _temp_2787 = &frameManagerLock
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
!   _temp_2788 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2788		(int)
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
	.word	_Label_2789
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2791
	.word	-12
	.word	4
	.word	_Label_2792
	.word	-16
	.word	4
	.word	_Label_2793
	.word	-20
	.word	4
	.word	_Label_2794
	.word	-24
	.word	4
	.word	_Label_2795
	.word	-28
	.word	4
	.word	_Label_2796
	.word	-32
	.word	4
	.word	_Label_2797
	.word	-36
	.word	4
	.word	_Label_2798
	.word	-40
	.word	4
	.word	0
_Label_2789:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2790:
	.ascii	"Pself\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2797:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2798:
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
_Label_4463:
	push	r0
	sub	r1,1,r1
	bne	_Label_4463
	mov	1169,r13		! source line 1169
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0SE",r10
!   _temp_2799 = &frameManagerLock
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
_Label_2800:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2802		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2802
!	jmp	_Label_2801
_Label_2801:
	mov	1172,r13		! source line 1172
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0SE",r10
!   _temp_2803 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_2804 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2803  sizeInBytes=4
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
	jmp	_Label_2800
_Label_2802:
! FOR STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2809 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2810 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2809  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_2805:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2810 then goto _Label_2808		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2808
_Label_2806:
	mov	1175,r13		! source line 1175
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0AS",r10
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_2811 = &framesInUse
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
!   _temp_2812 = fr * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_2812		(int)
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
_Label_2807:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2805
! END FOR
_Label_2808:
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
!   _temp_2813 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2813 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0SE",r10
!   _temp_2814 = &frameManagerLock
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
	.word	_Label_2815
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2816
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2817
	.word	12
	.word	4
	.word	_Label_2818
	.word	16
	.word	4
	.word	_Label_2819
	.word	-12
	.word	4
	.word	_Label_2820
	.word	-16
	.word	4
	.word	_Label_2821
	.word	-20
	.word	4
	.word	_Label_2822
	.word	-24
	.word	4
	.word	_Label_2823
	.word	-28
	.word	4
	.word	_Label_2824
	.word	-32
	.word	4
	.word	_Label_2825
	.word	-36
	.word	4
	.word	_Label_2826
	.word	-40
	.word	4
	.word	_Label_2827
	.word	-44
	.word	4
	.word	_Label_2828
	.word	-48
	.word	4
	.word	_Label_2829
	.word	-52
	.word	4
	.word	_Label_2830
	.word	-56
	.word	4
	.word	0
_Label_2815:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2816:
	.ascii	"Pself\0"
	.align
_Label_2817:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2818:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2828:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2829:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2830:
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
_Label_4464:
	push	r0
	sub	r1,1,r1
	bne	_Label_4464
	mov	1187,r13		! source line 1187
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1189,r13		! source line 1189
	mov	"\0\0SE",r10
!   _temp_2831 = &frameManagerLock
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
!   _temp_2836 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2839 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2838 = *_temp_2839  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2837 = _temp_2838 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2836  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_2832:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2837 then goto _Label_2835		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2835
_Label_2833:
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
!   _temp_2840 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_2840 div 8192		(int)
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
!   _temp_2841 = &framesInUse
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
_Label_2834:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2832
! END FOR
_Label_2835:
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2843 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2842 = *_temp_2843  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_2842		(int)
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
!   _temp_2844 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_2845 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2844  sizeInBytes=4
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
!   _temp_2846 = &frameManagerLock
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
	.word	_Label_2847
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_2848
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2849
	.word	12
	.word	4
	.word	_Label_2850
	.word	-12
	.word	4
	.word	_Label_2851
	.word	-16
	.word	4
	.word	_Label_2852
	.word	-20
	.word	4
	.word	_Label_2853
	.word	-24
	.word	4
	.word	_Label_2854
	.word	-28
	.word	4
	.word	_Label_2855
	.word	-32
	.word	4
	.word	_Label_2856
	.word	-36
	.word	4
	.word	_Label_2857
	.word	-40
	.word	4
	.word	_Label_2858
	.word	-44
	.word	4
	.word	_Label_2859
	.word	-48
	.word	4
	.word	_Label_2860
	.word	-52
	.word	4
	.word	_Label_2861
	.word	-56
	.word	4
	.word	_Label_2862
	.word	-60
	.word	4
	.word	_Label_2863
	.word	-64
	.word	4
	.word	_Label_2864
	.word	-68
	.word	4
	.word	0
_Label_2847:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2848:
	.ascii	"Pself\0"
	.align
_Label_2849:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2862:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2863:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2864:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2865
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
_Label_2865:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2866
	.word	_sourceFileName
	.word	276		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2866:
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
_Label_4465:
	push	r0
	sub	r1,1,r1
	bne	_Label_4465
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
!   _temp_2867 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2869 = &_temp_2868
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2869 = _temp_2869 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2871:
!   Data Move: *_temp_2869 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2869 = _temp_2869 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2870 = _temp_2870 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2870) then goto _Label_2871
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2871
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2872 = &_temp_2868
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4466
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4466:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2867 = *_temp_2872  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4467:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4467
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
	.word	_Label_2873
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2874
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2875
	.word	-12
	.word	4
	.word	_Label_2876
	.word	-16
	.word	4
	.word	_Label_2877
	.word	-20
	.word	4
	.word	_Label_2878
	.word	-104
	.word	84
	.word	_Label_2879
	.word	-108
	.word	4
	.word	0
_Label_2873:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2874:
	.ascii	"Pself\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2867\0"
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
_Label_4468:
	push	r0
	sub	r1,1,r1
	bne	_Label_4468
	mov	1217,r13		! source line 1217
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2880 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2880  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2881 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2881  sizeInBytes=4
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
!   _temp_2886 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2887 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2886  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2882:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2887 then goto _Label_2885		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2885
_Label_2883:
	mov	1224,r13		! source line 1224
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2888 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2888  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2890 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2890 [i ] into _temp_2891
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
!   _temp_2889 = _temp_2891		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2889  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2892 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2892  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2894 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2894 [i ] into _temp_2895
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
!   Data Move: _temp_2893 = *_temp_2895  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2893  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2896 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2896  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2897 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2897  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1230,r13		! source line 1230
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2898 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2898  sizeInBytes=4
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
!   if intIsZero (_temp_2900) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2899  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2899  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1232,r13		! source line 1232
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2901 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2901  sizeInBytes=4
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
!   if intIsZero (_temp_2905) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2904  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2904) then goto _Label_2903
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2903
!	jmp	_Label_2902
_Label_2902:
! THEN...
	mov	1235,r13		! source line 1235
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2907) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2906  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2906  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2908
_Label_2903:
! ELSE...
	mov	1237,r13		! source line 1237
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2909 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2909  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2908:
! CALL STATEMENT...
!   _temp_2910 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2910  sizeInBytes=4
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
!   if intIsZero (_temp_2913) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2911 else goto _Label_2912
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2912
	jmp	_Label_2911
_Label_2911:
! THEN...
	mov	1241,r13		! source line 1241
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2914 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2914  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2915
_Label_2912:
! ELSE...
	mov	1243,r13		! source line 1243
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2916 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2916  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2915:
! CALL STATEMENT...
!   _temp_2917 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2917  sizeInBytes=4
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
!   if intIsZero (_temp_2920) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2918 else goto _Label_2919
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2919
	jmp	_Label_2918
_Label_2918:
! THEN...
	mov	1247,r13		! source line 1247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2921 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2921  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2922
_Label_2919:
! ELSE...
	mov	1249,r13		! source line 1249
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2923 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2923  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2922:
! CALL STATEMENT...
!   _temp_2924 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2924  sizeInBytes=4
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
!   if intIsZero (_temp_2927) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2925 else goto _Label_2926
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2926
	jmp	_Label_2925
_Label_2925:
! THEN...
	mov	1253,r13		! source line 1253
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2928 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2928  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2929
_Label_2926:
! ELSE...
	mov	1255,r13		! source line 1255
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2930 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2930  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2929:
! CALL STATEMENT...
!   _temp_2931 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2931  sizeInBytes=4
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
!   if intIsZero (_temp_2934) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2932 else goto _Label_2933
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2933
	jmp	_Label_2932
_Label_2932:
! THEN...
	mov	1259,r13		! source line 1259
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2935 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2935  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2936
_Label_2933:
! ELSE...
	mov	1261,r13		! source line 1261
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2937 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2937  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2936:
! CALL STATEMENT...
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2884:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2882
! END FOR
_Label_2885:
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
	.word	_Label_2938
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2939
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2940
	.word	-12
	.word	4
	.word	_Label_2941
	.word	-16
	.word	4
	.word	_Label_2942
	.word	-20
	.word	4
	.word	_Label_2943
	.word	-24
	.word	4
	.word	_Label_2944
	.word	-28
	.word	4
	.word	_Label_2945
	.word	-32
	.word	4
	.word	_Label_2946
	.word	-36
	.word	4
	.word	_Label_2947
	.word	-40
	.word	4
	.word	_Label_2948
	.word	-44
	.word	4
	.word	_Label_2949
	.word	-48
	.word	4
	.word	_Label_2950
	.word	-52
	.word	4
	.word	_Label_2951
	.word	-56
	.word	4
	.word	_Label_2952
	.word	-60
	.word	4
	.word	_Label_2953
	.word	-64
	.word	4
	.word	_Label_2954
	.word	-68
	.word	4
	.word	_Label_2955
	.word	-72
	.word	4
	.word	_Label_2956
	.word	-76
	.word	4
	.word	_Label_2957
	.word	-80
	.word	4
	.word	_Label_2958
	.word	-84
	.word	4
	.word	_Label_2959
	.word	-88
	.word	4
	.word	_Label_2960
	.word	-92
	.word	4
	.word	_Label_2961
	.word	-96
	.word	4
	.word	_Label_2962
	.word	-100
	.word	4
	.word	_Label_2963
	.word	-104
	.word	4
	.word	_Label_2964
	.word	-108
	.word	4
	.word	_Label_2965
	.word	-112
	.word	4
	.word	_Label_2966
	.word	-116
	.word	4
	.word	_Label_2967
	.word	-120
	.word	4
	.word	_Label_2968
	.word	-124
	.word	4
	.word	_Label_2969
	.word	-128
	.word	4
	.word	_Label_2970
	.word	-132
	.word	4
	.word	_Label_2971
	.word	-136
	.word	4
	.word	_Label_2972
	.word	-140
	.word	4
	.word	_Label_2973
	.word	-144
	.word	4
	.word	_Label_2974
	.word	-148
	.word	4
	.word	_Label_2975
	.word	-152
	.word	4
	.word	_Label_2976
	.word	-156
	.word	4
	.word	_Label_2977
	.word	-160
	.word	4
	.word	_Label_2978
	.word	-164
	.word	4
	.word	_Label_2979
	.word	-168
	.word	4
	.word	0
_Label_2938:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2939:
	.ascii	"Pself\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2979:
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
_Label_4469:
	push	r0
	sub	r1,1,r1
	bne	_Label_4469
	mov	1269,r13		! source line 1269
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0RE",r10
!   _temp_2982 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2982 [entry ] into _temp_2983
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
!   Data Move: _temp_2981 = *_temp_2983  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2980 = _temp_2981 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2980  (sizeInBytes=4)
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
	.word	_Label_2984
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2985
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2986
	.word	12
	.word	4
	.word	_Label_2987
	.word	-12
	.word	4
	.word	_Label_2988
	.word	-16
	.word	4
	.word	_Label_2989
	.word	-20
	.word	4
	.word	_Label_2990
	.word	-24
	.word	4
	.word	0
_Label_2984:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2985:
	.ascii	"Pself\0"
	.align
_Label_2986:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2980\0"
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
_Label_4470:
	push	r0
	sub	r1,1,r1
	bne	_Label_4470
	mov	1279,r13		! source line 1279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1283,r13		! source line 1283
	mov	"\0\0RE",r10
!   _temp_2993 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2993 [entry ] into _temp_2994
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
!   Data Move: _temp_2992 = *_temp_2994  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2991 = _temp_2992 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2991  (sizeInBytes=4)
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
	.word	_Label_2995
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2996
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2997
	.word	12
	.word	4
	.word	_Label_2998
	.word	-12
	.word	4
	.word	_Label_2999
	.word	-16
	.word	4
	.word	_Label_3000
	.word	-20
	.word	4
	.word	_Label_3001
	.word	-24
	.word	4
	.word	0
_Label_2995:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2996:
	.ascii	"Pself\0"
	.align
_Label_2997:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2991\0"
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
_Label_4471:
	push	r0
	sub	r1,1,r1
	bne	_Label_4471
	mov	1288,r13		! source line 1288
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0AS",r10
!   _temp_3002 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_3002 [entry ] into _temp_3003
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
!   _temp_3007 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3007 [entry ] into _temp_3008
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
!   Data Move: _temp_3006 = *_temp_3008  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3005 = _temp_3006 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_3004 = _temp_3005 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3003 = _temp_3004  (sizeInBytes=4)
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
	.word	_Label_3009
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3010
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3011
	.word	12
	.word	4
	.word	_Label_3012
	.word	16
	.word	4
	.word	_Label_3013
	.word	-12
	.word	4
	.word	_Label_3014
	.word	-16
	.word	4
	.word	_Label_3015
	.word	-20
	.word	4
	.word	_Label_3016
	.word	-24
	.word	4
	.word	_Label_3017
	.word	-28
	.word	4
	.word	_Label_3018
	.word	-32
	.word	4
	.word	_Label_3019
	.word	-36
	.word	4
	.word	0
_Label_3009:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_3010:
	.ascii	"Pself\0"
	.align
_Label_3011:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3012:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_3005\0"
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
_Label_4472:
	push	r0
	sub	r1,1,r1
	bne	_Label_4472
	mov	1298,r13		! source line 1298
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1302,r13		! source line 1302
	mov	"\0\0RE",r10
!   _temp_3023 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3023 [entry ] into _temp_3024
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
!   Data Move: _temp_3022 = *_temp_3024  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3021 = _temp_3022 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3021) then goto _Label_3025
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3025
!   _temp_3020 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3026
_Label_3025:
!   _temp_3020 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3026:
!   ReturnResult: _temp_3020  (sizeInBytes=1)
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
	.word	_Label_3027
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3028
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3029
	.word	12
	.word	4
	.word	_Label_3030
	.word	-16
	.word	4
	.word	_Label_3031
	.word	-20
	.word	4
	.word	_Label_3032
	.word	-24
	.word	4
	.word	_Label_3033
	.word	-28
	.word	4
	.word	_Label_3034
	.word	-9
	.word	1
	.word	0
_Label_3027:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_3028:
	.ascii	"Pself\0"
	.align
_Label_3029:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_3024\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3034:
	.byte	'C'
	.ascii	"_temp_3020\0"
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
_Label_4473:
	push	r0
	sub	r1,1,r1
	bne	_Label_4473
	mov	1307,r13		! source line 1307
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0RE",r10
!   _temp_3038 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3038 [entry ] into _temp_3039
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
!   Data Move: _temp_3037 = *_temp_3039  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3036 = _temp_3037 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3036) then goto _Label_3040
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3040
!   _temp_3035 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3041
_Label_3040:
!   _temp_3035 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3041:
!   ReturnResult: _temp_3035  (sizeInBytes=1)
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
	.word	_Label_3042
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3043
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3044
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_3042:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_3043:
	.ascii	"Pself\0"
	.align
_Label_3044:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3036\0"
	.align
_Label_3049:
	.byte	'C'
	.ascii	"_temp_3035\0"
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
_Label_4474:
	push	r0
	sub	r1,1,r1
	bne	_Label_4474
	mov	1316,r13		! source line 1316
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0RE",r10
!   _temp_3053 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3053 [entry ] into _temp_3054
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
!   Data Move: _temp_3052 = *_temp_3054  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3051 = _temp_3052 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3051) then goto _Label_3055
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3055
!   _temp_3050 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3056
_Label_3055:
!   _temp_3050 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3056:
!   ReturnResult: _temp_3050  (sizeInBytes=1)
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
	.word	_Label_3057
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3058
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3059
	.word	12
	.word	4
	.word	_Label_3060
	.word	-16
	.word	4
	.word	_Label_3061
	.word	-20
	.word	4
	.word	_Label_3062
	.word	-24
	.word	4
	.word	_Label_3063
	.word	-28
	.word	4
	.word	_Label_3064
	.word	-9
	.word	1
	.word	0
_Label_3057:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_3058:
	.ascii	"Pself\0"
	.align
_Label_3059:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_3052\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3051\0"
	.align
_Label_3064:
	.byte	'C'
	.ascii	"_temp_3050\0"
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
_Label_4475:
	push	r0
	sub	r1,1,r1
	bne	_Label_4475
	mov	1325,r13		! source line 1325
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0RE",r10
!   _temp_3068 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3068 [entry ] into _temp_3069
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
!   Data Move: _temp_3067 = *_temp_3069  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_3066 = _temp_3067 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3066) then goto _Label_3070
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_3070
!   _temp_3065 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3071
_Label_3070:
!   _temp_3065 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3071:
!   ReturnResult: _temp_3065  (sizeInBytes=1)
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
	.word	_Label_3072
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_3073
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3074
	.word	12
	.word	4
	.word	_Label_3075
	.word	-16
	.word	4
	.word	_Label_3076
	.word	-20
	.word	4
	.word	_Label_3077
	.word	-24
	.word	4
	.word	_Label_3078
	.word	-28
	.word	4
	.word	_Label_3079
	.word	-9
	.word	1
	.word	0
_Label_3072:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_3073:
	.ascii	"Pself\0"
	.align
_Label_3074:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_3067\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_3066\0"
	.align
_Label_3079:
	.byte	'C'
	.ascii	"_temp_3065\0"
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
_Label_4476:
	push	r0
	sub	r1,1,r1
	bne	_Label_4476
	mov	1334,r13		! source line 1334
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0AS",r10
!   _temp_3080 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3080 [entry ] into _temp_3081
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
!   _temp_3084 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3084 [entry ] into _temp_3085
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
!   Data Move: _temp_3083 = *_temp_3085  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3082 = _temp_3083 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3081 = _temp_3082  (sizeInBytes=4)
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
	.word	_Label_3086
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3087
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3088
	.word	12
	.word	4
	.word	_Label_3089
	.word	-12
	.word	4
	.word	_Label_3090
	.word	-16
	.word	4
	.word	_Label_3091
	.word	-20
	.word	4
	.word	_Label_3092
	.word	-24
	.word	4
	.word	_Label_3093
	.word	-28
	.word	4
	.word	_Label_3094
	.word	-32
	.word	4
	.word	0
_Label_3086:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_3087:
	.ascii	"Pself\0"
	.align
_Label_3088:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3082\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3081\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3080\0"
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
_Label_4477:
	push	r0
	sub	r1,1,r1
	bne	_Label_4477
	mov	1343,r13		! source line 1343
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0AS",r10
!   _temp_3095 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3095 [entry ] into _temp_3096
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
!   _temp_3099 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3099 [entry ] into _temp_3100
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
!   Data Move: _temp_3098 = *_temp_3100  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3097 = _temp_3098 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3096 = _temp_3097  (sizeInBytes=4)
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
	.word	_Label_3101
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3102
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3103
	.word	12
	.word	4
	.word	_Label_3104
	.word	-12
	.word	4
	.word	_Label_3105
	.word	-16
	.word	4
	.word	_Label_3106
	.word	-20
	.word	4
	.word	_Label_3107
	.word	-24
	.word	4
	.word	_Label_3108
	.word	-28
	.word	4
	.word	_Label_3109
	.word	-32
	.word	4
	.word	0
_Label_3101:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_3102:
	.ascii	"Pself\0"
	.align
_Label_3103:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3097\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3095\0"
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
_Label_4478:
	push	r0
	sub	r1,1,r1
	bne	_Label_4478
	mov	1352,r13		! source line 1352
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1356,r13		! source line 1356
	mov	"\0\0AS",r10
!   _temp_3110 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3110 [entry ] into _temp_3111
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
!   _temp_3114 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3114 [entry ] into _temp_3115
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
!   Data Move: _temp_3113 = *_temp_3115  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3112 = _temp_3113 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3111 = _temp_3112  (sizeInBytes=4)
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
	.word	_Label_3116
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3117
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3118
	.word	12
	.word	4
	.word	_Label_3119
	.word	-12
	.word	4
	.word	_Label_3120
	.word	-16
	.word	4
	.word	_Label_3121
	.word	-20
	.word	4
	.word	_Label_3122
	.word	-24
	.word	4
	.word	_Label_3123
	.word	-28
	.word	4
	.word	_Label_3124
	.word	-32
	.word	4
	.word	0
_Label_3116:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_3117:
	.ascii	"Pself\0"
	.align
_Label_3118:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3111\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3110\0"
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
_Label_4479:
	push	r0
	sub	r1,1,r1
	bne	_Label_4479
	mov	1361,r13		! source line 1361
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0AS",r10
!   _temp_3125 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3125 [entry ] into _temp_3126
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
!   _temp_3129 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3129 [entry ] into _temp_3130
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
!   Data Move: _temp_3128 = *_temp_3130  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3127 = _temp_3128 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3126 = _temp_3127  (sizeInBytes=4)
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
	.word	_Label_3131
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3132
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3133
	.word	12
	.word	4
	.word	_Label_3134
	.word	-12
	.word	4
	.word	_Label_3135
	.word	-16
	.word	4
	.word	_Label_3136
	.word	-20
	.word	4
	.word	_Label_3137
	.word	-24
	.word	4
	.word	_Label_3138
	.word	-28
	.word	4
	.word	_Label_3139
	.word	-32
	.word	4
	.word	0
_Label_3131:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_3132:
	.ascii	"Pself\0"
	.align
_Label_3133:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3125\0"
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
_Label_4480:
	push	r0
	sub	r1,1,r1
	bne	_Label_4480
	mov	1370,r13		! source line 1370
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0AS",r10
!   _temp_3140 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3140 [entry ] into _temp_3141
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
!   _temp_3144 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3144 [entry ] into _temp_3145
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
!   Data Move: _temp_3143 = *_temp_3145  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3142 = _temp_3143 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3141 = _temp_3142  (sizeInBytes=4)
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
	.word	_Label_3146
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3147
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3148
	.word	12
	.word	4
	.word	_Label_3149
	.word	-12
	.word	4
	.word	_Label_3150
	.word	-16
	.word	4
	.word	_Label_3151
	.word	-20
	.word	4
	.word	_Label_3152
	.word	-24
	.word	4
	.word	_Label_3153
	.word	-28
	.word	4
	.word	_Label_3154
	.word	-32
	.word	4
	.word	0
_Label_3146:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_3147:
	.ascii	"Pself\0"
	.align
_Label_3148:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3140\0"
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
_Label_4481:
	push	r0
	sub	r1,1,r1
	bne	_Label_4481
	mov	1379,r13		! source line 1379
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0AS",r10
!   _temp_3155 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3155 [entry ] into _temp_3156
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
!   _temp_3159 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3159 [entry ] into _temp_3160
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
!   Data Move: _temp_3158 = *_temp_3160  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3157 = _temp_3158 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3156 = _temp_3157  (sizeInBytes=4)
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
	.word	_Label_3161
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3162
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3163
	.word	12
	.word	4
	.word	_Label_3164
	.word	-12
	.word	4
	.word	_Label_3165
	.word	-16
	.word	4
	.word	_Label_3166
	.word	-20
	.word	4
	.word	_Label_3167
	.word	-24
	.word	4
	.word	_Label_3168
	.word	-28
	.word	4
	.word	_Label_3169
	.word	-32
	.word	4
	.word	0
_Label_3161:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_3162:
	.ascii	"Pself\0"
	.align
_Label_3163:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3155\0"
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
_Label_4482:
	push	r0
	sub	r1,1,r1
	bne	_Label_4482
	mov	1388,r13		! source line 1388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0AS",r10
!   _temp_3170 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3170 [entry ] into _temp_3171
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
!   _temp_3174 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3174 [entry ] into _temp_3175
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
!   Data Move: _temp_3173 = *_temp_3175  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3172 = _temp_3173 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3171 = _temp_3172  (sizeInBytes=4)
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
	.word	_Label_3176
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3177
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3178
	.word	12
	.word	4
	.word	_Label_3179
	.word	-12
	.word	4
	.word	_Label_3180
	.word	-16
	.word	4
	.word	_Label_3181
	.word	-20
	.word	4
	.word	_Label_3182
	.word	-24
	.word	4
	.word	_Label_3183
	.word	-28
	.word	4
	.word	_Label_3184
	.word	-32
	.word	4
	.word	0
_Label_3176:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_3177:
	.ascii	"Pself\0"
	.align
_Label_3178:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3170\0"
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
_Label_4483:
	push	r0
	sub	r1,1,r1
	bne	_Label_4483
	mov	1397,r13		! source line 1397
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0AS",r10
!   _temp_3185 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_3185 [entry ] into _temp_3186
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
!   _temp_3189 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_3189 [entry ] into _temp_3190
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
!   Data Move: _temp_3188 = *_temp_3190  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_3187 = _temp_3188 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3186 = _temp_3187  (sizeInBytes=4)
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
	.word	_Label_3191
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3192
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3193
	.word	12
	.word	4
	.word	_Label_3194
	.word	-12
	.word	4
	.word	_Label_3195
	.word	-16
	.word	4
	.word	_Label_3196
	.word	-20
	.word	4
	.word	_Label_3197
	.word	-24
	.word	4
	.word	_Label_3198
	.word	-28
	.word	4
	.word	_Label_3199
	.word	-32
	.word	4
	.word	0
_Label_3191:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_3192:
	.ascii	"Pself\0"
	.align
_Label_3193:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_3194:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3195:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3196:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3185\0"
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
_Label_4484:
	push	r0
	sub	r1,1,r1
	bne	_Label_4484
	mov	1406,r13		! source line 1406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3201 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_3201 [0 ] into _temp_3202
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
!   _temp_3200 = _temp_3202		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_3203 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3200  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3203  sizeInBytes=4
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
	.word	_Label_3204
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_3205
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3206
	.word	-12
	.word	4
	.word	_Label_3207
	.word	-16
	.word	4
	.word	_Label_3208
	.word	-20
	.word	4
	.word	_Label_3209
	.word	-24
	.word	4
	.word	0
_Label_3204:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_3205:
	.ascii	"Pself\0"
	.align
_Label_3206:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3207:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3208:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3200\0"
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
_Label_4485:
	push	r0
	sub	r1,1,r1
	bne	_Label_4485
	mov	1417,r13		! source line 1417
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3210
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3210
	jmp	_Label_3211
_Label_3210:
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
	jmp	_Label_3212
_Label_3211:
! ELSE...
	mov	1434,r13		! source line 1434
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3214		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3214
!	jmp	_Label_3213
_Label_3213:
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
_Label_3214:
! END IF...
_Label_3212:
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
_Label_3215:
!	jmp	_Label_3216
_Label_3216:
	mov	1441,r13		! source line 1441
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3219		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3219
!	jmp	_Label_3218
_Label_3218:
! THEN...
	mov	1443,r13		! source line 1443
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3220 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3220  sizeInBytes=4
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
_Label_3219:
! IF STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0IF",r10
	mov	1446,r13		! source line 1446
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3224) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3223  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3223 then goto _Label_3222 else goto _Label_3221
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3221
	jmp	_Label_3222
_Label_3221:
! THEN...
	mov	1447,r13		! source line 1447
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3225 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3225  sizeInBytes=4
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
_Label_3222:
! ASSIGNMENT STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0AS",r10
	mov	1450,r13		! source line 1450
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3227) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3226  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_3226 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0WH",r10
_Label_3228:
!   if offset >= 8192 then goto _Label_3230		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3230
!	jmp	_Label_3229
_Label_3229:
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
!   Data Move: _temp_3231 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_3231  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3233		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3233
!	jmp	_Label_3232
_Label_3232:
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
_Label_3233:
! END WHILE...
	jmp	_Label_3228
_Label_3230:
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
	jmp	_Label_3215
_Label_3217:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_3234
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_3235
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3236
	.word	12
	.word	4
	.word	_Label_3237
	.word	16
	.word	4
	.word	_Label_3238
	.word	20
	.word	4
	.word	_Label_3239
	.word	-9
	.word	1
	.word	_Label_3240
	.word	-16
	.word	4
	.word	_Label_3241
	.word	-20
	.word	4
	.word	_Label_3242
	.word	-24
	.word	4
	.word	_Label_3243
	.word	-28
	.word	4
	.word	_Label_3244
	.word	-10
	.word	1
	.word	_Label_3245
	.word	-32
	.word	4
	.word	_Label_3246
	.word	-36
	.word	4
	.word	_Label_3247
	.word	-40
	.word	4
	.word	_Label_3248
	.word	-44
	.word	4
	.word	_Label_3249
	.word	-48
	.word	4
	.word	0
_Label_3234:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_3235:
	.ascii	"Pself\0"
	.align
_Label_3236:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3237:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3238:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3239:
	.byte	'C'
	.ascii	"_temp_3231\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3244:
	.byte	'C'
	.ascii	"_temp_3223\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3246:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3247:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3248:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3249:
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
_Label_4486:
	push	r0
	sub	r1,1,r1
	bne	_Label_4486
	mov	1471,r13		! source line 1471
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_3250
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_3250
	jmp	_Label_3251
_Label_3250:
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
	jmp	_Label_3252
_Label_3251:
! ELSE...
	mov	1484,r13		! source line 1484
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_3254		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3254
!	jmp	_Label_3253
_Label_3253:
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
_Label_3254:
! END IF...
_Label_3252:
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
_Label_3255:
!	jmp	_Label_3256
_Label_3256:
	mov	1489,r13		! source line 1489
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_3261		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3261
	jmp	_Label_3258
_Label_3261:
	mov	1491,r13		! source line 1491
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_3263) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3262  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_3262 then goto _Label_3260 else goto _Label_3258
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_3258
	jmp	_Label_3260
_Label_3260:
	mov	1492,r13		! source line 1492
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3265) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3264  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3264 then goto _Label_3259 else goto _Label_3258
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3258
	jmp	_Label_3259
_Label_3258:
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
_Label_3259:
! ASSIGNMENT STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0AS",r10
	mov	1495,r13		! source line 1495
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_3267) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3266  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_3266 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0WH",r10
_Label_3268:
!   if offset >= 8192 then goto _Label_3270		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3270
!	jmp	_Label_3269
_Label_3269:
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
!   Data Move: _temp_3271 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_3271  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_3273		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_3273
!	jmp	_Label_3272
_Label_3272:
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
_Label_3273:
! END WHILE...
	jmp	_Label_3268
_Label_3270:
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
	jmp	_Label_3255
_Label_3257:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_3274
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_3275
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3276
	.word	12
	.word	4
	.word	_Label_3277
	.word	16
	.word	4
	.word	_Label_3278
	.word	20
	.word	4
	.word	_Label_3279
	.word	-9
	.word	1
	.word	_Label_3280
	.word	-16
	.word	4
	.word	_Label_3281
	.word	-20
	.word	4
	.word	_Label_3282
	.word	-24
	.word	4
	.word	_Label_3283
	.word	-10
	.word	1
	.word	_Label_3284
	.word	-28
	.word	4
	.word	_Label_3285
	.word	-11
	.word	1
	.word	_Label_3286
	.word	-32
	.word	4
	.word	_Label_3287
	.word	-36
	.word	4
	.word	_Label_3288
	.word	-40
	.word	4
	.word	_Label_3289
	.word	-44
	.word	4
	.word	0
_Label_3274:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_3275:
	.ascii	"Pself\0"
	.align
_Label_3276:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3277:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_3278:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3279:
	.byte	'C'
	.ascii	"_temp_3271\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3265\0"
	.align
_Label_3283:
	.byte	'C'
	.ascii	"_temp_3264\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3285:
	.byte	'C'
	.ascii	"_temp_3262\0"
	.align
_Label_3286:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_3287:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_3288:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3289:
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
_Label_4487:
	push	r0
	sub	r1,1,r1
	bne	_Label_4487
	mov	1513,r13		! source line 1513
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0IF",r10
	mov	1537,r13		! source line 1537
	mov	"\0\0SE",r10
!   _temp_3293 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_3294) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3293  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3292  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_3292 >= 4 then goto _Label_3291		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3291
!	jmp	_Label_3290
_Label_3290:
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
_Label_3291:
! IF STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_3296		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3296
!	jmp	_Label_3295
_Label_3295:
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
_Label_3296:
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
!   _temp_3299 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_3298 = _temp_3299 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_3300 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_3301) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3298  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_3300  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3297  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_3297  (sizeInBytes=4)
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
	.word	_Label_3302
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3303
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3304
	.word	12
	.word	4
	.word	_Label_3305
	.word	16
	.word	4
	.word	_Label_3306
	.word	20
	.word	4
	.word	_Label_3307
	.word	-12
	.word	4
	.word	_Label_3308
	.word	-16
	.word	4
	.word	_Label_3309
	.word	-20
	.word	4
	.word	_Label_3310
	.word	-24
	.word	4
	.word	_Label_3311
	.word	-28
	.word	4
	.word	_Label_3312
	.word	-32
	.word	4
	.word	_Label_3313
	.word	-36
	.word	4
	.word	_Label_3314
	.word	-40
	.word	4
	.word	_Label_3315
	.word	-44
	.word	4
	.word	0
_Label_3302:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_3303:
	.ascii	"Pself\0"
	.align
_Label_3304:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_3305:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_3306:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3301\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3298\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3294\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3293\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3292\0"
	.align
_Label_3315:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_3316
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_3316:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3317
	.word	_sourceFileName
	.word	310		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_3317:
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
_Label_4488:
	push	r0
	sub	r1,1,r1
	bne	_Label_4488
	mov	2339,r13		! source line 2339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3318 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3318  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2340,r13		! source line 2340
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2342,r13		! source line 2342
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2346,r13		! source line 2346
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2347,r13		! source line 2347
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
	mov	2348,r13		! source line 2348
	mov	"\0\0SE",r10
!   _temp_3320 = &semUsedInSynchMethods
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
	mov	2349,r13		! source line 2349
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
	mov	2350,r13		! source line 2350
	mov	"\0\0SE",r10
!   _temp_3322 = &diskBusy
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
	mov	2350,r13		! source line 2350
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
	.word	_Label_3323
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3324
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3325
	.word	-12
	.word	4
	.word	_Label_3326
	.word	-16
	.word	4
	.word	_Label_3327
	.word	-20
	.word	4
	.word	_Label_3328
	.word	-24
	.word	4
	.word	_Label_3329
	.word	-28
	.word	4
	.word	0
_Label_3323:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3324:
	.ascii	"Pself\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3322\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3321\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3320\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3319\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3318\0"
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
_Label_4489:
	push	r0
	sub	r1,1,r1
	bne	_Label_4489
	mov	2355,r13		! source line 2355
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0SE",r10
!   _temp_3330 = &diskBusy
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
	mov	2369,r13		! source line 2369
	mov	"\0\0WH",r10
_Label_3331:
!	jmp	_Label_3332
_Label_3332:
	mov	2369,r13		! source line 2369
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0SE",r10
!   _temp_3334 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3335) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3334  sizeInBytes=4
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
	mov	2373,r13		! source line 2373
	mov	"\0\0SE",r10
!   _temp_3336 = &semUsedInSynchMethods
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
	mov	2376,r13		! source line 2376
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3345 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3339
	cmp	r1,2
	be	_Label_3340
	cmp	r1,3
	be	_Label_3341
	cmp	r1,4
	be	_Label_3342
	cmp	r1,5
	be	_Label_3343
	cmp	r1,6
	be	_Label_3344
	jmp	_Label_3337
! CASE 1...
_Label_3339:
! SEND STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0SE",r10
!   _temp_3346 = &diskBusy
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
	mov	2379,r13		! source line 2379
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3340:
! CALL STATEMENT...
!   _temp_3347 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3347  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2381,r13		! source line 2381
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3341:
! CALL STATEMENT...
!   _temp_3348 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3348  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2383,r13		! source line 2383
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3342:
! CALL STATEMENT...
!   _temp_3349 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3349  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2385,r13		! source line 2385
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3343:
! BREAK STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0BR",r10
	jmp	_Label_3338
! CASE 6...
_Label_3344:
! CALL STATEMENT...
!   _temp_3350 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3350  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2391,r13		! source line 2391
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3337:
! CALL STATEMENT...
!   _temp_3351 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3351  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2393,r13		! source line 2393
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3338:
! END WHILE...
	jmp	_Label_3331
_Label_3333:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3352
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3353
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3354
	.word	12
	.word	4
	.word	_Label_3355
	.word	16
	.word	4
	.word	_Label_3356
	.word	20
	.word	4
	.word	_Label_3357
	.word	-12
	.word	4
	.word	_Label_3358
	.word	-16
	.word	4
	.word	_Label_3359
	.word	-20
	.word	4
	.word	_Label_3360
	.word	-24
	.word	4
	.word	_Label_3361
	.word	-28
	.word	4
	.word	_Label_3362
	.word	-32
	.word	4
	.word	_Label_3363
	.word	-36
	.word	4
	.word	_Label_3364
	.word	-40
	.word	4
	.word	_Label_3365
	.word	-44
	.word	4
	.word	_Label_3366
	.word	-48
	.word	4
	.word	_Label_3367
	.word	-52
	.word	4
	.word	0
_Label_3352:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3353:
	.ascii	"Pself\0"
	.align
_Label_3354:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3355:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3356:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3357:
	.byte	'?'
	.ascii	"_temp_3351\0"
	.align
_Label_3358:
	.byte	'?'
	.ascii	"_temp_3350\0"
	.align
_Label_3359:
	.byte	'?'
	.ascii	"_temp_3349\0"
	.align
_Label_3360:
	.byte	'?'
	.ascii	"_temp_3348\0"
	.align
_Label_3361:
	.byte	'?'
	.ascii	"_temp_3347\0"
	.align
_Label_3362:
	.byte	'?'
	.ascii	"_temp_3346\0"
	.align
_Label_3363:
	.byte	'?'
	.ascii	"_temp_3345\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3336\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3335\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3334\0"
	.align
_Label_3367:
	.byte	'?'
	.ascii	"_temp_3330\0"
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
	mov	2402,r13		! source line 2402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2420,r13		! source line 2420
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
	mov	2421,r13		! source line 2421
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
	mov	2422,r13		! source line 2422
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
	mov	2423,r13		! source line 2423
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
	mov	2423,r13		! source line 2423
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
	.word	_Label_3368
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3369
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3370
	.word	12
	.word	4
	.word	_Label_3371
	.word	16
	.word	4
	.word	_Label_3372
	.word	20
	.word	4
	.word	_Label_3373
	.word	24
	.word	4
	.word	0
_Label_3368:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3369:
	.ascii	"Pself\0"
	.align
_Label_3370:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3371:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3372:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3373:
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
_Label_4490:
	push	r0
	sub	r1,1,r1
	bne	_Label_4490
	mov	2428,r13		! source line 2428
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0SE",r10
!   _temp_3374 = &diskBusy
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
	mov	2441,r13		! source line 2441
	mov	"\0\0WH",r10
_Label_3375:
!	jmp	_Label_3376
_Label_3376:
	mov	2441,r13		! source line 2441
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0SE",r10
!   _temp_3378 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3379) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3378  sizeInBytes=4
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
	mov	2444,r13		! source line 2444
	mov	"\0\0SE",r10
!   _temp_3380 = &semUsedInSynchMethods
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
	mov	2447,r13		! source line 2447
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3389 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3383
	cmp	r1,2
	be	_Label_3384
	cmp	r1,3
	be	_Label_3385
	cmp	r1,4
	be	_Label_3386
	cmp	r1,5
	be	_Label_3387
	cmp	r1,6
	be	_Label_3388
	jmp	_Label_3381
! CASE 1...
_Label_3383:
! SEND STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0SE",r10
!   _temp_3390 = &diskBusy
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
	mov	2450,r13		! source line 2450
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3384:
! CALL STATEMENT...
!   _temp_3391 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3391  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2452,r13		! source line 2452
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3385:
! CALL STATEMENT...
!   _temp_3392 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3392  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2454,r13		! source line 2454
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3386:
! CALL STATEMENT...
!   _temp_3393 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3393  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2456,r13		! source line 2456
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3387:
! BREAK STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0BR",r10
	jmp	_Label_3382
! CASE 6...
_Label_3388:
! CALL STATEMENT...
!   _temp_3394 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3394  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2462,r13		! source line 2462
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3381:
! CALL STATEMENT...
!   _temp_3395 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3395  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2464,r13		! source line 2464
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3382:
! END WHILE...
	jmp	_Label_3375
_Label_3377:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3396
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3397
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3398
	.word	12
	.word	4
	.word	_Label_3399
	.word	16
	.word	4
	.word	_Label_3400
	.word	20
	.word	4
	.word	_Label_3401
	.word	-12
	.word	4
	.word	_Label_3402
	.word	-16
	.word	4
	.word	_Label_3403
	.word	-20
	.word	4
	.word	_Label_3404
	.word	-24
	.word	4
	.word	_Label_3405
	.word	-28
	.word	4
	.word	_Label_3406
	.word	-32
	.word	4
	.word	_Label_3407
	.word	-36
	.word	4
	.word	_Label_3408
	.word	-40
	.word	4
	.word	_Label_3409
	.word	-44
	.word	4
	.word	_Label_3410
	.word	-48
	.word	4
	.word	_Label_3411
	.word	-52
	.word	4
	.word	0
_Label_3396:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3397:
	.ascii	"Pself\0"
	.align
_Label_3398:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3399:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3400:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3401:
	.byte	'?'
	.ascii	"_temp_3395\0"
	.align
_Label_3402:
	.byte	'?'
	.ascii	"_temp_3394\0"
	.align
_Label_3403:
	.byte	'?'
	.ascii	"_temp_3393\0"
	.align
_Label_3404:
	.byte	'?'
	.ascii	"_temp_3392\0"
	.align
_Label_3405:
	.byte	'?'
	.ascii	"_temp_3391\0"
	.align
_Label_3406:
	.byte	'?'
	.ascii	"_temp_3390\0"
	.align
_Label_3407:
	.byte	'?'
	.ascii	"_temp_3389\0"
	.align
_Label_3408:
	.byte	'?'
	.ascii	"_temp_3380\0"
	.align
_Label_3409:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3410:
	.byte	'?'
	.ascii	"_temp_3378\0"
	.align
_Label_3411:
	.byte	'?'
	.ascii	"_temp_3374\0"
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
	mov	2473,r13		! source line 2473
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2490,r13		! source line 2490
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
	mov	2491,r13		! source line 2491
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
	mov	2492,r13		! source line 2492
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
	mov	2493,r13		! source line 2493
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
	mov	2493,r13		! source line 2493
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
	.word	_Label_3412
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3413
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3414
	.word	12
	.word	4
	.word	_Label_3415
	.word	16
	.word	4
	.word	_Label_3416
	.word	20
	.word	4
	.word	_Label_3417
	.word	24
	.word	4
	.word	0
_Label_3412:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3413:
	.ascii	"Pself\0"
	.align
_Label_3414:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3415:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3416:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3417:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3418
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
_Label_3418:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3419
	.word	_sourceFileName
	.word	333		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3419:
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
_Label_4491:
	push	r0
	sub	r1,1,r1
	bne	_Label_4491
	mov	2504,r13		! source line 2504
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3420 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3420  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2511,r13		! source line 2511
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2512,r13		! source line 2512
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
	mov	2513,r13		! source line 2513
	mov	"\0\0SE",r10
!   _temp_3422 = &fileManagerLock
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
	mov	2516,r13		! source line 2516
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
	mov	2517,r13		! source line 2517
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
	mov	2518,r13		! source line 2518
	mov	"\0\0SE",r10
!   _temp_3425 = &anFCBBecameFree
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
	mov	2519,r13		! source line 2519
	mov	"\0\0AS",r10
!   _temp_3426 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3428 = &_temp_3427
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3428 = _temp_3428 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3430 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4492:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4492
!   _temp_3430 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3432:
!   Data Move: *_temp_3428 = _temp_3430  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4493:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4493
!   _temp_3428 = _temp_3428 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3429 = _temp_3429 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3429) then goto _Label_3432
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3432
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3433 = &_temp_3427
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4494
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4494:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3426 = *_temp_3433  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4495:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4495
! FOR STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3438 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3439 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3438  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3434:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3439 then goto _Label_3437		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3437
_Label_3435:
	mov	2521,r13		! source line 2521
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0AS",r10
!   _temp_3440 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3440 [i ] into _temp_3441
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
!   _temp_3442 = _temp_3441 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3442 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0SE",r10
!   _temp_3443 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3443 [i ] into _temp_3444
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
	mov	2524,r13		! source line 2524
	mov	"\0\0SE",r10
!   _temp_3446 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3446 [i ] into _temp_3447
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
!   _temp_3445 = _temp_3447		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3448 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3445  sizeInBytes=4
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
_Label_3436:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3434
! END FOR
_Label_3437:
! ASSIGNMENT STATEMENT...
	mov	2528,r13		! source line 2528
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
	mov	2529,r13		! source line 2529
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
	mov	2530,r13		! source line 2530
	mov	"\0\0SE",r10
!   _temp_3451 = &anOpenFileBecameFree
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
	mov	2531,r13		! source line 2531
	mov	"\0\0AS",r10
!   _temp_3452 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3454 = &_temp_3453
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3454 = _temp_3454 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3456 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4496:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4496
!   _temp_3456 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3458:
!   Data Move: *_temp_3454 = _temp_3456  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4497:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4497
!   _temp_3454 = _temp_3454 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3455 = _temp_3455 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3455) then goto _Label_3458
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3458
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3459 = &_temp_3453
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4498
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4498:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3452 = *_temp_3459  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4499:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4499
! FOR STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3464 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3465 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3464  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3460:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3465 then goto _Label_3463		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3463
_Label_3461:
	mov	2533,r13		! source line 2533
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0AS",r10
!   _temp_3466 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3466 [i ] into _temp_3467
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
!   _temp_3468 = _temp_3467 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3468 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0SE",r10
!   _temp_3470 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3470 [i ] into _temp_3471
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
!   _temp_3469 = _temp_3471		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3472 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3469  sizeInBytes=4
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
_Label_3462:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3460
! END FOR
_Label_3463:
! ASSIGNMENT STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4500:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4500
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0AS",r10
!   _temp_3474 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3475 = _temp_3474 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3475 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0AS",r10
	mov	2545,r13		! source line 2545
	mov	"\0\0SE",r10
!   _temp_3476 = &_P_Kernel_frameManager
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
	mov	2546,r13		! source line 2546
	mov	"\0\0SE",r10
!   _temp_3477 = &_P_Kernel_diskDriver
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
	mov	2546,r13		! source line 2546
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
	.word	_Label_3478
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3479
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3480
	.word	-12
	.word	4
	.word	_Label_3481
	.word	-16
	.word	4
	.word	_Label_3482
	.word	-20
	.word	4
	.word	_Label_3483
	.word	-24
	.word	4
	.word	_Label_3484
	.word	-28
	.word	4
	.word	_Label_3485
	.word	-32
	.word	4
	.word	_Label_3486
	.word	-36
	.word	4
	.word	_Label_3487
	.word	-40
	.word	4
	.word	_Label_3488
	.word	-44
	.word	4
	.word	_Label_3489
	.word	-48
	.word	4
	.word	_Label_3490
	.word	-52
	.word	4
	.word	_Label_3491
	.word	-56
	.word	4
	.word	_Label_3492
	.word	-60
	.word	4
	.word	_Label_3493
	.word	-64
	.word	4
	.word	_Label_3494
	.word	-68
	.word	4
	.word	_Label_3495
	.word	-72
	.word	4
	.word	_Label_3496
	.word	-100
	.word	28
	.word	_Label_3497
	.word	-104
	.word	4
	.word	_Label_3498
	.word	-108
	.word	4
	.word	_Label_3499
	.word	-392
	.word	284
	.word	_Label_3500
	.word	-396
	.word	4
	.word	_Label_3501
	.word	-400
	.word	4
	.word	_Label_3502
	.word	-404
	.word	4
	.word	_Label_3503
	.word	-408
	.word	4
	.word	_Label_3504
	.word	-412
	.word	4
	.word	_Label_3505
	.word	-416
	.word	4
	.word	_Label_3506
	.word	-420
	.word	4
	.word	_Label_3507
	.word	-424
	.word	4
	.word	_Label_3508
	.word	-428
	.word	4
	.word	_Label_3509
	.word	-432
	.word	4
	.word	_Label_3510
	.word	-436
	.word	4
	.word	_Label_3511
	.word	-440
	.word	4
	.word	_Label_3512
	.word	-444
	.word	4
	.word	_Label_3513
	.word	-448
	.word	4
	.word	_Label_3514
	.word	-452
	.word	4
	.word	_Label_3515
	.word	-456
	.word	4
	.word	_Label_3516
	.word	-460
	.word	4
	.word	_Label_3517
	.word	-500
	.word	40
	.word	_Label_3518
	.word	-504
	.word	4
	.word	_Label_3519
	.word	-508
	.word	4
	.word	_Label_3520
	.word	-912
	.word	404
	.word	_Label_3521
	.word	-916
	.word	4
	.word	_Label_3522
	.word	-920
	.word	4
	.word	_Label_3523
	.word	-924
	.word	4
	.word	_Label_3524
	.word	-928
	.word	4
	.word	_Label_3525
	.word	-932
	.word	4
	.word	_Label_3526
	.word	-936
	.word	4
	.word	_Label_3527
	.word	-940
	.word	4
	.word	_Label_3528
	.word	-944
	.word	4
	.word	0
_Label_3478:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3479:
	.ascii	"Pself\0"
	.align
_Label_3480:
	.byte	'?'
	.ascii	"_temp_3477\0"
	.align
_Label_3481:
	.byte	'?'
	.ascii	"_temp_3476\0"
	.align
_Label_3482:
	.byte	'?'
	.ascii	"_temp_3475\0"
	.align
_Label_3483:
	.byte	'?'
	.ascii	"_temp_3474\0"
	.align
_Label_3484:
	.byte	'?'
	.ascii	"_temp_3473\0"
	.align
_Label_3485:
	.byte	'?'
	.ascii	"_temp_3472\0"
	.align
_Label_3486:
	.byte	'?'
	.ascii	"_temp_3471\0"
	.align
_Label_3487:
	.byte	'?'
	.ascii	"_temp_3470\0"
	.align
_Label_3488:
	.byte	'?'
	.ascii	"_temp_3469\0"
	.align
_Label_3489:
	.byte	'?'
	.ascii	"_temp_3468\0"
	.align
_Label_3490:
	.byte	'?'
	.ascii	"_temp_3467\0"
	.align
_Label_3491:
	.byte	'?'
	.ascii	"_temp_3466\0"
	.align
_Label_3492:
	.byte	'?'
	.ascii	"_temp_3465\0"
	.align
_Label_3493:
	.byte	'?'
	.ascii	"_temp_3464\0"
	.align
_Label_3494:
	.byte	'?'
	.ascii	"_temp_3459\0"
	.align
_Label_3495:
	.byte	'?'
	.ascii	"_temp_3457\0"
	.align
_Label_3496:
	.byte	'?'
	.ascii	"_temp_3456\0"
	.align
_Label_3497:
	.byte	'?'
	.ascii	"_temp_3455\0"
	.align
_Label_3498:
	.byte	'?'
	.ascii	"_temp_3454\0"
	.align
_Label_3499:
	.byte	'?'
	.ascii	"_temp_3453\0"
	.align
_Label_3500:
	.byte	'?'
	.ascii	"_temp_3452\0"
	.align
_Label_3501:
	.byte	'?'
	.ascii	"_temp_3451\0"
	.align
_Label_3502:
	.byte	'?'
	.ascii	"_temp_3450\0"
	.align
_Label_3503:
	.byte	'?'
	.ascii	"_temp_3449\0"
	.align
_Label_3504:
	.byte	'?'
	.ascii	"_temp_3448\0"
	.align
_Label_3505:
	.byte	'?'
	.ascii	"_temp_3447\0"
	.align
_Label_3506:
	.byte	'?'
	.ascii	"_temp_3446\0"
	.align
_Label_3507:
	.byte	'?'
	.ascii	"_temp_3445\0"
	.align
_Label_3508:
	.byte	'?'
	.ascii	"_temp_3444\0"
	.align
_Label_3509:
	.byte	'?'
	.ascii	"_temp_3443\0"
	.align
_Label_3510:
	.byte	'?'
	.ascii	"_temp_3442\0"
	.align
_Label_3511:
	.byte	'?'
	.ascii	"_temp_3441\0"
	.align
_Label_3512:
	.byte	'?'
	.ascii	"_temp_3440\0"
	.align
_Label_3513:
	.byte	'?'
	.ascii	"_temp_3439\0"
	.align
_Label_3514:
	.byte	'?'
	.ascii	"_temp_3438\0"
	.align
_Label_3515:
	.byte	'?'
	.ascii	"_temp_3433\0"
	.align
_Label_3516:
	.byte	'?'
	.ascii	"_temp_3431\0"
	.align
_Label_3517:
	.byte	'?'
	.ascii	"_temp_3430\0"
	.align
_Label_3518:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3519:
	.byte	'?'
	.ascii	"_temp_3428\0"
	.align
_Label_3520:
	.byte	'?'
	.ascii	"_temp_3427\0"
	.align
_Label_3521:
	.byte	'?'
	.ascii	"_temp_3426\0"
	.align
_Label_3522:
	.byte	'?'
	.ascii	"_temp_3425\0"
	.align
_Label_3523:
	.byte	'?'
	.ascii	"_temp_3424\0"
	.align
_Label_3524:
	.byte	'?'
	.ascii	"_temp_3423\0"
	.align
_Label_3525:
	.byte	'?'
	.ascii	"_temp_3422\0"
	.align
_Label_3526:
	.byte	'?'
	.ascii	"_temp_3421\0"
	.align
_Label_3527:
	.byte	'?'
	.ascii	"_temp_3420\0"
	.align
_Label_3528:
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
_Label_4501:
	push	r0
	sub	r1,1,r1
	bne	_Label_4501
	mov	2553,r13		! source line 2553
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0SE",r10
!   _temp_3529 = &fileManagerLock
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
!   _temp_3530 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3530  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2556,r13		! source line 2556
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3535 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3536 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3535  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3531:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3536 then goto _Label_3534		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3534
_Label_3532:
	mov	2557,r13		! source line 2557
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3537 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3537  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2558,r13		! source line 2558
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2559,r13		! source line 2559
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3538 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3538  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2560,r13		! source line 2560
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0SE",r10
!   _temp_3539 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3539 [i ] into _temp_3540
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
_Label_3533:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3531
! END FOR
_Label_3534:
! CALL STATEMENT...
!   _temp_3541 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3541  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2563,r13		! source line 2563
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0SE",r10
!   _temp_3542 = _function_191_printFCB
	set	_function_191_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3543 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3542  sizeInBytes=4
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
	mov	2565,r13		! source line 2565
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3544 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3544  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2566,r13		! source line 2566
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3549 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3550 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3549  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3545:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3550 then goto _Label_3548		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3548
_Label_3546:
	mov	2567,r13		! source line 2567
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3551 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3551  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2568,r13		! source line 2568
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2569,r13		! source line 2569
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3552 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3552  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2570,r13		! source line 2570
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3554 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3554 [i ] into _temp_3555
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
!   _temp_3553 = _temp_3555		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3553  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2571,r13		! source line 2571
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3556 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3556  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2572,r13		! source line 2572
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0SE",r10
!   _temp_3557 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3557 [i ] into _temp_3558
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
_Label_3547:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3545
! END FOR
_Label_3548:
! CALL STATEMENT...
!   _temp_3559 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3559  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2575,r13		! source line 2575
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0SE",r10
!   _temp_3560 = _function_190_printOpen
	set	_function_190_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3561 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3560  sizeInBytes=4
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
	mov	2577,r13		! source line 2577
	mov	"\0\0SE",r10
!   _temp_3562 = &fileManagerLock
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
	mov	2577,r13		! source line 2577
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
	.word	_Label_3563
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3564
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3565
	.word	-12
	.word	4
	.word	_Label_3566
	.word	-16
	.word	4
	.word	_Label_3567
	.word	-20
	.word	4
	.word	_Label_3568
	.word	-24
	.word	4
	.word	_Label_3569
	.word	-28
	.word	4
	.word	_Label_3570
	.word	-32
	.word	4
	.word	_Label_3571
	.word	-36
	.word	4
	.word	_Label_3572
	.word	-40
	.word	4
	.word	_Label_3573
	.word	-44
	.word	4
	.word	_Label_3574
	.word	-48
	.word	4
	.word	_Label_3575
	.word	-52
	.word	4
	.word	_Label_3576
	.word	-56
	.word	4
	.word	_Label_3577
	.word	-60
	.word	4
	.word	_Label_3578
	.word	-64
	.word	4
	.word	_Label_3579
	.word	-68
	.word	4
	.word	_Label_3580
	.word	-72
	.word	4
	.word	_Label_3581
	.word	-76
	.word	4
	.word	_Label_3582
	.word	-80
	.word	4
	.word	_Label_3583
	.word	-84
	.word	4
	.word	_Label_3584
	.word	-88
	.word	4
	.word	_Label_3585
	.word	-92
	.word	4
	.word	_Label_3586
	.word	-96
	.word	4
	.word	_Label_3587
	.word	-100
	.word	4
	.word	_Label_3588
	.word	-104
	.word	4
	.word	_Label_3589
	.word	-108
	.word	4
	.word	_Label_3590
	.word	-112
	.word	4
	.word	_Label_3591
	.word	-116
	.word	4
	.word	0
_Label_3563:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3564:
	.ascii	"Pself\0"
	.align
_Label_3565:
	.byte	'?'
	.ascii	"_temp_3562\0"
	.align
_Label_3566:
	.byte	'?'
	.ascii	"_temp_3561\0"
	.align
_Label_3567:
	.byte	'?'
	.ascii	"_temp_3560\0"
	.align
_Label_3568:
	.byte	'?'
	.ascii	"_temp_3559\0"
	.align
_Label_3569:
	.byte	'?'
	.ascii	"_temp_3558\0"
	.align
_Label_3570:
	.byte	'?'
	.ascii	"_temp_3557\0"
	.align
_Label_3571:
	.byte	'?'
	.ascii	"_temp_3556\0"
	.align
_Label_3572:
	.byte	'?'
	.ascii	"_temp_3555\0"
	.align
_Label_3573:
	.byte	'?'
	.ascii	"_temp_3554\0"
	.align
_Label_3574:
	.byte	'?'
	.ascii	"_temp_3553\0"
	.align
_Label_3575:
	.byte	'?'
	.ascii	"_temp_3552\0"
	.align
_Label_3576:
	.byte	'?'
	.ascii	"_temp_3551\0"
	.align
_Label_3577:
	.byte	'?'
	.ascii	"_temp_3550\0"
	.align
_Label_3578:
	.byte	'?'
	.ascii	"_temp_3549\0"
	.align
_Label_3579:
	.byte	'?'
	.ascii	"_temp_3544\0"
	.align
_Label_3580:
	.byte	'?'
	.ascii	"_temp_3543\0"
	.align
_Label_3581:
	.byte	'?'
	.ascii	"_temp_3542\0"
	.align
_Label_3582:
	.byte	'?'
	.ascii	"_temp_3541\0"
	.align
_Label_3583:
	.byte	'?'
	.ascii	"_temp_3540\0"
	.align
_Label_3584:
	.byte	'?'
	.ascii	"_temp_3539\0"
	.align
_Label_3585:
	.byte	'?'
	.ascii	"_temp_3538\0"
	.align
_Label_3586:
	.byte	'?'
	.ascii	"_temp_3537\0"
	.align
_Label_3587:
	.byte	'?'
	.ascii	"_temp_3536\0"
	.align
_Label_3588:
	.byte	'?'
	.ascii	"_temp_3535\0"
	.align
_Label_3589:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3590:
	.byte	'?'
	.ascii	"_temp_3529\0"
	.align
_Label_3591:
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
_Label_4502:
	push	r0
	sub	r1,1,r1
	bne	_Label_4502
	mov	2582,r13		! source line 2582
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0AS",r10
	mov	2598,r13		! source line 2598
	mov	"\0\0SE",r10
!   _temp_3592 = &_P_Kernel_fileManager
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
	mov	2599,r13		! source line 2599
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3593
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3593
	jmp	_Label_3594
_Label_3593:
! THEN...
	mov	2600,r13		! source line 2600
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3594:
! SEND STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0SE",r10
!   _temp_3595 = &fileManagerLock
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
	mov	2605,r13		! source line 2605
	mov	"\0\0WH",r10
_Label_3596:
	mov	2605,r13		! source line 2605
	mov	"\0\0SE",r10
!   _temp_3599 = &openFileFreeList
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
!   if result==true then goto _Label_3597 else goto _Label_3598
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3598
	jmp	_Label_3597
_Label_3597:
	mov	2605,r13		! source line 2605
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0SE",r10
!   _temp_3600 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3601 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3600  sizeInBytes=4
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
	jmp	_Label_3596
_Label_3598:
! ASSIGNMENT STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0AS",r10
	mov	2608,r13		! source line 2608
	mov	"\0\0SE",r10
!   _temp_3602 = &openFileFreeList
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
	mov	2611,r13		! source line 2611
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3603 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3603 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3604 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3604 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3605 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3605 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0SE",r10
!   _temp_3606 = &fileManagerLock
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
	mov	2618,r13		! source line 2618
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
	.word	_Label_3607
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3608
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3609
	.word	12
	.word	4
	.word	_Label_3610
	.word	-12
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
	.word	0
_Label_3607:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3608:
	.ascii	"Pself\0"
	.align
_Label_3609:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3610:
	.byte	'?'
	.ascii	"_temp_3606\0"
	.align
_Label_3611:
	.byte	'?'
	.ascii	"_temp_3605\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3604\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3603\0"
	.align
_Label_3614:
	.byte	'?'
	.ascii	"_temp_3602\0"
	.align
_Label_3615:
	.byte	'?'
	.ascii	"_temp_3601\0"
	.align
_Label_3616:
	.byte	'?'
	.ascii	"_temp_3600\0"
	.align
_Label_3617:
	.byte	'?'
	.ascii	"_temp_3599\0"
	.align
_Label_3618:
	.byte	'?'
	.ascii	"_temp_3595\0"
	.align
_Label_3619:
	.byte	'?'
	.ascii	"_temp_3592\0"
	.align
_Label_3620:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3621:
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
_Label_4503:
	push	r0
	sub	r1,1,r1
	bne	_Label_4503
	mov	2623,r13		! source line 2623
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2651,r13		! source line 2651
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
	mov	2652,r13		! source line 2652
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3623		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3623
!	jmp	_Label_3622
_Label_3622:
! THEN...
	mov	2654,r13		! source line 2654
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3624 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3624  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2654,r13		! source line 2654
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3623:
! ASSIGNMENT STATEMENT...
	mov	2658,r13		! source line 2658
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
	mov	2659,r13		! source line 2659
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2660,r13		! source line 2660
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
	mov	2661,r13		! source line 2661
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2664,r13		! source line 2664
	mov	"\0\0WH",r10
_Label_3625:
!   if numFiles <= 0 then goto _Label_3627		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3627
!	jmp	_Label_3626
_Label_3626:
	mov	2664,r13		! source line 2664
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3628 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3628  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2665,r13		! source line 2665
	mov	"\0\0CA",r10
	call	_function_192_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3629 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3629  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2667,r13		! source line 2667
	mov	"\0\0CA",r10
	call	_function_192_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2668,r13		! source line 2668
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3630 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3630  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2669,r13		! source line 2669
	mov	"\0\0CA",r10
	call	_function_192_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2670,r13		! source line 2670
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3634 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3634 then goto _Label_3632		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3632
!	jmp	_Label_3633
_Label_3633:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3636
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
!   _temp_3635 = _temp_3636		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3635  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2672,r13		! source line 2672
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3631 else goto _Label_3632
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3632
	jmp	_Label_3631
_Label_3631:
! THEN...
	mov	2673,r13		! source line 2673
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0BR",r10
	jmp	_Label_3627
! END IF...
_Label_3632:
! ASSIGNMENT STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3625
_Label_3627:
! IF STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3638		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3638
!	jmp	_Label_3637
_Label_3637:
! THEN...
	mov	2681,r13		! source line 2681
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3638:
! SEND STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0SE",r10
!   _temp_3639 = &fileManagerLock
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
	mov	2686,r13		! source line 2686
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3644 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3645 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3644  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3640:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3645 then goto _Label_3643		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3643
_Label_3641:
	mov	2686,r13		! source line 2686
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0AS",r10
!   _temp_3646 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3646 [i ] into _temp_3647
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
!   fcb = _temp_3647		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3651 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3650 = *_temp_3651  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3650 != start then goto _Label_3649		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3649
!	jmp	_Label_3648
_Label_3648:
! THEN...
	mov	2689,r13		! source line 2689
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3652 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3655 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3654 = *_temp_3655  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3653 = _temp_3654 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3652 = _temp_3653  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0SE",r10
!   _temp_3656 = &fileManagerLock
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
	mov	2691,r13		! source line 2691
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3649:
!   Increment the FOR-LOOP index variable and jump back
_Label_3642:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3640
! END FOR
_Label_3643:
! WHILE STATEMENT...
	mov	2696,r13		! source line 2696
	mov	"\0\0WH",r10
_Label_3657:
	mov	2696,r13		! source line 2696
	mov	"\0\0SE",r10
!   _temp_3660 = &fcbFreeList
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
!   if result==true then goto _Label_3658 else goto _Label_3659
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3659
	jmp	_Label_3658
_Label_3658:
	mov	2696,r13		! source line 2696
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0SE",r10
!   _temp_3661 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3662 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3661  sizeInBytes=4
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
	jmp	_Label_3657
_Label_3659:
! ASSIGNMENT STATEMENT...
	mov	2699,r13		! source line 2699
	mov	"\0\0AS",r10
	mov	2699,r13		! source line 2699
	mov	"\0\0SE",r10
!   _temp_3663 = &fcbFreeList
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
	mov	2702,r13		! source line 2702
	mov	"\0\0SE",r10
!   _temp_3664 = &fileManagerLock
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
	mov	2705,r13		! source line 2705
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3665 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3665 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3666 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3666 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3667 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3667 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3672 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3671 = *_temp_3672  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3671 < 0 then goto _Label_3670		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3670
	jmp	_Label_3668
_Label_3670:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3673 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3673 ) then goto _Label_3669		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3669
!	jmp	_Label_3668
_Label_3668:
! THEN...
	mov	2709,r13		! source line 2709
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3674 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3674  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2709,r13		! source line 2709
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3669:
! RETURN STATEMENT...
	mov	2711,r13		! source line 2711
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
	.word	_Label_3675
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3676
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3677
	.word	12
	.word	4
	.word	_Label_3678
	.word	-12
	.word	4
	.word	_Label_3679
	.word	-16
	.word	4
	.word	_Label_3680
	.word	-20
	.word	4
	.word	_Label_3681
	.word	-24
	.word	4
	.word	_Label_3682
	.word	-28
	.word	4
	.word	_Label_3683
	.word	-32
	.word	4
	.word	_Label_3684
	.word	-36
	.word	4
	.word	_Label_3685
	.word	-40
	.word	4
	.word	_Label_3686
	.word	-44
	.word	4
	.word	_Label_3687
	.word	-48
	.word	4
	.word	_Label_3688
	.word	-52
	.word	4
	.word	_Label_3689
	.word	-56
	.word	4
	.word	_Label_3690
	.word	-60
	.word	4
	.word	_Label_3691
	.word	-64
	.word	4
	.word	_Label_3692
	.word	-68
	.word	4
	.word	_Label_3693
	.word	-72
	.word	4
	.word	_Label_3694
	.word	-76
	.word	4
	.word	_Label_3695
	.word	-80
	.word	4
	.word	_Label_3696
	.word	-84
	.word	4
	.word	_Label_3697
	.word	-88
	.word	4
	.word	_Label_3698
	.word	-92
	.word	4
	.word	_Label_3699
	.word	-96
	.word	4
	.word	_Label_3700
	.word	-100
	.word	4
	.word	_Label_3701
	.word	-104
	.word	4
	.word	_Label_3702
	.word	-108
	.word	4
	.word	_Label_3703
	.word	-112
	.word	4
	.word	_Label_3704
	.word	-116
	.word	4
	.word	_Label_3705
	.word	-120
	.word	4
	.word	_Label_3706
	.word	-124
	.word	4
	.word	_Label_3707
	.word	-128
	.word	4
	.word	_Label_3708
	.word	-132
	.word	4
	.word	_Label_3709
	.word	-136
	.word	4
	.word	_Label_3710
	.word	-140
	.word	4
	.word	_Label_3711
	.word	-144
	.word	4
	.word	_Label_3712
	.word	-148
	.word	4
	.word	_Label_3713
	.word	-152
	.word	4
	.word	_Label_3714
	.word	-156
	.word	4
	.word	_Label_3715
	.word	-160
	.word	4
	.word	0
_Label_3675:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3676:
	.ascii	"Pself\0"
	.align
_Label_3677:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3678:
	.byte	'?'
	.ascii	"_temp_3674\0"
	.align
_Label_3679:
	.byte	'?'
	.ascii	"_temp_3673\0"
	.align
_Label_3680:
	.byte	'?'
	.ascii	"_temp_3672\0"
	.align
_Label_3681:
	.byte	'?'
	.ascii	"_temp_3671\0"
	.align
_Label_3682:
	.byte	'?'
	.ascii	"_temp_3667\0"
	.align
_Label_3683:
	.byte	'?'
	.ascii	"_temp_3666\0"
	.align
_Label_3684:
	.byte	'?'
	.ascii	"_temp_3665\0"
	.align
_Label_3685:
	.byte	'?'
	.ascii	"_temp_3664\0"
	.align
_Label_3686:
	.byte	'?'
	.ascii	"_temp_3663\0"
	.align
_Label_3687:
	.byte	'?'
	.ascii	"_temp_3662\0"
	.align
_Label_3688:
	.byte	'?'
	.ascii	"_temp_3661\0"
	.align
_Label_3689:
	.byte	'?'
	.ascii	"_temp_3660\0"
	.align
_Label_3690:
	.byte	'?'
	.ascii	"_temp_3656\0"
	.align
_Label_3691:
	.byte	'?'
	.ascii	"_temp_3655\0"
	.align
_Label_3692:
	.byte	'?'
	.ascii	"_temp_3654\0"
	.align
_Label_3693:
	.byte	'?'
	.ascii	"_temp_3653\0"
	.align
_Label_3694:
	.byte	'?'
	.ascii	"_temp_3652\0"
	.align
_Label_3695:
	.byte	'?'
	.ascii	"_temp_3651\0"
	.align
_Label_3696:
	.byte	'?'
	.ascii	"_temp_3650\0"
	.align
_Label_3697:
	.byte	'?'
	.ascii	"_temp_3647\0"
	.align
_Label_3698:
	.byte	'?'
	.ascii	"_temp_3646\0"
	.align
_Label_3699:
	.byte	'?'
	.ascii	"_temp_3645\0"
	.align
_Label_3700:
	.byte	'?'
	.ascii	"_temp_3644\0"
	.align
_Label_3701:
	.byte	'?'
	.ascii	"_temp_3639\0"
	.align
_Label_3702:
	.byte	'?'
	.ascii	"_temp_3636\0"
	.align
_Label_3703:
	.byte	'?'
	.ascii	"_temp_3635\0"
	.align
_Label_3704:
	.byte	'?'
	.ascii	"_temp_3634\0"
	.align
_Label_3705:
	.byte	'?'
	.ascii	"_temp_3630\0"
	.align
_Label_3706:
	.byte	'?'
	.ascii	"_temp_3629\0"
	.align
_Label_3707:
	.byte	'?'
	.ascii	"_temp_3628\0"
	.align
_Label_3708:
	.byte	'?'
	.ascii	"_temp_3624\0"
	.align
_Label_3709:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3710:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3711:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3712:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3713:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3714:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3715:
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
_Label_4504:
	push	r0
	sub	r1,1,r1
	bne	_Label_4504
	mov	2724,r13		! source line 2724
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0IF",r10
!   _temp_3718 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3718 then goto _Label_3717		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3717
!	jmp	_Label_3716
_Label_3716:
! THEN...
	mov	2727,r13		! source line 2727
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3717:
! SEND STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0SE",r10
!   _temp_3719 = &fileManagerLock
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
	mov	2730,r13		! source line 2730
	mov	"\0\0SE",r10
!   _temp_3720 = &_P_Kernel_fileManager
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
	mov	2731,r13		! source line 2731
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3721 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3721  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3722 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3725 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3724 = *_temp_3725  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3723 = _temp_3724 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3722 = _temp_3723  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2733,r13		! source line 2733
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3729 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3728 = *_temp_3729  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3728 > 0 then goto _Label_3727		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3727
!	jmp	_Label_3726
_Label_3726:
! THEN...
	mov	2734,r13		! source line 2734
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2734,r13		! source line 2734
	mov	"\0\0SE",r10
!   _temp_3730 = &openFileFreeList
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
	mov	2735,r13		! source line 2735
	mov	"\0\0SE",r10
!   _temp_3731 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3732 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3731  sizeInBytes=4
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
	mov	2736,r13		! source line 2736
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3733 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3736 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3735 = *_temp_3736  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3734 = _temp_3735 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3733 = _temp_3734  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3740 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3739 = *_temp_3740  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3739 > 0 then goto _Label_3738		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3738
!	jmp	_Label_3737
_Label_3737:
! THEN...
	mov	2738,r13		! source line 2738
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2738,r13		! source line 2738
	mov	"\0\0SE",r10
!   _temp_3741 = &fcbFreeList
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
	mov	2739,r13		! source line 2739
	mov	"\0\0SE",r10
!   _temp_3742 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3743 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3742  sizeInBytes=4
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
_Label_3738:
! END IF...
_Label_3727:
! SEND STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0SE",r10
!   _temp_3744 = &fileManagerLock
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
	mov	2742,r13		! source line 2742
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
	.word	_Label_3745
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3746
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3747
	.word	12
	.word	4
	.word	_Label_3748
	.word	-12
	.word	4
	.word	_Label_3749
	.word	-16
	.word	4
	.word	_Label_3750
	.word	-20
	.word	4
	.word	_Label_3751
	.word	-24
	.word	4
	.word	_Label_3752
	.word	-28
	.word	4
	.word	_Label_3753
	.word	-32
	.word	4
	.word	_Label_3754
	.word	-36
	.word	4
	.word	_Label_3755
	.word	-40
	.word	4
	.word	_Label_3756
	.word	-44
	.word	4
	.word	_Label_3757
	.word	-48
	.word	4
	.word	_Label_3758
	.word	-52
	.word	4
	.word	_Label_3759
	.word	-56
	.word	4
	.word	_Label_3760
	.word	-60
	.word	4
	.word	_Label_3761
	.word	-64
	.word	4
	.word	_Label_3762
	.word	-68
	.word	4
	.word	_Label_3763
	.word	-72
	.word	4
	.word	_Label_3764
	.word	-76
	.word	4
	.word	_Label_3765
	.word	-80
	.word	4
	.word	_Label_3766
	.word	-84
	.word	4
	.word	_Label_3767
	.word	-88
	.word	4
	.word	_Label_3768
	.word	-92
	.word	4
	.word	_Label_3769
	.word	-96
	.word	4
	.word	_Label_3770
	.word	-100
	.word	4
	.word	_Label_3771
	.word	-104
	.word	4
	.word	0
_Label_3745:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3746:
	.ascii	"Pself\0"
	.align
_Label_3747:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3748:
	.byte	'?'
	.ascii	"_temp_3744\0"
	.align
_Label_3749:
	.byte	'?'
	.ascii	"_temp_3743\0"
	.align
_Label_3750:
	.byte	'?'
	.ascii	"_temp_3742\0"
	.align
_Label_3751:
	.byte	'?'
	.ascii	"_temp_3741\0"
	.align
_Label_3752:
	.byte	'?'
	.ascii	"_temp_3740\0"
	.align
_Label_3753:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
_Label_3754:
	.byte	'?'
	.ascii	"_temp_3736\0"
	.align
_Label_3755:
	.byte	'?'
	.ascii	"_temp_3735\0"
	.align
_Label_3756:
	.byte	'?'
	.ascii	"_temp_3734\0"
	.align
_Label_3757:
	.byte	'?'
	.ascii	"_temp_3733\0"
	.align
_Label_3758:
	.byte	'?'
	.ascii	"_temp_3732\0"
	.align
_Label_3759:
	.byte	'?'
	.ascii	"_temp_3731\0"
	.align
_Label_3760:
	.byte	'?'
	.ascii	"_temp_3730\0"
	.align
_Label_3761:
	.byte	'?'
	.ascii	"_temp_3729\0"
	.align
_Label_3762:
	.byte	'?'
	.ascii	"_temp_3728\0"
	.align
_Label_3763:
	.byte	'?'
	.ascii	"_temp_3725\0"
	.align
_Label_3764:
	.byte	'?'
	.ascii	"_temp_3724\0"
	.align
_Label_3765:
	.byte	'?'
	.ascii	"_temp_3723\0"
	.align
_Label_3766:
	.byte	'?'
	.ascii	"_temp_3722\0"
	.align
_Label_3767:
	.byte	'?'
	.ascii	"_temp_3721\0"
	.align
_Label_3768:
	.byte	'?'
	.ascii	"_temp_3720\0"
	.align
_Label_3769:
	.byte	'?'
	.ascii	"_temp_3719\0"
	.align
_Label_3770:
	.byte	'?'
	.ascii	"_temp_3718\0"
	.align
_Label_3771:
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
_Label_4505:
	push	r0
	sub	r1,1,r1
	bne	_Label_4505
	mov	2747,r13		! source line 2747
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3775 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3774 = *_temp_3775  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3774) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3776 = _temp_3774 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3776 ) then goto _Label_3773		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3773
!	jmp	_Label_3772
_Label_3772:
! THEN...
	mov	2753,r13		! source line 2753
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3781 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3780 = *_temp_3781  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3780) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3782 = _temp_3780 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3779 = *_temp_3782  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3779 >= 0 then goto _Label_3778		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3778
!	jmp	_Label_3777
_Label_3777:
! THEN...
	mov	2754,r13		! source line 2754
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3783 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3783  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2754,r13		! source line 2754
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3778:
! ASSIGNMENT STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3785 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3784 = *_temp_3785  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3784) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3786 = _temp_3784 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3786 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3790 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3789 = *_temp_3790  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3789) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3791 = _temp_3789 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3788 = *_temp_3791  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3794 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3793 = *_temp_3794  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3793) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3795 = _temp_3793 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3792 = *_temp_3795  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3787 = _temp_3788 + _temp_3792		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3798 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3797 = *_temp_3798  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3797) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3799 = _temp_3797 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3796 = *_temp_3799  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3800 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3787  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3796  sizeInBytes=4
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
_Label_3773:
! RETURN STATEMENT...
	mov	2752,r13		! source line 2752
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
	.word	_Label_3801
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3802
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3803
	.word	12
	.word	4
	.word	_Label_3804
	.word	-12
	.word	4
	.word	_Label_3805
	.word	-16
	.word	4
	.word	_Label_3806
	.word	-20
	.word	4
	.word	_Label_3807
	.word	-24
	.word	4
	.word	_Label_3808
	.word	-28
	.word	4
	.word	_Label_3809
	.word	-32
	.word	4
	.word	_Label_3810
	.word	-36
	.word	4
	.word	_Label_3811
	.word	-40
	.word	4
	.word	_Label_3812
	.word	-44
	.word	4
	.word	_Label_3813
	.word	-48
	.word	4
	.word	_Label_3814
	.word	-52
	.word	4
	.word	_Label_3815
	.word	-56
	.word	4
	.word	_Label_3816
	.word	-60
	.word	4
	.word	_Label_3817
	.word	-64
	.word	4
	.word	_Label_3818
	.word	-68
	.word	4
	.word	_Label_3819
	.word	-72
	.word	4
	.word	_Label_3820
	.word	-76
	.word	4
	.word	_Label_3821
	.word	-80
	.word	4
	.word	_Label_3822
	.word	-84
	.word	4
	.word	_Label_3823
	.word	-88
	.word	4
	.word	_Label_3824
	.word	-92
	.word	4
	.word	_Label_3825
	.word	-96
	.word	4
	.word	_Label_3826
	.word	-100
	.word	4
	.word	_Label_3827
	.word	-104
	.word	4
	.word	_Label_3828
	.word	-108
	.word	4
	.word	0
_Label_3801:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3802:
	.ascii	"Pself\0"
	.align
_Label_3803:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3804:
	.byte	'?'
	.ascii	"_temp_3800\0"
	.align
_Label_3805:
	.byte	'?'
	.ascii	"_temp_3799\0"
	.align
_Label_3806:
	.byte	'?'
	.ascii	"_temp_3798\0"
	.align
_Label_3807:
	.byte	'?'
	.ascii	"_temp_3797\0"
	.align
_Label_3808:
	.byte	'?'
	.ascii	"_temp_3796\0"
	.align
_Label_3809:
	.byte	'?'
	.ascii	"_temp_3795\0"
	.align
_Label_3810:
	.byte	'?'
	.ascii	"_temp_3794\0"
	.align
_Label_3811:
	.byte	'?'
	.ascii	"_temp_3793\0"
	.align
_Label_3812:
	.byte	'?'
	.ascii	"_temp_3792\0"
	.align
_Label_3813:
	.byte	'?'
	.ascii	"_temp_3791\0"
	.align
_Label_3814:
	.byte	'?'
	.ascii	"_temp_3790\0"
	.align
_Label_3815:
	.byte	'?'
	.ascii	"_temp_3789\0"
	.align
_Label_3816:
	.byte	'?'
	.ascii	"_temp_3788\0"
	.align
_Label_3817:
	.byte	'?'
	.ascii	"_temp_3787\0"
	.align
_Label_3818:
	.byte	'?'
	.ascii	"_temp_3786\0"
	.align
_Label_3819:
	.byte	'?'
	.ascii	"_temp_3785\0"
	.align
_Label_3820:
	.byte	'?'
	.ascii	"_temp_3784\0"
	.align
_Label_3821:
	.byte	'?'
	.ascii	"_temp_3783\0"
	.align
_Label_3822:
	.byte	'?'
	.ascii	"_temp_3782\0"
	.align
_Label_3823:
	.byte	'?'
	.ascii	"_temp_3781\0"
	.align
_Label_3824:
	.byte	'?'
	.ascii	"_temp_3780\0"
	.align
_Label_3825:
	.byte	'?'
	.ascii	"_temp_3779\0"
	.align
_Label_3826:
	.byte	'?'
	.ascii	"_temp_3776\0"
	.align
_Label_3827:
	.byte	'?'
	.ascii	"_temp_3775\0"
	.align
_Label_3828:
	.byte	'?'
	.ascii	"_temp_3774\0"
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
_Label_4506:
	push	r0
	sub	r1,1,r1
	bne	_Label_4506
	mov	2766,r13		! source line 2766
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0SE",r10
!   _temp_3829 = &fileManagerLock
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
	mov	2782,r13		! source line 2782
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3835		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3835
!   _temp_3834 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3836
_Label_3835:
!   _temp_3834 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3836:
!   if _temp_3834 then goto _Label_3833 else goto _Label_3830
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3830
	jmp	_Label_3833
_Label_3833:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3839 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3838 = *_temp_3839  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3838 == 0 then goto _Label_3840		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3840
!   _temp_3837 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3841
_Label_3840:
!   _temp_3837 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3841:
!   if _temp_3837 then goto _Label_3832 else goto _Label_3830
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3830
	jmp	_Label_3832
_Label_3832:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3844 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3843 = *_temp_3844  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3843) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3845 = _temp_3843 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3842 = *_temp_3845  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3842 >= 0 then goto _Label_3831		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3831
!	jmp	_Label_3830
_Label_3830:
! THEN...
	mov	2783,r13		! source line 2783
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3846 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3846  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2783,r13		! source line 2783
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3831:
! ASSIGNMENT STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3847 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3847  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0WH",r10
_Label_3848:
!   if numBytes <= 0 then goto _Label_3850		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3850
!	jmp	_Label_3849
_Label_3849:
	mov	2786,r13		! source line 2786
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2795,r13		! source line 2795
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
	mov	2796,r13		! source line 2796
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
	mov	2800,r13		! source line 2800
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3854 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3853 = *_temp_3854  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3853 == sector then goto _Label_3852		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3852
!	jmp	_Label_3851
_Label_3851:
! THEN...
	mov	2801,r13		! source line 2801
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3855) then goto _runtimeErrorNullPointer
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
	mov	2803,r13		! source line 2803
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3858 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3857 = *_temp_3858  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3856 = sector + _temp_3857		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3860 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3859 = *_temp_3860  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3861 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3856  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3859  sizeInBytes=4
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
	mov	2806,r13		! source line 2806
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3862 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3862 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3863 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3863 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3852:
! ASSIGNMENT STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3865 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3864 = *_temp_3865  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3864 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0AS",r10
!   _temp_3866 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3866  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2810,r13		! source line 2810
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
	mov	2814,r13		! source line 2814
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3848
_Label_3850:
! SEND STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0SE",r10
!   _temp_3867 = &fileManagerLock
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
	mov	2825,r13		! source line 2825
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
	.word	_Label_3868
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3869
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3870
	.word	12
	.word	4
	.word	_Label_3871
	.word	16
	.word	4
	.word	_Label_3872
	.word	20
	.word	4
	.word	_Label_3873
	.word	24
	.word	4
	.word	_Label_3874
	.word	-16
	.word	4
	.word	_Label_3875
	.word	-20
	.word	4
	.word	_Label_3876
	.word	-24
	.word	4
	.word	_Label_3877
	.word	-28
	.word	4
	.word	_Label_3878
	.word	-32
	.word	4
	.word	_Label_3879
	.word	-36
	.word	4
	.word	_Label_3880
	.word	-40
	.word	4
	.word	_Label_3881
	.word	-44
	.word	4
	.word	_Label_3882
	.word	-48
	.word	4
	.word	_Label_3883
	.word	-52
	.word	4
	.word	_Label_3884
	.word	-56
	.word	4
	.word	_Label_3885
	.word	-60
	.word	4
	.word	_Label_3886
	.word	-64
	.word	4
	.word	_Label_3887
	.word	-68
	.word	4
	.word	_Label_3888
	.word	-72
	.word	4
	.word	_Label_3889
	.word	-76
	.word	4
	.word	_Label_3890
	.word	-80
	.word	4
	.word	_Label_3891
	.word	-84
	.word	4
	.word	_Label_3892
	.word	-88
	.word	4
	.word	_Label_3893
	.word	-92
	.word	4
	.word	_Label_3894
	.word	-96
	.word	4
	.word	_Label_3895
	.word	-100
	.word	4
	.word	_Label_3896
	.word	-104
	.word	4
	.word	_Label_3897
	.word	-9
	.word	1
	.word	_Label_3898
	.word	-10
	.word	1
	.word	_Label_3899
	.word	-108
	.word	4
	.word	_Label_3900
	.word	-112
	.word	4
	.word	_Label_3901
	.word	-116
	.word	4
	.word	_Label_3902
	.word	-120
	.word	4
	.word	_Label_3903
	.word	-124
	.word	4
	.word	_Label_3904
	.word	-128
	.word	4
	.word	0
_Label_3868:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3869:
	.ascii	"Pself\0"
	.align
_Label_3870:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3871:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3872:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3873:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3874:
	.byte	'?'
	.ascii	"_temp_3867\0"
	.align
_Label_3875:
	.byte	'?'
	.ascii	"_temp_3866\0"
	.align
_Label_3876:
	.byte	'?'
	.ascii	"_temp_3865\0"
	.align
_Label_3877:
	.byte	'?'
	.ascii	"_temp_3864\0"
	.align
_Label_3878:
	.byte	'?'
	.ascii	"_temp_3863\0"
	.align
_Label_3879:
	.byte	'?'
	.ascii	"_temp_3862\0"
	.align
_Label_3880:
	.byte	'?'
	.ascii	"_temp_3861\0"
	.align
_Label_3881:
	.byte	'?'
	.ascii	"_temp_3860\0"
	.align
_Label_3882:
	.byte	'?'
	.ascii	"_temp_3859\0"
	.align
_Label_3883:
	.byte	'?'
	.ascii	"_temp_3858\0"
	.align
_Label_3884:
	.byte	'?'
	.ascii	"_temp_3857\0"
	.align
_Label_3885:
	.byte	'?'
	.ascii	"_temp_3856\0"
	.align
_Label_3886:
	.byte	'?'
	.ascii	"_temp_3855\0"
	.align
_Label_3887:
	.byte	'?'
	.ascii	"_temp_3854\0"
	.align
_Label_3888:
	.byte	'?'
	.ascii	"_temp_3853\0"
	.align
_Label_3889:
	.byte	'?'
	.ascii	"_temp_3847\0"
	.align
_Label_3890:
	.byte	'?'
	.ascii	"_temp_3846\0"
	.align
_Label_3891:
	.byte	'?'
	.ascii	"_temp_3845\0"
	.align
_Label_3892:
	.byte	'?'
	.ascii	"_temp_3844\0"
	.align
_Label_3893:
	.byte	'?'
	.ascii	"_temp_3843\0"
	.align
_Label_3894:
	.byte	'?'
	.ascii	"_temp_3842\0"
	.align
_Label_3895:
	.byte	'?'
	.ascii	"_temp_3839\0"
	.align
_Label_3896:
	.byte	'?'
	.ascii	"_temp_3838\0"
	.align
_Label_3897:
	.byte	'C'
	.ascii	"_temp_3837\0"
	.align
_Label_3898:
	.byte	'C'
	.ascii	"_temp_3834\0"
	.align
_Label_3899:
	.byte	'?'
	.ascii	"_temp_3829\0"
	.align
_Label_3900:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3901:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3902:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3903:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3904:
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
_Label_4507:
	push	r0
	sub	r1,1,r1
	bne	_Label_4507
	mov	2830,r13		! source line 2830
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0SE",r10
!   _temp_3905 = &fileManagerLock
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
	mov	2847,r13		! source line 2847
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3911		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3911
!   _temp_3910 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3912
_Label_3911:
!   _temp_3910 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3912:
!   if _temp_3910 then goto _Label_3909 else goto _Label_3906
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3906
	jmp	_Label_3909
_Label_3909:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3915 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3914 = *_temp_3915  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3914 == 0 then goto _Label_3916		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3916
!   _temp_3913 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3917
_Label_3916:
!   _temp_3913 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3917:
!   if _temp_3913 then goto _Label_3908 else goto _Label_3906
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3906
	jmp	_Label_3908
_Label_3908:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3920 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3919 = *_temp_3920  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3919) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3921 = _temp_3919 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3918 = *_temp_3921  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3918 >= 0 then goto _Label_3907		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3907
!	jmp	_Label_3906
_Label_3906:
! THEN...
	mov	2848,r13		! source line 2848
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3922 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3922  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2848,r13		! source line 2848
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3907:
! ASSIGNMENT STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3923 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3923  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0WH",r10
_Label_3924:
!   if numBytes <= 0 then goto _Label_3926		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3926
!	jmp	_Label_3925
_Label_3925:
	mov	2851,r13		! source line 2851
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2860,r13		! source line 2860
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
	mov	2861,r13		! source line 2861
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
	mov	2865,r13		! source line 2865
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3930 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3929 = *_temp_3930  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3929 == sector then goto _Label_3928		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3928
!	jmp	_Label_3927
_Label_3927:
! THEN...
	mov	2867,r13		! source line 2867
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3931) then goto _runtimeErrorNullPointer
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
_Label_3928:
! ASSIGNMENT STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3933 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3932 = *_temp_3933  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3932 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0AS",r10
!   _temp_3934 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3934  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2870,r13		! source line 2870
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2871,r13		! source line 2871
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3938 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3937 = *_temp_3938  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3937 != sector then goto _Label_3936		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3936
!	jmp	_Label_3935
_Label_3935:
	jmp	_Label_3939
_Label_3936:
! ELSE...
	mov	2873,r13		! source line 2873
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3942
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3942
	jmp	_Label_3941
_Label_3942:
!   if bytesToMove != 8192 then goto _Label_3941		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3941
!	jmp	_Label_3940
_Label_3940:
	jmp	_Label_3943
_Label_3941:
! ELSE...
	mov	2877,r13		! source line 2877
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2877,r13		! source line 2877
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3946 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3945 = *_temp_3946  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3944 = sector + _temp_3945		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3948 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3947 = *_temp_3948  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3949 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3944  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3947  sizeInBytes=4
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
_Label_3943:
! END IF...
_Label_3939:
! ASSIGNMENT STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3950 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3950 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3951 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3951 = 1  (sizeInBytes=1)
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
	mov	2886,r13		! source line 2886
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2888,r13		! source line 2888
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2889,r13		! source line 2889
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3924
_Label_3926:
! SEND STATEMENT...
	mov	2896,r13		! source line 2896
	mov	"\0\0SE",r10
!   _temp_3952 = &fileManagerLock
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
	mov	2898,r13		! source line 2898
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
	.word	_Label_3953
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3954
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3955
	.word	12
	.word	4
	.word	_Label_3956
	.word	16
	.word	4
	.word	_Label_3957
	.word	20
	.word	4
	.word	_Label_3958
	.word	24
	.word	4
	.word	_Label_3959
	.word	-16
	.word	4
	.word	_Label_3960
	.word	-20
	.word	4
	.word	_Label_3961
	.word	-24
	.word	4
	.word	_Label_3962
	.word	-28
	.word	4
	.word	_Label_3963
	.word	-32
	.word	4
	.word	_Label_3964
	.word	-36
	.word	4
	.word	_Label_3965
	.word	-40
	.word	4
	.word	_Label_3966
	.word	-44
	.word	4
	.word	_Label_3967
	.word	-48
	.word	4
	.word	_Label_3968
	.word	-52
	.word	4
	.word	_Label_3969
	.word	-56
	.word	4
	.word	_Label_3970
	.word	-60
	.word	4
	.word	_Label_3971
	.word	-64
	.word	4
	.word	_Label_3972
	.word	-68
	.word	4
	.word	_Label_3973
	.word	-72
	.word	4
	.word	_Label_3974
	.word	-76
	.word	4
	.word	_Label_3975
	.word	-80
	.word	4
	.word	_Label_3976
	.word	-84
	.word	4
	.word	_Label_3977
	.word	-88
	.word	4
	.word	_Label_3978
	.word	-92
	.word	4
	.word	_Label_3979
	.word	-96
	.word	4
	.word	_Label_3980
	.word	-100
	.word	4
	.word	_Label_3981
	.word	-104
	.word	4
	.word	_Label_3982
	.word	-108
	.word	4
	.word	_Label_3983
	.word	-112
	.word	4
	.word	_Label_3984
	.word	-9
	.word	1
	.word	_Label_3985
	.word	-10
	.word	1
	.word	_Label_3986
	.word	-116
	.word	4
	.word	_Label_3987
	.word	-120
	.word	4
	.word	_Label_3988
	.word	-124
	.word	4
	.word	_Label_3989
	.word	-128
	.word	4
	.word	_Label_3990
	.word	-132
	.word	4
	.word	_Label_3991
	.word	-136
	.word	4
	.word	0
_Label_3953:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3954:
	.ascii	"Pself\0"
	.align
_Label_3955:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3956:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3957:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3958:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3959:
	.byte	'?'
	.ascii	"_temp_3952\0"
	.align
_Label_3960:
	.byte	'?'
	.ascii	"_temp_3951\0"
	.align
_Label_3961:
	.byte	'?'
	.ascii	"_temp_3950\0"
	.align
_Label_3962:
	.byte	'?'
	.ascii	"_temp_3949\0"
	.align
_Label_3963:
	.byte	'?'
	.ascii	"_temp_3948\0"
	.align
_Label_3964:
	.byte	'?'
	.ascii	"_temp_3947\0"
	.align
_Label_3965:
	.byte	'?'
	.ascii	"_temp_3946\0"
	.align
_Label_3966:
	.byte	'?'
	.ascii	"_temp_3945\0"
	.align
_Label_3967:
	.byte	'?'
	.ascii	"_temp_3944\0"
	.align
_Label_3968:
	.byte	'?'
	.ascii	"_temp_3938\0"
	.align
_Label_3969:
	.byte	'?'
	.ascii	"_temp_3937\0"
	.align
_Label_3970:
	.byte	'?'
	.ascii	"_temp_3934\0"
	.align
_Label_3971:
	.byte	'?'
	.ascii	"_temp_3933\0"
	.align
_Label_3972:
	.byte	'?'
	.ascii	"_temp_3932\0"
	.align
_Label_3973:
	.byte	'?'
	.ascii	"_temp_3931\0"
	.align
_Label_3974:
	.byte	'?'
	.ascii	"_temp_3930\0"
	.align
_Label_3975:
	.byte	'?'
	.ascii	"_temp_3929\0"
	.align
_Label_3976:
	.byte	'?'
	.ascii	"_temp_3923\0"
	.align
_Label_3977:
	.byte	'?'
	.ascii	"_temp_3922\0"
	.align
_Label_3978:
	.byte	'?'
	.ascii	"_temp_3921\0"
	.align
_Label_3979:
	.byte	'?'
	.ascii	"_temp_3920\0"
	.align
_Label_3980:
	.byte	'?'
	.ascii	"_temp_3919\0"
	.align
_Label_3981:
	.byte	'?'
	.ascii	"_temp_3918\0"
	.align
_Label_3982:
	.byte	'?'
	.ascii	"_temp_3915\0"
	.align
_Label_3983:
	.byte	'?'
	.ascii	"_temp_3914\0"
	.align
_Label_3984:
	.byte	'C'
	.ascii	"_temp_3913\0"
	.align
_Label_3985:
	.byte	'C'
	.ascii	"_temp_3910\0"
	.align
_Label_3986:
	.byte	'?'
	.ascii	"_temp_3905\0"
	.align
_Label_3987:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3988:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3989:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3990:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3991:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3992
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3992:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3993
	.word	_sourceFileName
	.word	358		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3993:
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
_Label_4508:
	push	r0
	sub	r1,1,r1
	bne	_Label_4508
	mov	2934,r13		! source line 2934
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2935,r13		! source line 2935
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2936,r13		! source line 2936
	mov	"\0\0AS",r10
	mov	2936,r13		! source line 2936
	mov	"\0\0SE",r10
!   _temp_3994 = &_P_Kernel_frameManager
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
	mov	2937,r13		! source line 2937
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2938,r13		! source line 2938
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2939,r13		! source line 2939
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2939,r13		! source line 2939
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
	.word	_Label_3995
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3996
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3997
	.word	-12
	.word	4
	.word	0
_Label_3995:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3996:
	.ascii	"Pself\0"
	.align
_Label_3997:
	.byte	'?'
	.ascii	"_temp_3994\0"
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
_Label_4509:
	push	r0
	sub	r1,1,r1
	bne	_Label_4509
	mov	2944,r13		! source line 2944
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3998 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3998  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2945,r13		! source line 2945
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2946,r13		! source line 2946
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3999 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3999  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2947,r13		! source line 2947
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2948,r13		! source line 2948
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4000 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_4000  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2949,r13		! source line 2949
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2950,r13		! source line 2950
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4001 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4001  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2951,r13		! source line 2951
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2952,r13		! source line 2952
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4002 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4002  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2953,r13		! source line 2953
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2954,r13		! source line 2954
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_4003 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4003  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2955,r13		! source line 2955
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2956,r13		! source line 2956
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2957,r13		! source line 2957
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2957,r13		! source line 2957
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
	.word	_Label_4004
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_4005
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4006
	.word	-12
	.word	4
	.word	_Label_4007
	.word	-16
	.word	4
	.word	_Label_4008
	.word	-20
	.word	4
	.word	_Label_4009
	.word	-24
	.word	4
	.word	_Label_4010
	.word	-28
	.word	4
	.word	_Label_4011
	.word	-32
	.word	4
	.word	0
_Label_4004:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4005:
	.ascii	"Pself\0"
	.align
_Label_4006:
	.byte	'?'
	.ascii	"_temp_4003\0"
	.align
_Label_4007:
	.byte	'?'
	.ascii	"_temp_4002\0"
	.align
_Label_4008:
	.byte	'?'
	.ascii	"_temp_4001\0"
	.align
_Label_4009:
	.byte	'?'
	.ascii	"_temp_4000\0"
	.align
_Label_4010:
	.byte	'?'
	.ascii	"_temp_3999\0"
	.align
_Label_4011:
	.byte	'?'
	.ascii	"_temp_3998\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_4012
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_4012:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4013
	.word	_sourceFileName
	.word	375		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_4013:
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
_Label_4510:
	push	r0
	sub	r1,1,r1
	bne	_Label_4510
	mov	2968,r13		! source line 2968
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4014 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4014  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2969,r13		! source line 2969
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2970,r13		! source line 2970
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_4015 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4015  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2971,r13		! source line 2971
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_4017		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_4017
!	jmp	_Label_4016
_Label_4016:
! THEN...
	mov	2973,r13		! source line 2973
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2973,r13		! source line 2973
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
	jmp	_Label_4018
_Label_4017:
! ELSE...
	mov	2975,r13		! source line 2975
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_4019 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_4019  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2975,r13		! source line 2975
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_4018:
! RETURN STATEMENT...
	mov	2972,r13		! source line 2972
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
	.word	_Label_4020
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_4021
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4022
	.word	-12
	.word	4
	.word	_Label_4023
	.word	-16
	.word	4
	.word	_Label_4024
	.word	-20
	.word	4
	.word	0
_Label_4020:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_4021:
	.ascii	"Pself\0"
	.align
_Label_4022:
	.byte	'?'
	.ascii	"_temp_4019\0"
	.align
_Label_4023:
	.byte	'?'
	.ascii	"_temp_4015\0"
	.align
_Label_4024:
	.byte	'?'
	.ascii	"_temp_4014\0"
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
_Label_4511:
	push	r0
	sub	r1,1,r1
	bne	_Label_4511
	mov	2981,r13		! source line 2981
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2991,r13		! source line 2991
	mov	"\0\0SE",r10
!   _temp_4025 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_4026 = _temp_4025 + 4
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
	mov	2992,r13		! source line 2992
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2993,r13		! source line 2993
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
	mov	2994,r13		! source line 2994
	mov	"\0\0SE",r10
!   _temp_4027 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_4028 = _temp_4027 + 4
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
	mov	2995,r13		! source line 2995
	mov	"\0\0RE",r10
	mov	2995,r13		! source line 2995
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_4031 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_4030  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_4029  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_4029  (sizeInBytes=1)
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
	.word	_Label_4032
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_4033
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4034
	.word	12
	.word	4
	.word	_Label_4035
	.word	16
	.word	4
	.word	_Label_4036
	.word	-16
	.word	4
	.word	_Label_4037
	.word	-20
	.word	4
	.word	_Label_4038
	.word	-9
	.word	1
	.word	_Label_4039
	.word	-24
	.word	4
	.word	_Label_4040
	.word	-28
	.word	4
	.word	_Label_4041
	.word	-32
	.word	4
	.word	_Label_4042
	.word	-36
	.word	4
	.word	_Label_4043
	.word	-40
	.word	4
	.word	0
_Label_4032:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_4033:
	.ascii	"Pself\0"
	.align
_Label_4034:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_4035:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_4036:
	.byte	'?'
	.ascii	"_temp_4031\0"
	.align
_Label_4037:
	.byte	'?'
	.ascii	"_temp_4030\0"
	.align
_Label_4038:
	.byte	'C'
	.ascii	"_temp_4029\0"
	.align
_Label_4039:
	.byte	'?'
	.ascii	"_temp_4028\0"
	.align
_Label_4040:
	.byte	'?'
	.ascii	"_temp_4027\0"
	.align
_Label_4041:
	.byte	'?'
	.ascii	"_temp_4026\0"
	.align
_Label_4042:
	.byte	'?'
	.ascii	"_temp_4025\0"
	.align
_Label_4043:
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
_Label_4512:
	push	r0
	sub	r1,1,r1
	bne	_Label_4512
	mov	3000,r13		! source line 3000
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0IF",r10
	mov	3005,r13		! source line 3005
	mov	"\0\0SE",r10
!   _temp_4047 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_4048) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_4047  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_4046  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4046 then goto _Label_4045 else goto _Label_4044
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4044
	jmp	_Label_4045
_Label_4044:
! THEN...
	mov	3006,r13		! source line 3006
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4049 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_4049  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3006,r13		! source line 3006
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4045:
! RETURN STATEMENT...
	mov	3008,r13		! source line 3008
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
	.word	_Label_4050
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_4051
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4052
	.word	-16
	.word	4
	.word	_Label_4053
	.word	-20
	.word	4
	.word	_Label_4054
	.word	-24
	.word	4
	.word	_Label_4055
	.word	-9
	.word	1
	.word	_Label_4056
	.word	-28
	.word	4
	.word	0
_Label_4050:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_4051:
	.ascii	"Pself\0"
	.align
_Label_4052:
	.byte	'?'
	.ascii	"_temp_4049\0"
	.align
_Label_4053:
	.byte	'?'
	.ascii	"_temp_4048\0"
	.align
_Label_4054:
	.byte	'?'
	.ascii	"_temp_4047\0"
	.align
_Label_4055:
	.byte	'C'
	.ascii	"_temp_4046\0"
	.align
_Label_4056:
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
_Label_4513:
	push	r0
	sub	r1,1,r1
	bne	_Label_4513
	mov	3013,r13		! source line 3013
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3039,r13		! source line 3039
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4060 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_4059 = *_temp_4060  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_4059) then goto _Label_4058
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_4058
!	jmp	_Label_4057
_Label_4057:
! THEN...
	mov	3040,r13		! source line 3040
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4061 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_4061  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3040,r13		! source line 3040
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_4058:
! IF STATEMENT...
	mov	3044,r13		! source line 3044
	mov	"\0\0IF",r10
	mov	3044,r13		! source line 3044
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_4065) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4064  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_4064 == 1112300152 then goto _Label_4063		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_4063
!	jmp	_Label_4062
_Label_4062:
! THEN...
	mov	3045,r13		! source line 3045
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4066 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_4066  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3045,r13		! source line 3045
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3046,r13		! source line 3046
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4063:
! ASSIGNMENT STATEMENT...
	mov	3050,r13		! source line 3050
	mov	"\0\0AS",r10
	mov	3050,r13		! source line 3050
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_4067) then goto _runtimeErrorNullPointer
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
	mov	3051,r13		! source line 3051
	mov	"\0\0AS",r10
	mov	3051,r13		! source line 3051
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_4068) then goto _runtimeErrorNullPointer
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
	mov	3052,r13		! source line 3052
	mov	"\0\0AS",r10
	mov	3052,r13		! source line 3052
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_4069) then goto _runtimeErrorNullPointer
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
	mov	3053,r13		! source line 3053
	mov	"\0\0AS",r10
	mov	3053,r13		! source line 3053
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_4070) then goto _runtimeErrorNullPointer
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
	mov	3054,r13		! source line 3054
	mov	"\0\0AS",r10
	mov	3054,r13		! source line 3054
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_4071) then goto _runtimeErrorNullPointer
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
	mov	3055,r13		! source line 3055
	mov	"\0\0AS",r10
	mov	3055,r13		! source line 3055
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_4072) then goto _runtimeErrorNullPointer
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
	mov	3058,r13		! source line 3058
	mov	"\0\0IF",r10
!   _temp_4075 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_4075) then goto _Label_4074
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_4074
!	jmp	_Label_4073
_Label_4073:
! THEN...
	mov	3059,r13		! source line 3059
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4076 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_4076  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3059,r13		! source line 3059
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3060,r13		! source line 3060
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4074:
! ASSIGNMENT STATEMENT...
	mov	3062,r13		! source line 3062
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
	mov	3066,r13		! source line 3066
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_4078
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_4078
!	jmp	_Label_4077
_Label_4077:
! THEN...
	mov	3067,r13		! source line 3067
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4079 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_4079  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3067,r13		! source line 3067
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3068,r13		! source line 3068
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4078:
! IF STATEMENT...
	mov	3072,r13		! source line 3072
	mov	"\0\0IF",r10
!   _temp_4082 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_4082) then goto _Label_4081
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_4081
!	jmp	_Label_4080
_Label_4080:
! THEN...
	mov	3073,r13		! source line 3073
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4083 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_4083  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3073,r13		! source line 3073
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3074,r13		! source line 3074
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4081:
! IF STATEMENT...
	mov	3076,r13		! source line 3076
	mov	"\0\0IF",r10
!   _temp_4086 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_4086 then goto _Label_4085		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_4085
!	jmp	_Label_4084
_Label_4084:
! THEN...
	mov	3077,r13		! source line 3077
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4087 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_4087  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3077,r13		! source line 3077
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3078,r13		! source line 3078
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4085:
! ASSIGNMENT STATEMENT...
	mov	3080,r13		! source line 3080
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
	mov	3083,r13		! source line 3083
	mov	"\0\0IF",r10
!   _temp_4090 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_4090) then goto _Label_4089
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_4089
!	jmp	_Label_4088
_Label_4088:
! THEN...
	mov	3084,r13		! source line 3084
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4091 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_4091  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3084,r13		! source line 3084
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3085,r13		! source line 3085
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4089:
! IF STATEMENT...
	mov	3087,r13		! source line 3087
	mov	"\0\0IF",r10
!   _temp_4094 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_4094 then goto _Label_4093		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_4093
!	jmp	_Label_4092
_Label_4092:
! THEN...
	mov	3088,r13		! source line 3088
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4095 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_4095  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3088,r13		! source line 3088
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3089,r13		! source line 3089
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4093:
! ASSIGNMENT STATEMENT...
	mov	3091,r13		! source line 3091
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
	mov	3094,r13		! source line 3094
	mov	"\0\0AS",r10
!   _temp_4098 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_4097 = _temp_4098 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_4096 = _temp_4097 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_4096 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3109,r13		! source line 3109
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_4100		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4100
!	jmp	_Label_4099
_Label_4099:
! THEN...
	mov	3110,r13		! source line 3110
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4101 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_4101  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3110,r13		! source line 3110
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_4102 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_4102  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3111,r13		! source line 3111
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_4103 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_4103  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3112,r13		! source line 3112
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3113,r13		! source line 3113
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4100:
! SEND STATEMENT...
	mov	3115,r13		! source line 3115
	mov	"\0\0SE",r10
!   _temp_4104 = &_P_Kernel_frameManager
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
	mov	3121,r13		! source line 3121
	mov	"\0\0IF",r10
	mov	3121,r13		! source line 3121
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_4108) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4107  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_4107 == 707406378 then goto _Label_4106		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4106
!	jmp	_Label_4105
_Label_4105:
! THEN...
	mov	3122,r13		! source line 3122
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4109 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_4109  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3122,r13		! source line 3122
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3123,r13		! source line 3123
	mov	"\0\0SE",r10
!   _temp_4110 = &_P_Kernel_frameManager
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
	mov	3124,r13		! source line 3124
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4106:
! ASSIGNMENT STATEMENT...
	mov	3128,r13		! source line 3128
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
	mov	3129,r13		! source line 3129
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4115 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4116 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4115  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_4111:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4116 then goto _Label_4114		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4114
_Label_4112:
	mov	3129,r13		! source line 3129
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3130,r13		! source line 3130
	mov	"\0\0AS",r10
	mov	3130,r13		! source line 3130
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
	mov	3133,r13		! source line 3133
	mov	"\0\0IF",r10
	mov	3133,r13		! source line 3133
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_4120) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4119  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_4119 then goto _Label_4118 else goto _Label_4117
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_4117
	jmp	_Label_4118
_Label_4117:
! THEN...
	mov	3134,r13		! source line 3134
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4121 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_4121  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3134,r13		! source line 3134
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3135,r13		! source line 3135
	mov	"\0\0SE",r10
!   _temp_4122 = &_P_Kernel_frameManager
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
	mov	3136,r13		! source line 3136
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4118:
! SEND STATEMENT...
	mov	3138,r13		! source line 3138
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
	mov	3139,r13		! source line 3139
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4113:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4111
! END FOR
_Label_4114:
! IF STATEMENT...
	mov	3143,r13		! source line 3143
	mov	"\0\0IF",r10
	mov	3143,r13		! source line 3143
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_4126) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4125  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_4125 == 707406378 then goto _Label_4124		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4124
!	jmp	_Label_4123
_Label_4123:
! THEN...
	mov	3144,r13		! source line 3144
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4127 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_4127  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3144,r13		! source line 3144
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3145,r13		! source line 3145
	mov	"\0\0SE",r10
!   _temp_4128 = &_P_Kernel_frameManager
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
	mov	3146,r13		! source line 3146
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4124:
! FOR STATEMENT...
	mov	3150,r13		! source line 3150
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_4133 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_4134 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_4133  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_4129:
!   Perform the FOR-LOOP termination test
!   if i > _temp_4134 then goto _Label_4132		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_4132
_Label_4130:
	mov	3150,r13		! source line 3150
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3151,r13		! source line 3151
	mov	"\0\0AS",r10
	mov	3151,r13		! source line 3151
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
	mov	3154,r13		! source line 3154
	mov	"\0\0IF",r10
	mov	3154,r13		! source line 3154
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_4138) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4137  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_4137 then goto _Label_4136 else goto _Label_4135
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_4135
	jmp	_Label_4136
_Label_4135:
! THEN...
	mov	3155,r13		! source line 3155
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4139 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_4139  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3155,r13		! source line 3155
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3156,r13		! source line 3156
	mov	"\0\0SE",r10
!   _temp_4140 = &_P_Kernel_frameManager
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
	mov	3157,r13		! source line 3157
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4136:
! ASSIGNMENT STATEMENT...
	mov	3159,r13		! source line 3159
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_4131:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_4129
! END FOR
_Label_4132:
! IF STATEMENT...
	mov	3163,r13		! source line 3163
	mov	"\0\0IF",r10
	mov	3163,r13		! source line 3163
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_4144) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_4143  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_4143 == 707406378 then goto _Label_4142		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_4142
!	jmp	_Label_4141
_Label_4141:
! THEN...
	mov	3164,r13		! source line 3164
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4145 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_4145  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3164,r13		! source line 3164
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3165,r13		! source line 3165
	mov	"\0\0SE",r10
!   _temp_4146 = &_P_Kernel_frameManager
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
	mov	3166,r13		! source line 3166
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_4142:
! ASSIGNMENT STATEMENT...
	mov	3170,r13		! source line 3170
	mov	"\0\0AS",r10
	mov	3170,r13		! source line 3170
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
	mov	3174,r13		! source line 3174
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3177,r13		! source line 3177
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
	.word	_Label_4147
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_4148
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4149
	.word	12
	.word	4
	.word	_Label_4150
	.word	-16
	.word	4
	.word	_Label_4151
	.word	-20
	.word	4
	.word	_Label_4152
	.word	-24
	.word	4
	.word	_Label_4153
	.word	-28
	.word	4
	.word	_Label_4154
	.word	-32
	.word	4
	.word	_Label_4155
	.word	-36
	.word	4
	.word	_Label_4156
	.word	-40
	.word	4
	.word	_Label_4157
	.word	-9
	.word	1
	.word	_Label_4158
	.word	-44
	.word	4
	.word	_Label_4159
	.word	-48
	.word	4
	.word	_Label_4160
	.word	-52
	.word	4
	.word	_Label_4161
	.word	-56
	.word	4
	.word	_Label_4162
	.word	-60
	.word	4
	.word	_Label_4163
	.word	-64
	.word	4
	.word	_Label_4164
	.word	-68
	.word	4
	.word	_Label_4165
	.word	-72
	.word	4
	.word	_Label_4166
	.word	-76
	.word	4
	.word	_Label_4167
	.word	-10
	.word	1
	.word	_Label_4168
	.word	-80
	.word	4
	.word	_Label_4169
	.word	-84
	.word	4
	.word	_Label_4170
	.word	-88
	.word	4
	.word	_Label_4171
	.word	-92
	.word	4
	.word	_Label_4172
	.word	-96
	.word	4
	.word	_Label_4173
	.word	-100
	.word	4
	.word	_Label_4174
	.word	-104
	.word	4
	.word	_Label_4175
	.word	-108
	.word	4
	.word	_Label_4176
	.word	-112
	.word	4
	.word	_Label_4177
	.word	-116
	.word	4
	.word	_Label_4178
	.word	-120
	.word	4
	.word	_Label_4179
	.word	-124
	.word	4
	.word	_Label_4180
	.word	-128
	.word	4
	.word	_Label_4181
	.word	-132
	.word	4
	.word	_Label_4182
	.word	-136
	.word	4
	.word	_Label_4183
	.word	-140
	.word	4
	.word	_Label_4184
	.word	-144
	.word	4
	.word	_Label_4185
	.word	-148
	.word	4
	.word	_Label_4186
	.word	-152
	.word	4
	.word	_Label_4187
	.word	-156
	.word	4
	.word	_Label_4188
	.word	-160
	.word	4
	.word	_Label_4189
	.word	-164
	.word	4
	.word	_Label_4190
	.word	-168
	.word	4
	.word	_Label_4191
	.word	-172
	.word	4
	.word	_Label_4192
	.word	-176
	.word	4
	.word	_Label_4193
	.word	-180
	.word	4
	.word	_Label_4194
	.word	-184
	.word	4
	.word	_Label_4195
	.word	-188
	.word	4
	.word	_Label_4196
	.word	-192
	.word	4
	.word	_Label_4197
	.word	-196
	.word	4
	.word	_Label_4198
	.word	-200
	.word	4
	.word	_Label_4199
	.word	-204
	.word	4
	.word	_Label_4200
	.word	-208
	.word	4
	.word	_Label_4201
	.word	-212
	.word	4
	.word	_Label_4202
	.word	-216
	.word	4
	.word	_Label_4203
	.word	-220
	.word	4
	.word	_Label_4204
	.word	-224
	.word	4
	.word	_Label_4205
	.word	-228
	.word	4
	.word	_Label_4206
	.word	-232
	.word	4
	.word	_Label_4207
	.word	-236
	.word	4
	.word	_Label_4208
	.word	-240
	.word	4
	.word	_Label_4209
	.word	-244
	.word	4
	.word	_Label_4210
	.word	-248
	.word	4
	.word	_Label_4211
	.word	-252
	.word	4
	.word	_Label_4212
	.word	-256
	.word	4
	.word	_Label_4213
	.word	-260
	.word	4
	.word	_Label_4214
	.word	-264
	.word	4
	.word	_Label_4215
	.word	-268
	.word	4
	.word	0
_Label_4147:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_4148:
	.ascii	"Pself\0"
	.align
_Label_4149:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_4150:
	.byte	'?'
	.ascii	"_temp_4146\0"
	.align
_Label_4151:
	.byte	'?'
	.ascii	"_temp_4145\0"
	.align
_Label_4152:
	.byte	'?'
	.ascii	"_temp_4144\0"
	.align
_Label_4153:
	.byte	'?'
	.ascii	"_temp_4143\0"
	.align
_Label_4154:
	.byte	'?'
	.ascii	"_temp_4140\0"
	.align
_Label_4155:
	.byte	'?'
	.ascii	"_temp_4139\0"
	.align
_Label_4156:
	.byte	'?'
	.ascii	"_temp_4138\0"
	.align
_Label_4157:
	.byte	'C'
	.ascii	"_temp_4137\0"
	.align
_Label_4158:
	.byte	'?'
	.ascii	"_temp_4134\0"
	.align
_Label_4159:
	.byte	'?'
	.ascii	"_temp_4133\0"
	.align
_Label_4160:
	.byte	'?'
	.ascii	"_temp_4128\0"
	.align
_Label_4161:
	.byte	'?'
	.ascii	"_temp_4127\0"
	.align
_Label_4162:
	.byte	'?'
	.ascii	"_temp_4126\0"
	.align
_Label_4163:
	.byte	'?'
	.ascii	"_temp_4125\0"
	.align
_Label_4164:
	.byte	'?'
	.ascii	"_temp_4122\0"
	.align
_Label_4165:
	.byte	'?'
	.ascii	"_temp_4121\0"
	.align
_Label_4166:
	.byte	'?'
	.ascii	"_temp_4120\0"
	.align
_Label_4167:
	.byte	'C'
	.ascii	"_temp_4119\0"
	.align
_Label_4168:
	.byte	'?'
	.ascii	"_temp_4116\0"
	.align
_Label_4169:
	.byte	'?'
	.ascii	"_temp_4115\0"
	.align
_Label_4170:
	.byte	'?'
	.ascii	"_temp_4110\0"
	.align
_Label_4171:
	.byte	'?'
	.ascii	"_temp_4109\0"
	.align
_Label_4172:
	.byte	'?'
	.ascii	"_temp_4108\0"
	.align
_Label_4173:
	.byte	'?'
	.ascii	"_temp_4107\0"
	.align
_Label_4174:
	.byte	'?'
	.ascii	"_temp_4104\0"
	.align
_Label_4175:
	.byte	'?'
	.ascii	"_temp_4103\0"
	.align
_Label_4176:
	.byte	'?'
	.ascii	"_temp_4102\0"
	.align
_Label_4177:
	.byte	'?'
	.ascii	"_temp_4101\0"
	.align
_Label_4178:
	.byte	'?'
	.ascii	"_temp_4098\0"
	.align
_Label_4179:
	.byte	'?'
	.ascii	"_temp_4097\0"
	.align
_Label_4180:
	.byte	'?'
	.ascii	"_temp_4096\0"
	.align
_Label_4181:
	.byte	'?'
	.ascii	"_temp_4095\0"
	.align
_Label_4182:
	.byte	'?'
	.ascii	"_temp_4094\0"
	.align
_Label_4183:
	.byte	'?'
	.ascii	"_temp_4091\0"
	.align
_Label_4184:
	.byte	'?'
	.ascii	"_temp_4090\0"
	.align
_Label_4185:
	.byte	'?'
	.ascii	"_temp_4087\0"
	.align
_Label_4186:
	.byte	'?'
	.ascii	"_temp_4086\0"
	.align
_Label_4187:
	.byte	'?'
	.ascii	"_temp_4083\0"
	.align
_Label_4188:
	.byte	'?'
	.ascii	"_temp_4082\0"
	.align
_Label_4189:
	.byte	'?'
	.ascii	"_temp_4079\0"
	.align
_Label_4190:
	.byte	'?'
	.ascii	"_temp_4076\0"
	.align
_Label_4191:
	.byte	'?'
	.ascii	"_temp_4075\0"
	.align
_Label_4192:
	.byte	'?'
	.ascii	"_temp_4072\0"
	.align
_Label_4193:
	.byte	'?'
	.ascii	"_temp_4071\0"
	.align
_Label_4194:
	.byte	'?'
	.ascii	"_temp_4070\0"
	.align
_Label_4195:
	.byte	'?'
	.ascii	"_temp_4069\0"
	.align
_Label_4196:
	.byte	'?'
	.ascii	"_temp_4068\0"
	.align
_Label_4197:
	.byte	'?'
	.ascii	"_temp_4067\0"
	.align
_Label_4198:
	.byte	'?'
	.ascii	"_temp_4066\0"
	.align
_Label_4199:
	.byte	'?'
	.ascii	"_temp_4065\0"
	.align
_Label_4200:
	.byte	'?'
	.ascii	"_temp_4064\0"
	.align
_Label_4201:
	.byte	'?'
	.ascii	"_temp_4061\0"
	.align
_Label_4202:
	.byte	'?'
	.ascii	"_temp_4060\0"
	.align
_Label_4203:
	.byte	'?'
	.ascii	"_temp_4059\0"
	.align
_Label_4204:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_4205:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_4206:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_4207:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_4208:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_4209:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_4210:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_4211:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_4212:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_4213:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_4214:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_4215:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_4216
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_3	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_2	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_4216:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_4217
	.word	_sourceFileName
	.word	399		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_4217:
	.ascii	"SerialDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_SerialDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_1,r1
	push	r1
	mov	35,r1
_Label_4514:
	push	r0
	sub	r1,1,r1
	bne	_Label_4514
	mov	3185,r13		! source line 3185
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_4218 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_4218  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	3186,r13		! source line 3186
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	3187,r13		! source line 3187
	mov	"\0\0AS",r10
!   serial_status_word_address = 16776960		(4 bytes)
	set	16776960,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	3188,r13		! source line 3188
	mov	"\0\0AS",r10
!   serial_data_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	3190,r13		! source line 3190
	mov	"\0\0AS",r10
!   _temp_4219 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-132]
!   NEW ARRAY Constructor...
!   _temp_4221 = &_temp_4220
	add	r14,-128,r1
	store	r1,[r14+-112]
!   _temp_4221 = _temp_4221 + 4
	load	[r14+-112],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Next value...
	mov	10,r1
	store	r1,[r14+-108]
_Label_4223:
!   Data Move: *_temp_4221 = 63  (sizeInBytes=1)
	mov	63,r1
	load	[r14+-112],r2
	storeb	r1,[r2]
!   _temp_4221 = _temp_4221 + 1
	load	[r14+-112],r1
	add	r1,1,r1
	store	r1,[r14+-112]
!   _temp_4222 = _temp_4222 + -1
	load	[r14+-108],r1
	add	r1,-1,r1
	store	r1,[r14+-108]
!   if intNotZero (_temp_4222) then goto _Label_4223
	load	[r14+-108],r1
	cmp	r1,r0
	bne	_Label_4223
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-128]
!   _temp_4224 = &_temp_4220
	add	r14,-128,r1
	store	r1,[r14+-104]
!   make sure array has size 10
	load	[r14+-132],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4515
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4515:
!   make sure array has size 10
	load	[r14+-104],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4219 = *_temp_4224  (sizeInBytes=16)
	load	[r14+-104],r5
	load	[r14+-132],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3191,r13		! source line 3191
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3192,r13		! source line 3192
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3193,r13		! source line 3193
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3195,r13		! source line 3195
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,12,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! SEND STATEMENT...
	mov	3196,r13		! source line 3196
	mov	"\0\0SE",r10
!   _temp_4226 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-96]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3197,r13		! source line 3197
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: getCharacterAvail = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   getCharacterAvail = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	3198,r13		! source line 3198
	mov	"\0\0SE",r10
!   _temp_4228 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
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
	mov	3200,r13		! source line 3200
	mov	"\0\0AS",r10
!   _temp_4229 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-84]
!   NEW ARRAY Constructor...
!   _temp_4231 = &_temp_4230
	add	r14,-80,r1
	store	r1,[r14+-64]
!   _temp_4231 = _temp_4231 + 4
	load	[r14+-64],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Next value...
	mov	10,r1
	store	r1,[r14+-60]
_Label_4233:
!   Data Move: *_temp_4231 = 63  (sizeInBytes=1)
	mov	63,r1
	load	[r14+-64],r2
	storeb	r1,[r2]
!   _temp_4231 = _temp_4231 + 1
	load	[r14+-64],r1
	add	r1,1,r1
	store	r1,[r14+-64]
!   _temp_4232 = _temp_4232 + -1
	load	[r14+-60],r1
	add	r1,-1,r1
	store	r1,[r14+-60]
!   if intNotZero (_temp_4232) then goto _Label_4233
	load	[r14+-60],r1
	cmp	r1,r0
	bne	_Label_4233
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-80]
!   _temp_4234 = &_temp_4230
	add	r14,-80,r1
	store	r1,[r14+-56]
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4516
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4516:
!   make sure array has size 10
	load	[r14+-56],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_4229 = *_temp_4234  (sizeInBytes=16)
	load	[r14+-56],r5
	load	[r14+-84],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3201,r13		! source line 3201
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3202,r13		! source line 3202
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3203,r13		! source line 3203
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3205,r13		! source line 3205
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: putBufferSem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,104,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   putBufferSem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+104]
! SEND STATEMENT...
	mov	3206,r13		! source line 3206
	mov	"\0\0SE",r10
!   _temp_4236 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3207,r13		! source line 3207
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialNeedsAttention = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,124,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialNeedsAttention = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+124]
! SEND STATEMENT...
	mov	3208,r13		! source line 3208
	mov	"\0\0SE",r10
!   _temp_4238 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
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
	mov	3210,r13		! source line 3210
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialHandlerThread = zeros  (sizeInBytes=4164)
	load	[r14+8],r4
	add	r4,144,r4
	mov	1041,r3
_Label_4517:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4517
!   serialHandlerThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+8],r2
	store	r1,[r2+144]
! SEND STATEMENT...
	mov	3211,r13		! source line 3211
	mov	"\0\0SE",r10
!   _temp_4240 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-32]
!   _temp_4241 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_4240  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3212,r13		! source line 3212
	mov	"\0\0AS",r10
!   _temp_4242 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-24]
!   _temp_4243 = _temp_4242 + 4092
	load	[r14+-24],r1
	add	r1,4092,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_4243 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	3213,r13		! source line 3213
	mov	"\0\0SE",r10
!   _temp_4244 = _function_189_SerialHandlerFunction
	set	_function_189_SerialHandlerFunction,r1
	store	r1,[r14+-16]
!   _temp_4245 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_4244  sizeInBytes=4
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
	mov	3214,r13		! source line 3214
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3214,r13		! source line 3214
	mov	"\0\0RE",r10
	add	r15,144,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_1:
	.word	_sourceFileName
	.word	_Label_4246
	.word	4		! total size of parameters
	.word	140		! frame size = 140
	.word	_Label_4247
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4248
	.word	-12
	.word	4
	.word	_Label_4249
	.word	-16
	.word	4
	.word	_Label_4250
	.word	-20
	.word	4
	.word	_Label_4251
	.word	-24
	.word	4
	.word	_Label_4252
	.word	-28
	.word	4
	.word	_Label_4253
	.word	-32
	.word	4
	.word	_Label_4254
	.word	-36
	.word	4
	.word	_Label_4255
	.word	-40
	.word	4
	.word	_Label_4256
	.word	-44
	.word	4
	.word	_Label_4257
	.word	-48
	.word	4
	.word	_Label_4258
	.word	-52
	.word	4
	.word	_Label_4259
	.word	-56
	.word	4
	.word	_Label_4260
	.word	-60
	.word	4
	.word	_Label_4261
	.word	-64
	.word	4
	.word	_Label_4262
	.word	-80
	.word	16
	.word	_Label_4263
	.word	-84
	.word	4
	.word	_Label_4264
	.word	-88
	.word	4
	.word	_Label_4265
	.word	-92
	.word	4
	.word	_Label_4266
	.word	-96
	.word	4
	.word	_Label_4267
	.word	-100
	.word	4
	.word	_Label_4268
	.word	-104
	.word	4
	.word	_Label_4269
	.word	-108
	.word	4
	.word	_Label_4270
	.word	-112
	.word	4
	.word	_Label_4271
	.word	-128
	.word	16
	.word	_Label_4272
	.word	-132
	.word	4
	.word	_Label_4273
	.word	-136
	.word	4
	.word	0
_Label_4246:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_4247:
	.ascii	"Pself\0"
	.align
_Label_4248:
	.byte	'?'
	.ascii	"_temp_4245\0"
	.align
_Label_4249:
	.byte	'?'
	.ascii	"_temp_4244\0"
	.align
_Label_4250:
	.byte	'?'
	.ascii	"_temp_4243\0"
	.align
_Label_4251:
	.byte	'?'
	.ascii	"_temp_4242\0"
	.align
_Label_4252:
	.byte	'?'
	.ascii	"_temp_4241\0"
	.align
_Label_4253:
	.byte	'?'
	.ascii	"_temp_4240\0"
	.align
_Label_4254:
	.byte	'?'
	.ascii	"_temp_4239\0"
	.align
_Label_4255:
	.byte	'?'
	.ascii	"_temp_4238\0"
	.align
_Label_4256:
	.byte	'?'
	.ascii	"_temp_4237\0"
	.align
_Label_4257:
	.byte	'?'
	.ascii	"_temp_4236\0"
	.align
_Label_4258:
	.byte	'?'
	.ascii	"_temp_4235\0"
	.align
_Label_4259:
	.byte	'?'
	.ascii	"_temp_4234\0"
	.align
_Label_4260:
	.byte	'?'
	.ascii	"_temp_4232\0"
	.align
_Label_4261:
	.byte	'?'
	.ascii	"_temp_4231\0"
	.align
_Label_4262:
	.byte	'?'
	.ascii	"_temp_4230\0"
	.align
_Label_4263:
	.byte	'?'
	.ascii	"_temp_4229\0"
	.align
_Label_4264:
	.byte	'?'
	.ascii	"_temp_4228\0"
	.align
_Label_4265:
	.byte	'?'
	.ascii	"_temp_4227\0"
	.align
_Label_4266:
	.byte	'?'
	.ascii	"_temp_4226\0"
	.align
_Label_4267:
	.byte	'?'
	.ascii	"_temp_4225\0"
	.align
_Label_4268:
	.byte	'?'
	.ascii	"_temp_4224\0"
	.align
_Label_4269:
	.byte	'?'
	.ascii	"_temp_4222\0"
	.align
_Label_4270:
	.byte	'?'
	.ascii	"_temp_4221\0"
	.align
_Label_4271:
	.byte	'?'
	.ascii	"_temp_4220\0"
	.align
_Label_4272:
	.byte	'?'
	.ascii	"_temp_4219\0"
	.align
_Label_4273:
	.byte	'?'
	.ascii	"_temp_4218\0"
	.align
! 
! ===============  METHOD GetChar  ===============
! 
_Method_P_Kernel_SerialDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_2,r1
	push	r1
	mov	10,r1
_Label_4518:
	push	r0
	sub	r1,1,r1
	bne	_Label_4518
	mov	3220,r13		! source line 3220
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3223,r13		! source line 3223
	mov	"\0\0SE",r10
!   _temp_4274 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3224,r13		! source line 3224
	mov	"\0\0WH",r10
_Label_4275:
!   if intIsZero (getBufferSize) then goto _Label_4276
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_4276
	jmp	_Label_4277
_Label_4276:
	mov	3224,r13		! source line 3224
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3225,r13		! source line 3225
	mov	"\0\0SE",r10
!   _temp_4278 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   _temp_4279 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_4278  sizeInBytes=4
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
	jmp	_Label_4275
_Label_4277:
! ASSIGNMENT STATEMENT...
	mov	3228,r13		! source line 3228
	mov	"\0\0AS",r10
!   _temp_4280 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Move address of _temp_4280 [getBufferNextOut ] into _temp_4281
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+56],r2
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
!   Data Move: c = *_temp_4281  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3230,r13		! source line 3230
	mov	"\0\0AS",r10
!   _temp_4282 = getBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   getBufferNextOut = _temp_4282 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3231,r13		! source line 3231
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	3233,r13		! source line 3233
	mov	"\0\0SE",r10
!   _temp_4283 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3234,r13		! source line 3234
	mov	"\0\0RE",r10
!   ReturnResult: c  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_2:
	.word	_sourceFileName
	.word	_Label_4284
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_4285
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4286
	.word	-16
	.word	4
	.word	_Label_4287
	.word	-20
	.word	4
	.word	_Label_4288
	.word	-24
	.word	4
	.word	_Label_4289
	.word	-28
	.word	4
	.word	_Label_4290
	.word	-32
	.word	4
	.word	_Label_4291
	.word	-36
	.word	4
	.word	_Label_4292
	.word	-40
	.word	4
	.word	_Label_4293
	.word	-9
	.word	1
	.word	0
_Label_4284:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_4285:
	.ascii	"Pself\0"
	.align
_Label_4286:
	.byte	'?'
	.ascii	"_temp_4283\0"
	.align
_Label_4287:
	.byte	'?'
	.ascii	"_temp_4282\0"
	.align
_Label_4288:
	.byte	'?'
	.ascii	"_temp_4281\0"
	.align
_Label_4289:
	.byte	'?'
	.ascii	"_temp_4280\0"
	.align
_Label_4290:
	.byte	'?'
	.ascii	"_temp_4279\0"
	.align
_Label_4291:
	.byte	'?'
	.ascii	"_temp_4278\0"
	.align
_Label_4292:
	.byte	'?'
	.ascii	"_temp_4274\0"
	.align
_Label_4293:
	.byte	'C'
	.ascii	"c\0"
	.align
! 
! ===============  METHOD PutChar  ===============
! 
_Method_P_Kernel_SerialDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_3,r1
	push	r1
	mov	8,r1
_Label_4519:
	push	r0
	sub	r1,1,r1
	bne	_Label_4519
	mov	3237,r13		! source line 3237
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3238,r13		! source line 3238
	mov	"\0\0SE",r10
!   _temp_4294 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-36]
!   Send message Down
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3239,r13		! source line 3239
	mov	"\0\0SE",r10
!   _temp_4295 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3240,r13		! source line 3240
	mov	"\0\0AS",r10
!   _temp_4296 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Move address of _temp_4296 [putBufferNextIn ] into _temp_4297
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+96],r2
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
!   Data Move: *_temp_4297 = value  (sizeInBytes=1)
	loadb	[r14+12],r1
	load	[r14+-24],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3241,r13		! source line 3241
	mov	"\0\0AS",r10
!   _temp_4298 = putBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   putBufferNextIn = _temp_4298 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3242,r13		! source line 3242
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! SEND STATEMENT...
	mov	3243,r13		! source line 3243
	mov	"\0\0SE",r10
!   _temp_4299 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	3244,r13		! source line 3244
	mov	"\0\0SE",r10
!   _temp_4300 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
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
	mov	3244,r13		! source line 3244
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_3:
	.word	_sourceFileName
	.word	_Label_4301
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_4302
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4303
	.word	12
	.word	1
	.word	_Label_4304
	.word	-12
	.word	4
	.word	_Label_4305
	.word	-16
	.word	4
	.word	_Label_4306
	.word	-20
	.word	4
	.word	_Label_4307
	.word	-24
	.word	4
	.word	_Label_4308
	.word	-28
	.word	4
	.word	_Label_4309
	.word	-32
	.word	4
	.word	_Label_4310
	.word	-36
	.word	4
	.word	0
_Label_4301:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_4302:
	.ascii	"Pself\0"
	.align
_Label_4303:
	.byte	'C'
	.ascii	"value\0"
	.align
_Label_4304:
	.byte	'?'
	.ascii	"_temp_4300\0"
	.align
_Label_4305:
	.byte	'?'
	.ascii	"_temp_4299\0"
	.align
_Label_4306:
	.byte	'?'
	.ascii	"_temp_4298\0"
	.align
_Label_4307:
	.byte	'?'
	.ascii	"_temp_4297\0"
	.align
_Label_4308:
	.byte	'?'
	.ascii	"_temp_4296\0"
	.align
_Label_4309:
	.byte	'?'
	.ascii	"_temp_4295\0"
	.align
_Label_4310:
	.byte	'?'
	.ascii	"_temp_4294\0"
	.align
! 
! ===============  METHOD SerialHandler  ===============
! 
_Method_P_Kernel_SerialDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_4,r1
	push	r1
	mov	24,r1
_Label_4520:
	push	r0
	sub	r1,1,r1
	bne	_Label_4520
	mov	3247,r13		! source line 3247
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	3251,r13		! source line 3251
	mov	"\0\0WH",r10
_Label_4311:
!	jmp	_Label_4312
_Label_4312:
	mov	3251,r13		! source line 3251
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3252,r13		! source line 3252
	mov	"\0\0SE",r10
!   _temp_4314 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-92]
!   Send message Down
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3253,r13		! source line 3253
	mov	"\0\0AS",r10
!   if intIsZero (serial_status_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: statusReg = *serial_status_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	3255,r13		! source line 3255
	mov	"\0\0IF",r10
!   _temp_4317 = statusReg AND 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-88]
!   if _temp_4317 != 1 then goto _Label_4316		(int)
	load	[r14+-88],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_4316
!	jmp	_Label_4315
_Label_4315:
! THEN...
	mov	3256,r13		! source line 3256
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3256,r13		! source line 3256
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_4318 = *serial_data_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+8],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   inChar = intToChar (_temp_4318)
	load	[r14+-84],r1
	storeb	r1,[r14+-9]
! SEND STATEMENT...
	mov	3257,r13		! source line 3257
	mov	"\0\0SE",r10
!   _temp_4319 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-80]
!   Send message Lock
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3259,r13		! source line 3259
	mov	"\0\0IF",r10
!   if getBufferSize != 10 then goto _Label_4321		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	10,r2
	cmp	r1,r2
	bne	_Label_4321
!	jmp	_Label_4320
_Label_4320:
! THEN...
	mov	3260,r13		! source line 3260
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_4322 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_4322  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	3260,r13		! source line 3260
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inChar  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3261,r13		! source line 3261
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_4323 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_4323  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3262,r13		! source line 3262
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_4324
_Label_4321:
! ELSE...
	mov	3265,r13		! source line 3265
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	3265,r13		! source line 3265
	mov	"\0\0AS",r10
!   _temp_4325 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Move address of _temp_4325 [getBufferNextIn ] into _temp_4326
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+52],r2
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
!   Data Move: *_temp_4326 = inChar  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-64],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3266,r13		! source line 3266
	mov	"\0\0AS",r10
!   _temp_4327 = getBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   getBufferNextIn = _temp_4327 rem 10		(int)
	load	[r14+-60],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3267,r13		! source line 3267
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	3268,r13		! source line 3268
	mov	"\0\0SE",r10
!   _temp_4328 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-56]
!   _temp_4329 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_4328  sizeInBytes=4
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
! END IF...
_Label_4324:
! SEND STATEMENT...
	mov	3270,r13		! source line 3270
	mov	"\0\0SE",r10
!   _temp_4330 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Send message Unlock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4316:
! IF STATEMENT...
	mov	3273,r13		! source line 3273
	mov	"\0\0IF",r10
!   _temp_4333 = statusReg AND 2		(int)
	load	[r14+-96],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-44]
!   if _temp_4333 != 2 then goto _Label_4332		(int)
	load	[r14+-44],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_4332
!	jmp	_Label_4331
_Label_4331:
! THEN...
	mov	3274,r13		! source line 3274
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3274,r13		! source line 3274
	mov	"\0\0SE",r10
!   _temp_4334 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3275,r13		! source line 3275
	mov	"\0\0IF",r10
!   if putBufferSize <= 0 then goto _Label_4336		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_4336
!	jmp	_Label_4335
_Label_4335:
! THEN...
	mov	3276,r13		! source line 3276
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3276,r13		! source line 3276
	mov	"\0\0AS",r10
!   _temp_4337 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Move address of _temp_4337 [putBufferNextOut ] into _temp_4338
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+100],r2
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
!   Data Move: inChar = *_temp_4338  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3277,r13		! source line 3277
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4339 = charToInt (inChar)
	loadb	[r14+-9],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-28]
!   Data Move: *serial_data_word_address = _temp_4339  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3278,r13		! source line 3278
	mov	"\0\0AS",r10
!   _temp_4340 = putBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   putBufferNextOut = _temp_4340 rem 10		(int)
	load	[r14+-24],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3279,r13		! source line 3279
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! SEND STATEMENT...
	mov	3280,r13		! source line 3280
	mov	"\0\0SE",r10
!   _temp_4341 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4336:
! SEND STATEMENT...
	mov	3282,r13		! source line 3282
	mov	"\0\0SE",r10
!   _temp_4342 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4332:
! END WHILE...
	jmp	_Label_4311
_Label_4313:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_4343
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_4344
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4345
	.word	-16
	.word	4
	.word	_Label_4346
	.word	-20
	.word	4
	.word	_Label_4347
	.word	-24
	.word	4
	.word	_Label_4348
	.word	-28
	.word	4
	.word	_Label_4349
	.word	-32
	.word	4
	.word	_Label_4350
	.word	-36
	.word	4
	.word	_Label_4351
	.word	-40
	.word	4
	.word	_Label_4352
	.word	-44
	.word	4
	.word	_Label_4353
	.word	-48
	.word	4
	.word	_Label_4354
	.word	-52
	.word	4
	.word	_Label_4355
	.word	-56
	.word	4
	.word	_Label_4356
	.word	-60
	.word	4
	.word	_Label_4357
	.word	-64
	.word	4
	.word	_Label_4358
	.word	-68
	.word	4
	.word	_Label_4359
	.word	-72
	.word	4
	.word	_Label_4360
	.word	-76
	.word	4
	.word	_Label_4361
	.word	-80
	.word	4
	.word	_Label_4362
	.word	-84
	.word	4
	.word	_Label_4363
	.word	-88
	.word	4
	.word	_Label_4364
	.word	-92
	.word	4
	.word	_Label_4365
	.word	-96
	.word	4
	.word	_Label_4366
	.word	-9
	.word	1
	.word	0
_Label_4343:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_4344:
	.ascii	"Pself\0"
	.align
_Label_4345:
	.byte	'?'
	.ascii	"_temp_4342\0"
	.align
_Label_4346:
	.byte	'?'
	.ascii	"_temp_4341\0"
	.align
_Label_4347:
	.byte	'?'
	.ascii	"_temp_4340\0"
	.align
_Label_4348:
	.byte	'?'
	.ascii	"_temp_4339\0"
	.align
_Label_4349:
	.byte	'?'
	.ascii	"_temp_4338\0"
	.align
_Label_4350:
	.byte	'?'
	.ascii	"_temp_4337\0"
	.align
_Label_4351:
	.byte	'?'
	.ascii	"_temp_4334\0"
	.align
_Label_4352:
	.byte	'?'
	.ascii	"_temp_4333\0"
	.align
_Label_4353:
	.byte	'?'
	.ascii	"_temp_4330\0"
	.align
_Label_4354:
	.byte	'?'
	.ascii	"_temp_4329\0"
	.align
_Label_4355:
	.byte	'?'
	.ascii	"_temp_4328\0"
	.align
_Label_4356:
	.byte	'?'
	.ascii	"_temp_4327\0"
	.align
_Label_4357:
	.byte	'?'
	.ascii	"_temp_4326\0"
	.align
_Label_4358:
	.byte	'?'
	.ascii	"_temp_4325\0"
	.align
_Label_4359:
	.byte	'?'
	.ascii	"_temp_4323\0"
	.align
_Label_4360:
	.byte	'?'
	.ascii	"_temp_4322\0"
	.align
_Label_4361:
	.byte	'?'
	.ascii	"_temp_4319\0"
	.align
_Label_4362:
	.byte	'?'
	.ascii	"_temp_4318\0"
	.align
_Label_4363:
	.byte	'?'
	.ascii	"_temp_4317\0"
	.align
_Label_4364:
	.byte	'?'
	.ascii	"_temp_4314\0"
	.align
_Label_4365:
	.byte	'I'
	.ascii	"statusReg\0"
	.align
_Label_4366:
	.byte	'C'
	.ascii	"inChar\0"
	.align
