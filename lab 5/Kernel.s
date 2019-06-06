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
	.skip	1316
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
_StringConst_204:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_203:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_202:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_201:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_200:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_199:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_198:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_197:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_196:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_195:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_194:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_193:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_192:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_191:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_190:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_189:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_188:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_187:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_186:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_185:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_184:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_183:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_182:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_181:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_180:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_179:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_178:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_177:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_176:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_175:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_174:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_173:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_172:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_171:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_170:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_169:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_168:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_167:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_166:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_165:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_164:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_163:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_162:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_161:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_160:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_159:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_158:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_157:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_156:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_155:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_154:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_153:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_152:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_151:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_150:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_149:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_148:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_147:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_146:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_145:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_143:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_142:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_141:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_140:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_139:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_138:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_137:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_136:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_135:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_134:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_133:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_132:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_131:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_130:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_129:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_128:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_127:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_126:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_125:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_124:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_123:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_122:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_121:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_120:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_119:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_118:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_117:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_116:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_115:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_114:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_113:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_112:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_111:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_110:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_109:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_108:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_107:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_106:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_105:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_104:
	.word	4			! length
	.ascii	"name"
	.align
_StringConst_103:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_102:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_101:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_100:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_99:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_98:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_97:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_96:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_95:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_94:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_93:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_92:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_91:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_90:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_89:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_88:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_87:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_86:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_85:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_84:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_83:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_82:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_81:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_80:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_79:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_78:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_77:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_76:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_75:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_74:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_73:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_72:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_71:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_70:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_69:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_68:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_67:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_66:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_65:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_64:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_63:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_62:
	.word	26			! length
	.ascii	"Handle_Sys_Close invoked!\n"
	.align
_StringConst_61:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_60:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_59:
	.word	25			! length
	.ascii	"Handle_Sys_Seek invoked!\n"
	.align
_StringConst_58:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_57:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_56:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_55:
	.word	26			! length
	.ascii	"Handle_Sys_Write invoked!\n"
	.align
_StringConst_54:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_53:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_52:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_51:
	.word	25			! length
	.ascii	"Handle_Sys_Read invoked!\n"
	.align
_StringConst_50:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_49:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_48:
	.word	25			! length
	.ascii	"Handle_Sys_Open invoked!\n"
	.align
_StringConst_47:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_46:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_45:
	.word	27			! length
	.ascii	"Handle_Sys_Create invoked!\n"
	.align
_StringConst_44:
	.word	12			! length
	.ascii	"processID = "
	.align
_StringConst_43:
	.word	25			! length
	.ascii	"Handle_Sys_Join invoked!\n"
	.align
_StringConst_42:
	.word	25			! length
	.ascii	"Handle_Sys_Fork invoked!\n"
	.align
_StringConst_41:
	.word	26			! length
	.ascii	"Handle_Sys_Yield invoked!\n"
	.align
_StringConst_40:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_39:
	.word	15			! length
	.ascii	"returnStatus = "
	.align
_StringConst_38:
	.word	25			! length
	.ascii	"Handle_Sys_Exit invoked!\n"
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
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_24:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_23:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_22:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_21:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_20:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_19:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_18:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_17:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_16:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_15:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_14:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_13:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_12:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_11:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_10:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_9:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_8:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_7:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_6:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_5:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_4:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_3:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
_StringConst_2:
	.word	12			! length
	.ascii	"TestProgram1"
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
	set	0x82832c48,r4		! myHashVal = -2105332664
	cmp	r3,r4
	be	_Label_213
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
_Label_213:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_214
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_214
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_214
_Label_214:
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
	mov	7,r1
_Label_2940:
	push	r0
	sub	r1,1,r1
	bne	_Label_2940
	mov	6,r13		! source line 6
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	10,r13		! source line 10
	mov	"\0\0AS",r10
	mov	10,r13		! source line 10
	mov	"\0\0SE",r10
!   _temp_215 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=thPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	11,r13		! source line 11
	mov	"\0\0SE",r10
!   _temp_216 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   if intIsZero (thPtr) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_216  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	12,r13		! source line 12
	mov	"\0\0SE",r10
!   _temp_217 = _function_212_StartUserProcess
	set	_function_212_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (thPtr) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_217  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	12,r13		! source line 12
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_218
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_219
	.word	-12
	.word	4
	.word	_Label_220
	.word	-16
	.word	4
	.word	_Label_221
	.word	-20
	.word	4
	.word	_Label_222
	.word	-24
	.word	4
	.word	0
_Label_218:
	.ascii	"InitFirstProcess\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_222:
	.byte	'P'
	.ascii	"thPtr\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_212_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_212_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_2941:
	push	r0
	sub	r1,1,r1
	bne	_Label_2941
	mov	15,r13		! source line 15
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_223 = &_P_Kernel_processManager
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
!   _temp_224 = PCB + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_224 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_225 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_225 = PCB  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
	mov	27,r13		! source line 27
	mov	"\0\0SE",r10
!   _temp_226 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-56]
!   _temp_227 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_226  sizeInBytes=4
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
!   _temp_229 = PCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_228 = _temp_229		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_228  sizeInBytes=4
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
!   _temp_230 = &_P_Kernel_fileManager
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
!   _temp_231 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_231 [999 ] into _temp_232
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
!   initSystemStackTop = _temp_232		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_234 = PCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   _temp_235 = _temp_234 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: _temp_233 = *_temp_235  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   InitUserStackTop = _temp_233 * 8192		(int)
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
!   _temp_236 = PCB + 32
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
!   _temp_237 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_237 = 1  (sizeInBytes=1)
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
_RoutineDescriptor__function_212_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_238
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_239
	.word	8
	.word	4
	.word	_Label_240
	.word	-12
	.word	4
	.word	_Label_241
	.word	-16
	.word	4
	.word	_Label_242
	.word	-20
	.word	4
	.word	_Label_243
	.word	-24
	.word	4
	.word	_Label_244
	.word	-28
	.word	4
	.word	_Label_245
	.word	-32
	.word	4
	.word	_Label_246
	.word	-36
	.word	4
	.word	_Label_247
	.word	-40
	.word	4
	.word	_Label_248
	.word	-44
	.word	4
	.word	_Label_249
	.word	-48
	.word	4
	.word	_Label_250
	.word	-52
	.word	4
	.word	_Label_251
	.word	-56
	.word	4
	.word	_Label_252
	.word	-60
	.word	4
	.word	_Label_253
	.word	-64
	.word	4
	.word	_Label_254
	.word	-68
	.word	4
	.word	_Label_255
	.word	-72
	.word	4
	.word	_Label_256
	.word	-76
	.word	4
	.word	_Label_257
	.word	-80
	.word	4
	.word	_Label_258
	.word	-84
	.word	4
	.word	_Label_259
	.word	-88
	.word	4
	.word	_Label_260
	.word	-92
	.word	4
	.word	0
_Label_238:
	.ascii	"StartUserProcess\0"
	.align
_Label_239:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_255:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_256:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_257:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_258:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_259:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_260:
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
_Label_2942:
	push	r0
	sub	r1,1,r1
	bne	_Label_2942
	mov	47,r13		! source line 47
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	54,r13		! source line 54
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_261 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_261  sizeInBytes=4
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
_Label_2943:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2943
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0SE",r10
!   _temp_265 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-44]
!   _temp_266 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_265  sizeInBytes=4
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
!   _temp_267 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_268 = _temp_267 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_268 = 3  (sizeInBytes=4)
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
_Label_2944:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2944
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0SE",r10
!   _temp_270 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-24]
!   _temp_271 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_270  sizeInBytes=4
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
!   _temp_272 = _function_211_IdleFunction
	set	_function_211_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_273 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_272  sizeInBytes=4
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
	.word	_Label_274
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_275
	.word	-12
	.word	4
	.word	_Label_276
	.word	-16
	.word	4
	.word	_Label_277
	.word	-20
	.word	4
	.word	_Label_278
	.word	-24
	.word	4
	.word	_Label_279
	.word	-28
	.word	4
	.word	_Label_280
	.word	-32
	.word	4
	.word	_Label_281
	.word	-36
	.word	4
	.word	_Label_282
	.word	-40
	.word	4
	.word	_Label_283
	.word	-44
	.word	4
	.word	_Label_284
	.word	-48
	.word	4
	.word	_Label_285
	.word	-52
	.word	4
	.word	_Label_286
	.word	-56
	.word	4
	.word	_Label_287
	.word	-60
	.word	4
	.word	0
_Label_274:
	.ascii	"InitializeScheduler\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_211_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2945:
	push	r0
	sub	r1,1,r1
	bne	_Label_2945
	mov	72,r13		! source line 72
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0WH",r10
_Label_288:
!	jmp	_Label_289
_Label_289:
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
!   _temp_293 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_291 else goto _Label_292
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_292
	jmp	_Label_291
_Label_291:
! THEN...
	mov	85,r13		! source line 85
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	85,r13		! source line 85
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_294
_Label_292:
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
_Label_294:
! END WHILE...
	jmp	_Label_288
_Label_290:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_IdleFunction:
	.word	_sourceFileName
	.word	_Label_295
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_296
	.word	8
	.word	4
	.word	_Label_297
	.word	-12
	.word	4
	.word	_Label_298
	.word	-16
	.word	4
	.word	0
_Label_295:
	.ascii	"IdleFunction\0"
	.align
_Label_296:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_298:
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
_Label_2946:
	push	r0
	sub	r1,1,r1
	bne	_Label_2946
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
!   _temp_301 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_301 ) then goto _Label_300		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_300
!	jmp	_Label_299
_Label_299:
! THEN...
	mov	111,r13		! source line 111
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_303 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_303 [0 ] into _temp_304
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
!   _temp_302 = _temp_304		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_300:
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
!   _temp_305 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_305 = 3  (sizeInBytes=4)
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
_Label_306:
	mov	124,r13		! source line 124
	mov	"\0\0SE",r10
!   _temp_310 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_309  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_309 then goto _Label_308 else goto _Label_307
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_307
	jmp	_Label_308
_Label_307:
	mov	124,r13		! source line 124
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
	mov	125,r13		! source line 125
	mov	"\0\0SE",r10
!   _temp_311 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_312 = &_P_Kernel_threadManager
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
	jmp	_Label_306
_Label_308:
! IF STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_315 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_315 ) then goto _Label_314		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_314
!	jmp	_Label_313
_Label_313:
! THEN...
	mov	130,r13		! source line 130
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_317 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_317 [0 ] into _temp_318
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
!   _temp_316 = _temp_318		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_316  sizeInBytes=4
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
!   _temp_320 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_319 = *_temp_320  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_319) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_321 = _temp_319 + 32
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
_Label_314:
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
	.word	_Label_322
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_323
	.word	8
	.word	4
	.word	_Label_324
	.word	-16
	.word	4
	.word	_Label_325
	.word	-20
	.word	4
	.word	_Label_326
	.word	-24
	.word	4
	.word	_Label_327
	.word	-28
	.word	4
	.word	_Label_328
	.word	-32
	.word	4
	.word	_Label_329
	.word	-36
	.word	4
	.word	_Label_330
	.word	-40
	.word	4
	.word	_Label_331
	.word	-44
	.word	4
	.word	_Label_332
	.word	-48
	.word	4
	.word	_Label_333
	.word	-52
	.word	4
	.word	_Label_334
	.word	-9
	.word	1
	.word	_Label_335
	.word	-56
	.word	4
	.word	_Label_336
	.word	-60
	.word	4
	.word	_Label_337
	.word	-64
	.word	4
	.word	_Label_338
	.word	-68
	.word	4
	.word	_Label_339
	.word	-72
	.word	4
	.word	_Label_340
	.word	-76
	.word	4
	.word	_Label_341
	.word	-80
	.word	4
	.word	0
_Label_322:
	.ascii	"Run\0"
	.align
_Label_323:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_334:
	.byte	'C'
	.ascii	"_temp_309\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_340:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_341:
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
_Label_2947:
	push	r0
	sub	r1,1,r1
	bne	_Label_2947
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
!   _temp_342 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0SE",r10
!   _temp_343 = _function_210_ThreadPrintShort
	set	_function_210_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_344 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_343  sizeInBytes=4
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
	.word	_Label_345
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_346
	.word	-12
	.word	4
	.word	_Label_347
	.word	-16
	.word	4
	.word	_Label_348
	.word	-20
	.word	4
	.word	_Label_349
	.word	-24
	.word	4
	.word	0
_Label_345:
	.ascii	"PrintReadyList\0"
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
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_349:
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
_Label_2948:
	push	r0
	sub	r1,1,r1
	bne	_Label_2948
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
!   _temp_350 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_350  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_352 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_351 = *_temp_352  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
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
!   _temp_353 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
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
	.word	_Label_354
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_355
	.word	-12
	.word	4
	.word	_Label_356
	.word	-16
	.word	4
	.word	_Label_357
	.word	-20
	.word	4
	.word	_Label_358
	.word	-24
	.word	4
	.word	_Label_359
	.word	-28
	.word	4
	.word	_Label_360
	.word	-32
	.word	4
	.word	0
_Label_354:
	.ascii	"ThreadStartMain\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_359:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_360:
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
_Label_2949:
	push	r0
	sub	r1,1,r1
	bne	_Label_2949
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
!   _temp_361 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_362 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
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
	.word	_Label_363
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_364
	.word	-12
	.word	4
	.word	_Label_365
	.word	-16
	.word	4
	.word	_Label_366
	.word	-20
	.word	4
	.word	0
_Label_363:
	.ascii	"ThreadFinish\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_366:
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
_Label_2950:
	push	r0
	sub	r1,1,r1
	bne	_Label_2950
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
!   _temp_367 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_367  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	205,r13		! source line 205
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_369		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_369
!	jmp	_Label_368
_Label_368:
! THEN...
	mov	207,r13		! source line 207
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_370 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
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
!   _temp_372 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_371 = *_temp_372  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	208,r13		! source line 208
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_369:
! CALL STATEMENT...
!   _temp_373 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
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
!   _temp_374 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_375 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
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
	.word	_Label_376
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_377
	.word	8
	.word	4
	.word	_Label_378
	.word	-12
	.word	4
	.word	_Label_379
	.word	-16
	.word	4
	.word	_Label_380
	.word	-20
	.word	4
	.word	_Label_381
	.word	-24
	.word	4
	.word	_Label_382
	.word	-28
	.word	4
	.word	_Label_383
	.word	-32
	.word	4
	.word	_Label_384
	.word	-36
	.word	4
	.word	_Label_385
	.word	-40
	.word	4
	.word	0
_Label_376:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_377:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_385:
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
_Label_2951:
	push	r0
	sub	r1,1,r1
	bne	_Label_2951
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
!   if newStatus != 1 then goto _Label_387		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_387
!	jmp	_Label_386
_Label_386:
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
	jmp	_Label_388
_Label_387:
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
_Label_388:
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
	.word	_Label_389
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_390
	.word	8
	.word	4
	.word	_Label_391
	.word	-12
	.word	4
	.word	0
_Label_389:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_391:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_210_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2952:
	push	r0
	sub	r1,1,r1
	bne	_Label_2952
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
!   if t == 0 then goto _Label_395		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_395
!   _temp_394 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_396
_Label_395:
!   _temp_394 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_396:
!   if _temp_394 then goto _Label_393 else goto _Label_392
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_392
	jmp	_Label_393
_Label_392:
! THEN...
	mov	689,r13		! source line 689
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_397 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
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
_Label_393:
! CALL STATEMENT...
!   _temp_398 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
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
!   _temp_400 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_399 = *_temp_400  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_401 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
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
!   _temp_410 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_409 = *_temp_410  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_404
	cmp	r1,2
	be	_Label_405
	cmp	r1,3
	be	_Label_406
	cmp	r1,4
	be	_Label_407
	cmp	r1,5
	be	_Label_408
	jmp	_Label_402
! CASE 1...
_Label_404:
! CALL STATEMENT...
!   _temp_411 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_411  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0BR",r10
	jmp	_Label_403
! CASE 2...
_Label_405:
! CALL STATEMENT...
!   _temp_412 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0BR",r10
	jmp	_Label_403
! CASE 3...
_Label_406:
! CALL STATEMENT...
!   _temp_413 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0BR",r10
	jmp	_Label_403
! CASE 4...
_Label_407:
! CALL STATEMENT...
!   _temp_414 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0BR",r10
	jmp	_Label_403
! CASE 5...
_Label_408:
! CALL STATEMENT...
!   _temp_415 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0BR",r10
	jmp	_Label_403
! DEFAULT CASE...
_Label_402:
! CALL STATEMENT...
!   _temp_416 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_416  sizeInBytes=4
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
_Label_403:
! CALL STATEMENT...
!   _temp_417 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_418 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_418  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_419 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_419  sizeInBytes=4
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
_RoutineDescriptor__function_210_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_420
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_421
	.word	8
	.word	4
	.word	_Label_422
	.word	-16
	.word	4
	.word	_Label_423
	.word	-20
	.word	4
	.word	_Label_424
	.word	-24
	.word	4
	.word	_Label_425
	.word	-28
	.word	4
	.word	_Label_426
	.word	-32
	.word	4
	.word	_Label_427
	.word	-36
	.word	4
	.word	_Label_428
	.word	-40
	.word	4
	.word	_Label_429
	.word	-44
	.word	4
	.word	_Label_430
	.word	-48
	.word	4
	.word	_Label_431
	.word	-52
	.word	4
	.word	_Label_432
	.word	-56
	.word	4
	.word	_Label_433
	.word	-60
	.word	4
	.word	_Label_434
	.word	-64
	.word	4
	.word	_Label_435
	.word	-68
	.word	4
	.word	_Label_436
	.word	-72
	.word	4
	.word	_Label_437
	.word	-76
	.word	4
	.word	_Label_438
	.word	-9
	.word	1
	.word	_Label_439
	.word	-80
	.word	4
	.word	0
_Label_420:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_421:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_438:
	.byte	'C'
	.ascii	"_temp_394\0"
	.align
_Label_439:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_209_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_209_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2953:
	push	r0
	sub	r1,1,r1
	bne	_Label_2953
	mov	996,r13		! source line 996
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_440 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_440  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1000,r13		! source line 1000
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1001,r13		! source line 1001
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_209_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_441
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_442
	.word	8
	.word	4
	.word	_Label_443
	.word	-12
	.word	4
	.word	0
_Label_441:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_442:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_440\0"
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
	mov	2,r1
_Label_2954:
	push	r0
	sub	r1,1,r1
	bne	_Label_2954
	mov	1006,r13		! source line 1006
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_444 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1012,r13		! source line 1012
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_445
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_446
	.word	8
	.word	4
	.word	_Label_447
	.word	-12
	.word	4
	.word	0
_Label_445:
	.ascii	"ProcessFinish\0"
	.align
_Label_446:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_444\0"
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
_Label_2955:
	push	r0
	sub	r1,1,r1
	bne	_Label_2955
	mov	1485,r13		! source line 1485
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1497,r13		! source line 1497
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
	mov	1498,r13		! source line 1498
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1498,r13		! source line 1498
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
	.word	_Label_448
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_448:
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
_Label_2956:
	push	r0
	sub	r1,1,r1
	bne	_Label_2956
	mov	1503,r13		! source line 1503
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1515,r13		! source line 1515
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0IF",r10
!   _temp_452 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_453 = _temp_452 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_451 = *_temp_453  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_451 == 0 then goto _Label_450		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_450
!	jmp	_Label_449
_Label_449:
! THEN...
	mov	1518,r13		! source line 1518
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0SE",r10
!   _temp_455 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_456 = _temp_455 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_454 = *_temp_456  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_454) then goto _runtimeErrorNullPointer
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
_Label_450:
! RETURN STATEMENT...
	mov	1517,r13		! source line 1517
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
	.word	_Label_457
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_458
	.word	-12
	.word	4
	.word	_Label_459
	.word	-16
	.word	4
	.word	_Label_460
	.word	-20
	.word	4
	.word	_Label_461
	.word	-24
	.word	4
	.word	_Label_462
	.word	-28
	.word	4
	.word	_Label_463
	.word	-32
	.word	4
	.word	0
_Label_457:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_451\0"
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
	mov	1525,r13		! source line 1525
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1534,r13		! source line 1534
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
	.word	_Label_464
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_464:
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
_Label_2957:
	push	r0
	sub	r1,1,r1
	bne	_Label_2957
	mov	1539,r13		! source line 1539
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_465 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_465  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1546,r13		! source line 1546
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1546,r13		! source line 1546
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
	.word	_Label_466
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_467
	.word	-12
	.word	4
	.word	0
_Label_466:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_465\0"
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
_Label_2958:
	push	r0
	sub	r1,1,r1
	bne	_Label_2958
	mov	1551,r13		! source line 1551
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1557,r13		! source line 1557
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_468 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_468  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1558,r13		! source line 1558
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1558,r13		! source line 1558
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
	.word	_Label_469
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_470
	.word	-12
	.word	4
	.word	0
_Label_469:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_468\0"
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
_Label_2959:
	push	r0
	sub	r1,1,r1
	bne	_Label_2959
	mov	1563,r13		! source line 1563
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1569,r13		! source line 1569
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_471 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_471  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1570,r13		! source line 1570
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1570,r13		! source line 1570
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
	.word	_Label_472
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_473
	.word	-12
	.word	4
	.word	0
_Label_472:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_471\0"
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
_Label_2960:
	push	r0
	sub	r1,1,r1
	bne	_Label_2960
	mov	1575,r13		! source line 1575
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_474 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_474  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1582,r13		! source line 1582
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1582,r13		! source line 1582
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
	.word	_Label_475
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_476
	.word	-12
	.word	4
	.word	0
_Label_475:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_474\0"
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
_Label_2961:
	push	r0
	sub	r1,1,r1
	bne	_Label_2961
	mov	1587,r13		! source line 1587
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_477 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_477  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1594,r13		! source line 1594
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1594,r13		! source line 1594
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
	.word	_Label_478
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_479
	.word	-12
	.word	4
	.word	0
_Label_478:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_477\0"
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
_Label_2962:
	push	r0
	sub	r1,1,r1
	bne	_Label_2962
	mov	1599,r13		! source line 1599
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_480 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_480  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1606,r13		! source line 1606
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1606,r13		! source line 1606
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
	.word	_Label_481
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_482
	.word	-12
	.word	4
	.word	0
_Label_481:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_480\0"
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
_Label_2963:
	push	r0
	sub	r1,1,r1
	bne	_Label_2963
	mov	1611,r13		! source line 1611
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_483 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_483  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1618,r13		! source line 1618
	mov	"\0\0CA",r10
	call	_function_208_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1618,r13		! source line 1618
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
	.word	_Label_484
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_485
	.word	-12
	.word	4
	.word	0
_Label_484:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_208_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_208_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_2964:
	push	r0
	sub	r1,1,r1
	bne	_Label_2964
	mov	1623,r13		! source line 1623
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_486 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_486  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1628,r13		! source line 1628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1629,r13		! source line 1629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_487 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1630,r13		! source line 1630
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_491 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_490 = *_temp_491  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_490 == 0 then goto _Label_489		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_489
!	jmp	_Label_488
_Label_488:
! THEN...
	mov	1634,r13		! source line 1634
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1634,r13		! source line 1634
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_493 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_492 = *_temp_493  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_492) then goto _runtimeErrorNullPointer
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
	jmp	_Label_494
_Label_489:
! ELSE...
	mov	1636,r13		! source line 1636
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_495 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_495  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1636,r13		! source line 1636
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_494:
! SEND STATEMENT...
	mov	1638,r13		! source line 1638
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
	mov	1644,r13		! source line 1644
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1644,r13		! source line 1644
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_208_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_496
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_497
	.word	8
	.word	4
	.word	_Label_498
	.word	-12
	.word	4
	.word	_Label_499
	.word	-16
	.word	4
	.word	_Label_500
	.word	-20
	.word	4
	.word	_Label_501
	.word	-24
	.word	4
	.word	_Label_502
	.word	-28
	.word	4
	.word	_Label_503
	.word	-32
	.word	4
	.word	_Label_504
	.word	-36
	.word	4
	.word	0
_Label_496:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_497:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_486\0"
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
_Label_2965:
	push	r0
	sub	r1,1,r1
	bne	_Label_2965
	mov	1649,r13		! source line 1649
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1670,r13		! source line 1670
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_2966
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_505
_Label_2966:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_505
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_505
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_519,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_519:
	jmp	_Label_511	! 1:	
	jmp	_Label_518	! 2:	
	jmp	_Label_508	! 3:	
	jmp	_Label_507	! 4:	
	jmp	_Label_510	! 5:	
	jmp	_Label_509	! 6:	
	jmp	_Label_512	! 7:	
	jmp	_Label_513	! 8:	
	jmp	_Label_514	! 9:	
	jmp	_Label_515	! 10:	
	jmp	_Label_516	! 11:	
	jmp	_Label_517	! 12:	
! CASE 4...
_Label_507:
! RETURN STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0RE",r10
!   Call the function
	mov	1672,r13		! source line 1672
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_520  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_520  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_508:
! CALL STATEMENT...
!   Call the function
	mov	1674,r13		! source line 1674
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1675,r13		! source line 1675
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_509:
! RETURN STATEMENT...
	mov	1677,r13		! source line 1677
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1677,r13		! source line 1677
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_521  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_521  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_510:
! RETURN STATEMENT...
	mov	1679,r13		! source line 1679
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1679,r13		! source line 1679
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_522  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_522  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_511:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1681,r13		! source line 1681
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1682,r13		! source line 1682
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_512:
! RETURN STATEMENT...
	mov	1684,r13		! source line 1684
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1684,r13		! source line 1684
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_523  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_523  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_513:
! RETURN STATEMENT...
	mov	1686,r13		! source line 1686
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1686,r13		! source line 1686
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_524  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_524  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_514:
! RETURN STATEMENT...
	mov	1688,r13		! source line 1688
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
	mov	1688,r13		! source line 1688
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_525  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_525  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_515:
! RETURN STATEMENT...
	mov	1690,r13		! source line 1690
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
	mov	1690,r13		! source line 1690
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_526  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_526  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_516:
! RETURN STATEMENT...
	mov	1692,r13		! source line 1692
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1692,r13		! source line 1692
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_527  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_527  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_517:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_518:
! CALL STATEMENT...
!   Call the function
	mov	1697,r13		! source line 1697
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_505:
! CALL STATEMENT...
!   _temp_528 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_528  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1700,r13		! source line 1700
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1701,r13		! source line 1701
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1702,r13		! source line 1702
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_529 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_529  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1703,r13		! source line 1703
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_506:
! RETURN STATEMENT...
	mov	1705,r13		! source line 1705
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
	.word	_Label_530
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_531
	.word	8
	.word	4
	.word	_Label_532
	.word	12
	.word	4
	.word	_Label_533
	.word	16
	.word	4
	.word	_Label_534
	.word	20
	.word	4
	.word	_Label_535
	.word	24
	.word	4
	.word	_Label_536
	.word	-12
	.word	4
	.word	_Label_537
	.word	-16
	.word	4
	.word	_Label_538
	.word	-20
	.word	4
	.word	_Label_539
	.word	-24
	.word	4
	.word	_Label_540
	.word	-28
	.word	4
	.word	_Label_541
	.word	-32
	.word	4
	.word	_Label_542
	.word	-36
	.word	4
	.word	_Label_543
	.word	-40
	.word	4
	.word	_Label_544
	.word	-44
	.word	4
	.word	_Label_545
	.word	-48
	.word	4
	.word	0
_Label_530:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_531:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_532:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_533:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_534:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_535:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_520\0"
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
	mov	3,r1
_Label_2967:
	push	r0
	sub	r1,1,r1
	bne	_Label_2967
	mov	1710,r13		! source line 1710
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_546 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_546  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1711,r13		! source line 1711
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_547 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_547  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1713,r13		! source line 1713
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1714,r13		! source line 1714
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1715,r13		! source line 1715
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_548
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_549
	.word	8
	.word	4
	.word	_Label_550
	.word	-12
	.word	4
	.word	_Label_551
	.word	-16
	.word	4
	.word	0
_Label_548:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_549:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_546\0"
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
_Label_2968:
	push	r0
	sub	r1,1,r1
	bne	_Label_2968
	mov	1720,r13		! source line 1720
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_552 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_552  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1721,r13		! source line 1721
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1721,r13		! source line 1721
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
	.word	_Label_553
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_554
	.word	-12
	.word	4
	.word	0
_Label_553:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_552\0"
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
	mov	2,r1
_Label_2969:
	push	r0
	sub	r1,1,r1
	bne	_Label_2969
	mov	1726,r13		! source line 1726
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_555 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_555  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1727,r13		! source line 1727
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_556
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_557
	.word	-12
	.word	4
	.word	0
_Label_556:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_555\0"
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
	mov	2,r1
_Label_2970:
	push	r0
	sub	r1,1,r1
	bne	_Label_2970
	mov	1732,r13		! source line 1732
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_558 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_558  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1733,r13		! source line 1733
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1734,r13		! source line 1734
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_559
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_560
	.word	-12
	.word	4
	.word	0
_Label_559:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_558\0"
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
	mov	3,r1
_Label_2971:
	push	r0
	sub	r1,1,r1
	bne	_Label_2971
	mov	1739,r13		! source line 1739
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_561 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_561  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1740,r13		! source line 1740
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_562 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_562  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1741,r13		! source line 1741
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1742,r13		! source line 1742
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1743,r13		! source line 1743
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_563
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_564
	.word	8
	.word	4
	.word	_Label_565
	.word	-12
	.word	4
	.word	_Label_566
	.word	-16
	.word	4
	.word	0
_Label_563:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_564:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_561\0"
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
_Label_2972:
	push	r0
	sub	r1,1,r1
	bne	_Label_2972
	mov	1749,r13		! source line 1749
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_2973:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2973
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1759,r13		! source line 1759
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldVar  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0AS",r10
	mov	1760,r13		! source line 1760
	mov	"\0\0SE",r10
!   _temp_568 = &kernelAddr
	add	r14,-228,r1
	store	r1,[r14+-108]
!   _temp_569 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_571 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_570 = *_temp_571  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_570) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_572 = _temp_570 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_568  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_569  sizeInBytes=4
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
	mov	1764,r13		! source line 1764
	mov	"\0\0IF",r10
!   if oldVar >= 0 then goto _Label_574		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_574
!	jmp	_Label_573
_Label_573:
! THEN...
	mov	1765,r13		! source line 1765
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_574:
! SEND STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0SE",r10
!   _temp_575 = &newAddrSpace
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
	mov	1769,r13		! source line 1769
	mov	"\0\0AS",r10
	mov	1769,r13		! source line 1769
	mov	"\0\0SE",r10
!   _temp_576 = &kernelAddr
	add	r14,-228,r1
	store	r1,[r14+-84]
!   _temp_577 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_576  sizeInBytes=4
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
	mov	1770,r13		! source line 1770
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_578
	load	[r14+-232],r1
	cmp	r1,r0
	be	_Label_578
	jmp	_Label_579
_Label_578:
! THEN...
	mov	1771,r13		! source line 1771
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_579:
! ASSIGNMENT STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0AS",r10
	mov	1774,r13		! source line 1774
	mov	"\0\0SE",r10
!   _temp_580 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_580  sizeInBytes=4
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
	mov	1775,r13		! source line 1775
	mov	"\0\0IF",r10
!   if initUserPC >= 0 then goto _Label_582		(int)
	load	[r14+-236],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_582
!	jmp	_Label_581
_Label_581:
! THEN...
	mov	1776,r13		! source line 1776
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_582:
! SEND STATEMENT...
	mov	1780,r13		! source line 1780
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_585 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_584 = *_temp_585  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_584) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_586 = _temp_584 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_583 = _temp_586		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_587 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_583  sizeInBytes=4
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
	mov	1781,r13		! source line 1781
	mov	"\0\0SE",r10
!   _temp_588 = &_P_Kernel_fileManager
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
	mov	1783,r13		! source line 1783
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_590 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_589 = *_temp_590  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_589) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_591 = _temp_589 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_591 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-40],r4
	mov	23,r3
_Label_2974:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2974
! ASSIGNMENT STATEMENT...
	mov	1784,r13		! source line 1784
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_592 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_592 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1785,r13		! source line 1785
	mov	"\0\0AS",r10
!   _temp_594 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-28]
!   _temp_595 = _temp_594 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_593 = *_temp_595  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   InitUserStackTop = _temp_593 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_596 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_596 [999 ] into _temp_597
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
!   initSystemStackTop = _temp_597		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-240]
! SEND STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0SE",r10
!   _temp_598 = &newAddrSpace
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
	mov	1788,r13		! source line 1788
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1791,r13		! source line 1791
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
	.word	_Label_599
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_600
	.word	8
	.word	4
	.word	_Label_601
	.word	-12
	.word	4
	.word	_Label_602
	.word	-16
	.word	4
	.word	_Label_603
	.word	-20
	.word	4
	.word	_Label_604
	.word	-24
	.word	4
	.word	_Label_605
	.word	-28
	.word	4
	.word	_Label_606
	.word	-32
	.word	4
	.word	_Label_607
	.word	-36
	.word	4
	.word	_Label_608
	.word	-40
	.word	4
	.word	_Label_609
	.word	-44
	.word	4
	.word	_Label_610
	.word	-48
	.word	4
	.word	_Label_611
	.word	-52
	.word	4
	.word	_Label_612
	.word	-56
	.word	4
	.word	_Label_613
	.word	-60
	.word	4
	.word	_Label_614
	.word	-64
	.word	4
	.word	_Label_615
	.word	-68
	.word	4
	.word	_Label_616
	.word	-72
	.word	4
	.word	_Label_617
	.word	-76
	.word	4
	.word	_Label_618
	.word	-80
	.word	4
	.word	_Label_619
	.word	-84
	.word	4
	.word	_Label_620
	.word	-88
	.word	4
	.word	_Label_621
	.word	-92
	.word	4
	.word	_Label_622
	.word	-96
	.word	4
	.word	_Label_623
	.word	-100
	.word	4
	.word	_Label_624
	.word	-104
	.word	4
	.word	_Label_625
	.word	-108
	.word	4
	.word	_Label_626
	.word	-112
	.word	4
	.word	_Label_627
	.word	-204
	.word	92
	.word	_Label_628
	.word	-228
	.word	24
	.word	_Label_629
	.word	-232
	.word	4
	.word	_Label_630
	.word	-236
	.word	4
	.word	_Label_631
	.word	-240
	.word	4
	.word	_Label_632
	.word	-244
	.word	4
	.word	_Label_633
	.word	-248
	.word	4
	.word	0
_Label_599:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_600:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_627:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_628:
	.byte	'A'
	.ascii	"kernelAddr\0"
	.align
_Label_629:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_630:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_631:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_632:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_633:
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
_Label_2975:
	push	r0
	sub	r1,1,r1
	bne	_Label_2975
	mov	1799,r13		! source line 1799
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0AS",r10
	mov	1804,r13		! source line 1804
	mov	"\0\0SE",r10
!   _temp_634 = &kernelAddr
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_635 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_636 = *_temp_637  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_636) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = _temp_636 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_634  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_635  sizeInBytes=4
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
!   _temp_639 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_639  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1806,r13		! source line 1806
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_640 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_640  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1807,r13		! source line 1807
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_641 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_641  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1808,r13		! source line 1808
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1809,r13		! source line 1809
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_642 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_642  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1810,r13		! source line 1810
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_643 = &kernelAddr
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_643  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1811,r13		! source line 1811
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1812,r13		! source line 1812
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1813,r13		! source line 1813
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
	.word	_Label_644
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_645
	.word	8
	.word	4
	.word	_Label_646
	.word	-12
	.word	4
	.word	_Label_647
	.word	-16
	.word	4
	.word	_Label_648
	.word	-20
	.word	4
	.word	_Label_649
	.word	-24
	.word	4
	.word	_Label_650
	.word	-28
	.word	4
	.word	_Label_651
	.word	-32
	.word	4
	.word	_Label_652
	.word	-36
	.word	4
	.word	_Label_653
	.word	-40
	.word	4
	.word	_Label_654
	.word	-44
	.word	4
	.word	_Label_655
	.word	-48
	.word	4
	.word	_Label_656
	.word	-52
	.word	4
	.word	_Label_657
	.word	-76
	.word	24
	.word	0
_Label_644:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_645:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_656:
	.byte	'I'
	.ascii	"oldVar\0"
	.align
_Label_657:
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
	mov	21,r1
_Label_2976:
	push	r0
	sub	r1,1,r1
	bne	_Label_2976
	mov	1818,r13		! source line 1818
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0AS",r10
	mov	1823,r13		! source line 1823
	mov	"\0\0SE",r10
!   _temp_658 = &kernelAddr
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_659 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_661 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_660 = *_temp_661  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_660) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_662 = _temp_660 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_658  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_659  sizeInBytes=4
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
!   _temp_663 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_663  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1824,r13		! source line 1824
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_664 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_664  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1825,r13		! source line 1825
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_665 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_665  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1826,r13		! source line 1826
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_666 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_666  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_667 = &kernelAddr
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_667  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1830,r13		! source line 1830
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1831,r13		! source line 1831
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_668
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_669
	.word	8
	.word	4
	.word	_Label_670
	.word	-12
	.word	4
	.word	_Label_671
	.word	-16
	.word	4
	.word	_Label_672
	.word	-20
	.word	4
	.word	_Label_673
	.word	-24
	.word	4
	.word	_Label_674
	.word	-28
	.word	4
	.word	_Label_675
	.word	-32
	.word	4
	.word	_Label_676
	.word	-36
	.word	4
	.word	_Label_677
	.word	-40
	.word	4
	.word	_Label_678
	.word	-44
	.word	4
	.word	_Label_679
	.word	-48
	.word	4
	.word	_Label_680
	.word	-52
	.word	4
	.word	_Label_681
	.word	-76
	.word	24
	.word	0
_Label_668:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_669:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_680:
	.byte	'I'
	.ascii	"oldVar\0"
	.align
_Label_681:
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
	mov	6,r1
_Label_2977:
	push	r0
	sub	r1,1,r1
	bne	_Label_2977
	mov	1836,r13		! source line 1836
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_682 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_682  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1837,r13		! source line 1837
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_683 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_683  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1838,r13		! source line 1838
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1839,r13		! source line 1839
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1840,r13		! source line 1840
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_684 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_684  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1841,r13		! source line 1841
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_685 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_685  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1842,r13		! source line 1842
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1843,r13		! source line 1843
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_686 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_686  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1844,r13		! source line 1844
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1845,r13		! source line 1845
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1846,r13		! source line 1846
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1847,r13		! source line 1847
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_687
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_688
	.word	8
	.word	4
	.word	_Label_689
	.word	12
	.word	4
	.word	_Label_690
	.word	16
	.word	4
	.word	_Label_691
	.word	-12
	.word	4
	.word	_Label_692
	.word	-16
	.word	4
	.word	_Label_693
	.word	-20
	.word	4
	.word	_Label_694
	.word	-24
	.word	4
	.word	_Label_695
	.word	-28
	.word	4
	.word	0
_Label_687:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_688:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_689:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_690:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_682\0"
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
	mov	6,r1
_Label_2978:
	push	r0
	sub	r1,1,r1
	bne	_Label_2978
	mov	1852,r13		! source line 1852
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_696 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_696  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1853,r13		! source line 1853
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_697 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_697  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1854,r13		! source line 1854
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1855,r13		! source line 1855
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1856,r13		! source line 1856
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_698 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_698  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1857,r13		! source line 1857
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_699 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1858,r13		! source line 1858
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1859,r13		! source line 1859
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_700 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1860,r13		! source line 1860
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_701
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_702
	.word	8
	.word	4
	.word	_Label_703
	.word	12
	.word	4
	.word	_Label_704
	.word	16
	.word	4
	.word	_Label_705
	.word	-12
	.word	4
	.word	_Label_706
	.word	-16
	.word	4
	.word	_Label_707
	.word	-20
	.word	4
	.word	_Label_708
	.word	-24
	.word	4
	.word	_Label_709
	.word	-28
	.word	4
	.word	0
_Label_701:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_702:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_703:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_704:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_696\0"
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
	mov	4,r1
_Label_2979:
	push	r0
	sub	r1,1,r1
	bne	_Label_2979
	mov	1868,r13		! source line 1868
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_710 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1869,r13		! source line 1869
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_711 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1870,r13		! source line 1870
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1871,r13		! source line 1871
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1872,r13		! source line 1872
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_712 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1873,r13		! source line 1873
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1874,r13		! source line 1874
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1875,r13		! source line 1875
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_713
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_714
	.word	8
	.word	4
	.word	_Label_715
	.word	12
	.word	4
	.word	_Label_716
	.word	-12
	.word	4
	.word	_Label_717
	.word	-16
	.word	4
	.word	_Label_718
	.word	-20
	.word	4
	.word	0
_Label_713:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_714:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_715:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_710\0"
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
	mov	3,r1
_Label_2980:
	push	r0
	sub	r1,1,r1
	bne	_Label_2980
	mov	1881,r13		! source line 1881
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_719 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_719  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1882,r13		! source line 1882
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_720 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_720  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1883,r13		! source line 1883
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1884,r13		! source line 1884
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1885,r13		! source line 1885
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_721
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_722
	.word	8
	.word	4
	.word	_Label_723
	.word	-12
	.word	4
	.word	_Label_724
	.word	-16
	.word	4
	.word	0
_Label_721:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_722:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_207_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_207_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_2981:
	push	r0
	sub	r1,1,r1
	bne	_Label_2981
	mov	2479,r13		! source line 2479
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_725 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_725  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0AS",r10
!   _temp_726 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_726) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_728 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_728) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_727 = *_temp_728  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_726 = _temp_727  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0AS",r10
!   _temp_729 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_729) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_731 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_731) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_730 = *_temp_731  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_729 = _temp_730  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0AS",r10
!   _temp_732 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_732) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_734 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_734) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_733 = *_temp_734  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_732 = _temp_733  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_207_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_735
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_736
	.word	8
	.word	4
	.word	_Label_737
	.word	12
	.word	4
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
	.word	-11
	.word	1
	.word	_Label_746
	.word	-36
	.word	4
	.word	_Label_747
	.word	-12
	.word	1
	.word	_Label_748
	.word	-40
	.word	4
	.word	_Label_749
	.word	-44
	.word	4
	.word	0
_Label_735:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_736:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_737:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_739:
	.byte	'C'
	.ascii	"_temp_733\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_742:
	.byte	'C'
	.ascii	"_temp_730\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_745:
	.byte	'C'
	.ascii	"_temp_727\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_747:
	.byte	'C'
	.ascii	"_temp_725\0"
	.align
_Label_748:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_749:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_206_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_printFCB,r1
	push	r1
	mov	3,r1
_Label_2982:
	push	r0
	sub	r1,1,r1
	bne	_Label_2982
	mov	2489,r13		! source line 2489
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_751 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_750 = *_temp_751  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_750  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2490,r13		! source line 2490
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2491,r13		! source line 2491
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2491,r13		! source line 2491
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_206_printFCB:
	.word	_sourceFileName
	.word	_Label_752
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_753
	.word	8
	.word	4
	.word	_Label_754
	.word	-12
	.word	4
	.word	_Label_755
	.word	-16
	.word	4
	.word	0
_Label_752:
	.ascii	"printFCB\0"
	.align
_Label_753:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_205_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_printOpen,r1
	push	r1
	mov	4,r1
_Label_2983:
	push	r0
	sub	r1,1,r1
	bne	_Label_2983
	mov	2494,r13		! source line 2494
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_756 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2495,r13		! source line 2495
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_757 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_757  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2496,r13		! source line 2496
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_758 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_758  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2497,r13		! source line 2497
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2498,r13		! source line 2498
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
	mov	2498,r13		! source line 2498
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_205_printOpen:
	.word	_sourceFileName
	.word	_Label_759
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_760
	.word	8
	.word	4
	.word	_Label_761
	.word	-12
	.word	4
	.word	_Label_762
	.word	-16
	.word	4
	.word	_Label_763
	.word	-20
	.word	4
	.word	0
_Label_759:
	.ascii	"printOpen\0"
	.align
_Label_760:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_764
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_764:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_765
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_765:
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
_Label_2984:
	push	r0
	sub	r1,1,r1
	bne	_Label_2984
	mov	270,r13		! source line 270
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_767		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_767
!	jmp	_Label_766
_Label_766:
! THEN...
	mov	272,r13		! source line 272
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_768 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_768  sizeInBytes=4
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
_Label_767:
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
	.word	_Label_770
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_771
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_772
	.word	12
	.word	4
	.word	_Label_773
	.word	-12
	.word	4
	.word	_Label_774
	.word	-16
	.word	4
	.word	0
_Label_770:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_771:
	.ascii	"Pself\0"
	.align
_Label_772:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_768\0"
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
_Label_2985:
	push	r0
	sub	r1,1,r1
	bne	_Label_2985
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
!   if count != 2147483647 then goto _Label_776		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_776
!	jmp	_Label_775
_Label_775:
! THEN...
	mov	286,r13		! source line 286
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_777 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_777  sizeInBytes=4
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
_Label_776:
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
!   if count > 0 then goto _Label_779		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_779
!	jmp	_Label_778
_Label_778:
! THEN...
	mov	290,r13		! source line 290
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0AS",r10
	mov	290,r13		! source line 290
	mov	"\0\0SE",r10
!   _temp_780 = &waitingThreads
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
!   _temp_781 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_781 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0SE",r10
!   _temp_782 = &_P_Kernel_readyList
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
_Label_779:
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
	.word	_Label_783
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_784
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_785
	.word	-12
	.word	4
	.word	_Label_786
	.word	-16
	.word	4
	.word	_Label_787
	.word	-20
	.word	4
	.word	_Label_788
	.word	-24
	.word	4
	.word	_Label_789
	.word	-28
	.word	4
	.word	_Label_790
	.word	-32
	.word	4
	.word	0
_Label_783:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_784:
	.ascii	"Pself\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_789:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_790:
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
_Label_2986:
	push	r0
	sub	r1,1,r1
	bne	_Label_2986
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
!   if count != -2147483648 then goto _Label_792		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_792
!	jmp	_Label_791
_Label_791:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_793 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_793  sizeInBytes=4
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
_Label_792:
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
!   if count >= 0 then goto _Label_795		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_795
!	jmp	_Label_794
_Label_794:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0SE",r10
!   _temp_796 = &waitingThreads
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
_Label_795:
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
	.word	_Label_797
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_798
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_799
	.word	-12
	.word	4
	.word	_Label_800
	.word	-16
	.word	4
	.word	_Label_801
	.word	-20
	.word	4
	.word	0
_Label_797:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_798:
	.ascii	"Pself\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_801:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_802
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_802:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_803
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_803:
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
_Label_2987:
	push	r0
	sub	r1,1,r1
	bne	_Label_2987
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
	.word	_Label_805
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_806
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_807
	.word	-12
	.word	4
	.word	0
_Label_805:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_806:
	.ascii	"Pself\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_804\0"
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
_Label_2988:
	push	r0
	sub	r1,1,r1
	bne	_Label_2988
	mov	340,r13		! source line 340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_809		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_809
!	jmp	_Label_808
_Label_808:
! THEN...
	mov	344,r13		! source line 344
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_810 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_810  sizeInBytes=4
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
_Label_809:
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
!   if heldBy == 0 then goto _Label_814		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_814
!   _temp_813 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_815
_Label_814:
!   _temp_813 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_815:
!   if _temp_813 then goto _Label_812 else goto _Label_811
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_811
	jmp	_Label_812
_Label_811:
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
	jmp	_Label_816
_Label_812:
! ELSE...
	mov	350,r13		! source line 350
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0SE",r10
!   _temp_817 = &waitingThreads
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
_Label_816:
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
	.word	_Label_818
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_819
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_820
	.word	-16
	.word	4
	.word	_Label_821
	.word	-9
	.word	1
	.word	_Label_822
	.word	-20
	.word	4
	.word	_Label_823
	.word	-24
	.word	4
	.word	0
_Label_818:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_819:
	.ascii	"Pself\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_821:
	.byte	'C'
	.ascii	"_temp_813\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_823:
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
_Label_2989:
	push	r0
	sub	r1,1,r1
	bne	_Label_2989
	mov	358,r13		! source line 358
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_825		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_825
!	jmp	_Label_824
_Label_824:
! THEN...
	mov	363,r13		! source line 363
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_826 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_826  sizeInBytes=4
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
_Label_825:
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
!   _temp_827 = &waitingThreads
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
!   if t == 0 then goto _Label_829		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_829
!	jmp	_Label_828
_Label_828:
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
!   _temp_830 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_830 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0SE",r10
!   _temp_831 = &_P_Kernel_readyList
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
	jmp	_Label_832
_Label_829:
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
_Label_832:
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
	.word	_Label_833
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_834
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_835
	.word	-12
	.word	4
	.word	_Label_836
	.word	-16
	.word	4
	.word	_Label_837
	.word	-20
	.word	4
	.word	_Label_838
	.word	-24
	.word	4
	.word	_Label_839
	.word	-28
	.word	4
	.word	_Label_840
	.word	-32
	.word	4
	.word	0
_Label_833:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_834:
	.ascii	"Pself\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_839:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_840:
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
_Label_2990:
	push	r0
	sub	r1,1,r1
	bne	_Label_2990
	mov	379,r13		! source line 379
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	380,r13		! source line 380
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_843		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_843
!	jmp	_Label_842
_Label_842:
!   _temp_841 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_844
_Label_843:
!   _temp_841 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_844:
!   ReturnResult: _temp_841  (sizeInBytes=1)
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
	.word	_Label_845
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_846
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_847
	.word	-9
	.word	1
	.word	0
_Label_845:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_846:
	.ascii	"Pself\0"
	.align
_Label_847:
	.byte	'C'
	.ascii	"_temp_841\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_848
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_848:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_849
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_849:
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
_Label_2991:
	push	r0
	sub	r1,1,r1
	bne	_Label_2991
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
	.word	_Label_851
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_852
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_853
	.word	-12
	.word	4
	.word	0
_Label_851:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_852:
	.ascii	"Pself\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_850\0"
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
_Label_2992:
	push	r0
	sub	r1,1,r1
	bne	_Label_2992
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
!   Retrieve Result: targetName=_temp_856  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_856 then goto _Label_855 else goto _Label_854
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_854
	jmp	_Label_855
_Label_854:
! THEN...
	mov	430,r13		! source line 430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_857 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_857  sizeInBytes=4
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
_Label_855:
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
!   _temp_858 = &waitingThreads
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
	.word	_Label_859
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_860
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_861
	.word	12
	.word	4
	.word	_Label_862
	.word	-16
	.word	4
	.word	_Label_863
	.word	-20
	.word	4
	.word	_Label_864
	.word	-9
	.word	1
	.word	_Label_865
	.word	-24
	.word	4
	.word	0
_Label_859:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_860:
	.ascii	"Pself\0"
	.align
_Label_861:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_864:
	.byte	'C'
	.ascii	"_temp_856\0"
	.align
_Label_865:
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
_Label_2993:
	push	r0
	sub	r1,1,r1
	bne	_Label_2993
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
!   Retrieve Result: targetName=_temp_868  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_868 then goto _Label_867 else goto _Label_866
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_866
	jmp	_Label_867
_Label_866:
! THEN...
	mov	447,r13		! source line 447
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_869 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_869  sizeInBytes=4
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
_Label_867:
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
!   _temp_870 = &waitingThreads
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
!   if t == 0 then goto _Label_872		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_872
!	jmp	_Label_871
_Label_871:
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
!   _temp_873 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_873 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0SE",r10
!   _temp_874 = &_P_Kernel_readyList
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
_Label_872:
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
	.word	_Label_875
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_876
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_877
	.word	12
	.word	4
	.word	_Label_878
	.word	-16
	.word	4
	.word	_Label_879
	.word	-20
	.word	4
	.word	_Label_880
	.word	-24
	.word	4
	.word	_Label_881
	.word	-28
	.word	4
	.word	_Label_882
	.word	-9
	.word	1
	.word	_Label_883
	.word	-32
	.word	4
	.word	_Label_884
	.word	-36
	.word	4
	.word	0
_Label_875:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_876:
	.ascii	"Pself\0"
	.align
_Label_877:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_882:
	.byte	'C'
	.ascii	"_temp_868\0"
	.align
_Label_883:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_884:
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
_Label_2994:
	push	r0
	sub	r1,1,r1
	bne	_Label_2994
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
!   Retrieve Result: targetName=_temp_887  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_887 then goto _Label_886 else goto _Label_885
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_885
	jmp	_Label_886
_Label_885:
! THEN...
	mov	465,r13		! source line 465
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_888 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_888  sizeInBytes=4
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
_Label_886:
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
_Label_889:
!	jmp	_Label_890
_Label_890:
	mov	468,r13		! source line 468
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0AS",r10
	mov	469,r13		! source line 469
	mov	"\0\0SE",r10
!   _temp_892 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_893
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_893
	jmp	_Label_894
_Label_893:
! THEN...
	mov	471,r13		! source line 471
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0BR",r10
	jmp	_Label_891
! END IF...
_Label_894:
! ASSIGNMENT STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_895 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_895 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0SE",r10
!   _temp_896 = &_P_Kernel_readyList
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
	jmp	_Label_889
_Label_891:
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
	.word	_Label_897
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_898
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_899
	.word	12
	.word	4
	.word	_Label_900
	.word	-16
	.word	4
	.word	_Label_901
	.word	-20
	.word	4
	.word	_Label_902
	.word	-24
	.word	4
	.word	_Label_903
	.word	-28
	.word	4
	.word	_Label_904
	.word	-9
	.word	1
	.word	_Label_905
	.word	-32
	.word	4
	.word	_Label_906
	.word	-36
	.word	4
	.word	0
_Label_897:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_898:
	.ascii	"Pself\0"
	.align
_Label_899:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_904:
	.byte	'C'
	.ascii	"_temp_887\0"
	.align
_Label_905:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_906:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_907
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
_Label_907:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_908
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_908:
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
_Label_2995:
	push	r0
	sub	r1,1,r1
	bne	_Label_2995
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
!   _temp_909 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_909) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_909 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   _temp_910 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_910 [0 ] into _temp_911
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
!   Data Move: *_temp_911 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   _temp_912 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_912 [999 ] into _temp_913
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
!   Data Move: *_temp_913 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   _temp_914 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_914 [999 ] into _temp_915
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
!   stackTop = _temp_915		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   _temp_916 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_918 = &_temp_917
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_918 = _temp_918 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_920:
!   Data Move: *_temp_918 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_918 = _temp_918 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_919 = _temp_919 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_919) then goto _Label_920
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_920
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_921 = &_temp_917
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_2996
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2996:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_916 = *_temp_921  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_2997:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2997
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
!   _temp_922 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_924 = &_temp_923
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_924 = _temp_924 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_926:
!   Data Move: *_temp_924 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_924 = _temp_924 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_925 = _temp_925 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_925) then goto _Label_926
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_926
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_927 = &_temp_923
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_2998
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2998:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_922 = *_temp_927  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_2999:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2999
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
	.word	_Label_928
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_929
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_930
	.word	12
	.word	4
	.word	_Label_931
	.word	-12
	.word	4
	.word	_Label_932
	.word	-16
	.word	4
	.word	_Label_933
	.word	-20
	.word	4
	.word	_Label_934
	.word	-84
	.word	64
	.word	_Label_935
	.word	-88
	.word	4
	.word	_Label_936
	.word	-92
	.word	4
	.word	_Label_937
	.word	-96
	.word	4
	.word	_Label_938
	.word	-100
	.word	4
	.word	_Label_939
	.word	-156
	.word	56
	.word	_Label_940
	.word	-160
	.word	4
	.word	_Label_941
	.word	-164
	.word	4
	.word	_Label_942
	.word	-168
	.word	4
	.word	_Label_943
	.word	-172
	.word	4
	.word	_Label_944
	.word	-176
	.word	4
	.word	_Label_945
	.word	-180
	.word	4
	.word	_Label_946
	.word	-184
	.word	4
	.word	_Label_947
	.word	-188
	.word	4
	.word	0
_Label_928:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_929:
	.ascii	"Pself\0"
	.align
_Label_930:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_909\0"
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
_Label_3000:
	push	r0
	sub	r1,1,r1
	bne	_Label_3000
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
!   _temp_948 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_948  (sizeInBytes=4)
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
!   _temp_950 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_949  sizeInBytes=4
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
	.word	_Label_951
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_952
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_953
	.word	12
	.word	4
	.word	_Label_954
	.word	16
	.word	4
	.word	_Label_955
	.word	-12
	.word	4
	.word	_Label_956
	.word	-16
	.word	4
	.word	_Label_957
	.word	-20
	.word	4
	.word	_Label_958
	.word	-24
	.word	4
	.word	_Label_959
	.word	-28
	.word	4
	.word	0
_Label_951:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_952:
	.ascii	"Pself\0"
	.align
_Label_953:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_954:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_958:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_959:
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
_Label_3001:
	push	r0
	sub	r1,1,r1
	bne	_Label_3001
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_962 == _P_Kernel_currentThread then goto _Label_961		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_961
!	jmp	_Label_960
_Label_960:
! THEN...
	mov	547,r13		! source line 547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_963 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_963  sizeInBytes=4
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
_Label_961:
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
!   _temp_964 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_966		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_966
!	jmp	_Label_965
_Label_965:
! THEN...
	mov	558,r13		! source line 558
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_968		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_968
!	jmp	_Label_967
_Label_967:
! THEN...
	mov	559,r13		! source line 559
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_969 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_969  sizeInBytes=4
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
_Label_968:
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
!   _temp_971 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_970  sizeInBytes=4
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
_Label_966:
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
	.word	_Label_972
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_973
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_974
	.word	-12
	.word	4
	.word	_Label_975
	.word	-16
	.word	4
	.word	_Label_976
	.word	-20
	.word	4
	.word	_Label_977
	.word	-24
	.word	4
	.word	_Label_978
	.word	-28
	.word	4
	.word	_Label_979
	.word	-32
	.word	4
	.word	_Label_980
	.word	-36
	.word	4
	.word	_Label_981
	.word	-40
	.word	4
	.word	_Label_982
	.word	-44
	.word	4
	.word	0
_Label_972:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_973:
	.ascii	"Pself\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_980:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_981:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_982:
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
_Label_3002:
	push	r0
	sub	r1,1,r1
	bne	_Label_3002
	mov	570,r13		! source line 570
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	582,r13		! source line 582
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_984		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_984
!	jmp	_Label_983
_Label_983:
! THEN...
	mov	583,r13		! source line 583
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_985 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_985  sizeInBytes=4
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
_Label_984:
! IF STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_988 == _P_Kernel_currentThread then goto _Label_987		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_987
!	jmp	_Label_986
_Label_986:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_989 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_989  sizeInBytes=4
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
_Label_987:
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
!   _temp_990 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_991
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_991
	jmp	_Label_992
_Label_991:
! THEN...
	mov	595,r13		! source line 595
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_993 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_993  sizeInBytes=4
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
_Label_992:
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
	.word	_Label_994
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_995
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_996
	.word	-12
	.word	4
	.word	_Label_997
	.word	-16
	.word	4
	.word	_Label_998
	.word	-20
	.word	4
	.word	_Label_999
	.word	-24
	.word	4
	.word	_Label_1000
	.word	-28
	.word	4
	.word	_Label_1001
	.word	-32
	.word	4
	.word	0
_Label_994:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_995:
	.ascii	"Pself\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1001:
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
_Label_3003:
	push	r0
	sub	r1,1,r1
	bne	_Label_3003
	mov	602,r13		! source line 602
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0IF",r10
!   _temp_1005 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1005 [0 ] into _temp_1006
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
!   Data Move: _temp_1004 = *_temp_1006  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1004 == 606348324 then goto _Label_1003		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1003
!	jmp	_Label_1002
_Label_1002:
! THEN...
	mov	609,r13		! source line 609
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1007 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1007  sizeInBytes=4
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
	jmp	_Label_1008
_Label_1003:
! ELSE...
	mov	610,r13		! source line 610
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0IF",r10
!   _temp_1012 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1012 [999 ] into _temp_1013
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
!   Data Move: _temp_1011 = *_temp_1013  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1011 == 606348324 then goto _Label_1010		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1010
!	jmp	_Label_1009
_Label_1009:
! THEN...
	mov	611,r13		! source line 611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1014 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1014  sizeInBytes=4
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
_Label_1010:
! END IF...
_Label_1008:
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
	.word	_Label_1015
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1016
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1017
	.word	-12
	.word	4
	.word	_Label_1018
	.word	-16
	.word	4
	.word	_Label_1019
	.word	-20
	.word	4
	.word	_Label_1020
	.word	-24
	.word	4
	.word	_Label_1021
	.word	-28
	.word	4
	.word	_Label_1022
	.word	-32
	.word	4
	.word	_Label_1023
	.word	-36
	.word	4
	.word	_Label_1024
	.word	-40
	.word	4
	.word	0
_Label_1015:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1016:
	.ascii	"Pself\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_1004\0"
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
_Label_3004:
	push	r0
	sub	r1,1,r1
	bne	_Label_3004
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
!   _temp_1025 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1025  sizeInBytes=4
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
!   _temp_1026 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1028 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1028  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1029 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1029  sizeInBytes=4
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
!   _temp_1034 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1035 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1034  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1030:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1035 then goto _Label_1033		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1033
_Label_1031:
	mov	630,r13		! source line 630
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1036 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1037 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1037  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1038 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1038  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1040 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1040 [i ] into _temp_1041
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
!   Data Move: _temp_1039 = *_temp_1041  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1039  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1042 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1042  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1044 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1044 [i ] into _temp_1045
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
!   Data Move: _temp_1043 = *_temp_1045  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1043  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1046 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1046  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1032:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1030
! END FOR
_Label_1033:
! CALL STATEMENT...
!   _temp_1047 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-116]
!   _temp_1048 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1047  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1048  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1049 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-108]
!   _temp_1051 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1051 [0 ] into _temp_1052
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
!   _temp_1050 = _temp_1052		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1049  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1050  sizeInBytes=4
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
	be	_Label_1055
	cmp	r1,2
	be	_Label_1056
	cmp	r1,3
	be	_Label_1057
	cmp	r1,4
	be	_Label_1058
	cmp	r1,5
	be	_Label_1059
	jmp	_Label_1053
! CASE 1...
_Label_1055:
! CALL STATEMENT...
!   _temp_1060 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1060  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	644,r13		! source line 644
	mov	"\0\0BR",r10
	jmp	_Label_1054
! CASE 2...
_Label_1056:
! CALL STATEMENT...
!   _temp_1061 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1061  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0BR",r10
	jmp	_Label_1054
! CASE 3...
_Label_1057:
! CALL STATEMENT...
!   _temp_1062 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1062  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0BR",r10
	jmp	_Label_1054
! CASE 4...
_Label_1058:
! CALL STATEMENT...
!   _temp_1063 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1063  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0BR",r10
	jmp	_Label_1054
! CASE 5...
_Label_1059:
! CALL STATEMENT...
!   _temp_1064 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1064  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0BR",r10
	jmp	_Label_1054
! DEFAULT CASE...
_Label_1053:
! CALL STATEMENT...
!   _temp_1065 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1065  sizeInBytes=4
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
_Label_1054:
! CALL STATEMENT...
!   _temp_1066 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1066  sizeInBytes=4
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
!   _temp_1067 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1067  sizeInBytes=4
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
!   _temp_1072 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1073 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1072  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1068:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1073 then goto _Label_1071		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1071
_Label_1069:
	mov	664,r13		! source line 664
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1074 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1074  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1075 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1075  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1076 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1076  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1078 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1078 [i ] into _temp_1079
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
!   Data Move: _temp_1077 = *_temp_1079  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1077  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1080 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1082 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1082 [i ] into _temp_1083
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
!   Data Move: _temp_1081 = *_temp_1083  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1081  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1084 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1084  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1070:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1068
! END FOR
_Label_1071:
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
	.word	_Label_1085
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1086
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1087
	.word	-12
	.word	4
	.word	_Label_1088
	.word	-16
	.word	4
	.word	_Label_1089
	.word	-20
	.word	4
	.word	_Label_1090
	.word	-24
	.word	4
	.word	_Label_1091
	.word	-28
	.word	4
	.word	_Label_1092
	.word	-32
	.word	4
	.word	_Label_1093
	.word	-36
	.word	4
	.word	_Label_1094
	.word	-40
	.word	4
	.word	_Label_1095
	.word	-44
	.word	4
	.word	_Label_1096
	.word	-48
	.word	4
	.word	_Label_1097
	.word	-52
	.word	4
	.word	_Label_1098
	.word	-56
	.word	4
	.word	_Label_1099
	.word	-60
	.word	4
	.word	_Label_1100
	.word	-64
	.word	4
	.word	_Label_1101
	.word	-68
	.word	4
	.word	_Label_1102
	.word	-72
	.word	4
	.word	_Label_1103
	.word	-76
	.word	4
	.word	_Label_1104
	.word	-80
	.word	4
	.word	_Label_1105
	.word	-84
	.word	4
	.word	_Label_1106
	.word	-88
	.word	4
	.word	_Label_1107
	.word	-92
	.word	4
	.word	_Label_1108
	.word	-96
	.word	4
	.word	_Label_1109
	.word	-100
	.word	4
	.word	_Label_1110
	.word	-104
	.word	4
	.word	_Label_1111
	.word	-108
	.word	4
	.word	_Label_1112
	.word	-112
	.word	4
	.word	_Label_1113
	.word	-116
	.word	4
	.word	_Label_1114
	.word	-120
	.word	4
	.word	_Label_1115
	.word	-124
	.word	4
	.word	_Label_1116
	.word	-128
	.word	4
	.word	_Label_1117
	.word	-132
	.word	4
	.word	_Label_1118
	.word	-136
	.word	4
	.word	_Label_1119
	.word	-140
	.word	4
	.word	_Label_1120
	.word	-144
	.word	4
	.word	_Label_1121
	.word	-148
	.word	4
	.word	_Label_1122
	.word	-152
	.word	4
	.word	_Label_1123
	.word	-156
	.word	4
	.word	_Label_1124
	.word	-160
	.word	4
	.word	_Label_1125
	.word	-164
	.word	4
	.word	_Label_1126
	.word	-168
	.word	4
	.word	_Label_1127
	.word	-172
	.word	4
	.word	_Label_1128
	.word	-176
	.word	4
	.word	_Label_1129
	.word	-180
	.word	4
	.word	_Label_1130
	.word	-184
	.word	4
	.word	_Label_1131
	.word	-188
	.word	4
	.word	_Label_1132
	.word	-192
	.word	4
	.word	_Label_1133
	.word	-196
	.word	4
	.word	0
_Label_1085:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1086:
	.ascii	"Pself\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1132:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1133:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1134
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1134:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1135
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1135:
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
_Label_3005:
	push	r0
	sub	r1,1,r1
	bne	_Label_3005
	mov	728,r13		! source line 728
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1136 = _StringConst_103
	set	_StringConst_103,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1136  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0AS",r10
!   _temp_1137 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1139 = &_temp_1138
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1139 = _temp_1139 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1141 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3006:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3006
!   _temp_1141 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1143:
!   Data Move: *_temp_1139 = _temp_1141  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3007:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3007
!   _temp_1139 = _temp_1139 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1140 = _temp_1140 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1140) then goto _Label_1143
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1143
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1144 = &_temp_1138
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3008
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3008:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1137 = *_temp_1144  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3009:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3009
! ASSIGNMENT STATEMENT...
	mov	741,r13		! source line 741
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
	mov	742,r13		! source line 742
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
	mov	743,r13		! source line 743
	mov	"\0\0SE",r10
!   _temp_1147 = &threadManagerLock
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
	mov	744,r13		! source line 744
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
	mov	745,r13		! source line 745
	mov	"\0\0SE",r10
!   _temp_1149 = &aThreadBecameFree
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
	mov	746,r13		! source line 746
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1154 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1155 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1154  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1150:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1155 then goto _Label_1153		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1153
_Label_1151:
	mov	746,r13		! source line 746
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0SE",r10
!   _temp_1156 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-48]
!   _temp_1157 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1157 [i ] into _temp_1158
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
!   Prepare Argument: offset=12  value=_temp_1156  sizeInBytes=4
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
	mov	748,r13		! source line 748
	mov	"\0\0AS",r10
!   _temp_1159 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1159 [i ] into _temp_1160
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
!   _temp_1161 = _temp_1160 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1161 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0SE",r10
!   _temp_1163 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1163 [i ] into _temp_1164
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
!   _temp_1162 = _temp_1164		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1165 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1162  sizeInBytes=4
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
_Label_1152:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1150
! END FOR
_Label_1153:
! RETURN STATEMENT...
	mov	746,r13		! source line 746
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
	.word	_Label_1166
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1167
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1168
	.word	-12
	.word	4
	.word	_Label_1169
	.word	-16
	.word	4
	.word	_Label_1170
	.word	-20
	.word	4
	.word	_Label_1171
	.word	-24
	.word	4
	.word	_Label_1172
	.word	-28
	.word	4
	.word	_Label_1173
	.word	-32
	.word	4
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
	.word	-52
	.word	4
	.word	_Label_1179
	.word	-56
	.word	4
	.word	_Label_1180
	.word	-60
	.word	4
	.word	_Label_1181
	.word	-64
	.word	4
	.word	_Label_1182
	.word	-68
	.word	4
	.word	_Label_1183
	.word	-72
	.word	4
	.word	_Label_1184
	.word	-76
	.word	4
	.word	_Label_1185
	.word	-80
	.word	4
	.word	_Label_1186
	.word	-84
	.word	4
	.word	_Label_1187
	.word	-4248
	.word	4164
	.word	_Label_1188
	.word	-4252
	.word	4
	.word	_Label_1189
	.word	-4256
	.word	4
	.word	_Label_1190
	.word	-45900
	.word	41644
	.word	_Label_1191
	.word	-45904
	.word	4
	.word	_Label_1192
	.word	-45908
	.word	4
	.word	_Label_1193
	.word	-45912
	.word	4
	.word	0
_Label_1166:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1167:
	.ascii	"Pself\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1193:
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
_Label_3010:
	push	r0
	sub	r1,1,r1
	bne	_Label_3010
	mov	755,r13		! source line 755
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	762,r13		! source line 762
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1194 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1194  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1199 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1200 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1199  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1195:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1200 then goto _Label_1198		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1198
_Label_1196:
	mov	764,r13		! source line 764
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1201 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1201  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1202 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1202  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1204 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1204 [i ] into _temp_1205
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
!   _temp_1203 = _temp_1205		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1203  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CA",r10
	call	_function_210_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1197:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1195
! END FOR
_Label_1198:
! CALL STATEMENT...
!   _temp_1206 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1206  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	771,r13		! source line 771
	mov	"\0\0SE",r10
!   _temp_1207 = _function_209_PrintObjectAddr
	set	_function_209_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1208 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1207  sizeInBytes=4
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
	mov	772,r13		! source line 772
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	773,r13		! source line 773
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
	.word	_Label_1209
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1210
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1211
	.word	-12
	.word	4
	.word	_Label_1212
	.word	-16
	.word	4
	.word	_Label_1213
	.word	-20
	.word	4
	.word	_Label_1214
	.word	-24
	.word	4
	.word	_Label_1215
	.word	-28
	.word	4
	.word	_Label_1216
	.word	-32
	.word	4
	.word	_Label_1217
	.word	-36
	.word	4
	.word	_Label_1218
	.word	-40
	.word	4
	.word	_Label_1219
	.word	-44
	.word	4
	.word	_Label_1220
	.word	-48
	.word	4
	.word	_Label_1221
	.word	-52
	.word	4
	.word	_Label_1222
	.word	-56
	.word	4
	.word	_Label_1223
	.word	-60
	.word	4
	.word	0
_Label_1209:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1210:
	.ascii	"Pself\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1222:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1223:
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
_Label_3011:
	push	r0
	sub	r1,1,r1
	bne	_Label_3011
	mov	778,r13		! source line 778
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_1224 = &threadManagerLock
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
	mov	786,r13		! source line 786
	mov	"\0\0WH",r10
_Label_1225:
	mov	786,r13		! source line 786
	mov	"\0\0SE",r10
!   _temp_1228 = &freeList
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
!   if result==true then goto _Label_1226 else goto _Label_1227
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1227
	jmp	_Label_1226
_Label_1226:
	mov	786,r13		! source line 786
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_1229 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1230 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1229  sizeInBytes=4
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
	jmp	_Label_1225
_Label_1227:
! ASSIGNMENT STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0AS",r10
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_1231 = &freeList
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
	mov	790,r13		! source line 790
	mov	"\0\0AS",r10
!   if intIsZero (NewThread) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1232 = NewThread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1232 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_1233 = &threadManagerLock
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
	mov	792,r13		! source line 792
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
	.word	_Label_1234
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1235
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1236
	.word	-12
	.word	4
	.word	_Label_1237
	.word	-16
	.word	4
	.word	_Label_1238
	.word	-20
	.word	4
	.word	_Label_1239
	.word	-24
	.word	4
	.word	_Label_1240
	.word	-28
	.word	4
	.word	_Label_1241
	.word	-32
	.word	4
	.word	_Label_1242
	.word	-36
	.word	4
	.word	_Label_1243
	.word	-40
	.word	4
	.word	0
_Label_1234:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1235:
	.ascii	"Pself\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1243:
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
_Label_3012:
	push	r0
	sub	r1,1,r1
	bne	_Label_3012
	mov	797,r13		! source line 797
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0SE",r10
!   _temp_1244 = &threadManagerLock
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
	mov	803,r13		! source line 803
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1245 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1245 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0SE",r10
!   _temp_1246 = &freeList
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
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_1247 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1248 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1247  sizeInBytes=4
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
	mov	806,r13		! source line 806
	mov	"\0\0SE",r10
!   _temp_1249 = &threadManagerLock
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
	mov	806,r13		! source line 806
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
	.word	_Label_1250
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1251
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1252
	.word	12
	.word	4
	.word	_Label_1253
	.word	-12
	.word	4
	.word	_Label_1254
	.word	-16
	.word	4
	.word	_Label_1255
	.word	-20
	.word	4
	.word	_Label_1256
	.word	-24
	.word	4
	.word	_Label_1257
	.word	-28
	.word	4
	.word	_Label_1258
	.word	-32
	.word	4
	.word	0
_Label_1250:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1251:
	.ascii	"Pself\0"
	.align
_Label_1252:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1259
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1259:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1260
	.word	_sourceFileName
	.word	213		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1260:
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
	mov	3,r1
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	819,r13		! source line 819
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	821,r13		! source line 821
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3014:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3014
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0SE",r10
!   _temp_1262 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
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
	mov	823,r13		! source line 823
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1263
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1264
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1265
	.word	-12
	.word	4
	.word	_Label_1266
	.word	-16
	.word	4
	.word	0
_Label_1263:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1264:
	.ascii	"Pself\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1261\0"
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
_Label_3015:
	push	r0
	sub	r1,1,r1
	bne	_Label_3015
	mov	833,r13		! source line 833
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	838,r13		! source line 838
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1267) then goto _runtimeErrorNullPointer
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
	mov	839,r13		! source line 839
	mov	"\0\0SE",r10
!   _temp_1268 = &addrSpace
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
!   _temp_1269 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1269  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CA",r10
	call	_function_210_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	852,r13		! source line 852
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
	.word	_Label_1270
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1271
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1272
	.word	-12
	.word	4
	.word	_Label_1273
	.word	-16
	.word	4
	.word	_Label_1274
	.word	-20
	.word	4
	.word	0
_Label_1270:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1271:
	.ascii	"Pself\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1267\0"
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
_Label_3016:
	push	r0
	sub	r1,1,r1
	bne	_Label_3016
	mov	857,r13		! source line 857
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1275 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1275  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1276  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	862,r13		! source line 862
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1277 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1277  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1278 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1278  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1280		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1280
!	jmp	_Label_1279
_Label_1279:
! THEN...
	mov	867,r13		! source line 867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1281 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1281  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1282
_Label_1280:
! ELSE...
	mov	868,r13		! source line 868
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1284		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1284
!	jmp	_Label_1283
_Label_1283:
! THEN...
	mov	869,r13		! source line 869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1285 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1285  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1286
_Label_1284:
! ELSE...
	mov	870,r13		! source line 870
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	870,r13		! source line 870
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1288		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1288
!	jmp	_Label_1287
_Label_1287:
! THEN...
	mov	871,r13		! source line 871
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1289 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1289  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1290
_Label_1288:
! ELSE...
	mov	873,r13		! source line 873
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1291 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1291  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	873,r13		! source line 873
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1290:
! END IF...
_Label_1286:
! END IF...
_Label_1282:
! CALL STATEMENT...
!   _temp_1292 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1292  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	875,r13		! source line 875
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	876,r13		! source line 876
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1293 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	877,r13		! source line 877
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	878,r13		! source line 878
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	879,r13		! source line 879
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	879,r13		! source line 879
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
	.word	_Label_1294
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1295
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1296
	.word	-12
	.word	4
	.word	_Label_1297
	.word	-16
	.word	4
	.word	_Label_1298
	.word	-20
	.word	4
	.word	_Label_1299
	.word	-24
	.word	4
	.word	_Label_1300
	.word	-28
	.word	4
	.word	_Label_1301
	.word	-32
	.word	4
	.word	_Label_1302
	.word	-36
	.word	4
	.word	_Label_1303
	.word	-40
	.word	4
	.word	_Label_1304
	.word	-44
	.word	4
	.word	_Label_1305
	.word	-48
	.word	4
	.word	0
_Label_1294:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1295:
	.ascii	"Pself\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1306
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1306:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1307
	.word	_sourceFileName
	.word	233		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1307:
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
	mov	368,r1
_Label_3017:
	push	r0
	sub	r1,1,r1
	bne	_Label_3017
	mov	890,r13		! source line 890
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	894,r13		! source line 894
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0SE",r10
!   _temp_1309 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-1464]
!   Send message Init
	load	[r14+-1464],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_1311 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-1456]
!   Send message Init
	load	[r14+-1456],r1
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
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_1313 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-1448]
!   Send message Init
	load	[r14+-1448],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0AS",r10
!   _temp_1314 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1444]
!   NEW ARRAY Constructor...
!   _temp_1316 = &_temp_1315
	add	r14,-1440,r1
	store	r1,[r14+-196]
!   _temp_1316 = _temp_1316 + 4
	load	[r14+-196],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1318 = zeros  (sizeInBytes=124)
	add	r14,-188,r4
	mov	31,r3
_Label_3018:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3018
!   _temp_1318 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-188]
	mov	10,r1
	store	r1,[r14+-192]
_Label_1320:
!   Data Move: *_temp_1316 = _temp_1318  (sizeInBytes=124)
	add	r14,-188,r5
	load	[r14+-196],r4
	mov	31,r3
_Label_3019:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3019
!   _temp_1316 = _temp_1316 + 124
	load	[r14+-196],r1
	add	r1,124,r1
	store	r1,[r14+-196]
!   _temp_1317 = _temp_1317 + -1
	load	[r14+-192],r1
	add	r1,-1,r1
	store	r1,[r14+-192]
!   if intNotZero (_temp_1317) then goto _Label_1320
	load	[r14+-192],r1
	cmp	r1,r0
	bne	_Label_1320
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1440]
!   _temp_1321 = &_temp_1315
	add	r14,-1440,r1
	store	r1,[r14+-60]
!   make sure array has size 10
	load	[r14+-1444],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3020
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3020:
!   make sure array has size 10
	load	[r14+-60],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1314 = *_temp_1321  (sizeInBytes=1244)
	load	[r14+-60],r5
	load	[r14+-1444],r4
	mov	311,r3
_Label_3021:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3021
! ASSIGNMENT STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! FOR STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1327 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1328 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1327  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1323:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1328 then goto _Label_1326		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1326
_Label_1324:
	mov	904,r13		! source line 904
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0SE",r10
!   _temp_1329 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1329 [i ] into _temp_1330
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
	set	124,r3
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
	mov	906,r13		! source line 906
	mov	"\0\0AS",r10
!   _temp_1331 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1331 [i ] into _temp_1332
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1333 = _temp_1332 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1333 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0SE",r10
!   _temp_1335 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1335 [i ] into _temp_1336
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1334 = _temp_1336		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1337 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1334  sizeInBytes=4
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
_Label_1325:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1323
! END FOR
_Label_1326:
! RETURN STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1338
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1339
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	-188
	.word	124
	.word	_Label_1355
	.word	-192
	.word	4
	.word	_Label_1356
	.word	-196
	.word	4
	.word	_Label_1357
	.word	-1440
	.word	1244
	.word	_Label_1358
	.word	-1444
	.word	4
	.word	_Label_1359
	.word	-1448
	.word	4
	.word	_Label_1360
	.word	-1452
	.word	4
	.word	_Label_1361
	.word	-1456
	.word	4
	.word	_Label_1362
	.word	-1460
	.word	4
	.word	_Label_1363
	.word	-1464
	.word	4
	.word	_Label_1364
	.word	-1468
	.word	4
	.word	_Label_1365
	.word	-1472
	.word	4
	.word	0
_Label_1338:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1339:
	.ascii	"Pself\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1365:
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
_Label_3022:
	push	r0
	sub	r1,1,r1
	bne	_Label_3022
	mov	914,r13		! source line 914
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	921,r13		! source line 921
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1366 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1366  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	922,r13		! source line 922
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1371 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1372 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1371  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1367:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1372 then goto _Label_1370		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1370
_Label_1368:
	mov	923,r13		! source line 923
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1373 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1373  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1374 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1374  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0SE",r10
!   _temp_1375 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1375 [i ] into _temp_1376
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
	set	124,r3
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
_Label_1369:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1367
! END FOR
_Label_1370:
! CALL STATEMENT...
!   _temp_1377 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1377  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	930,r13		! source line 930
	mov	"\0\0SE",r10
!   _temp_1378 = _function_209_PrintObjectAddr
	set	_function_209_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1379 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1378  sizeInBytes=4
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
	mov	931,r13		! source line 931
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	932,r13		! source line 932
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
	.word	_Label_1380
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1381
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1382
	.word	-12
	.word	4
	.word	_Label_1383
	.word	-16
	.word	4
	.word	_Label_1384
	.word	-20
	.word	4
	.word	_Label_1385
	.word	-24
	.word	4
	.word	_Label_1386
	.word	-28
	.word	4
	.word	_Label_1387
	.word	-32
	.word	4
	.word	_Label_1388
	.word	-36
	.word	4
	.word	_Label_1389
	.word	-40
	.word	4
	.word	_Label_1390
	.word	-44
	.word	4
	.word	_Label_1391
	.word	-48
	.word	4
	.word	_Label_1392
	.word	-52
	.word	4
	.word	_Label_1393
	.word	-56
	.word	4
	.word	0
_Label_1380:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1381:
	.ascii	"Pself\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1392:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1393:
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
_Label_3023:
	push	r0
	sub	r1,1,r1
	bne	_Label_3023
	mov	937,r13		! source line 937
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	944,r13		! source line 944
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1394 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1394  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	945,r13		! source line 945
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1399 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1400 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1399  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1395:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1400 then goto _Label_1398		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1398
_Label_1396:
	mov	946,r13		! source line 946
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1401 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1401  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	947,r13		! source line 947
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0SE",r10
!   _temp_1402 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1402 [i ] into _temp_1403
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
	set	124,r3
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
_Label_1397:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1395
! END FOR
_Label_1398:
! CALL STATEMENT...
!   _temp_1404 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1404  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	951,r13		! source line 951
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0SE",r10
!   _temp_1405 = _function_209_PrintObjectAddr
	set	_function_209_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1406 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1405  sizeInBytes=4
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
	mov	953,r13		! source line 953
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	954,r13		! source line 954
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	954,r13		! source line 954
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
	.word	_Label_1407
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1408
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1409
	.word	-12
	.word	4
	.word	_Label_1410
	.word	-16
	.word	4
	.word	_Label_1411
	.word	-20
	.word	4
	.word	_Label_1412
	.word	-24
	.word	4
	.word	_Label_1413
	.word	-28
	.word	4
	.word	_Label_1414
	.word	-32
	.word	4
	.word	_Label_1415
	.word	-36
	.word	4
	.word	_Label_1416
	.word	-40
	.word	4
	.word	_Label_1417
	.word	-44
	.word	4
	.word	_Label_1418
	.word	-48
	.word	4
	.word	_Label_1419
	.word	-52
	.word	4
	.word	0
_Label_1407:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1408:
	.ascii	"Pself\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1418:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1419:
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
_Label_3024:
	push	r0
	sub	r1,1,r1
	bne	_Label_3024
	mov	959,r13		! source line 959
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0SE",r10
!   _temp_1420 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	966,r13		! source line 966
	mov	"\0\0WH",r10
_Label_1421:
	mov	966,r13		! source line 966
	mov	"\0\0SE",r10
!   _temp_1424 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1422 else goto _Label_1423
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1423
	jmp	_Label_1422
_Label_1422:
	mov	966,r13		! source line 966
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_1425 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1426 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1425  sizeInBytes=4
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
	jmp	_Label_1421
_Label_1423:
! ASSIGNMENT STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0AS",r10
	mov	969,r13		! source line 969
	mov	"\0\0SE",r10
!   _temp_1427 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
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
	mov	970,r13		! source line 970
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1428 = ptrToPCB + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1428 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1429 = ptrToPCB + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1429 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1430 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	974,r13		! source line 974
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
	.word	_Label_1431
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1432
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1433
	.word	-12
	.word	4
	.word	_Label_1434
	.word	-16
	.word	4
	.word	_Label_1435
	.word	-20
	.word	4
	.word	_Label_1436
	.word	-24
	.word	4
	.word	_Label_1437
	.word	-28
	.word	4
	.word	_Label_1438
	.word	-32
	.word	4
	.word	_Label_1439
	.word	-36
	.word	4
	.word	_Label_1440
	.word	-40
	.word	4
	.word	_Label_1441
	.word	-44
	.word	4
	.word	0
_Label_1431:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1432:
	.ascii	"Pself\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1441:
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
	mov	8,r1
_Label_3025:
	push	r0
	sub	r1,1,r1
	bne	_Label_3025
	mov	979,r13		! source line 979
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0SE",r10
!   _temp_1442 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	985,r13		! source line 985
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1443 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1443 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0SE",r10
!   _temp_1444 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
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
	mov	987,r13		! source line 987
	mov	"\0\0SE",r10
!   _temp_1445 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1446 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1445  sizeInBytes=4
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
	mov	988,r13		! source line 988
	mov	"\0\0SE",r10
!   _temp_1447 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	988,r13		! source line 988
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1448
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1449
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1450
	.word	12
	.word	4
	.word	_Label_1451
	.word	-12
	.word	4
	.word	_Label_1452
	.word	-16
	.word	4
	.word	_Label_1453
	.word	-20
	.word	4
	.word	_Label_1454
	.word	-24
	.word	4
	.word	_Label_1455
	.word	-28
	.word	4
	.word	_Label_1456
	.word	-32
	.word	4
	.word	0
_Label_1448:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1449:
	.ascii	"Pself\0"
	.align
_Label_1450:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1457
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1457:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1458
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1458:
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
_Label_3026:
	push	r0
	sub	r1,1,r1
	bne	_Label_3026
	mov	1021,r13		! source line 1021
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1459 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1459  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1027,r13		! source line 1027
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1028,r13		! source line 1028
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
	mov	1029,r13		! source line 1029
	mov	"\0\0SE",r10
!   _temp_1461 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
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
	mov	1030,r13		! source line 1030
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1031,r13		! source line 1031
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
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_1463 = &frameManagerLock
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
	mov	1033,r13		! source line 1033
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
	mov	1034,r13		! source line 1034
	mov	"\0\0SE",r10
!   _temp_1465 = &newFramesAvailable
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
	mov	1040,r13		! source line 1040
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1470 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1471 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1470  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1466:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1471 then goto _Label_1469		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1469
_Label_1467:
	mov	1040,r13		! source line 1040
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1043,r13		! source line 1043
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1474 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1474) then goto _Label_1473
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1473
!	jmp	_Label_1472
_Label_1472:
! THEN...
	mov	1044,r13		! source line 1044
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1475 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1475  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1044,r13		! source line 1044
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1473:
!   Increment the FOR-LOOP index variable and jump back
_Label_1468:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1466
! END FOR
_Label_1469:
! RETURN STATEMENT...
	mov	1040,r13		! source line 1040
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
	.word	_Label_1476
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1477
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1478
	.word	-12
	.word	4
	.word	_Label_1479
	.word	-16
	.word	4
	.word	_Label_1480
	.word	-20
	.word	4
	.word	_Label_1481
	.word	-24
	.word	4
	.word	_Label_1482
	.word	-28
	.word	4
	.word	_Label_1483
	.word	-32
	.word	4
	.word	_Label_1484
	.word	-36
	.word	4
	.word	_Label_1485
	.word	-40
	.word	4
	.word	_Label_1486
	.word	-44
	.word	4
	.word	_Label_1487
	.word	-48
	.word	4
	.word	_Label_1488
	.word	-52
	.word	4
	.word	_Label_1489
	.word	-56
	.word	4
	.word	0
_Label_1476:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1477:
	.ascii	"Pself\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1489:
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
_Label_3027:
	push	r0
	sub	r1,1,r1
	bne	_Label_3027
	mov	1051,r13		! source line 1051
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0SE",r10
!   _temp_1490 = &frameManagerLock
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
!   _temp_1491 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1491  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1056,r13		! source line 1056
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1492 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1492  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1057,r13		! source line 1057
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1493 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1493  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1058,r13		! source line 1058
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1494 = &framesInUse
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
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   _temp_1495 = &frameManagerLock
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
	mov	1060,r13		! source line 1060
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
	.word	_Label_1496
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1497
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1498
	.word	-12
	.word	4
	.word	_Label_1499
	.word	-16
	.word	4
	.word	_Label_1500
	.word	-20
	.word	4
	.word	_Label_1501
	.word	-24
	.word	4
	.word	_Label_1502
	.word	-28
	.word	4
	.word	_Label_1503
	.word	-32
	.word	4
	.word	0
_Label_1496:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1497:
	.ascii	"Pself\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1490\0"
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
_Label_3028:
	push	r0
	sub	r1,1,r1
	bne	_Label_3028
	mov	1065,r13		! source line 1065
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0SE",r10
!   _temp_1504 = &frameManagerLock
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
	mov	1076,r13		! source line 1076
	mov	"\0\0WH",r10
_Label_1505:
!   if numberFreeFrames >= 1 then goto _Label_1507		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1507
!	jmp	_Label_1506
_Label_1506:
	mov	1076,r13		! source line 1076
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0SE",r10
!   _temp_1508 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1509 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1508  sizeInBytes=4
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
	jmp	_Label_1505
_Label_1507:
! ASSIGNMENT STATEMENT...
	mov	1081,r13		! source line 1081
	mov	"\0\0AS",r10
	mov	1081,r13		! source line 1081
	mov	"\0\0SE",r10
!   _temp_1510 = &framesInUse
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
	mov	1082,r13		! source line 1082
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
	mov	1085,r13		! source line 1085
	mov	"\0\0SE",r10
!   _temp_1511 = &frameManagerLock
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
	mov	1088,r13		! source line 1088
	mov	"\0\0AS",r10
!   _temp_1512 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1512		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1090,r13		! source line 1090
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
	.word	_Label_1513
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1514
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1515
	.word	-12
	.word	4
	.word	_Label_1516
	.word	-16
	.word	4
	.word	_Label_1517
	.word	-20
	.word	4
	.word	_Label_1518
	.word	-24
	.word	4
	.word	_Label_1519
	.word	-28
	.word	4
	.word	_Label_1520
	.word	-32
	.word	4
	.word	_Label_1521
	.word	-36
	.word	4
	.word	_Label_1522
	.word	-40
	.word	4
	.word	0
_Label_1513:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1514:
	.ascii	"Pself\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1521:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1522:
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
_Label_3029:
	push	r0
	sub	r1,1,r1
	bne	_Label_3029
	mov	1095,r13		! source line 1095
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0SE",r10
!   _temp_1523 = &frameManagerLock
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
	mov	1098,r13		! source line 1098
	mov	"\0\0WH",r10
_Label_1524:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1526		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1526
!	jmp	_Label_1525
_Label_1525:
	mov	1098,r13		! source line 1098
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1099,r13		! source line 1099
	mov	"\0\0SE",r10
!   _temp_1527 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1528 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1527  sizeInBytes=4
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
	jmp	_Label_1524
_Label_1526:
! FOR STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1533 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1534 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1533  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_1529:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1534 then goto _Label_1532		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1532
_Label_1530:
	mov	1101,r13		! source line 1101
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0AS",r10
	mov	1102,r13		! source line 1102
	mov	"\0\0SE",r10
!   _temp_1535 = &framesInUse
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
	mov	1103,r13		! source line 1103
	mov	"\0\0AS",r10
!   _temp_1536 = fr * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1536		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1104,r13		! source line 1104
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
_Label_1531:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1529
! END FOR
_Label_1532:
! ASSIGNMENT STATEMENT...
	mov	1106,r13		! source line 1106
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
	mov	1107,r13		! source line 1107
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1537 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1537 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1108,r13		! source line 1108
	mov	"\0\0SE",r10
!   _temp_1538 = &frameManagerLock
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
	mov	1108,r13		! source line 1108
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
	.word	_Label_1539
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1540
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1541
	.word	12
	.word	4
	.word	_Label_1542
	.word	16
	.word	4
	.word	_Label_1543
	.word	-12
	.word	4
	.word	_Label_1544
	.word	-16
	.word	4
	.word	_Label_1545
	.word	-20
	.word	4
	.word	_Label_1546
	.word	-24
	.word	4
	.word	_Label_1547
	.word	-28
	.word	4
	.word	_Label_1548
	.word	-32
	.word	4
	.word	_Label_1549
	.word	-36
	.word	4
	.word	_Label_1550
	.word	-40
	.word	4
	.word	_Label_1551
	.word	-44
	.word	4
	.word	_Label_1552
	.word	-48
	.word	4
	.word	_Label_1553
	.word	-52
	.word	4
	.word	_Label_1554
	.word	-56
	.word	4
	.word	0
_Label_1539:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1540:
	.ascii	"Pself\0"
	.align
_Label_1541:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1542:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1552:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1553:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1554:
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
_Label_3030:
	push	r0
	sub	r1,1,r1
	bne	_Label_3030
	mov	1113,r13		! source line 1113
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0SE",r10
!   _temp_1555 = &frameManagerLock
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
	mov	1116,r13		! source line 1116
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1560 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1563 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1562 = *_temp_1563  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_1561 = _temp_1562 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1560  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_1556:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1561 then goto _Label_1559		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1559
_Label_1557:
	mov	1116,r13		! source line 1116
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0AS",r10
	mov	1117,r13		! source line 1117
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
	mov	1118,r13		! source line 1118
	mov	"\0\0AS",r10
!   _temp_1564 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_1564 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1119,r13		! source line 1119
	mov	"\0\0SE",r10
!   _temp_1565 = &framesInUse
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
_Label_1558:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1556
! END FOR
_Label_1559:
! ASSIGNMENT STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1567 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1566 = *_temp_1567  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1566		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_1568 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1569 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1568  sizeInBytes=4
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
	mov	1123,r13		! source line 1123
	mov	"\0\0SE",r10
!   _temp_1570 = &frameManagerLock
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
	mov	1123,r13		! source line 1123
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
	.word	_Label_1571
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1572
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1573
	.word	12
	.word	4
	.word	_Label_1574
	.word	-12
	.word	4
	.word	_Label_1575
	.word	-16
	.word	4
	.word	_Label_1576
	.word	-20
	.word	4
	.word	_Label_1577
	.word	-24
	.word	4
	.word	_Label_1578
	.word	-28
	.word	4
	.word	_Label_1579
	.word	-32
	.word	4
	.word	_Label_1580
	.word	-36
	.word	4
	.word	_Label_1581
	.word	-40
	.word	4
	.word	_Label_1582
	.word	-44
	.word	4
	.word	_Label_1583
	.word	-48
	.word	4
	.word	_Label_1584
	.word	-52
	.word	4
	.word	_Label_1585
	.word	-56
	.word	4
	.word	_Label_1586
	.word	-60
	.word	4
	.word	_Label_1587
	.word	-64
	.word	4
	.word	_Label_1588
	.word	-68
	.word	4
	.word	0
_Label_1571:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1572:
	.ascii	"Pself\0"
	.align
_Label_1573:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1586:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1587:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1588:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1589
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
_Label_1589:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1590
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1590:
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
_Label_3031:
	push	r0
	sub	r1,1,r1
	bne	_Label_3031
	mov	1133,r13		! source line 1133
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0AS",r10
!   _temp_1591 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1593 = &_temp_1592
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1593 = _temp_1593 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1595:
!   Data Move: *_temp_1593 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1593 = _temp_1593 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1594 = _temp_1594 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1594) then goto _Label_1595
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1595
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1596 = &_temp_1592
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3032
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3032:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1591 = *_temp_1596  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3033:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3033
! RETURN STATEMENT...
	mov	1138,r13		! source line 1138
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
	.word	_Label_1597
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1598
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1599
	.word	-12
	.word	4
	.word	_Label_1600
	.word	-16
	.word	4
	.word	_Label_1601
	.word	-20
	.word	4
	.word	_Label_1602
	.word	-104
	.word	84
	.word	_Label_1603
	.word	-108
	.word	4
	.word	0
_Label_1597:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1598:
	.ascii	"Pself\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1591\0"
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
_Label_3034:
	push	r0
	sub	r1,1,r1
	bne	_Label_3034
	mov	1143,r13		! source line 1143
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1604 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1604  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1148,r13		! source line 1148
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1605 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1605  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1149,r13		! source line 1149
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1150,r13		! source line 1150
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1610 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1611 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1610  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1606:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1611 then goto _Label_1609		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1609
_Label_1607:
	mov	1150,r13		! source line 1150
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1612 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1612  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1151,r13		! source line 1151
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1614 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1614 [i ] into _temp_1615
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
!   _temp_1613 = _temp_1615		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1613  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1152,r13		! source line 1152
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1616 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1616  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1153,r13		! source line 1153
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1618 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1618 [i ] into _temp_1619
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
!   Data Move: _temp_1617 = *_temp_1619  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1617  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1154,r13		! source line 1154
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1620 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1620  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1155,r13		! source line 1155
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1621 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1621  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1156,r13		! source line 1156
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1622 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1622  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1157,r13		! source line 1157
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1624) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1623  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1623  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1158,r13		! source line 1158
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1625 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1625  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1159,r13		! source line 1159
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0IF",r10
	mov	1160,r13		! source line 1160
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1629) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1628  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1628) then goto _Label_1627
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1627
!	jmp	_Label_1626
_Label_1626:
! THEN...
	mov	1161,r13		! source line 1161
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1631) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1630  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1630  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1161,r13		! source line 1161
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1632
_Label_1627:
! ELSE...
	mov	1163,r13		! source line 1163
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1633 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1633  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1163,r13		! source line 1163
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1632:
! CALL STATEMENT...
!   _temp_1634 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1634  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1165,r13		! source line 1165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0IF",r10
	mov	1166,r13		! source line 1166
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1637) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1635 else goto _Label_1636
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1636
	jmp	_Label_1635
_Label_1635:
! THEN...
	mov	1167,r13		! source line 1167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1638 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1638  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1167,r13		! source line 1167
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1639
_Label_1636:
! ELSE...
	mov	1169,r13		! source line 1169
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1640 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1640  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1169,r13		! source line 1169
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1639:
! CALL STATEMENT...
!   _temp_1641 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1641  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1171,r13		! source line 1171
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0IF",r10
	mov	1172,r13		! source line 1172
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1644) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1642 else goto _Label_1643
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1643
	jmp	_Label_1642
_Label_1642:
! THEN...
	mov	1173,r13		! source line 1173
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1645 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1645  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1173,r13		! source line 1173
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1646
_Label_1643:
! ELSE...
	mov	1175,r13		! source line 1175
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1647 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1647  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1175,r13		! source line 1175
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1646:
! CALL STATEMENT...
!   _temp_1648 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1648  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1177,r13		! source line 1177
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0IF",r10
	mov	1178,r13		! source line 1178
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1651) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1649 else goto _Label_1650
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1650
	jmp	_Label_1649
_Label_1649:
! THEN...
	mov	1179,r13		! source line 1179
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1652 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1652  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1179,r13		! source line 1179
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1653
_Label_1650:
! ELSE...
	mov	1181,r13		! source line 1181
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1654 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1654  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1181,r13		! source line 1181
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1653:
! CALL STATEMENT...
!   _temp_1655 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1655  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1183,r13		! source line 1183
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0IF",r10
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1658) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1656 else goto _Label_1657
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1657
	jmp	_Label_1656
_Label_1656:
! THEN...
	mov	1185,r13		! source line 1185
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1659 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1659  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1185,r13		! source line 1185
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1660
_Label_1657:
! ELSE...
	mov	1187,r13		! source line 1187
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1661 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1661  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1187,r13		! source line 1187
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1660:
! CALL STATEMENT...
!   Call the function
	mov	1189,r13		! source line 1189
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1608:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1606
! END FOR
_Label_1609:
! RETURN STATEMENT...
	mov	1150,r13		! source line 1150
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
	.word	_Label_1662
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1663
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1664
	.word	-12
	.word	4
	.word	_Label_1665
	.word	-16
	.word	4
	.word	_Label_1666
	.word	-20
	.word	4
	.word	_Label_1667
	.word	-24
	.word	4
	.word	_Label_1668
	.word	-28
	.word	4
	.word	_Label_1669
	.word	-32
	.word	4
	.word	_Label_1670
	.word	-36
	.word	4
	.word	_Label_1671
	.word	-40
	.word	4
	.word	_Label_1672
	.word	-44
	.word	4
	.word	_Label_1673
	.word	-48
	.word	4
	.word	_Label_1674
	.word	-52
	.word	4
	.word	_Label_1675
	.word	-56
	.word	4
	.word	_Label_1676
	.word	-60
	.word	4
	.word	_Label_1677
	.word	-64
	.word	4
	.word	_Label_1678
	.word	-68
	.word	4
	.word	_Label_1679
	.word	-72
	.word	4
	.word	_Label_1680
	.word	-76
	.word	4
	.word	_Label_1681
	.word	-80
	.word	4
	.word	_Label_1682
	.word	-84
	.word	4
	.word	_Label_1683
	.word	-88
	.word	4
	.word	_Label_1684
	.word	-92
	.word	4
	.word	_Label_1685
	.word	-96
	.word	4
	.word	_Label_1686
	.word	-100
	.word	4
	.word	_Label_1687
	.word	-104
	.word	4
	.word	_Label_1688
	.word	-108
	.word	4
	.word	_Label_1689
	.word	-112
	.word	4
	.word	_Label_1690
	.word	-116
	.word	4
	.word	_Label_1691
	.word	-120
	.word	4
	.word	_Label_1692
	.word	-124
	.word	4
	.word	_Label_1693
	.word	-128
	.word	4
	.word	_Label_1694
	.word	-132
	.word	4
	.word	_Label_1695
	.word	-136
	.word	4
	.word	_Label_1696
	.word	-140
	.word	4
	.word	_Label_1697
	.word	-144
	.word	4
	.word	_Label_1698
	.word	-148
	.word	4
	.word	_Label_1699
	.word	-152
	.word	4
	.word	_Label_1700
	.word	-156
	.word	4
	.word	_Label_1701
	.word	-160
	.word	4
	.word	_Label_1702
	.word	-164
	.word	4
	.word	_Label_1703
	.word	-168
	.word	4
	.word	0
_Label_1662:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1663:
	.ascii	"Pself\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1703:
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
_Label_3035:
	push	r0
	sub	r1,1,r1
	bne	_Label_3035
	mov	1195,r13		! source line 1195
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1200,r13		! source line 1200
	mov	"\0\0RE",r10
!   _temp_1706 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1706 [entry ] into _temp_1707
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
!   Data Move: _temp_1705 = *_temp_1707  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1704 = _temp_1705 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1704  (sizeInBytes=4)
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
	.word	_Label_1708
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1709
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1710
	.word	12
	.word	4
	.word	_Label_1711
	.word	-12
	.word	4
	.word	_Label_1712
	.word	-16
	.word	4
	.word	_Label_1713
	.word	-20
	.word	4
	.word	_Label_1714
	.word	-24
	.word	4
	.word	0
_Label_1708:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1709:
	.ascii	"Pself\0"
	.align
_Label_1710:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1704\0"
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
_Label_3036:
	push	r0
	sub	r1,1,r1
	bne	_Label_3036
	mov	1205,r13		! source line 1205
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0RE",r10
!   _temp_1717 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1717 [entry ] into _temp_1718
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
!   Data Move: _temp_1716 = *_temp_1718  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1715 = _temp_1716 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1715  (sizeInBytes=4)
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
	.word	_Label_1719
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1720
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1721
	.word	12
	.word	4
	.word	_Label_1722
	.word	-12
	.word	4
	.word	_Label_1723
	.word	-16
	.word	4
	.word	_Label_1724
	.word	-20
	.word	4
	.word	_Label_1725
	.word	-24
	.word	4
	.word	0
_Label_1719:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1720:
	.ascii	"Pself\0"
	.align
_Label_1721:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1715\0"
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
_Label_3037:
	push	r0
	sub	r1,1,r1
	bne	_Label_3037
	mov	1214,r13		! source line 1214
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1219,r13		! source line 1219
	mov	"\0\0AS",r10
!   _temp_1726 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1726 [entry ] into _temp_1727
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
!   _temp_1731 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1731 [entry ] into _temp_1732
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
!   Data Move: _temp_1730 = *_temp_1732  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1729 = _temp_1730 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1728 = _temp_1729 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1727 = _temp_1728  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1219,r13		! source line 1219
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
	.word	_Label_1733
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1734
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1735
	.word	12
	.word	4
	.word	_Label_1736
	.word	16
	.word	4
	.word	_Label_1737
	.word	-12
	.word	4
	.word	_Label_1738
	.word	-16
	.word	4
	.word	_Label_1739
	.word	-20
	.word	4
	.word	_Label_1740
	.word	-24
	.word	4
	.word	_Label_1741
	.word	-28
	.word	4
	.word	_Label_1742
	.word	-32
	.word	4
	.word	_Label_1743
	.word	-36
	.word	4
	.word	0
_Label_1733:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1734:
	.ascii	"Pself\0"
	.align
_Label_1735:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1736:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1726\0"
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
_Label_3038:
	push	r0
	sub	r1,1,r1
	bne	_Label_3038
	mov	1224,r13		! source line 1224
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0RE",r10
!   _temp_1747 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1747 [entry ] into _temp_1748
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
!   Data Move: _temp_1746 = *_temp_1748  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1745 = _temp_1746 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1745) then goto _Label_1749
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1749
!   _temp_1744 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1750
_Label_1749:
!   _temp_1744 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1750:
!   ReturnResult: _temp_1744  (sizeInBytes=1)
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
	.word	_Label_1751
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1752
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1753
	.word	12
	.word	4
	.word	_Label_1754
	.word	-16
	.word	4
	.word	_Label_1755
	.word	-20
	.word	4
	.word	_Label_1756
	.word	-24
	.word	4
	.word	_Label_1757
	.word	-28
	.word	4
	.word	_Label_1758
	.word	-9
	.word	1
	.word	0
_Label_1751:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1752:
	.ascii	"Pself\0"
	.align
_Label_1753:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1758:
	.byte	'C'
	.ascii	"_temp_1744\0"
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
_Label_3039:
	push	r0
	sub	r1,1,r1
	bne	_Label_3039
	mov	1233,r13		! source line 1233
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0RE",r10
!   _temp_1762 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1762 [entry ] into _temp_1763
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
!   Data Move: _temp_1761 = *_temp_1763  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1760 = _temp_1761 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1760) then goto _Label_1764
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1764
!   _temp_1759 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1765
_Label_1764:
!   _temp_1759 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1765:
!   ReturnResult: _temp_1759  (sizeInBytes=1)
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
	.word	_Label_1766
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1767
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1768
	.word	12
	.word	4
	.word	_Label_1769
	.word	-16
	.word	4
	.word	_Label_1770
	.word	-20
	.word	4
	.word	_Label_1771
	.word	-24
	.word	4
	.word	_Label_1772
	.word	-28
	.word	4
	.word	_Label_1773
	.word	-9
	.word	1
	.word	0
_Label_1766:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1767:
	.ascii	"Pself\0"
	.align
_Label_1768:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1773:
	.byte	'C'
	.ascii	"_temp_1759\0"
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
_Label_3040:
	push	r0
	sub	r1,1,r1
	bne	_Label_3040
	mov	1242,r13		! source line 1242
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0RE",r10
!   _temp_1777 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1777 [entry ] into _temp_1778
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
!   Data Move: _temp_1776 = *_temp_1778  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1775 = _temp_1776 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1775) then goto _Label_1779
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1779
!   _temp_1774 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1780
_Label_1779:
!   _temp_1774 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1780:
!   ReturnResult: _temp_1774  (sizeInBytes=1)
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
	.word	_Label_1781
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1782
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1783
	.word	12
	.word	4
	.word	_Label_1784
	.word	-16
	.word	4
	.word	_Label_1785
	.word	-20
	.word	4
	.word	_Label_1786
	.word	-24
	.word	4
	.word	_Label_1787
	.word	-28
	.word	4
	.word	_Label_1788
	.word	-9
	.word	1
	.word	0
_Label_1781:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1782:
	.ascii	"Pself\0"
	.align
_Label_1783:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1788:
	.byte	'C'
	.ascii	"_temp_1774\0"
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
_Label_3041:
	push	r0
	sub	r1,1,r1
	bne	_Label_3041
	mov	1251,r13		! source line 1251
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1255,r13		! source line 1255
	mov	"\0\0RE",r10
!   _temp_1792 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1792 [entry ] into _temp_1793
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
!   Data Move: _temp_1791 = *_temp_1793  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1790 = _temp_1791 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1790) then goto _Label_1794
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1794
!   _temp_1789 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1795
_Label_1794:
!   _temp_1789 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1795:
!   ReturnResult: _temp_1789  (sizeInBytes=1)
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
	.word	_Label_1796
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1797
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1798
	.word	12
	.word	4
	.word	_Label_1799
	.word	-16
	.word	4
	.word	_Label_1800
	.word	-20
	.word	4
	.word	_Label_1801
	.word	-24
	.word	4
	.word	_Label_1802
	.word	-28
	.word	4
	.word	_Label_1803
	.word	-9
	.word	1
	.word	0
_Label_1796:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1797:
	.ascii	"Pself\0"
	.align
_Label_1798:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1803:
	.byte	'C'
	.ascii	"_temp_1789\0"
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
_Label_3042:
	push	r0
	sub	r1,1,r1
	bne	_Label_3042
	mov	1260,r13		! source line 1260
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0AS",r10
!   _temp_1804 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1804 [entry ] into _temp_1805
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
!   _temp_1808 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1808 [entry ] into _temp_1809
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
!   Data Move: _temp_1807 = *_temp_1809  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1806 = _temp_1807 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1805 = _temp_1806  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1264,r13		! source line 1264
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
	.word	_Label_1810
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1811
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1812
	.word	12
	.word	4
	.word	_Label_1813
	.word	-12
	.word	4
	.word	_Label_1814
	.word	-16
	.word	4
	.word	_Label_1815
	.word	-20
	.word	4
	.word	_Label_1816
	.word	-24
	.word	4
	.word	_Label_1817
	.word	-28
	.word	4
	.word	_Label_1818
	.word	-32
	.word	4
	.word	0
_Label_1810:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1811:
	.ascii	"Pself\0"
	.align
_Label_1812:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1804\0"
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
_Label_3043:
	push	r0
	sub	r1,1,r1
	bne	_Label_3043
	mov	1269,r13		! source line 1269
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0AS",r10
!   _temp_1819 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1819 [entry ] into _temp_1820
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
!   _temp_1823 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1823 [entry ] into _temp_1824
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
!   Data Move: _temp_1822 = *_temp_1824  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1821 = _temp_1822 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1820 = _temp_1821  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1273,r13		! source line 1273
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
	.word	_Label_1825
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1826
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1827
	.word	12
	.word	4
	.word	_Label_1828
	.word	-12
	.word	4
	.word	_Label_1829
	.word	-16
	.word	4
	.word	_Label_1830
	.word	-20
	.word	4
	.word	_Label_1831
	.word	-24
	.word	4
	.word	_Label_1832
	.word	-28
	.word	4
	.word	_Label_1833
	.word	-32
	.word	4
	.word	0
_Label_1825:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1826:
	.ascii	"Pself\0"
	.align
_Label_1827:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1819\0"
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
_Label_3044:
	push	r0
	sub	r1,1,r1
	bne	_Label_3044
	mov	1278,r13		! source line 1278
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1282,r13		! source line 1282
	mov	"\0\0AS",r10
!   _temp_1834 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1834 [entry ] into _temp_1835
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
!   _temp_1838 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1838 [entry ] into _temp_1839
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
!   Data Move: _temp_1837 = *_temp_1839  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1836 = _temp_1837 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1835 = _temp_1836  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1282,r13		! source line 1282
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
	.word	_Label_1840
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1841
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1842
	.word	12
	.word	4
	.word	_Label_1843
	.word	-12
	.word	4
	.word	_Label_1844
	.word	-16
	.word	4
	.word	_Label_1845
	.word	-20
	.word	4
	.word	_Label_1846
	.word	-24
	.word	4
	.word	_Label_1847
	.word	-28
	.word	4
	.word	_Label_1848
	.word	-32
	.word	4
	.word	0
_Label_1840:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1841:
	.ascii	"Pself\0"
	.align
_Label_1842:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1834\0"
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
_Label_3045:
	push	r0
	sub	r1,1,r1
	bne	_Label_3045
	mov	1287,r13		! source line 1287
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1291,r13		! source line 1291
	mov	"\0\0AS",r10
!   _temp_1849 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1849 [entry ] into _temp_1850
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
!   _temp_1853 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1853 [entry ] into _temp_1854
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
!   Data Move: _temp_1852 = *_temp_1854  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1851 = _temp_1852 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1850 = _temp_1851  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1291,r13		! source line 1291
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
	.word	_Label_1855
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1856
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1857
	.word	12
	.word	4
	.word	_Label_1858
	.word	-12
	.word	4
	.word	_Label_1859
	.word	-16
	.word	4
	.word	_Label_1860
	.word	-20
	.word	4
	.word	_Label_1861
	.word	-24
	.word	4
	.word	_Label_1862
	.word	-28
	.word	4
	.word	_Label_1863
	.word	-32
	.word	4
	.word	0
_Label_1855:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1856:
	.ascii	"Pself\0"
	.align
_Label_1857:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1849\0"
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
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
	mov	1296,r13		! source line 1296
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1300,r13		! source line 1300
	mov	"\0\0AS",r10
!   _temp_1864 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1864 [entry ] into _temp_1865
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
!   _temp_1868 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1868 [entry ] into _temp_1869
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
!   Data Move: _temp_1867 = *_temp_1869  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1866 = _temp_1867 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1865 = _temp_1866  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1300,r13		! source line 1300
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
	.word	_Label_1870
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1871
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1872
	.word	12
	.word	4
	.word	_Label_1873
	.word	-12
	.word	4
	.word	_Label_1874
	.word	-16
	.word	4
	.word	_Label_1875
	.word	-20
	.word	4
	.word	_Label_1876
	.word	-24
	.word	4
	.word	_Label_1877
	.word	-28
	.word	4
	.word	_Label_1878
	.word	-32
	.word	4
	.word	0
_Label_1870:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1871:
	.ascii	"Pself\0"
	.align
_Label_1872:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1864\0"
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
_Label_3047:
	push	r0
	sub	r1,1,r1
	bne	_Label_3047
	mov	1305,r13		! source line 1305
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0AS",r10
!   _temp_1879 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1879 [entry ] into _temp_1880
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
!   _temp_1883 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1883 [entry ] into _temp_1884
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
!   Data Move: _temp_1882 = *_temp_1884  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1881 = _temp_1882 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1880 = _temp_1881  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1309,r13		! source line 1309
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
	.word	_Label_1885
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1886
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1887
	.word	12
	.word	4
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
_Label_1885:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1886:
	.ascii	"Pself\0"
	.align
_Label_1887:
	.byte	'I'
	.ascii	"entry\0"
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
	.ascii	"_temp_1882\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1879\0"
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
_Label_3048:
	push	r0
	sub	r1,1,r1
	bne	_Label_3048
	mov	1314,r13		! source line 1314
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0AS",r10
!   _temp_1894 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1894 [entry ] into _temp_1895
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
!   _temp_1898 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1898 [entry ] into _temp_1899
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
!   Data Move: _temp_1897 = *_temp_1899  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1896 = _temp_1897 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1895 = _temp_1896  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1318,r13		! source line 1318
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
	.word	_Label_1900
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1901
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1902
	.word	12
	.word	4
	.word	_Label_1903
	.word	-12
	.word	4
	.word	_Label_1904
	.word	-16
	.word	4
	.word	_Label_1905
	.word	-20
	.word	4
	.word	_Label_1906
	.word	-24
	.word	4
	.word	_Label_1907
	.word	-28
	.word	4
	.word	_Label_1908
	.word	-32
	.word	4
	.word	0
_Label_1900:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1901:
	.ascii	"Pself\0"
	.align
_Label_1902:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1894\0"
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
_Label_3049:
	push	r0
	sub	r1,1,r1
	bne	_Label_3049
	mov	1323,r13		! source line 1323
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0AS",r10
!   _temp_1909 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1909 [entry ] into _temp_1910
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
!   _temp_1913 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1913 [entry ] into _temp_1914
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
!   Data Move: _temp_1912 = *_temp_1914  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1911 = _temp_1912 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1910 = _temp_1911  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1327,r13		! source line 1327
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
	.word	_Label_1915
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1916
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1917
	.word	12
	.word	4
	.word	_Label_1918
	.word	-12
	.word	4
	.word	_Label_1919
	.word	-16
	.word	4
	.word	_Label_1920
	.word	-20
	.word	4
	.word	_Label_1921
	.word	-24
	.word	4
	.word	_Label_1922
	.word	-28
	.word	4
	.word	_Label_1923
	.word	-32
	.word	4
	.word	0
_Label_1915:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1916:
	.ascii	"Pself\0"
	.align
_Label_1917:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1909\0"
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
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
	mov	1332,r13		! source line 1332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1925 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1925 [0 ] into _temp_1926
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
!   _temp_1924 = _temp_1926		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1927 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1924  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1927  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1338,r13		! source line 1338
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1928
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1929
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1930
	.word	-12
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
	.word	0
_Label_1928:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1929:
	.ascii	"Pself\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1924\0"
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
_Label_3051:
	push	r0
	sub	r1,1,r1
	bne	_Label_3051
	mov	1343,r13		! source line 1343
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1358,r13		! source line 1358
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1934
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1934
	jmp	_Label_1935
_Label_1934:
! THEN...
	mov	1359,r13		! source line 1359
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1359,r13		! source line 1359
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1936
_Label_1935:
! ELSE...
	mov	1360,r13		! source line 1360
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1360,r13		! source line 1360
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1938		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1938
!	jmp	_Label_1937
_Label_1937:
! THEN...
	mov	1361,r13		! source line 1361
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1938:
! END IF...
_Label_1936:
! ASSIGNMENT STATEMENT...
	mov	1363,r13		! source line 1363
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
	mov	1364,r13		! source line 1364
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
	mov	1367,r13		! source line 1367
	mov	"\0\0WH",r10
_Label_1939:
!	jmp	_Label_1940
_Label_1940:
	mov	1367,r13		! source line 1367
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1943		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1943
!	jmp	_Label_1942
_Label_1942:
! THEN...
	mov	1369,r13		! source line 1369
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1944 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1944  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1369,r13		! source line 1369
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1943:
! IF STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0IF",r10
	mov	1372,r13		! source line 1372
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1948) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1947  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1947 then goto _Label_1946 else goto _Label_1945
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1945
	jmp	_Label_1946
_Label_1945:
! THEN...
	mov	1373,r13		! source line 1373
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1949 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1949  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1373,r13		! source line 1373
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1374,r13		! source line 1374
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1946:
! ASSIGNMENT STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0AS",r10
	mov	1376,r13		! source line 1376
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1951) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1950  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1950 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0WH",r10
_Label_1952:
!   if offset >= 8192 then goto _Label_1954		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1954
!	jmp	_Label_1953
_Label_1953:
	mov	1378,r13		! source line 1378
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1955 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1955  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1384,r13		! source line 1384
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1957		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1957
!	jmp	_Label_1956
_Label_1956:
! THEN...
	mov	1387,r13		! source line 1387
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1957:
! END WHILE...
	jmp	_Label_1952
_Label_1954:
! ASSIGNMENT STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1939
_Label_1941:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1958
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1959
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1960
	.word	12
	.word	4
	.word	_Label_1961
	.word	16
	.word	4
	.word	_Label_1962
	.word	20
	.word	4
	.word	_Label_1963
	.word	-9
	.word	1
	.word	_Label_1964
	.word	-16
	.word	4
	.word	_Label_1965
	.word	-20
	.word	4
	.word	_Label_1966
	.word	-24
	.word	4
	.word	_Label_1967
	.word	-28
	.word	4
	.word	_Label_1968
	.word	-10
	.word	1
	.word	_Label_1969
	.word	-32
	.word	4
	.word	_Label_1970
	.word	-36
	.word	4
	.word	_Label_1971
	.word	-40
	.word	4
	.word	_Label_1972
	.word	-44
	.word	4
	.word	_Label_1973
	.word	-48
	.word	4
	.word	0
_Label_1958:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1959:
	.ascii	"Pself\0"
	.align
_Label_1960:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1961:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1962:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1963:
	.byte	'C'
	.ascii	"_temp_1955\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1968:
	.byte	'C'
	.ascii	"_temp_1947\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1970:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1971:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1972:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1973:
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
_Label_3052:
	push	r0
	sub	r1,1,r1
	bne	_Label_3052
	mov	1397,r13		! source line 1397
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1408,r13		! source line 1408
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1974
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1974
	jmp	_Label_1975
_Label_1974:
! THEN...
	mov	1409,r13		! source line 1409
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1976
_Label_1975:
! ELSE...
	mov	1410,r13		! source line 1410
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1978		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1978
!	jmp	_Label_1977
_Label_1977:
! THEN...
	mov	1411,r13		! source line 1411
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1411,r13		! source line 1411
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1978:
! END IF...
_Label_1976:
! ASSIGNMENT STATEMENT...
	mov	1413,r13		! source line 1413
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
	mov	1414,r13		! source line 1414
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
	mov	1415,r13		! source line 1415
	mov	"\0\0WH",r10
_Label_1979:
!	jmp	_Label_1980
_Label_1980:
	mov	1415,r13		! source line 1415
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1985		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1985
	jmp	_Label_1982
_Label_1985:
	mov	1417,r13		! source line 1417
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1987) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1986  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1986 then goto _Label_1984 else goto _Label_1982
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1982
	jmp	_Label_1984
_Label_1984:
	mov	1418,r13		! source line 1418
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1989) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1988  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1988 then goto _Label_1983 else goto _Label_1982
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1982
	jmp	_Label_1983
_Label_1982:
! THEN...
	mov	1419,r13		! source line 1419
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1983:
! ASSIGNMENT STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0AS",r10
	mov	1421,r13		! source line 1421
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1991) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1990  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1990 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0WH",r10
_Label_1992:
!   if offset >= 8192 then goto _Label_1994		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1994
!	jmp	_Label_1993
_Label_1993:
	mov	1422,r13		! source line 1422
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1995 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1995  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1997		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1997
!	jmp	_Label_1996
_Label_1996:
! THEN...
	mov	1429,r13		! source line 1429
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1997:
! END WHILE...
	jmp	_Label_1992
_Label_1994:
! ASSIGNMENT STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1979
_Label_1981:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1998
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1999
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2000
	.word	12
	.word	4
	.word	_Label_2001
	.word	16
	.word	4
	.word	_Label_2002
	.word	20
	.word	4
	.word	_Label_2003
	.word	-9
	.word	1
	.word	_Label_2004
	.word	-16
	.word	4
	.word	_Label_2005
	.word	-20
	.word	4
	.word	_Label_2006
	.word	-24
	.word	4
	.word	_Label_2007
	.word	-10
	.word	1
	.word	_Label_2008
	.word	-28
	.word	4
	.word	_Label_2009
	.word	-11
	.word	1
	.word	_Label_2010
	.word	-32
	.word	4
	.word	_Label_2011
	.word	-36
	.word	4
	.word	_Label_2012
	.word	-40
	.word	4
	.word	_Label_2013
	.word	-44
	.word	4
	.word	0
_Label_1998:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1999:
	.ascii	"Pself\0"
	.align
_Label_2000:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2001:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2002:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2003:
	.byte	'C'
	.ascii	"_temp_1995\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2007:
	.byte	'C'
	.ascii	"_temp_1988\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_2009:
	.byte	'C'
	.ascii	"_temp_1986\0"
	.align
_Label_2010:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2011:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2012:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2013:
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
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
	mov	1439,r13		! source line 1439
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1463,r13		! source line 1463
	mov	"\0\0IF",r10
	mov	1463,r13		! source line 1463
	mov	"\0\0SE",r10
!   _temp_2017 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2018) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2017  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2016  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2016 >= 4 then goto _Label_2015		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2015
!	jmp	_Label_2014
_Label_2014:
! THEN...
	mov	1466,r13		! source line 1466
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2015:
! IF STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2020		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2020
!	jmp	_Label_2019
_Label_2019:
! THEN...
	mov	1471,r13		! source line 1471
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2020:
! ASSIGNMENT STATEMENT...
	mov	1474,r13		! source line 1474
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
	mov	1476,r13		! source line 1476
	mov	"\0\0RE",r10
	mov	1476,r13		! source line 1476
	mov	"\0\0SE",r10
!   _temp_2023 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2022 = _temp_2023 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2024 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2025) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2022  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2024  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2021  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2021  (sizeInBytes=4)
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
	.word	_Label_2026
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2027
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2028
	.word	12
	.word	4
	.word	_Label_2029
	.word	16
	.word	4
	.word	_Label_2030
	.word	20
	.word	4
	.word	_Label_2031
	.word	-12
	.word	4
	.word	_Label_2032
	.word	-16
	.word	4
	.word	_Label_2033
	.word	-20
	.word	4
	.word	_Label_2034
	.word	-24
	.word	4
	.word	_Label_2035
	.word	-28
	.word	4
	.word	_Label_2036
	.word	-32
	.word	4
	.word	_Label_2037
	.word	-36
	.word	4
	.word	_Label_2038
	.word	-40
	.word	4
	.word	_Label_2039
	.word	-44
	.word	4
	.word	0
_Label_2026:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2027:
	.ascii	"Pself\0"
	.align
_Label_2028:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2029:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2030:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2039:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2040
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2040:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2041
	.word	_sourceFileName
	.word	309		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2041:
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
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	1915,r13		! source line 1915
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2042 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2042  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1916,r13		! source line 1916
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1923,r13		! source line 1923
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
	mov	1924,r13		! source line 1924
	mov	"\0\0SE",r10
!   _temp_2044 = &semUsedInSynchMethods
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
	mov	1925,r13		! source line 1925
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
	mov	1926,r13		! source line 1926
	mov	"\0\0SE",r10
!   _temp_2046 = &diskBusy
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
	mov	1926,r13		! source line 1926
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
	.word	0
_Label_2047:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
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
	.ascii	"_temp_2045\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2042\0"
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
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	1931,r13		! source line 1931
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0SE",r10
!   _temp_2054 = &diskBusy
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
	mov	1945,r13		! source line 1945
	mov	"\0\0WH",r10
_Label_2055:
!	jmp	_Label_2056
_Label_2056:
	mov	1945,r13		! source line 1945
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0SE",r10
!   _temp_2058 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2059) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2058  sizeInBytes=4
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
	mov	1949,r13		! source line 1949
	mov	"\0\0SE",r10
!   _temp_2060 = &semUsedInSynchMethods
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
	mov	1952,r13		! source line 1952
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2069 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2063
	cmp	r1,2
	be	_Label_2064
	cmp	r1,3
	be	_Label_2065
	cmp	r1,4
	be	_Label_2066
	cmp	r1,5
	be	_Label_2067
	cmp	r1,6
	be	_Label_2068
	jmp	_Label_2061
! CASE 1...
_Label_2063:
! SEND STATEMENT...
	mov	1954,r13		! source line 1954
	mov	"\0\0SE",r10
!   _temp_2070 = &diskBusy
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
	mov	1955,r13		! source line 1955
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2064:
! CALL STATEMENT...
!   _temp_2071 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2071  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1957,r13		! source line 1957
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2065:
! CALL STATEMENT...
!   _temp_2072 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2072  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1959,r13		! source line 1959
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2066:
! CALL STATEMENT...
!   _temp_2073 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2073  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1961,r13		! source line 1961
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2067:
! BREAK STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0BR",r10
	jmp	_Label_2062
! CASE 6...
_Label_2068:
! CALL STATEMENT...
!   _temp_2074 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2074  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1967,r13		! source line 1967
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2061:
! CALL STATEMENT...
!   _temp_2075 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2075  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1969,r13		! source line 1969
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2062:
! END WHILE...
	jmp	_Label_2055
_Label_2057:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2076
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2077
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2078
	.word	12
	.word	4
	.word	_Label_2079
	.word	16
	.word	4
	.word	_Label_2080
	.word	20
	.word	4
	.word	_Label_2081
	.word	-12
	.word	4
	.word	_Label_2082
	.word	-16
	.word	4
	.word	_Label_2083
	.word	-20
	.word	4
	.word	_Label_2084
	.word	-24
	.word	4
	.word	_Label_2085
	.word	-28
	.word	4
	.word	_Label_2086
	.word	-32
	.word	4
	.word	_Label_2087
	.word	-36
	.word	4
	.word	_Label_2088
	.word	-40
	.word	4
	.word	_Label_2089
	.word	-44
	.word	4
	.word	_Label_2090
	.word	-48
	.word	4
	.word	_Label_2091
	.word	-52
	.word	4
	.word	0
_Label_2076:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2077:
	.ascii	"Pself\0"
	.align
_Label_2078:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2079:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2080:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2054\0"
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
	mov	1978,r13		! source line 1978
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	1996,r13		! source line 1996
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
	mov	1997,r13		! source line 1997
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
	mov	1998,r13		! source line 1998
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
	mov	1999,r13		! source line 1999
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
	mov	1999,r13		! source line 1999
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
	.word	_Label_2092
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2093
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2094
	.word	12
	.word	4
	.word	_Label_2095
	.word	16
	.word	4
	.word	_Label_2096
	.word	20
	.word	4
	.word	_Label_2097
	.word	24
	.word	4
	.word	0
_Label_2092:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2093:
	.ascii	"Pself\0"
	.align
_Label_2094:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2095:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2096:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2097:
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
_Label_3056:
	push	r0
	sub	r1,1,r1
	bne	_Label_3056
	mov	2004,r13		! source line 2004
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0SE",r10
!   _temp_2098 = &diskBusy
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
	mov	2017,r13		! source line 2017
	mov	"\0\0WH",r10
_Label_2099:
!	jmp	_Label_2100
_Label_2100:
	mov	2017,r13		! source line 2017
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0SE",r10
!   _temp_2102 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2103) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2102  sizeInBytes=4
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
	mov	2020,r13		! source line 2020
	mov	"\0\0SE",r10
!   _temp_2104 = &semUsedInSynchMethods
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
	mov	2023,r13		! source line 2023
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2113 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2107
	cmp	r1,2
	be	_Label_2108
	cmp	r1,3
	be	_Label_2109
	cmp	r1,4
	be	_Label_2110
	cmp	r1,5
	be	_Label_2111
	cmp	r1,6
	be	_Label_2112
	jmp	_Label_2105
! CASE 1...
_Label_2107:
! SEND STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0SE",r10
!   _temp_2114 = &diskBusy
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
	mov	2026,r13		! source line 2026
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2108:
! CALL STATEMENT...
!   _temp_2115 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2115  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2028,r13		! source line 2028
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2109:
! CALL STATEMENT...
!   _temp_2116 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2116  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2030,r13		! source line 2030
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2110:
! CALL STATEMENT...
!   _temp_2117 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2117  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2032,r13		! source line 2032
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2111:
! BREAK STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0BR",r10
	jmp	_Label_2106
! CASE 6...
_Label_2112:
! CALL STATEMENT...
!   _temp_2118 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2118  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2038,r13		! source line 2038
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2105:
! CALL STATEMENT...
!   _temp_2119 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2119  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2040,r13		! source line 2040
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2106:
! END WHILE...
	jmp	_Label_2099
_Label_2101:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2120
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2121
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2122
	.word	12
	.word	4
	.word	_Label_2123
	.word	16
	.word	4
	.word	_Label_2124
	.word	20
	.word	4
	.word	_Label_2125
	.word	-12
	.word	4
	.word	_Label_2126
	.word	-16
	.word	4
	.word	_Label_2127
	.word	-20
	.word	4
	.word	_Label_2128
	.word	-24
	.word	4
	.word	_Label_2129
	.word	-28
	.word	4
	.word	_Label_2130
	.word	-32
	.word	4
	.word	_Label_2131
	.word	-36
	.word	4
	.word	_Label_2132
	.word	-40
	.word	4
	.word	_Label_2133
	.word	-44
	.word	4
	.word	_Label_2134
	.word	-48
	.word	4
	.word	_Label_2135
	.word	-52
	.word	4
	.word	0
_Label_2120:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2121:
	.ascii	"Pself\0"
	.align
_Label_2122:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2123:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2124:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2098\0"
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
	mov	2049,r13		! source line 2049
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2066,r13		! source line 2066
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
	mov	2067,r13		! source line 2067
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
	mov	2068,r13		! source line 2068
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
	mov	2069,r13		! source line 2069
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
	mov	2069,r13		! source line 2069
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
	.word	_Label_2136
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2137
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2138
	.word	12
	.word	4
	.word	_Label_2139
	.word	16
	.word	4
	.word	_Label_2140
	.word	20
	.word	4
	.word	_Label_2141
	.word	24
	.word	4
	.word	0
_Label_2136:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2137:
	.ascii	"Pself\0"
	.align
_Label_2138:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2139:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2140:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2141:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2142
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
_Label_2142:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2143
	.word	_sourceFileName
	.word	332		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2143:
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
_Label_3057:
	push	r0
	sub	r1,1,r1
	bne	_Label_3057
	mov	2080,r13		! source line 2080
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2144 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2144  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2087,r13		! source line 2087
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2088,r13		! source line 2088
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
	mov	2089,r13		! source line 2089
	mov	"\0\0SE",r10
!   _temp_2146 = &fileManagerLock
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
	mov	2092,r13		! source line 2092
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
	mov	2093,r13		! source line 2093
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
	mov	2094,r13		! source line 2094
	mov	"\0\0SE",r10
!   _temp_2149 = &anFCBBecameFree
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
	mov	2095,r13		! source line 2095
	mov	"\0\0AS",r10
!   _temp_2150 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2152 = &_temp_2151
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2152 = _temp_2152 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2154 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3058:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3058
!   _temp_2154 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2156:
!   Data Move: *_temp_2152 = _temp_2154  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3059:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3059
!   _temp_2152 = _temp_2152 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2153 = _temp_2153 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2153) then goto _Label_2156
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2156
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2157 = &_temp_2151
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3060
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3060:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2150 = *_temp_2157  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3061:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3061
! FOR STATEMENT...
	mov	2097,r13		! source line 2097
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2162 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2163 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2162  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2158:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2163 then goto _Label_2161		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2161
_Label_2159:
	mov	2097,r13		! source line 2097
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0AS",r10
!   _temp_2164 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2164 [i ] into _temp_2165
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
!   _temp_2166 = _temp_2165 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2166 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0SE",r10
!   _temp_2167 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2167 [i ] into _temp_2168
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
	mov	2100,r13		! source line 2100
	mov	"\0\0SE",r10
!   _temp_2170 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2170 [i ] into _temp_2171
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
!   _temp_2169 = _temp_2171		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2172 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2169  sizeInBytes=4
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
_Label_2160:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2158
! END FOR
_Label_2161:
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
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
	mov	2105,r13		! source line 2105
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
	mov	2106,r13		! source line 2106
	mov	"\0\0SE",r10
!   _temp_2175 = &anOpenFileBecameFree
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
	mov	2107,r13		! source line 2107
	mov	"\0\0AS",r10
!   _temp_2176 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2178 = &_temp_2177
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2178 = _temp_2178 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2180 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3062:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3062
!   _temp_2180 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2182:
!   Data Move: *_temp_2178 = _temp_2180  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3063:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3063
!   _temp_2178 = _temp_2178 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2179 = _temp_2179 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2179) then goto _Label_2182
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2182
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2183 = &_temp_2177
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3064
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3064:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2176 = *_temp_2183  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3065:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3065
! FOR STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2188 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2189 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2188  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2184:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2189 then goto _Label_2187		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2187
_Label_2185:
	mov	2109,r13		! source line 2109
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0AS",r10
!   _temp_2190 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2190 [i ] into _temp_2191
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
!   _temp_2192 = _temp_2191 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2192 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0SE",r10
!   _temp_2194 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2194 [i ] into _temp_2195
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
!   _temp_2193 = _temp_2195		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2196 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2193  sizeInBytes=4
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
_Label_2186:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2184
! END FOR
_Label_2187:
! ASSIGNMENT STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3066:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3066
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0AS",r10
!   _temp_2198 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2199 = _temp_2198 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2199 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0AS",r10
	mov	2121,r13		! source line 2121
	mov	"\0\0SE",r10
!   _temp_2200 = &_P_Kernel_frameManager
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
	mov	2122,r13		! source line 2122
	mov	"\0\0SE",r10
!   _temp_2201 = &_P_Kernel_diskDriver
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
	mov	2122,r13		! source line 2122
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
	.word	_Label_2202
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2203
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2204
	.word	-12
	.word	4
	.word	_Label_2205
	.word	-16
	.word	4
	.word	_Label_2206
	.word	-20
	.word	4
	.word	_Label_2207
	.word	-24
	.word	4
	.word	_Label_2208
	.word	-28
	.word	4
	.word	_Label_2209
	.word	-32
	.word	4
	.word	_Label_2210
	.word	-36
	.word	4
	.word	_Label_2211
	.word	-40
	.word	4
	.word	_Label_2212
	.word	-44
	.word	4
	.word	_Label_2213
	.word	-48
	.word	4
	.word	_Label_2214
	.word	-52
	.word	4
	.word	_Label_2215
	.word	-56
	.word	4
	.word	_Label_2216
	.word	-60
	.word	4
	.word	_Label_2217
	.word	-64
	.word	4
	.word	_Label_2218
	.word	-68
	.word	4
	.word	_Label_2219
	.word	-72
	.word	4
	.word	_Label_2220
	.word	-100
	.word	28
	.word	_Label_2221
	.word	-104
	.word	4
	.word	_Label_2222
	.word	-108
	.word	4
	.word	_Label_2223
	.word	-392
	.word	284
	.word	_Label_2224
	.word	-396
	.word	4
	.word	_Label_2225
	.word	-400
	.word	4
	.word	_Label_2226
	.word	-404
	.word	4
	.word	_Label_2227
	.word	-408
	.word	4
	.word	_Label_2228
	.word	-412
	.word	4
	.word	_Label_2229
	.word	-416
	.word	4
	.word	_Label_2230
	.word	-420
	.word	4
	.word	_Label_2231
	.word	-424
	.word	4
	.word	_Label_2232
	.word	-428
	.word	4
	.word	_Label_2233
	.word	-432
	.word	4
	.word	_Label_2234
	.word	-436
	.word	4
	.word	_Label_2235
	.word	-440
	.word	4
	.word	_Label_2236
	.word	-444
	.word	4
	.word	_Label_2237
	.word	-448
	.word	4
	.word	_Label_2238
	.word	-452
	.word	4
	.word	_Label_2239
	.word	-456
	.word	4
	.word	_Label_2240
	.word	-460
	.word	4
	.word	_Label_2241
	.word	-500
	.word	40
	.word	_Label_2242
	.word	-504
	.word	4
	.word	_Label_2243
	.word	-508
	.word	4
	.word	_Label_2244
	.word	-912
	.word	404
	.word	_Label_2245
	.word	-916
	.word	4
	.word	_Label_2246
	.word	-920
	.word	4
	.word	_Label_2247
	.word	-924
	.word	4
	.word	_Label_2248
	.word	-928
	.word	4
	.word	_Label_2249
	.word	-932
	.word	4
	.word	_Label_2250
	.word	-936
	.word	4
	.word	_Label_2251
	.word	-940
	.word	4
	.word	_Label_2252
	.word	-944
	.word	4
	.word	0
_Label_2202:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2203:
	.ascii	"Pself\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2252:
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
_Label_3067:
	push	r0
	sub	r1,1,r1
	bne	_Label_3067
	mov	2129,r13		! source line 2129
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0SE",r10
!   _temp_2253 = &fileManagerLock
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
!   _temp_2254 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2254  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2132,r13		! source line 2132
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2259 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2260 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2259  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2255:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2260 then goto _Label_2258		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2258
_Label_2256:
	mov	2133,r13		! source line 2133
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2261 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2261  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2134,r13		! source line 2134
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2135,r13		! source line 2135
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2262 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2262  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2136,r13		! source line 2136
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0SE",r10
!   _temp_2263 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2263 [i ] into _temp_2264
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
_Label_2257:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2255
! END FOR
_Label_2258:
! CALL STATEMENT...
!   _temp_2265 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2265  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2139,r13		! source line 2139
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0SE",r10
!   _temp_2266 = _function_206_printFCB
	set	_function_206_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2267 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2266  sizeInBytes=4
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
	mov	2141,r13		! source line 2141
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2268 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2268  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2142,r13		! source line 2142
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2273 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2274 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2273  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2269:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2274 then goto _Label_2272		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2272
_Label_2270:
	mov	2143,r13		! source line 2143
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2275 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2275  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2144,r13		! source line 2144
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2145,r13		! source line 2145
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2276 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2276  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2146,r13		! source line 2146
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2278 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2278 [i ] into _temp_2279
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
!   _temp_2277 = _temp_2279		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2277  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2147,r13		! source line 2147
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2280 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2280  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2148,r13		! source line 2148
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2149,r13		! source line 2149
	mov	"\0\0SE",r10
!   _temp_2281 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2281 [i ] into _temp_2282
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
_Label_2271:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2269
! END FOR
_Label_2272:
! CALL STATEMENT...
!   _temp_2283 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2283  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2151,r13		! source line 2151
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0SE",r10
!   _temp_2284 = _function_205_printOpen
	set	_function_205_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2285 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2284  sizeInBytes=4
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
	mov	2153,r13		! source line 2153
	mov	"\0\0SE",r10
!   _temp_2286 = &fileManagerLock
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
	mov	2153,r13		! source line 2153
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
	.word	_Label_2287
	.word	4		! total size of parameters
	.word	116		! frame size = 116
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
	.word	_Label_2297
	.word	-44
	.word	4
	.word	_Label_2298
	.word	-48
	.word	4
	.word	_Label_2299
	.word	-52
	.word	4
	.word	_Label_2300
	.word	-56
	.word	4
	.word	_Label_2301
	.word	-60
	.word	4
	.word	_Label_2302
	.word	-64
	.word	4
	.word	_Label_2303
	.word	-68
	.word	4
	.word	_Label_2304
	.word	-72
	.word	4
	.word	_Label_2305
	.word	-76
	.word	4
	.word	_Label_2306
	.word	-80
	.word	4
	.word	_Label_2307
	.word	-84
	.word	4
	.word	_Label_2308
	.word	-88
	.word	4
	.word	_Label_2309
	.word	-92
	.word	4
	.word	_Label_2310
	.word	-96
	.word	4
	.word	_Label_2311
	.word	-100
	.word	4
	.word	_Label_2312
	.word	-104
	.word	4
	.word	_Label_2313
	.word	-108
	.word	4
	.word	_Label_2314
	.word	-112
	.word	4
	.word	_Label_2315
	.word	-116
	.word	4
	.word	0
_Label_2287:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
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
	.ascii	"_temp_2280\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2315:
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
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
	mov	2158,r13		! source line 2158
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2174,r13		! source line 2174
	mov	"\0\0AS",r10
	mov	2174,r13		! source line 2174
	mov	"\0\0SE",r10
!   _temp_2316 = &_P_Kernel_fileManager
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
	mov	2175,r13		! source line 2175
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2317
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2317
	jmp	_Label_2318
_Label_2317:
! THEN...
	mov	2176,r13		! source line 2176
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2318:
! SEND STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0SE",r10
!   _temp_2319 = &fileManagerLock
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
	mov	2181,r13		! source line 2181
	mov	"\0\0WH",r10
_Label_2320:
	mov	2181,r13		! source line 2181
	mov	"\0\0SE",r10
!   _temp_2323 = &openFileFreeList
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
!   if result==true then goto _Label_2321 else goto _Label_2322
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2322
	jmp	_Label_2321
_Label_2321:
	mov	2181,r13		! source line 2181
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0SE",r10
!   _temp_2324 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2325 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2324  sizeInBytes=4
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
	jmp	_Label_2320
_Label_2322:
! ASSIGNMENT STATEMENT...
	mov	2184,r13		! source line 2184
	mov	"\0\0AS",r10
	mov	2184,r13		! source line 2184
	mov	"\0\0SE",r10
!   _temp_2326 = &openFileFreeList
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
	mov	2187,r13		! source line 2187
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2327 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2327 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2188,r13		! source line 2188
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2328 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2328 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2329 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2329 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0SE",r10
!   _temp_2330 = &fileManagerLock
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
	mov	2194,r13		! source line 2194
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
	.word	_Label_2331
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2332
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2333
	.word	12
	.word	4
	.word	_Label_2334
	.word	-12
	.word	4
	.word	_Label_2335
	.word	-16
	.word	4
	.word	_Label_2336
	.word	-20
	.word	4
	.word	_Label_2337
	.word	-24
	.word	4
	.word	_Label_2338
	.word	-28
	.word	4
	.word	_Label_2339
	.word	-32
	.word	4
	.word	_Label_2340
	.word	-36
	.word	4
	.word	_Label_2341
	.word	-40
	.word	4
	.word	_Label_2342
	.word	-44
	.word	4
	.word	_Label_2343
	.word	-48
	.word	4
	.word	_Label_2344
	.word	-52
	.word	4
	.word	_Label_2345
	.word	-56
	.word	4
	.word	0
_Label_2331:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2332:
	.ascii	"Pself\0"
	.align
_Label_2333:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2344:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2345:
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
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
	mov	2199,r13		! source line 2199
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2227,r13		! source line 2227
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
	mov	2228,r13		! source line 2228
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2347		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2347
!	jmp	_Label_2346
_Label_2346:
! THEN...
	mov	2230,r13		! source line 2230
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2348 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2348  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2230,r13		! source line 2230
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2347:
! ASSIGNMENT STATEMENT...
	mov	2234,r13		! source line 2234
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
	mov	2235,r13		! source line 2235
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2236,r13		! source line 2236
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
	mov	2237,r13		! source line 2237
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0WH",r10
_Label_2349:
!   if numFiles <= 0 then goto _Label_2351		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2351
!	jmp	_Label_2350
_Label_2350:
	mov	2240,r13		! source line 2240
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2352 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2352  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2241,r13		! source line 2241
	mov	"\0\0CA",r10
	call	_function_207_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2353 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2353  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2243,r13		! source line 2243
	mov	"\0\0CA",r10
	call	_function_207_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2354 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2354  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2245,r13		! source line 2245
	mov	"\0\0CA",r10
	call	_function_207_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2247,r13		! source line 2247
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2358 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2358 then goto _Label_2356		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2356
!	jmp	_Label_2357
_Label_2357:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2360
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
!   _temp_2359 = _temp_2360		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2359  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2248,r13		! source line 2248
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2355 else goto _Label_2356
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2356
	jmp	_Label_2355
_Label_2355:
! THEN...
	mov	2249,r13		! source line 2249
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0BR",r10
	jmp	_Label_2351
! END IF...
_Label_2356:
! ASSIGNMENT STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2349
_Label_2351:
! IF STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2362		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2362
!	jmp	_Label_2361
_Label_2361:
! THEN...
	mov	2257,r13		! source line 2257
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2362:
! SEND STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0SE",r10
!   _temp_2363 = &fileManagerLock
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
	mov	2262,r13		! source line 2262
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2368 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2369 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2368  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2364:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2369 then goto _Label_2367		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2367
_Label_2365:
	mov	2262,r13		! source line 2262
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0AS",r10
!   _temp_2370 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2370 [i ] into _temp_2371
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
!   fcb = _temp_2371		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2375 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2374 = *_temp_2375  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2374 != start then goto _Label_2373		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2373
!	jmp	_Label_2372
_Label_2372:
! THEN...
	mov	2265,r13		! source line 2265
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2376 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2379 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2378 = *_temp_2379  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2377 = _temp_2378 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2376 = _temp_2377  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0SE",r10
!   _temp_2380 = &fileManagerLock
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
	mov	2267,r13		! source line 2267
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2373:
!   Increment the FOR-LOOP index variable and jump back
_Label_2366:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2364
! END FOR
_Label_2367:
! WHILE STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0WH",r10
_Label_2381:
	mov	2272,r13		! source line 2272
	mov	"\0\0SE",r10
!   _temp_2384 = &fcbFreeList
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
!   if result==true then goto _Label_2382 else goto _Label_2383
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2383
	jmp	_Label_2382
_Label_2382:
	mov	2272,r13		! source line 2272
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2273,r13		! source line 2273
	mov	"\0\0SE",r10
!   _temp_2385 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2386 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2385  sizeInBytes=4
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
	jmp	_Label_2381
_Label_2383:
! ASSIGNMENT STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0AS",r10
	mov	2275,r13		! source line 2275
	mov	"\0\0SE",r10
!   _temp_2387 = &fcbFreeList
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
	mov	2278,r13		! source line 2278
	mov	"\0\0SE",r10
!   _temp_2388 = &fileManagerLock
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
	mov	2281,r13		! source line 2281
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2389 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2389 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2390 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2390 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2391 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2391 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2396 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2395 = *_temp_2396  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2395 < 0 then goto _Label_2394		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2394
	jmp	_Label_2392
_Label_2394:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2397 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2397 ) then goto _Label_2393		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2393
!	jmp	_Label_2392
_Label_2392:
! THEN...
	mov	2285,r13		! source line 2285
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2398 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2398  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2285,r13		! source line 2285
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2393:
! RETURN STATEMENT...
	mov	2287,r13		! source line 2287
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
	.word	_Label_2399
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2400
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2401
	.word	12
	.word	4
	.word	_Label_2402
	.word	-12
	.word	4
	.word	_Label_2403
	.word	-16
	.word	4
	.word	_Label_2404
	.word	-20
	.word	4
	.word	_Label_2405
	.word	-24
	.word	4
	.word	_Label_2406
	.word	-28
	.word	4
	.word	_Label_2407
	.word	-32
	.word	4
	.word	_Label_2408
	.word	-36
	.word	4
	.word	_Label_2409
	.word	-40
	.word	4
	.word	_Label_2410
	.word	-44
	.word	4
	.word	_Label_2411
	.word	-48
	.word	4
	.word	_Label_2412
	.word	-52
	.word	4
	.word	_Label_2413
	.word	-56
	.word	4
	.word	_Label_2414
	.word	-60
	.word	4
	.word	_Label_2415
	.word	-64
	.word	4
	.word	_Label_2416
	.word	-68
	.word	4
	.word	_Label_2417
	.word	-72
	.word	4
	.word	_Label_2418
	.word	-76
	.word	4
	.word	_Label_2419
	.word	-80
	.word	4
	.word	_Label_2420
	.word	-84
	.word	4
	.word	_Label_2421
	.word	-88
	.word	4
	.word	_Label_2422
	.word	-92
	.word	4
	.word	_Label_2423
	.word	-96
	.word	4
	.word	_Label_2424
	.word	-100
	.word	4
	.word	_Label_2425
	.word	-104
	.word	4
	.word	_Label_2426
	.word	-108
	.word	4
	.word	_Label_2427
	.word	-112
	.word	4
	.word	_Label_2428
	.word	-116
	.word	4
	.word	_Label_2429
	.word	-120
	.word	4
	.word	_Label_2430
	.word	-124
	.word	4
	.word	_Label_2431
	.word	-128
	.word	4
	.word	_Label_2432
	.word	-132
	.word	4
	.word	_Label_2433
	.word	-136
	.word	4
	.word	_Label_2434
	.word	-140
	.word	4
	.word	_Label_2435
	.word	-144
	.word	4
	.word	_Label_2436
	.word	-148
	.word	4
	.word	_Label_2437
	.word	-152
	.word	4
	.word	_Label_2438
	.word	-156
	.word	4
	.word	_Label_2439
	.word	-160
	.word	4
	.word	0
_Label_2399:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2400:
	.ascii	"Pself\0"
	.align
_Label_2401:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2433:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2434:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2435:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2436:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2437:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2438:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2439:
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
_Label_3070:
	push	r0
	sub	r1,1,r1
	bne	_Label_3070
	mov	2300,r13		! source line 2300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0IF",r10
!   _temp_2442 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2442 then goto _Label_2441		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2441
!	jmp	_Label_2440
_Label_2440:
! THEN...
	mov	2303,r13		! source line 2303
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2441:
! SEND STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0SE",r10
!   _temp_2443 = &fileManagerLock
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
	mov	2306,r13		! source line 2306
	mov	"\0\0SE",r10
!   _temp_2444 = &_P_Kernel_fileManager
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
	mov	2307,r13		! source line 2307
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2445 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2445  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2308,r13		! source line 2308
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2446 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2449 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2448 = *_temp_2449  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2447 = _temp_2448 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2446 = _temp_2447  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2453 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2452 = *_temp_2453  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2452 > 0 then goto _Label_2451		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2451
!	jmp	_Label_2450
_Label_2450:
! THEN...
	mov	2310,r13		! source line 2310
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2310,r13		! source line 2310
	mov	"\0\0SE",r10
!   _temp_2454 = &openFileFreeList
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
	mov	2311,r13		! source line 2311
	mov	"\0\0SE",r10
!   _temp_2455 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2456 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2455  sizeInBytes=4
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
	mov	2312,r13		! source line 2312
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2457 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2460 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2459 = *_temp_2460  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2458 = _temp_2459 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2457 = _temp_2458  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2464 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2463 = *_temp_2464  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2463 > 0 then goto _Label_2462		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2462
!	jmp	_Label_2461
_Label_2461:
! THEN...
	mov	2314,r13		! source line 2314
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0SE",r10
!   _temp_2465 = &fcbFreeList
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
	mov	2315,r13		! source line 2315
	mov	"\0\0SE",r10
!   _temp_2466 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2467 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2466  sizeInBytes=4
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
_Label_2462:
! END IF...
_Label_2451:
! SEND STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0SE",r10
!   _temp_2468 = &fileManagerLock
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
	mov	2318,r13		! source line 2318
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
	.word	_Label_2469
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2470
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2471
	.word	12
	.word	4
	.word	_Label_2472
	.word	-12
	.word	4
	.word	_Label_2473
	.word	-16
	.word	4
	.word	_Label_2474
	.word	-20
	.word	4
	.word	_Label_2475
	.word	-24
	.word	4
	.word	_Label_2476
	.word	-28
	.word	4
	.word	_Label_2477
	.word	-32
	.word	4
	.word	_Label_2478
	.word	-36
	.word	4
	.word	_Label_2479
	.word	-40
	.word	4
	.word	_Label_2480
	.word	-44
	.word	4
	.word	_Label_2481
	.word	-48
	.word	4
	.word	_Label_2482
	.word	-52
	.word	4
	.word	_Label_2483
	.word	-56
	.word	4
	.word	_Label_2484
	.word	-60
	.word	4
	.word	_Label_2485
	.word	-64
	.word	4
	.word	_Label_2486
	.word	-68
	.word	4
	.word	_Label_2487
	.word	-72
	.word	4
	.word	_Label_2488
	.word	-76
	.word	4
	.word	_Label_2489
	.word	-80
	.word	4
	.word	_Label_2490
	.word	-84
	.word	4
	.word	_Label_2491
	.word	-88
	.word	4
	.word	_Label_2492
	.word	-92
	.word	4
	.word	_Label_2493
	.word	-96
	.word	4
	.word	_Label_2494
	.word	-100
	.word	4
	.word	_Label_2495
	.word	-104
	.word	4
	.word	0
_Label_2469:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2470:
	.ascii	"Pself\0"
	.align
_Label_2471:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2495:
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
_Label_3071:
	push	r0
	sub	r1,1,r1
	bne	_Label_3071
	mov	2323,r13		! source line 2323
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2499 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2498 = *_temp_2499  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2498) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2500 = _temp_2498 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2500 ) then goto _Label_2497		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2497
!	jmp	_Label_2496
_Label_2496:
! THEN...
	mov	2329,r13		! source line 2329
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2505 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2504 = *_temp_2505  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2504) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2506 = _temp_2504 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2503 = *_temp_2506  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2503 >= 0 then goto _Label_2502		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2502
!	jmp	_Label_2501
_Label_2501:
! THEN...
	mov	2330,r13		! source line 2330
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2507 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2507  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2330,r13		! source line 2330
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2502:
! ASSIGNMENT STATEMENT...
	mov	2332,r13		! source line 2332
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2509 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2508 = *_temp_2509  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2508) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2510 = _temp_2508 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2510 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2514 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2513 = *_temp_2514  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2513) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2515 = _temp_2513 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2512 = *_temp_2515  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2518 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2517 = *_temp_2518  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2517) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2519 = _temp_2517 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2516 = *_temp_2519  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2511 = _temp_2512 + _temp_2516		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2522 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2521 = *_temp_2522  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2521) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2523 = _temp_2521 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2520 = *_temp_2523  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2524 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2511  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2520  sizeInBytes=4
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
_Label_2497:
! RETURN STATEMENT...
	mov	2328,r13		! source line 2328
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
	.word	_Label_2525
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2526
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2527
	.word	12
	.word	4
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
	.word	_Label_2536
	.word	-44
	.word	4
	.word	_Label_2537
	.word	-48
	.word	4
	.word	_Label_2538
	.word	-52
	.word	4
	.word	_Label_2539
	.word	-56
	.word	4
	.word	_Label_2540
	.word	-60
	.word	4
	.word	_Label_2541
	.word	-64
	.word	4
	.word	_Label_2542
	.word	-68
	.word	4
	.word	_Label_2543
	.word	-72
	.word	4
	.word	_Label_2544
	.word	-76
	.word	4
	.word	_Label_2545
	.word	-80
	.word	4
	.word	_Label_2546
	.word	-84
	.word	4
	.word	_Label_2547
	.word	-88
	.word	4
	.word	_Label_2548
	.word	-92
	.word	4
	.word	_Label_2549
	.word	-96
	.word	4
	.word	_Label_2550
	.word	-100
	.word	4
	.word	_Label_2551
	.word	-104
	.word	4
	.word	_Label_2552
	.word	-108
	.word	4
	.word	0
_Label_2525:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2526:
	.ascii	"Pself\0"
	.align
_Label_2527:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2498\0"
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
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
	mov	2342,r13		! source line 2342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0SE",r10
!   _temp_2553 = &fileManagerLock
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
	mov	2358,r13		! source line 2358
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2559		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2559
!   _temp_2558 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2560
_Label_2559:
!   _temp_2558 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2560:
!   if _temp_2558 then goto _Label_2557 else goto _Label_2554
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2554
	jmp	_Label_2557
_Label_2557:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2563 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2562 = *_temp_2563  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2562 == 0 then goto _Label_2564		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2564
!   _temp_2561 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2565
_Label_2564:
!   _temp_2561 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2565:
!   if _temp_2561 then goto _Label_2556 else goto _Label_2554
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2554
	jmp	_Label_2556
_Label_2556:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2568 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2567 = *_temp_2568  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2567) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2569 = _temp_2567 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2566 = *_temp_2569  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2566 >= 0 then goto _Label_2555		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2555
!	jmp	_Label_2554
_Label_2554:
! THEN...
	mov	2359,r13		! source line 2359
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2570 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2570  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2359,r13		! source line 2359
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2555:
! ASSIGNMENT STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2571 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2571  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0WH",r10
_Label_2572:
!   if numBytes <= 0 then goto _Label_2574		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2574
!	jmp	_Label_2573
_Label_2573:
	mov	2362,r13		! source line 2362
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2371,r13		! source line 2371
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
	mov	2372,r13		! source line 2372
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
	mov	2376,r13		! source line 2376
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2578 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2577 = *_temp_2578  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2577 == sector then goto _Label_2576		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2576
!	jmp	_Label_2575
_Label_2575:
! THEN...
	mov	2377,r13		! source line 2377
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2579) then goto _runtimeErrorNullPointer
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
	mov	2379,r13		! source line 2379
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2582 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2581 = *_temp_2582  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2580 = sector + _temp_2581		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2584 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2583 = *_temp_2584  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2585 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2580  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2583  sizeInBytes=4
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
	mov	2382,r13		! source line 2382
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2586 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2586 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2587 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2587 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2576:
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2589 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2588 = *_temp_2589  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2588 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0AS",r10
!   _temp_2590 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2590  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2386,r13		! source line 2386
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
	mov	2390,r13		! source line 2390
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2572
_Label_2574:
! SEND STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0SE",r10
!   _temp_2591 = &fileManagerLock
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
	mov	2401,r13		! source line 2401
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
	.word	_Label_2592
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2593
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2594
	.word	12
	.word	4
	.word	_Label_2595
	.word	16
	.word	4
	.word	_Label_2596
	.word	20
	.word	4
	.word	_Label_2597
	.word	24
	.word	4
	.word	_Label_2598
	.word	-16
	.word	4
	.word	_Label_2599
	.word	-20
	.word	4
	.word	_Label_2600
	.word	-24
	.word	4
	.word	_Label_2601
	.word	-28
	.word	4
	.word	_Label_2602
	.word	-32
	.word	4
	.word	_Label_2603
	.word	-36
	.word	4
	.word	_Label_2604
	.word	-40
	.word	4
	.word	_Label_2605
	.word	-44
	.word	4
	.word	_Label_2606
	.word	-48
	.word	4
	.word	_Label_2607
	.word	-52
	.word	4
	.word	_Label_2608
	.word	-56
	.word	4
	.word	_Label_2609
	.word	-60
	.word	4
	.word	_Label_2610
	.word	-64
	.word	4
	.word	_Label_2611
	.word	-68
	.word	4
	.word	_Label_2612
	.word	-72
	.word	4
	.word	_Label_2613
	.word	-76
	.word	4
	.word	_Label_2614
	.word	-80
	.word	4
	.word	_Label_2615
	.word	-84
	.word	4
	.word	_Label_2616
	.word	-88
	.word	4
	.word	_Label_2617
	.word	-92
	.word	4
	.word	_Label_2618
	.word	-96
	.word	4
	.word	_Label_2619
	.word	-100
	.word	4
	.word	_Label_2620
	.word	-104
	.word	4
	.word	_Label_2621
	.word	-9
	.word	1
	.word	_Label_2622
	.word	-10
	.word	1
	.word	_Label_2623
	.word	-108
	.word	4
	.word	_Label_2624
	.word	-112
	.word	4
	.word	_Label_2625
	.word	-116
	.word	4
	.word	_Label_2626
	.word	-120
	.word	4
	.word	_Label_2627
	.word	-124
	.word	4
	.word	_Label_2628
	.word	-128
	.word	4
	.word	0
_Label_2592:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2593:
	.ascii	"Pself\0"
	.align
_Label_2594:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2595:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2596:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2597:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2621:
	.byte	'C'
	.ascii	"_temp_2561\0"
	.align
_Label_2622:
	.byte	'C'
	.ascii	"_temp_2558\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2624:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2625:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2626:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2627:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2628:
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
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	2406,r13		! source line 2406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0SE",r10
!   _temp_2629 = &fileManagerLock
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
	mov	2423,r13		! source line 2423
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2635		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2635
!   _temp_2634 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2636
_Label_2635:
!   _temp_2634 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2636:
!   if _temp_2634 then goto _Label_2633 else goto _Label_2630
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2630
	jmp	_Label_2633
_Label_2633:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2639 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2638 = *_temp_2639  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2638 == 0 then goto _Label_2640		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2640
!   _temp_2637 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2641
_Label_2640:
!   _temp_2637 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2641:
!   if _temp_2637 then goto _Label_2632 else goto _Label_2630
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2630
	jmp	_Label_2632
_Label_2632:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2644 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2643 = *_temp_2644  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2643) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2645 = _temp_2643 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2642 = *_temp_2645  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2642 >= 0 then goto _Label_2631		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2631
!	jmp	_Label_2630
_Label_2630:
! THEN...
	mov	2424,r13		! source line 2424
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2646 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2646  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2424,r13		! source line 2424
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2631:
! ASSIGNMENT STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2647 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2647  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0WH",r10
_Label_2648:
!   if numBytes <= 0 then goto _Label_2650		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2650
!	jmp	_Label_2649
_Label_2649:
	mov	2427,r13		! source line 2427
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2436,r13		! source line 2436
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
	mov	2437,r13		! source line 2437
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
	mov	2441,r13		! source line 2441
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2654 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2653 = *_temp_2654  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2653 == sector then goto _Label_2652		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2652
!	jmp	_Label_2651
_Label_2651:
! THEN...
	mov	2443,r13		! source line 2443
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2655) then goto _runtimeErrorNullPointer
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
_Label_2652:
! ASSIGNMENT STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2657 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2656 = *_temp_2657  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2656 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0AS",r10
!   _temp_2658 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2658  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2446,r13		! source line 2446
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2447,r13		! source line 2447
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2662 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2661 = *_temp_2662  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2661 != sector then goto _Label_2660		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2660
!	jmp	_Label_2659
_Label_2659:
	jmp	_Label_2663
_Label_2660:
! ELSE...
	mov	2449,r13		! source line 2449
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2666
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2666
	jmp	_Label_2665
_Label_2666:
!   if bytesToMove != 8192 then goto _Label_2665		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2665
!	jmp	_Label_2664
_Label_2664:
	jmp	_Label_2667
_Label_2665:
! ELSE...
	mov	2453,r13		! source line 2453
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2670 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2669 = *_temp_2670  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2668 = sector + _temp_2669		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2672 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2671 = *_temp_2672  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2673 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2668  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2671  sizeInBytes=4
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
_Label_2667:
! END IF...
_Label_2663:
! ASSIGNMENT STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2674 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2674 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2675 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2675 = 1  (sizeInBytes=1)
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
	mov	2462,r13		! source line 2462
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2648
_Label_2650:
! SEND STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0SE",r10
!   _temp_2676 = &fileManagerLock
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
	mov	2474,r13		! source line 2474
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
	.word	_Label_2677
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2678
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2679
	.word	12
	.word	4
	.word	_Label_2680
	.word	16
	.word	4
	.word	_Label_2681
	.word	20
	.word	4
	.word	_Label_2682
	.word	24
	.word	4
	.word	_Label_2683
	.word	-16
	.word	4
	.word	_Label_2684
	.word	-20
	.word	4
	.word	_Label_2685
	.word	-24
	.word	4
	.word	_Label_2686
	.word	-28
	.word	4
	.word	_Label_2687
	.word	-32
	.word	4
	.word	_Label_2688
	.word	-36
	.word	4
	.word	_Label_2689
	.word	-40
	.word	4
	.word	_Label_2690
	.word	-44
	.word	4
	.word	_Label_2691
	.word	-48
	.word	4
	.word	_Label_2692
	.word	-52
	.word	4
	.word	_Label_2693
	.word	-56
	.word	4
	.word	_Label_2694
	.word	-60
	.word	4
	.word	_Label_2695
	.word	-64
	.word	4
	.word	_Label_2696
	.word	-68
	.word	4
	.word	_Label_2697
	.word	-72
	.word	4
	.word	_Label_2698
	.word	-76
	.word	4
	.word	_Label_2699
	.word	-80
	.word	4
	.word	_Label_2700
	.word	-84
	.word	4
	.word	_Label_2701
	.word	-88
	.word	4
	.word	_Label_2702
	.word	-92
	.word	4
	.word	_Label_2703
	.word	-96
	.word	4
	.word	_Label_2704
	.word	-100
	.word	4
	.word	_Label_2705
	.word	-104
	.word	4
	.word	_Label_2706
	.word	-108
	.word	4
	.word	_Label_2707
	.word	-112
	.word	4
	.word	_Label_2708
	.word	-9
	.word	1
	.word	_Label_2709
	.word	-10
	.word	1
	.word	_Label_2710
	.word	-116
	.word	4
	.word	_Label_2711
	.word	-120
	.word	4
	.word	_Label_2712
	.word	-124
	.word	4
	.word	_Label_2713
	.word	-128
	.word	4
	.word	_Label_2714
	.word	-132
	.word	4
	.word	_Label_2715
	.word	-136
	.word	4
	.word	0
_Label_2677:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2678:
	.ascii	"Pself\0"
	.align
_Label_2679:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2680:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2681:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2682:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2708:
	.byte	'C'
	.ascii	"_temp_2637\0"
	.align
_Label_2709:
	.byte	'C'
	.ascii	"_temp_2634\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2711:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2712:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2713:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2714:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2715:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2716
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2716:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2717
	.word	_sourceFileName
	.word	357		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2717:
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
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	2510,r13		! source line 2510
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0AS",r10
	mov	2512,r13		! source line 2512
	mov	"\0\0SE",r10
!   _temp_2718 = &_P_Kernel_frameManager
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
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2515,r13		! source line 2515
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
	.word	_Label_2719
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2720
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2721
	.word	-12
	.word	4
	.word	0
_Label_2719:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2720:
	.ascii	"Pself\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2718\0"
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
_Label_3075:
	push	r0
	sub	r1,1,r1
	bne	_Label_3075
	mov	2520,r13		! source line 2520
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2722 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2722  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2521,r13		! source line 2521
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2522,r13		! source line 2522
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2723 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2723  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2523,r13		! source line 2523
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2524,r13		! source line 2524
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2724 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2724  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2525,r13		! source line 2525
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2526,r13		! source line 2526
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2725 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2725  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2527,r13		! source line 2527
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2528,r13		! source line 2528
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2726 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2726  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2529,r13		! source line 2529
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2530,r13		! source line 2530
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2727 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2727  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2531,r13		! source line 2531
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2532,r13		! source line 2532
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2533,r13		! source line 2533
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2533,r13		! source line 2533
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
	.word	_Label_2728
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2729
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2730
	.word	-12
	.word	4
	.word	_Label_2731
	.word	-16
	.word	4
	.word	_Label_2732
	.word	-20
	.word	4
	.word	_Label_2733
	.word	-24
	.word	4
	.word	_Label_2734
	.word	-28
	.word	4
	.word	_Label_2735
	.word	-32
	.word	4
	.word	0
_Label_2728:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2729:
	.ascii	"Pself\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2736
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2736:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2737
	.word	_sourceFileName
	.word	374		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2737:
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
_Label_3076:
	push	r0
	sub	r1,1,r1
	bne	_Label_3076
	mov	2544,r13		! source line 2544
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2738 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2738  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2545,r13		! source line 2545
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2546,r13		! source line 2546
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2739 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2739  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2547,r13		! source line 2547
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2741		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2741
!	jmp	_Label_2740
_Label_2740:
! THEN...
	mov	2549,r13		! source line 2549
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2549,r13		! source line 2549
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
	jmp	_Label_2742
_Label_2741:
! ELSE...
	mov	2551,r13		! source line 2551
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2743 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2743  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2551,r13		! source line 2551
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2742:
! RETURN STATEMENT...
	mov	2548,r13		! source line 2548
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
	.word	_Label_2744
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2745
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2746
	.word	-12
	.word	4
	.word	_Label_2747
	.word	-16
	.word	4
	.word	_Label_2748
	.word	-20
	.word	4
	.word	0
_Label_2744:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2745:
	.ascii	"Pself\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2738\0"
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
_Label_3077:
	push	r0
	sub	r1,1,r1
	bne	_Label_3077
	mov	2557,r13		! source line 2557
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0SE",r10
!   _temp_2749 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2750 = _temp_2749 + 4
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
	mov	2568,r13		! source line 2568
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2569,r13		! source line 2569
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
	mov	2570,r13		! source line 2570
	mov	"\0\0SE",r10
!   _temp_2751 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2752 = _temp_2751 + 4
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
	mov	2571,r13		! source line 2571
	mov	"\0\0RE",r10
	mov	2571,r13		! source line 2571
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2755 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2754  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2753  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2753  (sizeInBytes=1)
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
	.word	_Label_2756
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2757
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2758
	.word	12
	.word	4
	.word	_Label_2759
	.word	16
	.word	4
	.word	_Label_2760
	.word	-16
	.word	4
	.word	_Label_2761
	.word	-20
	.word	4
	.word	_Label_2762
	.word	-9
	.word	1
	.word	_Label_2763
	.word	-24
	.word	4
	.word	_Label_2764
	.word	-28
	.word	4
	.word	_Label_2765
	.word	-32
	.word	4
	.word	_Label_2766
	.word	-36
	.word	4
	.word	_Label_2767
	.word	-40
	.word	4
	.word	0
_Label_2756:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2757:
	.ascii	"Pself\0"
	.align
_Label_2758:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2759:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2762:
	.byte	'C'
	.ascii	"_temp_2753\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2767:
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
_Label_3078:
	push	r0
	sub	r1,1,r1
	bne	_Label_3078
	mov	2576,r13		! source line 2576
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0IF",r10
	mov	2581,r13		! source line 2581
	mov	"\0\0SE",r10
!   _temp_2771 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2772) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2771  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2770  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2770 then goto _Label_2769 else goto _Label_2768
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2768
	jmp	_Label_2769
_Label_2768:
! THEN...
	mov	2582,r13		! source line 2582
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2773 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2773  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2582,r13		! source line 2582
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2769:
! RETURN STATEMENT...
	mov	2584,r13		! source line 2584
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
	.word	_Label_2774
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2775
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2776
	.word	-16
	.word	4
	.word	_Label_2777
	.word	-20
	.word	4
	.word	_Label_2778
	.word	-24
	.word	4
	.word	_Label_2779
	.word	-9
	.word	1
	.word	_Label_2780
	.word	-28
	.word	4
	.word	0
_Label_2774:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2775:
	.ascii	"Pself\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2779:
	.byte	'C'
	.ascii	"_temp_2770\0"
	.align
_Label_2780:
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
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	2589,r13		! source line 2589
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2784 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2783 = *_temp_2784  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2783) then goto _Label_2782
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2782
!	jmp	_Label_2781
_Label_2781:
! THEN...
	mov	2616,r13		! source line 2616
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2785 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2785  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2616,r13		! source line 2616
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2782:
! IF STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0IF",r10
	mov	2620,r13		! source line 2620
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2789) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2788  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2788 == 1112300152 then goto _Label_2787		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2787
!	jmp	_Label_2786
_Label_2786:
! THEN...
	mov	2621,r13		! source line 2621
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2790 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2790  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2621,r13		! source line 2621
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2787:
! ASSIGNMENT STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0AS",r10
	mov	2626,r13		! source line 2626
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2791) then goto _runtimeErrorNullPointer
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
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
	mov	2627,r13		! source line 2627
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2792) then goto _runtimeErrorNullPointer
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
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
	mov	2628,r13		! source line 2628
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2793) then goto _runtimeErrorNullPointer
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
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
	mov	2629,r13		! source line 2629
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2794) then goto _runtimeErrorNullPointer
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
	mov	2630,r13		! source line 2630
	mov	"\0\0AS",r10
	mov	2630,r13		! source line 2630
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2795) then goto _runtimeErrorNullPointer
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
	mov	2631,r13		! source line 2631
	mov	"\0\0AS",r10
	mov	2631,r13		! source line 2631
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2796) then goto _runtimeErrorNullPointer
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
	mov	2634,r13		! source line 2634
	mov	"\0\0IF",r10
!   _temp_2799 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2799) then goto _Label_2798
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2798
!	jmp	_Label_2797
_Label_2797:
! THEN...
	mov	2635,r13		! source line 2635
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2800 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2800  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2635,r13		! source line 2635
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2798:
! ASSIGNMENT STATEMENT...
	mov	2638,r13		! source line 2638
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
	mov	2642,r13		! source line 2642
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2802
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2802
!	jmp	_Label_2801
_Label_2801:
! THEN...
	mov	2643,r13		! source line 2643
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2803 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2803  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2643,r13		! source line 2643
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2802:
! IF STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0IF",r10
!   _temp_2806 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2806) then goto _Label_2805
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2805
!	jmp	_Label_2804
_Label_2804:
! THEN...
	mov	2649,r13		! source line 2649
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2807 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2807  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2649,r13		! source line 2649
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2805:
! IF STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0IF",r10
!   _temp_2810 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2810 then goto _Label_2809		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2809
!	jmp	_Label_2808
_Label_2808:
! THEN...
	mov	2653,r13		! source line 2653
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2811 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2811  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2653,r13		! source line 2653
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2809:
! ASSIGNMENT STATEMENT...
	mov	2656,r13		! source line 2656
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
	mov	2659,r13		! source line 2659
	mov	"\0\0IF",r10
!   _temp_2814 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2814) then goto _Label_2813
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2813
!	jmp	_Label_2812
_Label_2812:
! THEN...
	mov	2660,r13		! source line 2660
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2815 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2815  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2660,r13		! source line 2660
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2813:
! IF STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0IF",r10
!   _temp_2818 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2818 then goto _Label_2817		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2817
!	jmp	_Label_2816
_Label_2816:
! THEN...
	mov	2664,r13		! source line 2664
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2819 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2819  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2664,r13		! source line 2664
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2817:
! ASSIGNMENT STATEMENT...
	mov	2667,r13		! source line 2667
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
	mov	2670,r13		! source line 2670
	mov	"\0\0AS",r10
!   _temp_2822 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2821 = _temp_2822 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2820 = _temp_2821 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2820 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2824		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2824
!	jmp	_Label_2823
_Label_2823:
! THEN...
	mov	2686,r13		! source line 2686
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2825 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2825  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2686,r13		! source line 2686
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2826 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2826  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2687,r13		! source line 2687
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2827 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2827  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2688,r13		! source line 2688
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2824:
! SEND STATEMENT...
	mov	2691,r13		! source line 2691
	mov	"\0\0SE",r10
!   _temp_2828 = &_P_Kernel_frameManager
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
	mov	2697,r13		! source line 2697
	mov	"\0\0IF",r10
	mov	2697,r13		! source line 2697
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2832) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2831  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2831 == 707406378 then goto _Label_2830		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2830
!	jmp	_Label_2829
_Label_2829:
! THEN...
	mov	2698,r13		! source line 2698
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2833 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2833  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2698,r13		! source line 2698
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2699,r13		! source line 2699
	mov	"\0\0SE",r10
!   _temp_2834 = &_P_Kernel_frameManager
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
	mov	2700,r13		! source line 2700
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2830:
! ASSIGNMENT STATEMENT...
	mov	2704,r13		! source line 2704
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
	mov	2705,r13		! source line 2705
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2839 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2840 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2839  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2835:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2840 then goto _Label_2838		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2838
_Label_2836:
	mov	2705,r13		! source line 2705
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0AS",r10
	mov	2706,r13		! source line 2706
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
	mov	2709,r13		! source line 2709
	mov	"\0\0IF",r10
	mov	2709,r13		! source line 2709
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2844) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2843  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2843 then goto _Label_2842 else goto _Label_2841
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2841
	jmp	_Label_2842
_Label_2841:
! THEN...
	mov	2710,r13		! source line 2710
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2845 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2845  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2710,r13		! source line 2710
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0SE",r10
!   _temp_2846 = &_P_Kernel_frameManager
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
	mov	2712,r13		! source line 2712
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2842:
! SEND STATEMENT...
	mov	2714,r13		! source line 2714
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
	mov	2715,r13		! source line 2715
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2837:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2835
! END FOR
_Label_2838:
! IF STATEMENT...
	mov	2719,r13		! source line 2719
	mov	"\0\0IF",r10
	mov	2719,r13		! source line 2719
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2850) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2849  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2849 == 707406378 then goto _Label_2848		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2848
!	jmp	_Label_2847
_Label_2847:
! THEN...
	mov	2720,r13		! source line 2720
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2851 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2851  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2720,r13		! source line 2720
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0SE",r10
!   _temp_2852 = &_P_Kernel_frameManager
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
	mov	2722,r13		! source line 2722
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2848:
! FOR STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2857 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2858 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2857  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2853:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2858 then goto _Label_2856		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2856
_Label_2854:
	mov	2726,r13		! source line 2726
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0AS",r10
	mov	2727,r13		! source line 2727
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
	mov	2730,r13		! source line 2730
	mov	"\0\0IF",r10
	mov	2730,r13		! source line 2730
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2862) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2861  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2861 then goto _Label_2860 else goto _Label_2859
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2859
	jmp	_Label_2860
_Label_2859:
! THEN...
	mov	2731,r13		! source line 2731
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2863 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2863  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2731,r13		! source line 2731
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0SE",r10
!   _temp_2864 = &_P_Kernel_frameManager
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
	mov	2733,r13		! source line 2733
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2860:
! ASSIGNMENT STATEMENT...
	mov	2735,r13		! source line 2735
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2855:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2853
! END FOR
_Label_2856:
! IF STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0IF",r10
	mov	2739,r13		! source line 2739
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2868) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2867  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2867 == 707406378 then goto _Label_2866		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2866
!	jmp	_Label_2865
_Label_2865:
! THEN...
	mov	2740,r13		! source line 2740
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2869 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2869  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2740,r13		! source line 2740
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2741,r13		! source line 2741
	mov	"\0\0SE",r10
!   _temp_2870 = &_P_Kernel_frameManager
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
	mov	2742,r13		! source line 2742
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2866:
! ASSIGNMENT STATEMENT...
	mov	2746,r13		! source line 2746
	mov	"\0\0AS",r10
	mov	2746,r13		! source line 2746
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
	mov	2750,r13		! source line 2750
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2753,r13		! source line 2753
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
	.word	_Label_2871
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2872
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2873
	.word	12
	.word	4
	.word	_Label_2874
	.word	-16
	.word	4
	.word	_Label_2875
	.word	-20
	.word	4
	.word	_Label_2876
	.word	-24
	.word	4
	.word	_Label_2877
	.word	-28
	.word	4
	.word	_Label_2878
	.word	-32
	.word	4
	.word	_Label_2879
	.word	-36
	.word	4
	.word	_Label_2880
	.word	-40
	.word	4
	.word	_Label_2881
	.word	-9
	.word	1
	.word	_Label_2882
	.word	-44
	.word	4
	.word	_Label_2883
	.word	-48
	.word	4
	.word	_Label_2884
	.word	-52
	.word	4
	.word	_Label_2885
	.word	-56
	.word	4
	.word	_Label_2886
	.word	-60
	.word	4
	.word	_Label_2887
	.word	-64
	.word	4
	.word	_Label_2888
	.word	-68
	.word	4
	.word	_Label_2889
	.word	-72
	.word	4
	.word	_Label_2890
	.word	-76
	.word	4
	.word	_Label_2891
	.word	-10
	.word	1
	.word	_Label_2892
	.word	-80
	.word	4
	.word	_Label_2893
	.word	-84
	.word	4
	.word	_Label_2894
	.word	-88
	.word	4
	.word	_Label_2895
	.word	-92
	.word	4
	.word	_Label_2896
	.word	-96
	.word	4
	.word	_Label_2897
	.word	-100
	.word	4
	.word	_Label_2898
	.word	-104
	.word	4
	.word	_Label_2899
	.word	-108
	.word	4
	.word	_Label_2900
	.word	-112
	.word	4
	.word	_Label_2901
	.word	-116
	.word	4
	.word	_Label_2902
	.word	-120
	.word	4
	.word	_Label_2903
	.word	-124
	.word	4
	.word	_Label_2904
	.word	-128
	.word	4
	.word	_Label_2905
	.word	-132
	.word	4
	.word	_Label_2906
	.word	-136
	.word	4
	.word	_Label_2907
	.word	-140
	.word	4
	.word	_Label_2908
	.word	-144
	.word	4
	.word	_Label_2909
	.word	-148
	.word	4
	.word	_Label_2910
	.word	-152
	.word	4
	.word	_Label_2911
	.word	-156
	.word	4
	.word	_Label_2912
	.word	-160
	.word	4
	.word	_Label_2913
	.word	-164
	.word	4
	.word	_Label_2914
	.word	-168
	.word	4
	.word	_Label_2915
	.word	-172
	.word	4
	.word	_Label_2916
	.word	-176
	.word	4
	.word	_Label_2917
	.word	-180
	.word	4
	.word	_Label_2918
	.word	-184
	.word	4
	.word	_Label_2919
	.word	-188
	.word	4
	.word	_Label_2920
	.word	-192
	.word	4
	.word	_Label_2921
	.word	-196
	.word	4
	.word	_Label_2922
	.word	-200
	.word	4
	.word	_Label_2923
	.word	-204
	.word	4
	.word	_Label_2924
	.word	-208
	.word	4
	.word	_Label_2925
	.word	-212
	.word	4
	.word	_Label_2926
	.word	-216
	.word	4
	.word	_Label_2927
	.word	-220
	.word	4
	.word	_Label_2928
	.word	-224
	.word	4
	.word	_Label_2929
	.word	-228
	.word	4
	.word	_Label_2930
	.word	-232
	.word	4
	.word	_Label_2931
	.word	-236
	.word	4
	.word	_Label_2932
	.word	-240
	.word	4
	.word	_Label_2933
	.word	-244
	.word	4
	.word	_Label_2934
	.word	-248
	.word	4
	.word	_Label_2935
	.word	-252
	.word	4
	.word	_Label_2936
	.word	-256
	.word	4
	.word	_Label_2937
	.word	-260
	.word	4
	.word	_Label_2938
	.word	-264
	.word	4
	.word	_Label_2939
	.word	-268
	.word	4
	.word	0
_Label_2871:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2872:
	.ascii	"Pself\0"
	.align
_Label_2873:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2881:
	.byte	'C'
	.ascii	"_temp_2861\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2891:
	.byte	'C'
	.ascii	"_temp_2843\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2928:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2929:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2930:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2931:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2932:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2933:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2934:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2935:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2936:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2937:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2938:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2939:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
