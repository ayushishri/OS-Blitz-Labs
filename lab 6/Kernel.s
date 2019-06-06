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
_StringConst_199:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_198:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_197:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_196:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_195:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_194:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_193:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_192:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_191:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_190:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_189:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_188:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_187:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_186:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_185:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_184:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_183:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_182:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_181:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_180:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_179:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_178:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_177:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_176:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_175:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_174:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_173:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_172:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_171:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_170:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_169:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_168:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_167:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_166:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_165:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_164:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_163:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_162:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_161:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_160:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_159:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_158:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_157:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_156:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_155:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_154:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_153:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_152:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_151:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_150:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_149:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_148:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_147:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_146:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_143:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_141:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_140:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_138:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_137:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_136:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_134:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_133:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_132:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_131:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_130:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_129:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_128:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_127:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_126:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_125:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_124:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_123:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_122:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_121:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_120:
	.word	22			! length
	.ascii	"should never be called"
	.align
_StringConst_119:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_118:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_117:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_116:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_115:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_114:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_113:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_112:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_111:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_110:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_109:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_108:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_107:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_106:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_105:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_104:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_103:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_102:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_101:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_100:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_99:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_98:
	.word	10			! length
	.ascii	"threadname"
	.align
_StringConst_97:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_96:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_95:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_94:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_93:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_92:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_91:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_90:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_89:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_88:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_87:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_86:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_85:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_84:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_83:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_82:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_81:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_80:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_79:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_78:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_77:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_76:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_75:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_74:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_73:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_72:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_71:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_70:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_69:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_68:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_67:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_66:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_65:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_64:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_63:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_62:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_61:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_60:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_59:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_58:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_57:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_56:
	.word	26			! length
	.ascii	"Handle_Sys_Close invoked!\n"
	.align
_StringConst_55:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_54:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_53:
	.word	25			! length
	.ascii	"Handle_Sys_Seek invoked!\n"
	.align
_StringConst_52:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_51:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_50:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_49:
	.word	26			! length
	.ascii	"Handle_Sys_Write invoked!\n"
	.align
_StringConst_48:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_47:
	.word	22			! length
	.ascii	"virt addr of buffer = "
	.align
_StringConst_46:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_45:
	.word	25			! length
	.ascii	"Handle_Sys_Read invoked!\n"
	.align
_StringConst_44:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_43:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_42:
	.word	25			! length
	.ascii	"Handle_Sys_Open invoked!\n"
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
	.ascii	"TestProgram3"
	.align
_StringConst_2:
	.word	12			! length
	.ascii	"TestProgram3"
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
	set	0xfd941357,r4		! myHashVal = -40627369
	cmp	r3,r4
	be	_Label_209
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
_Label_209:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_210
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_210
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_210
_Label_210:
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
_Label_3366:
	push	r0
	sub	r1,1,r1
	bne	_Label_3366
	mov	6,r13		! source line 6
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	10,r13		! source line 10
	mov	"\0\0AS",r10
	mov	10,r13		! source line 10
	mov	"\0\0SE",r10
!   _temp_211 = &_P_Kernel_threadManager
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
!   _temp_212 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-20]
!   if intIsZero (thPtr) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_212  sizeInBytes=4
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
!   _temp_213 = _function_208_StartUserProcess
	set	_function_208_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_214 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-12]
!   if intIsZero (thPtr) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_213  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_214  sizeInBytes=4
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
	.word	_Label_215
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_216
	.word	-12
	.word	4
	.word	_Label_217
	.word	-16
	.word	4
	.word	_Label_218
	.word	-20
	.word	4
	.word	_Label_219
	.word	-24
	.word	4
	.word	_Label_220
	.word	-28
	.word	4
	.word	0
_Label_215:
	.ascii	"InitFirstProcess\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_220:
	.byte	'P'
	.ascii	"thPtr\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_208_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_208_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_3367:
	push	r0
	sub	r1,1,r1
	bne	_Label_3367
	mov	15,r13		! source line 15
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_221 = &_P_Kernel_processManager
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
!   _temp_222 = PCB + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_222 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_223 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_223 = PCB  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
	mov	27,r13		! source line 27
	mov	"\0\0SE",r10
!   _temp_224 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-56]
!   _temp_225 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_224  sizeInBytes=4
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
!   _temp_227 = PCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_226 = _temp_227		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_226  sizeInBytes=4
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
!   _temp_228 = &_P_Kernel_fileManager
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
!   _temp_229 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_229 [999 ] into _temp_230
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
!   initSystemStackTop = _temp_230		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_232 = PCB + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   _temp_233 = _temp_232 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: _temp_231 = *_temp_233  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   InitUserStackTop = _temp_231 * 8192		(int)
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
!   _temp_234 = PCB + 32
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
!   _temp_235 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_235 = 1  (sizeInBytes=1)
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
_RoutineDescriptor__function_208_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_236
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_237
	.word	8
	.word	4
	.word	_Label_238
	.word	-12
	.word	4
	.word	_Label_239
	.word	-16
	.word	4
	.word	_Label_240
	.word	-20
	.word	4
	.word	_Label_241
	.word	-24
	.word	4
	.word	_Label_242
	.word	-28
	.word	4
	.word	_Label_243
	.word	-32
	.word	4
	.word	_Label_244
	.word	-36
	.word	4
	.word	_Label_245
	.word	-40
	.word	4
	.word	_Label_246
	.word	-44
	.word	4
	.word	_Label_247
	.word	-48
	.word	4
	.word	_Label_248
	.word	-52
	.word	4
	.word	_Label_249
	.word	-56
	.word	4
	.word	_Label_250
	.word	-60
	.word	4
	.word	_Label_251
	.word	-64
	.word	4
	.word	_Label_252
	.word	-68
	.word	4
	.word	_Label_253
	.word	-72
	.word	4
	.word	_Label_254
	.word	-76
	.word	4
	.word	_Label_255
	.word	-80
	.word	4
	.word	_Label_256
	.word	-84
	.word	4
	.word	_Label_257
	.word	-88
	.word	4
	.word	_Label_258
	.word	-92
	.word	4
	.word	0
_Label_236:
	.ascii	"StartUserProcess\0"
	.align
_Label_237:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_253:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_254:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_255:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_256:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_257:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_258:
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
_Label_3368:
	push	r0
	sub	r1,1,r1
	bne	_Label_3368
	mov	47,r13		! source line 47
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	54,r13		! source line 54
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_259 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_259  sizeInBytes=4
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
_Label_3369:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3369
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	59,r13		! source line 59
	mov	"\0\0SE",r10
!   _temp_263 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-44]
!   _temp_264 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_263  sizeInBytes=4
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
!   _temp_265 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_266 = _temp_265 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_266 = 3  (sizeInBytes=4)
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
_Label_3370:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3370
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0SE",r10
!   _temp_268 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-24]
!   _temp_269 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_268  sizeInBytes=4
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
!   _temp_270 = _function_207_IdleFunction
	set	_function_207_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_271 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_270  sizeInBytes=4
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
	.word	_Label_272
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_273
	.word	-12
	.word	4
	.word	_Label_274
	.word	-16
	.word	4
	.word	_Label_275
	.word	-20
	.word	4
	.word	_Label_276
	.word	-24
	.word	4
	.word	_Label_277
	.word	-28
	.word	4
	.word	_Label_278
	.word	-32
	.word	4
	.word	_Label_279
	.word	-36
	.word	4
	.word	_Label_280
	.word	-40
	.word	4
	.word	_Label_281
	.word	-44
	.word	4
	.word	_Label_282
	.word	-48
	.word	4
	.word	_Label_283
	.word	-52
	.word	4
	.word	_Label_284
	.word	-56
	.word	4
	.word	_Label_285
	.word	-60
	.word	4
	.word	0
_Label_272:
	.ascii	"InitializeScheduler\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_207_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_207_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3371:
	push	r0
	sub	r1,1,r1
	bne	_Label_3371
	mov	72,r13		! source line 72
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0WH",r10
_Label_286:
!	jmp	_Label_287
_Label_287:
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
!   _temp_291 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_289 else goto _Label_290
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_290
	jmp	_Label_289
_Label_289:
! THEN...
	mov	85,r13		! source line 85
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	85,r13		! source line 85
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_292
_Label_290:
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
_Label_292:
! END WHILE...
	jmp	_Label_286
_Label_288:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_207_IdleFunction:
	.word	_sourceFileName
	.word	_Label_293
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_294
	.word	8
	.word	4
	.word	_Label_295
	.word	-12
	.word	4
	.word	_Label_296
	.word	-16
	.word	4
	.word	0
_Label_293:
	.ascii	"IdleFunction\0"
	.align
_Label_294:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_296:
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
_Label_3372:
	push	r0
	sub	r1,1,r1
	bne	_Label_3372
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
!   _temp_299 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_299 ) then goto _Label_298		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_298
!	jmp	_Label_297
_Label_297:
! THEN...
	mov	111,r13		! source line 111
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_301 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_301 [0 ] into _temp_302
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
!   _temp_300 = _temp_302		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_298:
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
!   _temp_303 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_303 = 3  (sizeInBytes=4)
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
_Label_304:
	mov	124,r13		! source line 124
	mov	"\0\0SE",r10
!   _temp_308 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_307  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_307 then goto _Label_306 else goto _Label_305
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_305
	jmp	_Label_306
_Label_305:
	mov	124,r13		! source line 124
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
	mov	125,r13		! source line 125
	mov	"\0\0SE",r10
!   _temp_309 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_310 = &_P_Kernel_threadManager
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
	jmp	_Label_304
_Label_306:
! IF STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_313 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_313 ) then goto _Label_312		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_312
!	jmp	_Label_311
_Label_311:
! THEN...
	mov	130,r13		! source line 130
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_315 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_315 [0 ] into _temp_316
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
!   _temp_314 = _temp_316		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
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
!   _temp_318 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_317 = *_temp_318  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_317) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_319 = _temp_317 + 32
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
_Label_312:
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
	.word	_Label_320
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_321
	.word	8
	.word	4
	.word	_Label_322
	.word	-16
	.word	4
	.word	_Label_323
	.word	-20
	.word	4
	.word	_Label_324
	.word	-24
	.word	4
	.word	_Label_325
	.word	-28
	.word	4
	.word	_Label_326
	.word	-32
	.word	4
	.word	_Label_327
	.word	-36
	.word	4
	.word	_Label_328
	.word	-40
	.word	4
	.word	_Label_329
	.word	-44
	.word	4
	.word	_Label_330
	.word	-48
	.word	4
	.word	_Label_331
	.word	-52
	.word	4
	.word	_Label_332
	.word	-9
	.word	1
	.word	_Label_333
	.word	-56
	.word	4
	.word	_Label_334
	.word	-60
	.word	4
	.word	_Label_335
	.word	-64
	.word	4
	.word	_Label_336
	.word	-68
	.word	4
	.word	_Label_337
	.word	-72
	.word	4
	.word	_Label_338
	.word	-76
	.word	4
	.word	_Label_339
	.word	-80
	.word	4
	.word	0
_Label_320:
	.ascii	"Run\0"
	.align
_Label_321:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_332:
	.byte	'C'
	.ascii	"_temp_307\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_338:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_339:
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
_Label_3373:
	push	r0
	sub	r1,1,r1
	bne	_Label_3373
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
!   _temp_340 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0SE",r10
!   _temp_341 = _function_206_ThreadPrintShort
	set	_function_206_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_342 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_341  sizeInBytes=4
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
	.word	_Label_343
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_344
	.word	-12
	.word	4
	.word	_Label_345
	.word	-16
	.word	4
	.word	_Label_346
	.word	-20
	.word	4
	.word	_Label_347
	.word	-24
	.word	4
	.word	0
_Label_343:
	.ascii	"PrintReadyList\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_347:
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
_Label_3374:
	push	r0
	sub	r1,1,r1
	bne	_Label_3374
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
!   _temp_348 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_348  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_350 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_349 = *_temp_350  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
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
!   _temp_351 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
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
	.word	_Label_352
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_353
	.word	-12
	.word	4
	.word	_Label_354
	.word	-16
	.word	4
	.word	_Label_355
	.word	-20
	.word	4
	.word	_Label_356
	.word	-24
	.word	4
	.word	_Label_357
	.word	-28
	.word	4
	.word	_Label_358
	.word	-32
	.word	4
	.word	0
_Label_352:
	.ascii	"ThreadStartMain\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_357:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_358:
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
_Label_3375:
	push	r0
	sub	r1,1,r1
	bne	_Label_3375
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
!   _temp_359 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_360 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
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
	.word	_Label_361
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_362
	.word	-12
	.word	4
	.word	_Label_363
	.word	-16
	.word	4
	.word	_Label_364
	.word	-20
	.word	4
	.word	0
_Label_361:
	.ascii	"ThreadFinish\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_364:
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
_Label_3376:
	push	r0
	sub	r1,1,r1
	bne	_Label_3376
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
!   _temp_365 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	205,r13		! source line 205
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_367		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_367
!	jmp	_Label_366
_Label_366:
! THEN...
	mov	207,r13		! source line 207
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_368 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
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
!   _temp_370 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_369 = *_temp_370  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	208,r13		! source line 208
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_367:
! CALL STATEMENT...
!   _temp_371 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
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
!   _temp_372 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	212,r13		! source line 212
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_373 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
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
	.word	_Label_374
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_375
	.word	8
	.word	4
	.word	_Label_376
	.word	-12
	.word	4
	.word	_Label_377
	.word	-16
	.word	4
	.word	_Label_378
	.word	-20
	.word	4
	.word	_Label_379
	.word	-24
	.word	4
	.word	_Label_380
	.word	-28
	.word	4
	.word	_Label_381
	.word	-32
	.word	4
	.word	_Label_382
	.word	-36
	.word	4
	.word	_Label_383
	.word	-40
	.word	4
	.word	0
_Label_374:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_375:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_383:
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
_Label_3377:
	push	r0
	sub	r1,1,r1
	bne	_Label_3377
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
!   if newStatus != 1 then goto _Label_385		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_385
!	jmp	_Label_384
_Label_384:
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
	jmp	_Label_386
_Label_385:
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
_Label_386:
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
	.word	_Label_387
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_388
	.word	8
	.word	4
	.word	_Label_389
	.word	-12
	.word	4
	.word	0
_Label_387:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_388:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_206_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3378:
	push	r0
	sub	r1,1,r1
	bne	_Label_3378
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
!   if t == 0 then goto _Label_393		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_393
!   _temp_392 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_394
_Label_393:
!   _temp_392 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_394:
!   if _temp_392 then goto _Label_391 else goto _Label_390
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_390
	jmp	_Label_391
_Label_390:
! THEN...
	mov	689,r13		! source line 689
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_395 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
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
_Label_391:
! CALL STATEMENT...
!   _temp_396 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
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
!   _temp_398 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_397 = *_temp_398  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	693,r13		! source line 693
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_399 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
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
!   _temp_408 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_407 = *_temp_408  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_402
	cmp	r1,2
	be	_Label_403
	cmp	r1,3
	be	_Label_404
	cmp	r1,4
	be	_Label_405
	cmp	r1,5
	be	_Label_406
	jmp	_Label_400
! CASE 1...
_Label_402:
! CALL STATEMENT...
!   _temp_409 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_409  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0BR",r10
	jmp	_Label_401
! CASE 2...
_Label_403:
! CALL STATEMENT...
!   _temp_410 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0BR",r10
	jmp	_Label_401
! CASE 3...
_Label_404:
! CALL STATEMENT...
!   _temp_411 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_411  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0BR",r10
	jmp	_Label_401
! CASE 4...
_Label_405:
! CALL STATEMENT...
!   _temp_412 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0BR",r10
	jmp	_Label_401
! CASE 5...
_Label_406:
! CALL STATEMENT...
!   _temp_413 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0BR",r10
	jmp	_Label_401
! DEFAULT CASE...
_Label_400:
! CALL STATEMENT...
!   _temp_414 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
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
_Label_401:
! CALL STATEMENT...
!   _temp_415 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	714,r13		! source line 714
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_416 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_416  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_417 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
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
_RoutineDescriptor__function_206_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_418
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_419
	.word	8
	.word	4
	.word	_Label_420
	.word	-16
	.word	4
	.word	_Label_421
	.word	-20
	.word	4
	.word	_Label_422
	.word	-24
	.word	4
	.word	_Label_423
	.word	-28
	.word	4
	.word	_Label_424
	.word	-32
	.word	4
	.word	_Label_425
	.word	-36
	.word	4
	.word	_Label_426
	.word	-40
	.word	4
	.word	_Label_427
	.word	-44
	.word	4
	.word	_Label_428
	.word	-48
	.word	4
	.word	_Label_429
	.word	-52
	.word	4
	.word	_Label_430
	.word	-56
	.word	4
	.word	_Label_431
	.word	-60
	.word	4
	.word	_Label_432
	.word	-64
	.word	4
	.word	_Label_433
	.word	-68
	.word	4
	.word	_Label_434
	.word	-72
	.word	4
	.word	_Label_435
	.word	-76
	.word	4
	.word	_Label_436
	.word	-9
	.word	1
	.word	_Label_437
	.word	-80
	.word	4
	.word	0
_Label_418:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_419:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_436:
	.byte	'C'
	.ascii	"_temp_392\0"
	.align
_Label_437:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_205_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3379:
	push	r0
	sub	r1,1,r1
	bne	_Label_3379
	mov	1050,r13		! source line 1050
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_438 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
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
_RoutineDescriptor__function_205_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_439
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_440
	.word	8
	.word	4
	.word	_Label_441
	.word	-12
	.word	4
	.word	0
_Label_439:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_440:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_438\0"
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
	mov	19,r1
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
	mov	1060,r13		! source line 1060
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_443 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_442 = *_temp_443  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_442) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_444 = _temp_442 + 28
	load	[r14+-72],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_444 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1069,r13		! source line 1069
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1069,r13		! source line 1069
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1070,r13		! source line 1070
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_445 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_445 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-60],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=junk  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1071,r13		! source line 1071
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1072,r13		! source line 1072
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_448 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_447 = *_temp_448  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_447) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = _temp_447 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_446 = _temp_449		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_450 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_446  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_452 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_451 = *_temp_452  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_453 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_451  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_455 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_454 = *_temp_455  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_454) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_456 = _temp_454 + 24
	load	[r14+-24],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_456 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_457 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_457 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-12],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	1076,r13		! source line 1076
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_458
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_459
	.word	8
	.word	4
	.word	_Label_460
	.word	-12
	.word	4
	.word	_Label_461
	.word	-16
	.word	4
	.word	_Label_462
	.word	-20
	.word	4
	.word	_Label_463
	.word	-24
	.word	4
	.word	_Label_464
	.word	-28
	.word	4
	.word	_Label_465
	.word	-32
	.word	4
	.word	_Label_466
	.word	-36
	.word	4
	.word	_Label_467
	.word	-40
	.word	4
	.word	_Label_468
	.word	-44
	.word	4
	.word	_Label_469
	.word	-48
	.word	4
	.word	_Label_470
	.word	-52
	.word	4
	.word	_Label_471
	.word	-56
	.word	4
	.word	_Label_472
	.word	-60
	.word	4
	.word	_Label_473
	.word	-64
	.word	4
	.word	_Label_474
	.word	-68
	.word	4
	.word	_Label_475
	.word	-72
	.word	4
	.word	_Label_476
	.word	-76
	.word	4
	.word	0
_Label_458:
	.ascii	"ProcessFinish\0"
	.align
_Label_459:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_476:
	.byte	'I'
	.ascii	"junk\0"
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
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
	mov	1549,r13		! source line 1549
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1559,r13		! source line 1559
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1561,r13		! source line 1561
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
	mov	1562,r13		! source line 1562
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1562,r13		! source line 1562
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
	.word	_Label_477
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_477:
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
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
	mov	1567,r13		! source line 1567
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1579,r13		! source line 1579
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0IF",r10
!   _temp_481 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_482 = _temp_481 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_480 = *_temp_482  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_480 == 0 then goto _Label_479		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_479
!	jmp	_Label_478
_Label_478:
! THEN...
	mov	1582,r13		! source line 1582
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1582,r13		! source line 1582
	mov	"\0\0SE",r10
!   _temp_484 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_485 = _temp_484 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_483 = *_temp_485  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_483) then goto _runtimeErrorNullPointer
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
_Label_479:
! RETURN STATEMENT...
	mov	1581,r13		! source line 1581
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
	.word	_Label_486
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_487
	.word	-12
	.word	4
	.word	_Label_488
	.word	-16
	.word	4
	.word	_Label_489
	.word	-20
	.word	4
	.word	_Label_490
	.word	-24
	.word	4
	.word	_Label_491
	.word	-28
	.word	4
	.word	_Label_492
	.word	-32
	.word	4
	.word	0
_Label_486:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_480\0"
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
	mov	1589,r13		! source line 1589
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1598,r13		! source line 1598
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1598,r13		! source line 1598
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
	.word	_Label_493
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_493:
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
_Label_3383:
	push	r0
	sub	r1,1,r1
	bne	_Label_3383
	mov	1603,r13		! source line 1603
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_494 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_494  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1610,r13		! source line 1610
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1610,r13		! source line 1610
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
	.word	_Label_495
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_496
	.word	-12
	.word	4
	.word	0
_Label_495:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_494\0"
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
_Label_3384:
	push	r0
	sub	r1,1,r1
	bne	_Label_3384
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
!   _temp_497 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_497  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1622,r13		! source line 1622
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_498
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_499
	.word	-12
	.word	4
	.word	0
_Label_498:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_497\0"
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
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
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
!   _temp_500 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_500  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1634,r13		! source line 1634
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_501
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_502
	.word	-12
	.word	4
	.word	0
_Label_501:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_500\0"
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
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
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
!   _temp_503 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1646,r13		! source line 1646
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_504
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_505
	.word	-12
	.word	4
	.word	0
_Label_504:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_503\0"
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
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
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
!   _temp_506 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_506  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1658,r13		! source line 1658
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_507
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_508
	.word	-12
	.word	4
	.word	0
_Label_507:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_506\0"
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
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
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
!   _temp_509 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1670,r13		! source line 1670
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_510
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_511
	.word	-12
	.word	4
	.word	0
_Label_510:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_509\0"
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
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
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
!   _temp_512 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_512  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1682,r13		! source line 1682
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_513
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_514
	.word	-12
	.word	4
	.word	0
_Label_513:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_204_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3390:
	push	r0
	sub	r1,1,r1
	bne	_Label_3390
	mov	1687,r13		! source line 1687
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_515 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_515  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1692,r13		! source line 1692
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1693,r13		! source line 1693
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_516 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_516  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1694,r13		! source line 1694
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_520 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_519 = *_temp_520  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_519 == 0 then goto _Label_518		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_518
!	jmp	_Label_517
_Label_517:
! THEN...
	mov	1698,r13		! source line 1698
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_522 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_521 = *_temp_522  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_521) then goto _runtimeErrorNullPointer
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
	jmp	_Label_523
_Label_518:
! ELSE...
	mov	1700,r13		! source line 1700
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_524 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_524  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1700,r13		! source line 1700
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_523:
! SEND STATEMENT...
	mov	1702,r13		! source line 1702
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
	mov	1708,r13		! source line 1708
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_204_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_525
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_526
	.word	8
	.word	4
	.word	_Label_527
	.word	-12
	.word	4
	.word	_Label_528
	.word	-16
	.word	4
	.word	_Label_529
	.word	-20
	.word	4
	.word	_Label_530
	.word	-24
	.word	4
	.word	_Label_531
	.word	-28
	.word	4
	.word	_Label_532
	.word	-32
	.word	4
	.word	_Label_533
	.word	-36
	.word	4
	.word	0
_Label_525:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_526:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_515\0"
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
_Label_3391:
	push	r0
	sub	r1,1,r1
	bne	_Label_3391
	mov	1713,r13		! source line 1713
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1720,r13		! source line 1720
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1734,r13		! source line 1734
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3392
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_534
_Label_3392:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_534
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_534
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_548,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_548:
	jmp	_Label_540	! 1:	
	jmp	_Label_547	! 2:	
	jmp	_Label_537	! 3:	
	jmp	_Label_536	! 4:	
	jmp	_Label_539	! 5:	
	jmp	_Label_538	! 6:	
	jmp	_Label_541	! 7:	
	jmp	_Label_542	! 8:	
	jmp	_Label_543	! 9:	
	jmp	_Label_544	! 10:	
	jmp	_Label_545	! 11:	
	jmp	_Label_546	! 12:	
! CASE 4...
_Label_536:
! RETURN STATEMENT...
	mov	1736,r13		! source line 1736
	mov	"\0\0RE",r10
!   Call the function
	mov	1736,r13		! source line 1736
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_549  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_549  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_537:
! CALL STATEMENT...
!   Call the function
	mov	1738,r13		! source line 1738
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_538:
! RETURN STATEMENT...
	mov	1741,r13		! source line 1741
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1741,r13		! source line 1741
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_550  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_550  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_539:
! RETURN STATEMENT...
	mov	1743,r13		! source line 1743
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1743,r13		! source line 1743
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_551  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_551  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_540:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1745,r13		! source line 1745
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_541:
! RETURN STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1748,r13		! source line 1748
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_552  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_552  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_542:
! RETURN STATEMENT...
	mov	1750,r13		! source line 1750
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1750,r13		! source line 1750
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_553  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_553  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_543:
! RETURN STATEMENT...
	mov	1752,r13		! source line 1752
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
	mov	1752,r13		! source line 1752
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_554  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_554  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_544:
! RETURN STATEMENT...
	mov	1754,r13		! source line 1754
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
	mov	1754,r13		! source line 1754
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_555  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_555  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_545:
! RETURN STATEMENT...
	mov	1756,r13		! source line 1756
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1756,r13		! source line 1756
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_556  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_556  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_546:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1758,r13		! source line 1758
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_547:
! CALL STATEMENT...
!   Call the function
	mov	1761,r13		! source line 1761
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_534:
! CALL STATEMENT...
!   _temp_557 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_557  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1764,r13		! source line 1764
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1765,r13		! source line 1765
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1766,r13		! source line 1766
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_558 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_558  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1767,r13		! source line 1767
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_535:
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
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_559
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_560
	.word	8
	.word	4
	.word	_Label_561
	.word	12
	.word	4
	.word	_Label_562
	.word	16
	.word	4
	.word	_Label_563
	.word	20
	.word	4
	.word	_Label_564
	.word	24
	.word	4
	.word	_Label_565
	.word	-12
	.word	4
	.word	_Label_566
	.word	-16
	.word	4
	.word	_Label_567
	.word	-20
	.word	4
	.word	_Label_568
	.word	-24
	.word	4
	.word	_Label_569
	.word	-28
	.word	4
	.word	_Label_570
	.word	-32
	.word	4
	.word	_Label_571
	.word	-36
	.word	4
	.word	_Label_572
	.word	-40
	.word	4
	.word	_Label_573
	.word	-44
	.word	4
	.word	_Label_574
	.word	-48
	.word	4
	.word	0
_Label_559:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_560:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_561:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_562:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_563:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_564:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_549\0"
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
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
	mov	1774,r13		! source line 1774
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1775,r13		! source line 1775
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1775,r13		! source line 1775
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
	.word	_Label_575
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_576
	.word	8
	.word	4
	.word	0
_Label_575:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_576:
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
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
	mov	1780,r13		! source line 1780
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_577 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_577  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1781,r13		! source line 1781
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1781,r13		! source line 1781
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
	.word	_Label_578
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_579
	.word	-12
	.word	4
	.word	0
_Label_578:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_577\0"
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
_Label_3395:
	push	r0
	sub	r1,1,r1
	bne	_Label_3395
	mov	1786,r13		! source line 1786
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1787,r13		! source line 1787
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
	mov	1787,r13		! source line 1787
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
	.word	_Label_580
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_580:
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
	mov	55,r1
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
	mov	1792,r13		! source line 1792
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1799,r13		! source line 1799
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0AS",r10
	mov	1800,r13		! source line 1800
	mov	"\0\0SE",r10
!   _temp_581 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-196]
!   Send message GetANewThread
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1801,r13		! source line 1801
	mov	"\0\0AS",r10
	mov	1801,r13		! source line 1801
	mov	"\0\0SE",r10
!   _temp_582 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-192]
!   Send message GetANewProcess
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-200]
! ASSIGNMENT STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_583 = newPCB + 24
	load	[r14+-200],r1
	add	r1,24,r1
	store	r1,[r14+-188]
!   Data Move: *_temp_583 = newThr  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_584 = newPCB + 16
	load	[r14+-200],r1
	add	r1,16,r1
	store	r1,[r14+-184]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: _temp_586 = *_temp_587  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_586) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_588 = _temp_586 + 12
	load	[r14+-176],r1
	add	r1,12,r1
	store	r1,[r14+-168]
!   Data Move: _temp_585 = *_temp_588  (sizeInBytes=4)
	load	[r14+-168],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   Data Move: *_temp_584 = _temp_585  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-184],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0AS",r10
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_589 = newThr + 76
	load	[r14+-204],r1
	add	r1,76,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_589 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-164],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1809,r13		! source line 1809
	mov	"\0\0AS",r10
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_590 = newThr + 4160
	load	[r14+-204],r1
	add	r1,4160,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_590 = newPCB  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r14+-160],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_592 = newThr + 4096
	load	[r14+-204],r1
	add	r1,4096,r1
	store	r1,[r14+-152]
!   Move address of _temp_592 [0 ] into _temp_593
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-148]
!   _temp_591 = _temp_593		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_591  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	1812,r13		! source line 1812
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! ASSIGNMENT STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0AS",r10
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_594 = newThr + 68
	load	[r14+-204],r1
	add	r1,68,r1
	store	r1,[r14+-144]
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_596 = newThr + 88
	load	[r14+-204],r1
	add	r1,88,r1
	store	r1,[r14+-136]
!   Move address of _temp_596 [999 ] into _temp_597
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_595 = _temp_597		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_594 = _temp_595  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = newPCB + 32
	load	[r14+-200],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_598 = _temp_599		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_602 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_601 = *_temp_602  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_601) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_603 = _temp_601 + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-108]
!   _temp_604 = _temp_603 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Data Move: _temp_600 = *_temp_604  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   _temp_605 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_598  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_600  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_610 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-96]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_613 = *_temp_614  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_613) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = _temp_613 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   _temp_616 = _temp_615 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Data Move: _temp_612 = *_temp_616  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   _temp_611 = _temp_612 - 1		(int)
	load	[r14+-88],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_610  (sizeInBytes=4)
	load	[r14+-96],r1
	store	r1,[r14+-216]
_Label_606:
!   Perform the FOR-LOOP termination test
!   if i > _temp_611 then goto _Label_609		
	load	[r14+-216],r1
	load	[r14+-92],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_609
_Label_607:
	mov	1825,r13		! source line 1825
	mov	"\0\0FB",r10
! CALL STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_618 = newPCB + 32
	load	[r14+-200],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_617  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
	mov	1827,r13		! source line 1827
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_621 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-52]
!   Data Move: _temp_620 = *_temp_621  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_620) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = _temp_620 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_619  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_617  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_619  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CE",r10
	call	MemoryCopy
! IF STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0IF",r10
	mov	1829,r13		! source line 1829
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_626 = *_temp_627  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_626) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = _temp_626 + 32
	load	[r14+-44],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_625  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   _temp_629 = _temp_625 XOR 0		(bool)
	loadb	[r14+-10],r1
	mov	0,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_629 then goto _Label_624 else goto _Label_623
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_623
	jmp	_Label_624
_Label_623:
! THEN...
	mov	1830,r13		! source line 1830
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_630 = newPCB + 32
	load	[r14+-200],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
	jmp	_Label_631
_Label_624:
! ELSE...
	mov	1832,r13		! source line 1832
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_632 = newPCB + 32
	load	[r14+-200],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
! END IF...
_Label_631:
!   Increment the FOR-LOOP index variable and jump back
_Label_608:
!   i = i + 1
	load	[r14+-216],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
	jmp	_Label_606
! END FOR
_Label_609:
! ASSIGNMENT STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0AS",r10
!   Call the function
	mov	1836,r13		! source line 1836
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
! SEND STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0SE",r10
!   _temp_633 = _function_203_ResumeChildAfterFork
	set	_function_203_ResumeChildAfterFork,r1
	store	r1,[r14+-24]
!   if intIsZero (newThr) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_633  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_635 = newPCB + 12
	load	[r14+-200],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: _temp_634 = *_temp_635  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_634  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,224,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_636
	.word	0		! total size of parameters
	.word	220		! frame size = 220
	.word	_Label_637
	.word	-16
	.word	4
	.word	_Label_638
	.word	-20
	.word	4
	.word	_Label_639
	.word	-24
	.word	4
	.word	_Label_640
	.word	-28
	.word	4
	.word	_Label_641
	.word	-32
	.word	4
	.word	_Label_642
	.word	-9
	.word	1
	.word	_Label_643
	.word	-36
	.word	4
	.word	_Label_644
	.word	-40
	.word	4
	.word	_Label_645
	.word	-44
	.word	4
	.word	_Label_646
	.word	-10
	.word	1
	.word	_Label_647
	.word	-48
	.word	4
	.word	_Label_648
	.word	-52
	.word	4
	.word	_Label_649
	.word	-56
	.word	4
	.word	_Label_650
	.word	-60
	.word	4
	.word	_Label_651
	.word	-64
	.word	4
	.word	_Label_652
	.word	-68
	.word	4
	.word	_Label_653
	.word	-72
	.word	4
	.word	_Label_654
	.word	-76
	.word	4
	.word	_Label_655
	.word	-80
	.word	4
	.word	_Label_656
	.word	-84
	.word	4
	.word	_Label_657
	.word	-88
	.word	4
	.word	_Label_658
	.word	-92
	.word	4
	.word	_Label_659
	.word	-96
	.word	4
	.word	_Label_660
	.word	-100
	.word	4
	.word	_Label_661
	.word	-104
	.word	4
	.word	_Label_662
	.word	-108
	.word	4
	.word	_Label_663
	.word	-112
	.word	4
	.word	_Label_664
	.word	-116
	.word	4
	.word	_Label_665
	.word	-120
	.word	4
	.word	_Label_666
	.word	-124
	.word	4
	.word	_Label_667
	.word	-128
	.word	4
	.word	_Label_668
	.word	-132
	.word	4
	.word	_Label_669
	.word	-136
	.word	4
	.word	_Label_670
	.word	-140
	.word	4
	.word	_Label_671
	.word	-144
	.word	4
	.word	_Label_672
	.word	-148
	.word	4
	.word	_Label_673
	.word	-152
	.word	4
	.word	_Label_674
	.word	-156
	.word	4
	.word	_Label_675
	.word	-160
	.word	4
	.word	_Label_676
	.word	-164
	.word	4
	.word	_Label_677
	.word	-168
	.word	4
	.word	_Label_678
	.word	-172
	.word	4
	.word	_Label_679
	.word	-176
	.word	4
	.word	_Label_680
	.word	-180
	.word	4
	.word	_Label_681
	.word	-184
	.word	4
	.word	_Label_682
	.word	-188
	.word	4
	.word	_Label_683
	.word	-192
	.word	4
	.word	_Label_684
	.word	-196
	.word	4
	.word	_Label_685
	.word	-200
	.word	4
	.word	_Label_686
	.word	-204
	.word	4
	.word	_Label_687
	.word	-208
	.word	4
	.word	_Label_688
	.word	-212
	.word	4
	.word	_Label_689
	.word	-216
	.word	4
	.word	0
_Label_636:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_642:
	.byte	'C'
	.ascii	"_temp_629\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_646:
	.byte	'C'
	.ascii	"_temp_625\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_685:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_686:
	.byte	'P'
	.ascii	"newThr\0"
	.align
_Label_687:
	.byte	'I'
	.ascii	"oldUserPC\0"
	.align
_Label_688:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_689:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_203_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3397:
	push	r0
	sub	r1,1,r1
	bne	_Label_3397
	mov	1842,r13		! source line 1842
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1847,r13		! source line 1847
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1847,r13		! source line 1847
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1848,r13		! source line 1848
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_691 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_690 = *_temp_691  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_690) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_692 = _temp_690 + 32
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
!   _temp_694 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_694 [0 ] into _temp_695
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
!   _temp_693 = _temp_695		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1849,r13		! source line 1849
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	1850,r13		! source line 1850
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_696 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_696 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_697 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-24]
!   Move address of _temp_697 [14 ] into _temp_698
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
!   Data Move: initUserStackTop = *_temp_698  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1852,r13		! source line 1852
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_699 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-16]
!   Move address of _temp_699 [999 ] into _temp_700
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
!   initSystemStackTop = _temp_700		(4 bytes)
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
	mov	1853,r13		! source line 1853
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_203_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_701
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_702
	.word	8
	.word	4
	.word	_Label_703
	.word	-12
	.word	4
	.word	_Label_704
	.word	-16
	.word	4
	.word	_Label_705
	.word	-20
	.word	4
	.word	_Label_706
	.word	-24
	.word	4
	.word	_Label_707
	.word	-28
	.word	4
	.word	_Label_708
	.word	-32
	.word	4
	.word	_Label_709
	.word	-36
	.word	4
	.word	_Label_710
	.word	-40
	.word	4
	.word	_Label_711
	.word	-44
	.word	4
	.word	_Label_712
	.word	-48
	.word	4
	.word	_Label_713
	.word	-52
	.word	4
	.word	_Label_714
	.word	-56
	.word	4
	.word	_Label_715
	.word	-60
	.word	4
	.word	_Label_716
	.word	-64
	.word	4
	.word	0
_Label_701:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_702:
	.byte	'I'
	.ascii	"startPC\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_714:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_715:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_716:
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
_Label_3398:
	push	r0
	sub	r1,1,r1
	bne	_Label_3398
	mov	1859,r13		! source line 1859
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	1865,r13		! source line 1865
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_721 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-112]
!   Calculate and save the FOR-LOOP ending value
!   _temp_722 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-108]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_721  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+-116]
_Label_717:
!   Perform the FOR-LOOP termination test
!   if i > _temp_722 then goto _Label_720		
	load	[r14+-116],r1
	load	[r14+-108],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_720
_Label_718:
	mov	1865,r13		! source line 1865
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1866,r13		! source line 1866
	mov	"\0\0IF",r10
!   _temp_728 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-100]
!   _temp_729 = _temp_728 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_729 [i ] into _temp_730
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   _temp_731 = _temp_730 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_727 = *_temp_731  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_727 != processID then goto _Label_724		(int)
	load	[r14+-104],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_724
!	jmp	_Label_726
_Label_726:
!   _temp_733 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-80]
!   _temp_734 = _temp_733 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_734 [i ] into _temp_735
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_736 = _temp_735 + 16
	load	[r14+-72],r1
	add	r1,16,r1
	store	r1,[r14+-68]
!   Data Move: _temp_732 = *_temp_736  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_739 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_738 = *_temp_739  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_738) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_740 = _temp_738 + 12
	load	[r14+-60],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Data Move: _temp_737 = *_temp_740  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_732 != _temp_737 then goto _Label_724		(int)
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_724
!	jmp	_Label_725
_Label_725:
!   _temp_742 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_743 = _temp_742 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Move address of _temp_743 [i ] into _temp_744
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_745 = _temp_744 + 20
	load	[r14+-36],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_741 = *_temp_745  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_741 == 3 then goto _Label_724		(int)
	load	[r14+-48],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_724
!	jmp	_Label_723
_Label_723:
! THEN...
	mov	1867,r13		! source line 1867
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0AS",r10
	mov	1867,r13		! source line 1867
	mov	"\0\0SE",r10
!   _temp_747 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_748 = _temp_747 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_748 [i ] into _temp_749
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_746 = _temp_749		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-28]
!   _temp_750 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_746  sizeInBytes=4
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
	mov	1868,r13		! source line 1868
	mov	"\0\0RE",r10
!   ReturnResult: childExitStatus  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_724:
!   Increment the FOR-LOOP index variable and jump back
_Label_719:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_717
! END FOR
_Label_720:
! RETURN STATEMENT...
	mov	1871,r13		! source line 1871
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
	.word	_Label_751
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_752
	.word	8
	.word	4
	.word	_Label_753
	.word	-12
	.word	4
	.word	_Label_754
	.word	-16
	.word	4
	.word	_Label_755
	.word	-20
	.word	4
	.word	_Label_756
	.word	-24
	.word	4
	.word	_Label_757
	.word	-28
	.word	4
	.word	_Label_758
	.word	-32
	.word	4
	.word	_Label_759
	.word	-36
	.word	4
	.word	_Label_760
	.word	-40
	.word	4
	.word	_Label_761
	.word	-44
	.word	4
	.word	_Label_762
	.word	-48
	.word	4
	.word	_Label_763
	.word	-52
	.word	4
	.word	_Label_764
	.word	-56
	.word	4
	.word	_Label_765
	.word	-60
	.word	4
	.word	_Label_766
	.word	-64
	.word	4
	.word	_Label_767
	.word	-68
	.word	4
	.word	_Label_768
	.word	-72
	.word	4
	.word	_Label_769
	.word	-76
	.word	4
	.word	_Label_770
	.word	-80
	.word	4
	.word	_Label_771
	.word	-84
	.word	4
	.word	_Label_772
	.word	-88
	.word	4
	.word	_Label_773
	.word	-92
	.word	4
	.word	_Label_774
	.word	-96
	.word	4
	.word	_Label_775
	.word	-100
	.word	4
	.word	_Label_776
	.word	-104
	.word	4
	.word	_Label_777
	.word	-108
	.word	4
	.word	_Label_778
	.word	-112
	.word	4
	.word	_Label_779
	.word	-116
	.word	4
	.word	_Label_780
	.word	-120
	.word	4
	.word	0
_Label_751:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_752:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_779:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_780:
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
_Label_3399:
	push	r0
	sub	r1,1,r1
	bne	_Label_3399
	mov	1876,r13		! source line 1876
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3400:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3400
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	1886,r13		! source line 1886
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1886,r13		! source line 1886
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldVar  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0AS",r10
	mov	1887,r13		! source line 1887
	mov	"\0\0SE",r10
!   _temp_782 = &kernelAddr
	add	r14,-228,r1
	store	r1,[r14+-108]
!   _temp_783 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_785 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-96]
!   Data Move: _temp_784 = *_temp_785  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_784) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_786 = _temp_784 + 32
	load	[r14+-100],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_782  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_783  sizeInBytes=4
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
	mov	1891,r13		! source line 1891
	mov	"\0\0IF",r10
!   if oldVar >= 0 then goto _Label_788		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_788
!	jmp	_Label_787
_Label_787:
! THEN...
	mov	1892,r13		! source line 1892
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_788:
! SEND STATEMENT...
	mov	1894,r13		! source line 1894
	mov	"\0\0SE",r10
!   _temp_789 = &newAddrSpace
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
	mov	1896,r13		! source line 1896
	mov	"\0\0AS",r10
	mov	1896,r13		! source line 1896
	mov	"\0\0SE",r10
!   _temp_790 = &kernelAddr
	add	r14,-228,r1
	store	r1,[r14+-84]
!   _temp_791 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_790  sizeInBytes=4
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
	mov	1897,r13		! source line 1897
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_792
	load	[r14+-232],r1
	cmp	r1,r0
	be	_Label_792
	jmp	_Label_793
_Label_792:
! THEN...
	mov	1898,r13		! source line 1898
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_793:
! ASSIGNMENT STATEMENT...
	mov	1901,r13		! source line 1901
	mov	"\0\0AS",r10
	mov	1901,r13		! source line 1901
	mov	"\0\0SE",r10
!   _temp_794 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-76]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_794  sizeInBytes=4
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
	mov	1902,r13		! source line 1902
	mov	"\0\0IF",r10
!   if initUserPC >= 0 then goto _Label_796		(int)
	load	[r14+-236],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_796
!	jmp	_Label_795
_Label_795:
! THEN...
	mov	1903,r13		! source line 1903
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1903,r13		! source line 1903
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,260,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_796:
! SEND STATEMENT...
	mov	1907,r13		! source line 1907
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_799 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: _temp_798 = *_temp_799  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_798) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_800 = _temp_798 + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_797 = _temp_800		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-72]
!   _temp_801 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_797  sizeInBytes=4
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
	mov	1908,r13		! source line 1908
	mov	"\0\0SE",r10
!   _temp_802 = &_P_Kernel_fileManager
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
	mov	1910,r13		! source line 1910
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_804 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_803 = *_temp_804  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_803) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_805 = _temp_803 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_805 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-40],r4
	mov	23,r3
_Label_3401:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3401
! ASSIGNMENT STATEMENT...
	mov	1911,r13		! source line 1911
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_806 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_806 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0AS",r10
!   _temp_808 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-28]
!   _temp_809 = _temp_808 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_807 = *_temp_809  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   InitUserStackTop = _temp_807 * 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_810 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_810 [999 ] into _temp_811
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
!   initSystemStackTop = _temp_811		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-240]
! SEND STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0SE",r10
!   _temp_812 = &newAddrSpace
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
	mov	1915,r13		! source line 1915
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1918,r13		! source line 1918
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
	.word	_Label_813
	.word	4		! total size of parameters
	.word	256		! frame size = 256
	.word	_Label_814
	.word	8
	.word	4
	.word	_Label_815
	.word	-12
	.word	4
	.word	_Label_816
	.word	-16
	.word	4
	.word	_Label_817
	.word	-20
	.word	4
	.word	_Label_818
	.word	-24
	.word	4
	.word	_Label_819
	.word	-28
	.word	4
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
	.word	-60
	.word	4
	.word	_Label_828
	.word	-64
	.word	4
	.word	_Label_829
	.word	-68
	.word	4
	.word	_Label_830
	.word	-72
	.word	4
	.word	_Label_831
	.word	-76
	.word	4
	.word	_Label_832
	.word	-80
	.word	4
	.word	_Label_833
	.word	-84
	.word	4
	.word	_Label_834
	.word	-88
	.word	4
	.word	_Label_835
	.word	-92
	.word	4
	.word	_Label_836
	.word	-96
	.word	4
	.word	_Label_837
	.word	-100
	.word	4
	.word	_Label_838
	.word	-104
	.word	4
	.word	_Label_839
	.word	-108
	.word	4
	.word	_Label_840
	.word	-112
	.word	4
	.word	_Label_841
	.word	-204
	.word	92
	.word	_Label_842
	.word	-228
	.word	24
	.word	_Label_843
	.word	-232
	.word	4
	.word	_Label_844
	.word	-236
	.word	4
	.word	_Label_845
	.word	-240
	.word	4
	.word	_Label_846
	.word	-244
	.word	4
	.word	_Label_847
	.word	-248
	.word	4
	.word	0
_Label_813:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_814:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_841:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_842:
	.byte	'A'
	.ascii	"kernelAddr\0"
	.align
_Label_843:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_844:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_845:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_846:
	.byte	'I'
	.ascii	"InitUserStackTop\0"
	.align
_Label_847:
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
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	1926,r13		! source line 1926
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1931,r13		! source line 1931
	mov	"\0\0AS",r10
	mov	1931,r13		! source line 1931
	mov	"\0\0SE",r10
!   _temp_848 = &kernelAddr
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_849 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_851 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_850 = *_temp_851  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_850) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_852 = _temp_850 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_848  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_849  sizeInBytes=4
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
!   _temp_853 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_853  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1933,r13		! source line 1933
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_854 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_854  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1934,r13		! source line 1934
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_855 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_855  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1935,r13		! source line 1935
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1936,r13		! source line 1936
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_856 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_856  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1937,r13		! source line 1937
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_857 = &kernelAddr
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_857  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1939,r13		! source line 1939
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1940,r13		! source line 1940
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
	.word	_Label_858
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_859
	.word	8
	.word	4
	.word	_Label_860
	.word	-12
	.word	4
	.word	_Label_861
	.word	-16
	.word	4
	.word	_Label_862
	.word	-20
	.word	4
	.word	_Label_863
	.word	-24
	.word	4
	.word	_Label_864
	.word	-28
	.word	4
	.word	_Label_865
	.word	-32
	.word	4
	.word	_Label_866
	.word	-36
	.word	4
	.word	_Label_867
	.word	-40
	.word	4
	.word	_Label_868
	.word	-44
	.word	4
	.word	_Label_869
	.word	-48
	.word	4
	.word	_Label_870
	.word	-52
	.word	4
	.word	_Label_871
	.word	-76
	.word	24
	.word	0
_Label_858:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_859:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_870:
	.byte	'I'
	.ascii	"oldVar\0"
	.align
_Label_871:
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
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
	mov	1945,r13		! source line 1945
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1950,r13		! source line 1950
	mov	"\0\0AS",r10
	mov	1950,r13		! source line 1950
	mov	"\0\0SE",r10
!   _temp_872 = &kernelAddr
	add	r14,-76,r1
	store	r1,[r14+-48]
!   _temp_873 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_875 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_874 = *_temp_875  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_874) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_876 = _temp_874 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_872  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_873  sizeInBytes=4
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
!   _temp_877 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_877  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1951,r13		! source line 1951
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_878 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_878  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1952,r13		! source line 1952
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_879 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_879  sizeInBytes=4
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
!   _temp_880 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_880  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_881 = &kernelAddr
	add	r14,-76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_881  sizeInBytes=4
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
	.word	_Label_882
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_883
	.word	8
	.word	4
	.word	_Label_884
	.word	-12
	.word	4
	.word	_Label_885
	.word	-16
	.word	4
	.word	_Label_886
	.word	-20
	.word	4
	.word	_Label_887
	.word	-24
	.word	4
	.word	_Label_888
	.word	-28
	.word	4
	.word	_Label_889
	.word	-32
	.word	4
	.word	_Label_890
	.word	-36
	.word	4
	.word	_Label_891
	.word	-40
	.word	4
	.word	_Label_892
	.word	-44
	.word	4
	.word	_Label_893
	.word	-48
	.word	4
	.word	_Label_894
	.word	-52
	.word	4
	.word	_Label_895
	.word	-76
	.word	24
	.word	0
_Label_882:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_883:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_894:
	.byte	'I'
	.ascii	"oldVar\0"
	.align
_Label_895:
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
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
	mov	1963,r13		! source line 1963
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_896 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_896  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1964,r13		! source line 1964
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_897 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_897  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1965,r13		! source line 1965
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1966,r13		! source line 1966
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1967,r13		! source line 1967
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_898 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_898  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1968,r13		! source line 1968
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_899 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_899  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1969,r13		! source line 1969
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1970,r13		! source line 1970
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_900 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1971,r13		! source line 1971
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1972,r13		! source line 1972
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1973,r13		! source line 1973
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1974,r13		! source line 1974
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
	.word	_Label_901
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_902
	.word	8
	.word	4
	.word	_Label_903
	.word	12
	.word	4
	.word	_Label_904
	.word	16
	.word	4
	.word	_Label_905
	.word	-12
	.word	4
	.word	_Label_906
	.word	-16
	.word	4
	.word	_Label_907
	.word	-20
	.word	4
	.word	_Label_908
	.word	-24
	.word	4
	.word	_Label_909
	.word	-28
	.word	4
	.word	0
_Label_901:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_902:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_903:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_904:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_896\0"
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
_Label_3405:
	push	r0
	sub	r1,1,r1
	bne	_Label_3405
	mov	1979,r13		! source line 1979
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_910 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_910  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1980,r13		! source line 1980
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_911 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_911  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1981,r13		! source line 1981
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1982,r13		! source line 1982
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1983,r13		! source line 1983
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_912 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_912  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1984,r13		! source line 1984
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_913 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_913  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1985,r13		! source line 1985
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1986,r13		! source line 1986
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_914 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_914  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1987,r13		! source line 1987
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1988,r13		! source line 1988
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1989,r13		! source line 1989
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1990,r13		! source line 1990
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
	.word	_Label_915
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_916
	.word	8
	.word	4
	.word	_Label_917
	.word	12
	.word	4
	.word	_Label_918
	.word	16
	.word	4
	.word	_Label_919
	.word	-12
	.word	4
	.word	_Label_920
	.word	-16
	.word	4
	.word	_Label_921
	.word	-20
	.word	4
	.word	_Label_922
	.word	-24
	.word	4
	.word	_Label_923
	.word	-28
	.word	4
	.word	0
_Label_915:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_916:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_917:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_918:
	.byte	'I'
	.ascii	"sizeInBytes\0"
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
_Label_3406:
	push	r0
	sub	r1,1,r1
	bne	_Label_3406
	mov	1995,r13		! source line 1995
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_924 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_924  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_925 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_925  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1998,r13		! source line 1998
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1999,r13		! source line 1999
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_926 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_926  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2000,r13		! source line 2000
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2001,r13		! source line 2001
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2002,r13		! source line 2002
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2003,r13		! source line 2003
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
	.word	_Label_927
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_928
	.word	8
	.word	4
	.word	_Label_929
	.word	12
	.word	4
	.word	_Label_930
	.word	-12
	.word	4
	.word	_Label_931
	.word	-16
	.word	4
	.word	_Label_932
	.word	-20
	.word	4
	.word	0
_Label_927:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_928:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_929:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_924\0"
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
_Label_3407:
	push	r0
	sub	r1,1,r1
	bne	_Label_3407
	mov	2008,r13		! source line 2008
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_933 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_933  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2009,r13		! source line 2009
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_934 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_934  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2010,r13		! source line 2010
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2011,r13		! source line 2011
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2012,r13		! source line 2012
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2012,r13		! source line 2012
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
	.word	_Label_935
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_936
	.word	8
	.word	4
	.word	_Label_937
	.word	-12
	.word	4
	.word	_Label_938
	.word	-16
	.word	4
	.word	0
_Label_935:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_936:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_202_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3408:
	push	r0
	sub	r1,1,r1
	bne	_Label_3408
	mov	2606,r13		! source line 2606
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_939 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_939  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0AS",r10
!   _temp_940 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_940) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_942 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_942) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_941 = *_temp_942  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_940 = _temp_941  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0AS",r10
!   _temp_943 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_943) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_945 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_945) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_944 = *_temp_945  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_943 = _temp_944  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0AS",r10
!   _temp_946 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_946) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_948 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_948) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_947 = *_temp_948  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_946 = _temp_947  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_949
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_950
	.word	8
	.word	4
	.word	_Label_951
	.word	12
	.word	4
	.word	_Label_952
	.word	-16
	.word	4
	.word	_Label_953
	.word	-9
	.word	1
	.word	_Label_954
	.word	-20
	.word	4
	.word	_Label_955
	.word	-24
	.word	4
	.word	_Label_956
	.word	-10
	.word	1
	.word	_Label_957
	.word	-28
	.word	4
	.word	_Label_958
	.word	-32
	.word	4
	.word	_Label_959
	.word	-11
	.word	1
	.word	_Label_960
	.word	-36
	.word	4
	.word	_Label_961
	.word	-12
	.word	1
	.word	_Label_962
	.word	-40
	.word	4
	.word	_Label_963
	.word	-44
	.word	4
	.word	0
_Label_949:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_950:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_951:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_953:
	.byte	'C'
	.ascii	"_temp_947\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_956:
	.byte	'C'
	.ascii	"_temp_944\0"
	.align
_Label_957:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_959:
	.byte	'C'
	.ascii	"_temp_941\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_961:
	.byte	'C'
	.ascii	"_temp_939\0"
	.align
_Label_962:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_963:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_201_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_printFCB,r1
	push	r1
	mov	3,r1
_Label_3409:
	push	r0
	sub	r1,1,r1
	bne	_Label_3409
	mov	2616,r13		! source line 2616
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_965 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_964 = *_temp_965  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_964  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2617,r13		! source line 2617
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2618,r13		! source line 2618
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_201_printFCB:
	.word	_sourceFileName
	.word	_Label_966
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_967
	.word	8
	.word	4
	.word	_Label_968
	.word	-12
	.word	4
	.word	_Label_969
	.word	-16
	.word	4
	.word	0
_Label_966:
	.ascii	"printFCB\0"
	.align
_Label_967:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_200_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_printOpen,r1
	push	r1
	mov	4,r1
_Label_3410:
	push	r0
	sub	r1,1,r1
	bne	_Label_3410
	mov	2621,r13		! source line 2621
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_970 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_970  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2622,r13		! source line 2622
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_971 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_971  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2623,r13		! source line 2623
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_972 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_972  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2624,r13		! source line 2624
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2625,r13		! source line 2625
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
	mov	2625,r13		! source line 2625
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_200_printOpen:
	.word	_sourceFileName
	.word	_Label_973
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_974
	.word	8
	.word	4
	.word	_Label_975
	.word	-12
	.word	4
	.word	_Label_976
	.word	-16
	.word	4
	.word	_Label_977
	.word	-20
	.word	4
	.word	0
_Label_973:
	.ascii	"printOpen\0"
	.align
_Label_974:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_978
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_978:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_979
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_979:
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
_Label_3411:
	push	r0
	sub	r1,1,r1
	bne	_Label_3411
	mov	270,r13		! source line 270
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_981		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_981
!	jmp	_Label_980
_Label_980:
! THEN...
	mov	272,r13		! source line 272
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_982 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_982  sizeInBytes=4
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
_Label_981:
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
	.word	_Label_984
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_985
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_986
	.word	12
	.word	4
	.word	_Label_987
	.word	-12
	.word	4
	.word	_Label_988
	.word	-16
	.word	4
	.word	0
_Label_984:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_985:
	.ascii	"Pself\0"
	.align
_Label_986:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_982\0"
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
_Label_3412:
	push	r0
	sub	r1,1,r1
	bne	_Label_3412
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
!   if count != 2147483647 then goto _Label_990		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_990
!	jmp	_Label_989
_Label_989:
! THEN...
	mov	286,r13		! source line 286
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_991 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_991  sizeInBytes=4
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
_Label_990:
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
!   if count > 0 then goto _Label_993		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_993
!	jmp	_Label_992
_Label_992:
! THEN...
	mov	290,r13		! source line 290
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0AS",r10
	mov	290,r13		! source line 290
	mov	"\0\0SE",r10
!   _temp_994 = &waitingThreads
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
!   _temp_995 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_995 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0SE",r10
!   _temp_996 = &_P_Kernel_readyList
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
_Label_993:
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
	.word	_Label_997
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_998
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_999
	.word	-12
	.word	4
	.word	_Label_1000
	.word	-16
	.word	4
	.word	_Label_1001
	.word	-20
	.word	4
	.word	_Label_1002
	.word	-24
	.word	4
	.word	_Label_1003
	.word	-28
	.word	4
	.word	_Label_1004
	.word	-32
	.word	4
	.word	0
_Label_997:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_998:
	.ascii	"Pself\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1003:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1004:
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
_Label_3413:
	push	r0
	sub	r1,1,r1
	bne	_Label_3413
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
!   if count != -2147483648 then goto _Label_1006		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1006
!	jmp	_Label_1005
_Label_1005:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1007 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1007  sizeInBytes=4
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
_Label_1006:
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
!   if count >= 0 then goto _Label_1009		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1009
!	jmp	_Label_1008
_Label_1008:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0SE",r10
!   _temp_1010 = &waitingThreads
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
_Label_1009:
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
	.word	_Label_1011
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1012
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1013
	.word	-12
	.word	4
	.word	_Label_1014
	.word	-16
	.word	4
	.word	_Label_1015
	.word	-20
	.word	4
	.word	0
_Label_1011:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1012:
	.ascii	"Pself\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1015:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1016
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1016:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1017
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1017:
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
_Label_3414:
	push	r0
	sub	r1,1,r1
	bne	_Label_3414
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
	.word	_Label_1019
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1020
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1021
	.word	-12
	.word	4
	.word	0
_Label_1019:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1020:
	.ascii	"Pself\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_1018\0"
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
_Label_3415:
	push	r0
	sub	r1,1,r1
	bne	_Label_3415
	mov	340,r13		! source line 340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1023		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1023
!	jmp	_Label_1022
_Label_1022:
! THEN...
	mov	344,r13		! source line 344
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1024 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1024  sizeInBytes=4
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
_Label_1023:
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
!   if heldBy == 0 then goto _Label_1028		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1028
!   _temp_1027 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1029
_Label_1028:
!   _temp_1027 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1029:
!   if _temp_1027 then goto _Label_1026 else goto _Label_1025
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1025
	jmp	_Label_1026
_Label_1025:
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
	jmp	_Label_1030
_Label_1026:
! ELSE...
	mov	350,r13		! source line 350
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0SE",r10
!   _temp_1031 = &waitingThreads
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
_Label_1030:
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
	.word	_Label_1032
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1033
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1034
	.word	-16
	.word	4
	.word	_Label_1035
	.word	-9
	.word	1
	.word	_Label_1036
	.word	-20
	.word	4
	.word	_Label_1037
	.word	-24
	.word	4
	.word	0
_Label_1032:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1033:
	.ascii	"Pself\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1035:
	.byte	'C'
	.ascii	"_temp_1027\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1037:
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
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
	mov	358,r13		! source line 358
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1039		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1039
!	jmp	_Label_1038
_Label_1038:
! THEN...
	mov	363,r13		! source line 363
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1040 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1040  sizeInBytes=4
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
_Label_1039:
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
!   _temp_1041 = &waitingThreads
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
!   if t == 0 then goto _Label_1043		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1043
!	jmp	_Label_1042
_Label_1042:
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
!   _temp_1044 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1044 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0SE",r10
!   _temp_1045 = &_P_Kernel_readyList
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
	jmp	_Label_1046
_Label_1043:
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
_Label_1046:
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
	.word	_Label_1047
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1048
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1049
	.word	-12
	.word	4
	.word	_Label_1050
	.word	-16
	.word	4
	.word	_Label_1051
	.word	-20
	.word	4
	.word	_Label_1052
	.word	-24
	.word	4
	.word	_Label_1053
	.word	-28
	.word	4
	.word	_Label_1054
	.word	-32
	.word	4
	.word	0
_Label_1047:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1048:
	.ascii	"Pself\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1053:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1054:
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
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
	mov	379,r13		! source line 379
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	380,r13		! source line 380
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1057		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1057
!	jmp	_Label_1056
_Label_1056:
!   _temp_1055 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1058
_Label_1057:
!   _temp_1055 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1058:
!   ReturnResult: _temp_1055  (sizeInBytes=1)
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
	.word	_Label_1059
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1060
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1061
	.word	-9
	.word	1
	.word	0
_Label_1059:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1060:
	.ascii	"Pself\0"
	.align
_Label_1061:
	.byte	'C'
	.ascii	"_temp_1055\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1062
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1062:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1063
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1063:
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
_Label_3418:
	push	r0
	sub	r1,1,r1
	bne	_Label_3418
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
	.word	_Label_1065
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1066
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1067
	.word	-12
	.word	4
	.word	0
_Label_1065:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1066:
	.ascii	"Pself\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1064\0"
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
_Label_3419:
	push	r0
	sub	r1,1,r1
	bne	_Label_3419
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
!   Retrieve Result: targetName=_temp_1070  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1070 then goto _Label_1069 else goto _Label_1068
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1068
	jmp	_Label_1069
_Label_1068:
! THEN...
	mov	430,r13		! source line 430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1071 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1071  sizeInBytes=4
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
_Label_1069:
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
!   _temp_1072 = &waitingThreads
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
	.word	_Label_1073
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1074
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1075
	.word	12
	.word	4
	.word	_Label_1076
	.word	-16
	.word	4
	.word	_Label_1077
	.word	-20
	.word	4
	.word	_Label_1078
	.word	-9
	.word	1
	.word	_Label_1079
	.word	-24
	.word	4
	.word	0
_Label_1073:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1074:
	.ascii	"Pself\0"
	.align
_Label_1075:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1078:
	.byte	'C'
	.ascii	"_temp_1070\0"
	.align
_Label_1079:
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
_Label_3420:
	push	r0
	sub	r1,1,r1
	bne	_Label_3420
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
!   Retrieve Result: targetName=_temp_1082  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1082 then goto _Label_1081 else goto _Label_1080
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1080
	jmp	_Label_1081
_Label_1080:
! THEN...
	mov	447,r13		! source line 447
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1083 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1083  sizeInBytes=4
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
_Label_1081:
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
!   _temp_1084 = &waitingThreads
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
!   if t == 0 then goto _Label_1086		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1086
!	jmp	_Label_1085
_Label_1085:
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
!   _temp_1087 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1087 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0SE",r10
!   _temp_1088 = &_P_Kernel_readyList
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
_Label_1086:
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
	.word	_Label_1089
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1090
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1091
	.word	12
	.word	4
	.word	_Label_1092
	.word	-16
	.word	4
	.word	_Label_1093
	.word	-20
	.word	4
	.word	_Label_1094
	.word	-24
	.word	4
	.word	_Label_1095
	.word	-28
	.word	4
	.word	_Label_1096
	.word	-9
	.word	1
	.word	_Label_1097
	.word	-32
	.word	4
	.word	_Label_1098
	.word	-36
	.word	4
	.word	0
_Label_1089:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1090:
	.ascii	"Pself\0"
	.align
_Label_1091:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1096:
	.byte	'C'
	.ascii	"_temp_1082\0"
	.align
_Label_1097:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1098:
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
_Label_3421:
	push	r0
	sub	r1,1,r1
	bne	_Label_3421
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
!   Retrieve Result: targetName=_temp_1101  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1101 then goto _Label_1100 else goto _Label_1099
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1099
	jmp	_Label_1100
_Label_1099:
! THEN...
	mov	465,r13		! source line 465
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1102 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1102  sizeInBytes=4
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
_Label_1100:
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
_Label_1103:
!	jmp	_Label_1104
_Label_1104:
	mov	468,r13		! source line 468
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0AS",r10
	mov	469,r13		! source line 469
	mov	"\0\0SE",r10
!   _temp_1106 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1107
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1107
	jmp	_Label_1108
_Label_1107:
! THEN...
	mov	471,r13		! source line 471
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0BR",r10
	jmp	_Label_1105
! END IF...
_Label_1108:
! ASSIGNMENT STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1109 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1109 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0SE",r10
!   _temp_1110 = &_P_Kernel_readyList
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
	jmp	_Label_1103
_Label_1105:
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
	.word	_Label_1111
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1112
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1113
	.word	12
	.word	4
	.word	_Label_1114
	.word	-16
	.word	4
	.word	_Label_1115
	.word	-20
	.word	4
	.word	_Label_1116
	.word	-24
	.word	4
	.word	_Label_1117
	.word	-28
	.word	4
	.word	_Label_1118
	.word	-9
	.word	1
	.word	_Label_1119
	.word	-32
	.word	4
	.word	_Label_1120
	.word	-36
	.word	4
	.word	0
_Label_1111:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1112:
	.ascii	"Pself\0"
	.align
_Label_1113:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1118:
	.byte	'C'
	.ascii	"_temp_1101\0"
	.align
_Label_1119:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1120:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1121
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
_Label_1121:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1122
	.word	_sourceFileName
	.word	165		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1122:
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
_Label_3422:
	push	r0
	sub	r1,1,r1
	bne	_Label_3422
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
!   _temp_1123 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1123) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1123 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   _temp_1124 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1124 [0 ] into _temp_1125
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
!   Data Move: *_temp_1125 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   _temp_1126 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1126 [999 ] into _temp_1127
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
!   Data Move: *_temp_1127 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   _temp_1128 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1128 [999 ] into _temp_1129
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
!   stackTop = _temp_1129		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   _temp_1130 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1132 = &_temp_1131
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1132 = _temp_1132 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1134:
!   Data Move: *_temp_1132 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1132 = _temp_1132 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1133 = _temp_1133 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1133) then goto _Label_1134
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1134
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1135 = &_temp_1131
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3423
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3423:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1130 = *_temp_1135  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3424:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3424
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
!   _temp_1136 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1138 = &_temp_1137
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1138 = _temp_1138 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1140:
!   Data Move: *_temp_1138 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1138 = _temp_1138 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1139 = _temp_1139 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1139) then goto _Label_1140
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1140
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1141 = &_temp_1137
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3425
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3425:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1136 = *_temp_1141  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3426:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3426
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
	.word	_Label_1142
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1143
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1144
	.word	12
	.word	4
	.word	_Label_1145
	.word	-12
	.word	4
	.word	_Label_1146
	.word	-16
	.word	4
	.word	_Label_1147
	.word	-20
	.word	4
	.word	_Label_1148
	.word	-84
	.word	64
	.word	_Label_1149
	.word	-88
	.word	4
	.word	_Label_1150
	.word	-92
	.word	4
	.word	_Label_1151
	.word	-96
	.word	4
	.word	_Label_1152
	.word	-100
	.word	4
	.word	_Label_1153
	.word	-156
	.word	56
	.word	_Label_1154
	.word	-160
	.word	4
	.word	_Label_1155
	.word	-164
	.word	4
	.word	_Label_1156
	.word	-168
	.word	4
	.word	_Label_1157
	.word	-172
	.word	4
	.word	_Label_1158
	.word	-176
	.word	4
	.word	_Label_1159
	.word	-180
	.word	4
	.word	_Label_1160
	.word	-184
	.word	4
	.word	_Label_1161
	.word	-188
	.word	4
	.word	0
_Label_1142:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1143:
	.ascii	"Pself\0"
	.align
_Label_1144:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1123\0"
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
_Label_3427:
	push	r0
	sub	r1,1,r1
	bne	_Label_3427
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
!   _temp_1162 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1162  (sizeInBytes=4)
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
!   _temp_1164 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1163  sizeInBytes=4
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
	.word	_Label_1165
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1166
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1167
	.word	12
	.word	4
	.word	_Label_1168
	.word	16
	.word	4
	.word	_Label_1169
	.word	-12
	.word	4
	.word	_Label_1170
	.word	-16
	.word	4
	.word	_Label_1171
	.word	-20
	.word	4
	.word	_Label_1172
	.word	-24
	.word	4
	.word	_Label_1173
	.word	-28
	.word	4
	.word	0
_Label_1165:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1166:
	.ascii	"Pself\0"
	.align
_Label_1167:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1168:
	.byte	'I'
	.ascii	"arg\0"
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
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1173:
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
_Label_3428:
	push	r0
	sub	r1,1,r1
	bne	_Label_3428
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1176 == _P_Kernel_currentThread then goto _Label_1175		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1175
!	jmp	_Label_1174
_Label_1174:
! THEN...
	mov	547,r13		! source line 547
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1177 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1177  sizeInBytes=4
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
_Label_1175:
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
!   _temp_1178 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1180		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1180
!	jmp	_Label_1179
_Label_1179:
! THEN...
	mov	558,r13		! source line 558
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1182		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1182
!	jmp	_Label_1181
_Label_1181:
! THEN...
	mov	559,r13		! source line 559
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1183 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1183  sizeInBytes=4
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
_Label_1182:
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
!   _temp_1185 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1184  sizeInBytes=4
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
_Label_1180:
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
	.word	_Label_1186
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1187
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1188
	.word	-12
	.word	4
	.word	_Label_1189
	.word	-16
	.word	4
	.word	_Label_1190
	.word	-20
	.word	4
	.word	_Label_1191
	.word	-24
	.word	4
	.word	_Label_1192
	.word	-28
	.word	4
	.word	_Label_1193
	.word	-32
	.word	4
	.word	_Label_1194
	.word	-36
	.word	4
	.word	_Label_1195
	.word	-40
	.word	4
	.word	_Label_1196
	.word	-44
	.word	4
	.word	0
_Label_1186:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1187:
	.ascii	"Pself\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1194:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1195:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1196:
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
_Label_3429:
	push	r0
	sub	r1,1,r1
	bne	_Label_3429
	mov	570,r13		! source line 570
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	582,r13		! source line 582
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1198		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1198
!	jmp	_Label_1197
_Label_1197:
! THEN...
	mov	583,r13		! source line 583
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1199 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1199  sizeInBytes=4
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
_Label_1198:
! IF STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1202 == _P_Kernel_currentThread then goto _Label_1201		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1201
!	jmp	_Label_1200
_Label_1200:
! THEN...
	mov	587,r13		! source line 587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1203 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1203  sizeInBytes=4
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
_Label_1201:
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
!   _temp_1204 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1205
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1205
	jmp	_Label_1206
_Label_1205:
! THEN...
	mov	595,r13		! source line 595
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1207 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1207  sizeInBytes=4
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
_Label_1206:
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
	.word	_Label_1208
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1209
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1210
	.word	-12
	.word	4
	.word	_Label_1211
	.word	-16
	.word	4
	.word	_Label_1212
	.word	-20
	.word	4
	.word	_Label_1213
	.word	-24
	.word	4
	.word	_Label_1214
	.word	-28
	.word	4
	.word	_Label_1215
	.word	-32
	.word	4
	.word	0
_Label_1208:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1209:
	.ascii	"Pself\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1215:
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
_Label_3430:
	push	r0
	sub	r1,1,r1
	bne	_Label_3430
	mov	602,r13		! source line 602
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0IF",r10
!   _temp_1219 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1219 [0 ] into _temp_1220
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
!   Data Move: _temp_1218 = *_temp_1220  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1218 == 606348324 then goto _Label_1217		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1217
!	jmp	_Label_1216
_Label_1216:
! THEN...
	mov	609,r13		! source line 609
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1221 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1221  sizeInBytes=4
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
	jmp	_Label_1222
_Label_1217:
! ELSE...
	mov	610,r13		! source line 610
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0IF",r10
!   _temp_1226 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1226 [999 ] into _temp_1227
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
!   Data Move: _temp_1225 = *_temp_1227  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1225 == 606348324 then goto _Label_1224		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1224
!	jmp	_Label_1223
_Label_1223:
! THEN...
	mov	611,r13		! source line 611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1228 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
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
_Label_1224:
! END IF...
_Label_1222:
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
	.word	_Label_1229
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1230
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1231
	.word	-12
	.word	4
	.word	_Label_1232
	.word	-16
	.word	4
	.word	_Label_1233
	.word	-20
	.word	4
	.word	_Label_1234
	.word	-24
	.word	4
	.word	_Label_1235
	.word	-28
	.word	4
	.word	_Label_1236
	.word	-32
	.word	4
	.word	_Label_1237
	.word	-36
	.word	4
	.word	_Label_1238
	.word	-40
	.word	4
	.word	0
_Label_1229:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1230:
	.ascii	"Pself\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1218\0"
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
_Label_3431:
	push	r0
	sub	r1,1,r1
	bne	_Label_3431
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
!   _temp_1239 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1239  sizeInBytes=4
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
!   _temp_1240 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1240  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1241  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1242 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1242  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1243 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1243  sizeInBytes=4
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
!   _temp_1248 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1249 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1248  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1244:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1249 then goto _Label_1247		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1247
_Label_1245:
	mov	630,r13		! source line 630
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1250 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1250  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1251 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1251  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1252 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1252  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1254 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1254 [i ] into _temp_1255
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
!   Data Move: _temp_1253 = *_temp_1255  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1253  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1256 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1256  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1258 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1258 [i ] into _temp_1259
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
!   Data Move: _temp_1257 = *_temp_1259  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1257  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1260 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1260  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1246:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1244
! END FOR
_Label_1247:
! CALL STATEMENT...
!   _temp_1261 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-116]
!   _temp_1262 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1261  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1262  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1263 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-108]
!   _temp_1265 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1265 [0 ] into _temp_1266
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
!   _temp_1264 = _temp_1266		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1263  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1264  sizeInBytes=4
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
	be	_Label_1269
	cmp	r1,2
	be	_Label_1270
	cmp	r1,3
	be	_Label_1271
	cmp	r1,4
	be	_Label_1272
	cmp	r1,5
	be	_Label_1273
	jmp	_Label_1267
! CASE 1...
_Label_1269:
! CALL STATEMENT...
!   _temp_1274 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1274  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	644,r13		! source line 644
	mov	"\0\0BR",r10
	jmp	_Label_1268
! CASE 2...
_Label_1270:
! CALL STATEMENT...
!   _temp_1275 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1275  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0BR",r10
	jmp	_Label_1268
! CASE 3...
_Label_1271:
! CALL STATEMENT...
!   _temp_1276 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1276  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0BR",r10
	jmp	_Label_1268
! CASE 4...
_Label_1272:
! CALL STATEMENT...
!   _temp_1277 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1277  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	653,r13		! source line 653
	mov	"\0\0BR",r10
	jmp	_Label_1268
! CASE 5...
_Label_1273:
! CALL STATEMENT...
!   _temp_1278 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1278  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0BR",r10
	jmp	_Label_1268
! DEFAULT CASE...
_Label_1267:
! CALL STATEMENT...
!   _temp_1279 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1279  sizeInBytes=4
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
_Label_1268:
! CALL STATEMENT...
!   _temp_1280 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1280  sizeInBytes=4
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
!   _temp_1281 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1281  sizeInBytes=4
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
!   _temp_1286 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1287 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1286  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1282:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1287 then goto _Label_1285		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1285
_Label_1283:
	mov	664,r13		! source line 664
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1288 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1288  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1289 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1289  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	666,r13		! source line 666
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1290 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1290  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1292 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1292 [i ] into _temp_1293
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
!   Data Move: _temp_1291 = *_temp_1293  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1291  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1294 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	669,r13		! source line 669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1296 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1296 [i ] into _temp_1297
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
!   Data Move: _temp_1295 = *_temp_1297  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1295  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1298 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1298  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1284:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1282
! END FOR
_Label_1285:
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
	.word	_Label_1299
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1300
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1301
	.word	-12
	.word	4
	.word	_Label_1302
	.word	-16
	.word	4
	.word	_Label_1303
	.word	-20
	.word	4
	.word	_Label_1304
	.word	-24
	.word	4
	.word	_Label_1305
	.word	-28
	.word	4
	.word	_Label_1306
	.word	-32
	.word	4
	.word	_Label_1307
	.word	-36
	.word	4
	.word	_Label_1308
	.word	-40
	.word	4
	.word	_Label_1309
	.word	-44
	.word	4
	.word	_Label_1310
	.word	-48
	.word	4
	.word	_Label_1311
	.word	-52
	.word	4
	.word	_Label_1312
	.word	-56
	.word	4
	.word	_Label_1313
	.word	-60
	.word	4
	.word	_Label_1314
	.word	-64
	.word	4
	.word	_Label_1315
	.word	-68
	.word	4
	.word	_Label_1316
	.word	-72
	.word	4
	.word	_Label_1317
	.word	-76
	.word	4
	.word	_Label_1318
	.word	-80
	.word	4
	.word	_Label_1319
	.word	-84
	.word	4
	.word	_Label_1320
	.word	-88
	.word	4
	.word	_Label_1321
	.word	-92
	.word	4
	.word	_Label_1322
	.word	-96
	.word	4
	.word	_Label_1323
	.word	-100
	.word	4
	.word	_Label_1324
	.word	-104
	.word	4
	.word	_Label_1325
	.word	-108
	.word	4
	.word	_Label_1326
	.word	-112
	.word	4
	.word	_Label_1327
	.word	-116
	.word	4
	.word	_Label_1328
	.word	-120
	.word	4
	.word	_Label_1329
	.word	-124
	.word	4
	.word	_Label_1330
	.word	-128
	.word	4
	.word	_Label_1331
	.word	-132
	.word	4
	.word	_Label_1332
	.word	-136
	.word	4
	.word	_Label_1333
	.word	-140
	.word	4
	.word	_Label_1334
	.word	-144
	.word	4
	.word	_Label_1335
	.word	-148
	.word	4
	.word	_Label_1336
	.word	-152
	.word	4
	.word	_Label_1337
	.word	-156
	.word	4
	.word	_Label_1338
	.word	-160
	.word	4
	.word	_Label_1339
	.word	-164
	.word	4
	.word	_Label_1340
	.word	-168
	.word	4
	.word	_Label_1341
	.word	-172
	.word	4
	.word	_Label_1342
	.word	-176
	.word	4
	.word	_Label_1343
	.word	-180
	.word	4
	.word	_Label_1344
	.word	-184
	.word	4
	.word	_Label_1345
	.word	-188
	.word	4
	.word	_Label_1346
	.word	-192
	.word	4
	.word	_Label_1347
	.word	-196
	.word	4
	.word	0
_Label_1299:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1300:
	.ascii	"Pself\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1346:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1347:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1348
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1348:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1349
	.word	_sourceFileName
	.word	192		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1349:
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
_Label_3432:
	push	r0
	sub	r1,1,r1
	bne	_Label_3432
	mov	728,r13		! source line 728
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1350 = _StringConst_97
	set	_StringConst_97,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1350  sizeInBytes=4
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
!   _temp_1351 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1353 = &_temp_1352
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1353 = _temp_1353 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1355 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3433:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3433
!   _temp_1355 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1357:
!   Data Move: *_temp_1353 = _temp_1355  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3434:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3434
!   _temp_1353 = _temp_1353 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1354 = _temp_1354 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1354) then goto _Label_1357
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1357
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1358 = &_temp_1352
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3435
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3435:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1351 = *_temp_1358  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3436:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3436
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
!   _temp_1361 = &threadManagerLock
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
!   _temp_1363 = &aThreadBecameFree
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
!   _temp_1368 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1369 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1368  (sizeInBytes=4)
	load	[r14+-56],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1364:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1369 then goto _Label_1367		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1367
_Label_1365:
	mov	747,r13		! source line 747
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0SE",r10
!   _temp_1370 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-48]
!   _temp_1371 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1371 [i ] into _temp_1372
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
!   Prepare Argument: offset=12  value=_temp_1370  sizeInBytes=4
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
!   _temp_1373 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1373 [i ] into _temp_1374
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
!   _temp_1375 = _temp_1374 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1375 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	751,r13		! source line 751
	mov	"\0\0SE",r10
!   _temp_1377 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1377 [i ] into _temp_1378
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
!   _temp_1376 = _temp_1378		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1379 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1376  sizeInBytes=4
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
_Label_1366:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1364
! END FOR
_Label_1367:
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
	.word	_Label_1380
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
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
	.word	_Label_1394
	.word	-60
	.word	4
	.word	_Label_1395
	.word	-64
	.word	4
	.word	_Label_1396
	.word	-68
	.word	4
	.word	_Label_1397
	.word	-72
	.word	4
	.word	_Label_1398
	.word	-76
	.word	4
	.word	_Label_1399
	.word	-80
	.word	4
	.word	_Label_1400
	.word	-84
	.word	4
	.word	_Label_1401
	.word	-4248
	.word	4164
	.word	_Label_1402
	.word	-4252
	.word	4
	.word	_Label_1403
	.word	-4256
	.word	4
	.word	_Label_1404
	.word	-45900
	.word	41644
	.word	_Label_1405
	.word	-45904
	.word	4
	.word	_Label_1406
	.word	-45908
	.word	4
	.word	_Label_1407
	.word	-45912
	.word	4
	.word	0
_Label_1380:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
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
	.ascii	"_temp_1370\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1407:
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
_Label_3437:
	push	r0
	sub	r1,1,r1
	bne	_Label_3437
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
!   _temp_1408 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1408  sizeInBytes=4
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
!   _temp_1413 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1414 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1413  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1409:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1414 then goto _Label_1412		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1412
_Label_1410:
	mov	766,r13		! source line 766
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1415 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1415  sizeInBytes=4
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
!   _temp_1416 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1416  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1418 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1418 [i ] into _temp_1419
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
!   _temp_1417 = _temp_1419		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1417  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CA",r10
	call	_function_206_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1411:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1409
! END FOR
_Label_1412:
! CALL STATEMENT...
!   _temp_1420 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1420  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0SE",r10
!   _temp_1421 = _function_205_PrintObjectAddr
	set	_function_205_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1422 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1421  sizeInBytes=4
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
	.word	_Label_1423
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1424
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1425
	.word	-12
	.word	4
	.word	_Label_1426
	.word	-16
	.word	4
	.word	_Label_1427
	.word	-20
	.word	4
	.word	_Label_1428
	.word	-24
	.word	4
	.word	_Label_1429
	.word	-28
	.word	4
	.word	_Label_1430
	.word	-32
	.word	4
	.word	_Label_1431
	.word	-36
	.word	4
	.word	_Label_1432
	.word	-40
	.word	4
	.word	_Label_1433
	.word	-44
	.word	4
	.word	_Label_1434
	.word	-48
	.word	4
	.word	_Label_1435
	.word	-52
	.word	4
	.word	_Label_1436
	.word	-56
	.word	4
	.word	_Label_1437
	.word	-60
	.word	4
	.word	0
_Label_1423:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1424:
	.ascii	"Pself\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1436:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1437:
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
_Label_3438:
	push	r0
	sub	r1,1,r1
	bne	_Label_3438
	mov	780,r13		! source line 780
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0SE",r10
!   _temp_1438 = &threadManagerLock
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
_Label_1439:
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_1442 = &freeList
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
!   if result==true then goto _Label_1440 else goto _Label_1441
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1441
	jmp	_Label_1440
_Label_1440:
	mov	788,r13		! source line 788
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_1443 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1444 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1443  sizeInBytes=4
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
	jmp	_Label_1439
_Label_1441:
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_1445 = &freeList
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
!   _temp_1446 = NewThread + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1446 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_1447 = &threadManagerLock
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
	.word	_Label_1448
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1449
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1450
	.word	-12
	.word	4
	.word	_Label_1451
	.word	-16
	.word	4
	.word	_Label_1452
	.word	-20
	.word	4
	.word	_Label_1453
	.word	-24
	.word	4
	.word	_Label_1454
	.word	-28
	.word	4
	.word	_Label_1455
	.word	-32
	.word	4
	.word	_Label_1456
	.word	-36
	.word	4
	.word	_Label_1457
	.word	-40
	.word	4
	.word	0
_Label_1448:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1449:
	.ascii	"Pself\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1457:
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
_Label_3439:
	push	r0
	sub	r1,1,r1
	bne	_Label_3439
	mov	799,r13		! source line 799
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0SE",r10
!   _temp_1458 = &threadManagerLock
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
!   _temp_1459 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1459 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0SE",r10
!   _temp_1460 = &freeList
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
!   _temp_1461 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1462 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1461  sizeInBytes=4
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
!   _temp_1463 = &threadManagerLock
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
	.word	_Label_1464
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1465
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1466
	.word	12
	.word	4
	.word	_Label_1467
	.word	-12
	.word	4
	.word	_Label_1468
	.word	-16
	.word	4
	.word	_Label_1469
	.word	-20
	.word	4
	.word	_Label_1470
	.word	-24
	.word	4
	.word	_Label_1471
	.word	-28
	.word	4
	.word	_Label_1472
	.word	-32
	.word	4
	.word	0
_Label_1464:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1465:
	.ascii	"Pself\0"
	.align
_Label_1466:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1473
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1473:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1474
	.word	_sourceFileName
	.word	213		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1474:
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
_Label_3440:
	push	r0
	sub	r1,1,r1
	bne	_Label_3440
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
_Label_3441:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3441
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0SE",r10
!   _temp_1476 = &addrSpace
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
	mov	825,r13		! source line 825
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
	.word	_Label_1477
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1478
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1479
	.word	-12
	.word	4
	.word	_Label_1480
	.word	-16
	.word	4
	.word	0
_Label_1477:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1478:
	.ascii	"Pself\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1475\0"
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
_Label_3442:
	push	r0
	sub	r1,1,r1
	bne	_Label_3442
	mov	835,r13		! source line 835
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1481) then goto _runtimeErrorNullPointer
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
!   _temp_1482 = &addrSpace
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
!   _temp_1483 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1483  sizeInBytes=4
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
	call	_function_206_ThreadPrintShort
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
	.word	_Label_1484
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1485
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1486
	.word	-12
	.word	4
	.word	_Label_1487
	.word	-16
	.word	4
	.word	_Label_1488
	.word	-20
	.word	4
	.word	0
_Label_1484:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1485:
	.ascii	"Pself\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1481\0"
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
_Label_3443:
	push	r0
	sub	r1,1,r1
	bne	_Label_3443
	mov	859,r13		! source line 859
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1489 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1489  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1490  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1491 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1491  sizeInBytes=4
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
!   _temp_1492 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1492  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1494		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1494
!	jmp	_Label_1493
_Label_1493:
! THEN...
	mov	869,r13		! source line 869
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1495 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1495  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1496
_Label_1494:
! ELSE...
	mov	870,r13		! source line 870
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	870,r13		! source line 870
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1498		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1498
!	jmp	_Label_1497
_Label_1497:
! THEN...
	mov	871,r13		! source line 871
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1499 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1499  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1500
_Label_1498:
! ELSE...
	mov	872,r13		! source line 872
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1502		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1502
!	jmp	_Label_1501
_Label_1501:
! THEN...
	mov	873,r13		! source line 873
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1503 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1503  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	873,r13		! source line 873
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1504
_Label_1502:
! ELSE...
	mov	875,r13		! source line 875
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1505 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1505  sizeInBytes=4
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
_Label_1504:
! END IF...
_Label_1500:
! END IF...
_Label_1496:
! CALL STATEMENT...
!   _temp_1506 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
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
!   _temp_1507 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1507  sizeInBytes=4
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
	.word	_Label_1508
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1509
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1510
	.word	-12
	.word	4
	.word	_Label_1511
	.word	-16
	.word	4
	.word	_Label_1512
	.word	-20
	.word	4
	.word	_Label_1513
	.word	-24
	.word	4
	.word	_Label_1514
	.word	-28
	.word	4
	.word	_Label_1515
	.word	-32
	.word	4
	.word	_Label_1516
	.word	-36
	.word	4
	.word	_Label_1517
	.word	-40
	.word	4
	.word	_Label_1518
	.word	-44
	.word	4
	.word	_Label_1519
	.word	-48
	.word	4
	.word	0
_Label_1508:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1509:
	.ascii	"Pself\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1520
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
_Label_1520:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1521
	.word	_sourceFileName
	.word	233		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1521:
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
_Label_3444:
	push	r0
	sub	r1,1,r1
	bne	_Label_3444
	mov	892,r13		! source line 892
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	896,r13		! source line 896
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
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_1523 = &processManagerLock
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
	mov	898,r13		! source line 898
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
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_1525 = &aProcessBecameFree
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
	mov	900,r13		! source line 900
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
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_1527 = &aProcessDied
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
	mov	902,r13		! source line 902
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	903,r13		! source line 903
	mov	"\0\0AS",r10
!   _temp_1528 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1444]
!   NEW ARRAY Constructor...
!   _temp_1530 = &_temp_1529
	add	r14,-1440,r1
	store	r1,[r14+-196]
!   _temp_1530 = _temp_1530 + 4
	load	[r14+-196],r1
	add	r1,4,r1
	store	r1,[r14+-196]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1532 = zeros  (sizeInBytes=124)
	add	r14,-188,r4
	mov	31,r3
_Label_3445:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3445
!   _temp_1532 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-188]
	mov	10,r1
	store	r1,[r14+-192]
_Label_1534:
!   Data Move: *_temp_1530 = _temp_1532  (sizeInBytes=124)
	add	r14,-188,r5
	load	[r14+-196],r4
	mov	31,r3
_Label_3446:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3446
!   _temp_1530 = _temp_1530 + 124
	load	[r14+-196],r1
	add	r1,124,r1
	store	r1,[r14+-196]
!   _temp_1531 = _temp_1531 + -1
	load	[r14+-192],r1
	add	r1,-1,r1
	store	r1,[r14+-192]
!   if intNotZero (_temp_1531) then goto _Label_1534
	load	[r14+-192],r1
	cmp	r1,r0
	bne	_Label_1534
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1440]
!   _temp_1535 = &_temp_1529
	add	r14,-1440,r1
	store	r1,[r14+-60]
!   make sure array has size 10
	load	[r14+-1444],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3447
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3447:
!   make sure array has size 10
	load	[r14+-60],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1528 = *_temp_1535  (sizeInBytes=1244)
	load	[r14+-60],r5
	load	[r14+-1444],r4
	mov	311,r3
_Label_3448:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3448
! ASSIGNMENT STATEMENT...
	mov	904,r13		! source line 904
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
	mov	906,r13		! source line 906
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1541 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1542 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1541  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1537:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1542 then goto _Label_1540		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1540
_Label_1538:
	mov	906,r13		! source line 906
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0SE",r10
!   _temp_1543 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1543 [i ] into _temp_1544
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
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   _temp_1545 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1545 [i ] into _temp_1546
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
!   _temp_1547 = _temp_1546 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1547 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0SE",r10
!   _temp_1549 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1549 [i ] into _temp_1550
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
!   _temp_1548 = _temp_1550		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1551 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1548  sizeInBytes=4
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
_Label_1539:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1537
! END FOR
_Label_1540:
! RETURN STATEMENT...
	mov	906,r13		! source line 906
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
	.word	_Label_1552
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1553
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1554
	.word	-12
	.word	4
	.word	_Label_1555
	.word	-16
	.word	4
	.word	_Label_1556
	.word	-20
	.word	4
	.word	_Label_1557
	.word	-24
	.word	4
	.word	_Label_1558
	.word	-28
	.word	4
	.word	_Label_1559
	.word	-32
	.word	4
	.word	_Label_1560
	.word	-36
	.word	4
	.word	_Label_1561
	.word	-40
	.word	4
	.word	_Label_1562
	.word	-44
	.word	4
	.word	_Label_1563
	.word	-48
	.word	4
	.word	_Label_1564
	.word	-52
	.word	4
	.word	_Label_1565
	.word	-56
	.word	4
	.word	_Label_1566
	.word	-60
	.word	4
	.word	_Label_1567
	.word	-64
	.word	4
	.word	_Label_1568
	.word	-188
	.word	124
	.word	_Label_1569
	.word	-192
	.word	4
	.word	_Label_1570
	.word	-196
	.word	4
	.word	_Label_1571
	.word	-1440
	.word	1244
	.word	_Label_1572
	.word	-1444
	.word	4
	.word	_Label_1573
	.word	-1448
	.word	4
	.word	_Label_1574
	.word	-1452
	.word	4
	.word	_Label_1575
	.word	-1456
	.word	4
	.word	_Label_1576
	.word	-1460
	.word	4
	.word	_Label_1577
	.word	-1464
	.word	4
	.word	_Label_1578
	.word	-1468
	.word	4
	.word	_Label_1579
	.word	-1472
	.word	4
	.word	0
_Label_1552:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1553:
	.ascii	"Pself\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1579:
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
_Label_3449:
	push	r0
	sub	r1,1,r1
	bne	_Label_3449
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
!   _temp_1580 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1580  sizeInBytes=4
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
!   _temp_1585 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1586 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1585  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1581:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1586 then goto _Label_1584		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1584
_Label_1582:
	mov	925,r13		! source line 925
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1587 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1587  sizeInBytes=4
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
!   _temp_1588 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1588  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0SE",r10
!   _temp_1589 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1589 [i ] into _temp_1590
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
_Label_1583:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1581
! END FOR
_Label_1584:
! CALL STATEMENT...
!   _temp_1591 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1591  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_1592 = _function_205_PrintObjectAddr
	set	_function_205_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1593 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1592  sizeInBytes=4
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
	.word	_Label_1594
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1595
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1596
	.word	-12
	.word	4
	.word	_Label_1597
	.word	-16
	.word	4
	.word	_Label_1598
	.word	-20
	.word	4
	.word	_Label_1599
	.word	-24
	.word	4
	.word	_Label_1600
	.word	-28
	.word	4
	.word	_Label_1601
	.word	-32
	.word	4
	.word	_Label_1602
	.word	-36
	.word	4
	.word	_Label_1603
	.word	-40
	.word	4
	.word	_Label_1604
	.word	-44
	.word	4
	.word	_Label_1605
	.word	-48
	.word	4
	.word	_Label_1606
	.word	-52
	.word	4
	.word	_Label_1607
	.word	-56
	.word	4
	.word	0
_Label_1594:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1595:
	.ascii	"Pself\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1606:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1607:
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
_Label_3450:
	push	r0
	sub	r1,1,r1
	bne	_Label_3450
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
!   _temp_1608 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1608  sizeInBytes=4
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
!   _temp_1613 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1614 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1613  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1609:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1614 then goto _Label_1612		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1612
_Label_1610:
	mov	948,r13		! source line 948
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1615 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1615  sizeInBytes=4
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
!   _temp_1616 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1616 [i ] into _temp_1617
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
_Label_1611:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1609
! END FOR
_Label_1612:
! CALL STATEMENT...
!   _temp_1618 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1618  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1619 = _function_205_PrintObjectAddr
	set	_function_205_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1620 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1619  sizeInBytes=4
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
	.word	_Label_1621
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1622
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1623
	.word	-12
	.word	4
	.word	_Label_1624
	.word	-16
	.word	4
	.word	_Label_1625
	.word	-20
	.word	4
	.word	_Label_1626
	.word	-24
	.word	4
	.word	_Label_1627
	.word	-28
	.word	4
	.word	_Label_1628
	.word	-32
	.word	4
	.word	_Label_1629
	.word	-36
	.word	4
	.word	_Label_1630
	.word	-40
	.word	4
	.word	_Label_1631
	.word	-44
	.word	4
	.word	_Label_1632
	.word	-48
	.word	4
	.word	_Label_1633
	.word	-52
	.word	4
	.word	0
_Label_1621:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1622:
	.ascii	"Pself\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1632:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1633:
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
_Label_3451:
	push	r0
	sub	r1,1,r1
	bne	_Label_3451
	mov	961,r13		! source line 961
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_1634 = &processManagerLock
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
	mov	968,r13		! source line 968
	mov	"\0\0WH",r10
_Label_1635:
	mov	968,r13		! source line 968
	mov	"\0\0SE",r10
!   _temp_1638 = &freeList
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
!   if result==true then goto _Label_1636 else goto _Label_1637
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1637
	jmp	_Label_1636
_Label_1636:
	mov	968,r13		! source line 968
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0SE",r10
!   _temp_1639 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1640 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1639  sizeInBytes=4
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
	jmp	_Label_1635
_Label_1637:
! ASSIGNMENT STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0AS",r10
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_1641 = &freeList
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
	mov	972,r13		! source line 972
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1642 = ptrToPCB + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1642 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	973,r13		! source line 973
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
	mov	974,r13		! source line 974
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1643 = ptrToPCB + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1643 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0SE",r10
!   _temp_1644 = &processManagerLock
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
	.word	_Label_1645
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1646
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1647
	.word	-12
	.word	4
	.word	_Label_1648
	.word	-16
	.word	4
	.word	_Label_1649
	.word	-20
	.word	4
	.word	_Label_1650
	.word	-24
	.word	4
	.word	_Label_1651
	.word	-28
	.word	4
	.word	_Label_1652
	.word	-32
	.word	4
	.word	_Label_1653
	.word	-36
	.word	4
	.word	_Label_1654
	.word	-40
	.word	4
	.word	_Label_1655
	.word	-44
	.word	4
	.word	0
_Label_1645:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1646:
	.ascii	"Pself\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1655:
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
_Label_3452:
	push	r0
	sub	r1,1,r1
	bne	_Label_3452
	mov	981,r13		! source line 981
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1656 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1656  sizeInBytes=4
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
!   _temp_1657 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-52]
!   _temp_1658 = _temp_1657 + 1248
	load	[r14+-52],r1
	add	r1,1248,r1
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
!   _temp_1659 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1659 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0SE",r10
!   _temp_1660 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
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
!   _temp_1662 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_1663 = _temp_1662 + 1248
	load	[r14+-32],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1661 = _temp_1663		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1664 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_1665 = _temp_1664 + 1268
	load	[r14+-24],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1661  sizeInBytes=4
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
!   _temp_1666 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_1667 = _temp_1666 + 1248
	load	[r14+-16],r1
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
	.word	_Label_1668
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1669
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1670
	.word	12
	.word	4
	.word	_Label_1671
	.word	-12
	.word	4
	.word	_Label_1672
	.word	-16
	.word	4
	.word	_Label_1673
	.word	-20
	.word	4
	.word	_Label_1674
	.word	-24
	.word	4
	.word	_Label_1675
	.word	-28
	.word	4
	.word	_Label_1676
	.word	-32
	.word	4
	.word	_Label_1677
	.word	-36
	.word	4
	.word	_Label_1678
	.word	-40
	.word	4
	.word	_Label_1679
	.word	-44
	.word	4
	.word	_Label_1680
	.word	-48
	.word	4
	.word	_Label_1681
	.word	-52
	.word	4
	.word	_Label_1682
	.word	-56
	.word	4
	.word	0
_Label_1668:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1669:
	.ascii	"Pself\0"
	.align
_Label_1670:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1656\0"
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
_Label_3453:
	push	r0
	sub	r1,1,r1
	bne	_Label_3453
	mov	992,r13		! source line 992
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_1683 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-276]
!   _temp_1684 = _temp_1683 + 1248
	load	[r14+-276],r1
	add	r1,1248,r1
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
!   _temp_1689 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-268]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1690 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-264]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1689  (sizeInBytes=4)
	load	[r14+-268],r1
	store	r1,[r14+-280]
_Label_1685:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1690 then goto _Label_1688		
	load	[r14+-280],r1
	load	[r14+-264],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1688
_Label_1686:
	mov	1003,r13		! source line 1003
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0IF",r10
!   _temp_1695 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-256]
!   _temp_1696 = _temp_1695 + 4
	load	[r14+-256],r1
	add	r1,4,r1
	store	r1,[r14+-252]
!   Move address of _temp_1696 [i ] into _temp_1697
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-248]
!   _temp_1698 = _temp_1697 + 16
	load	[r14+-248],r1
	add	r1,16,r1
	store	r1,[r14+-244]
!   Data Move: _temp_1694 = *_temp_1698  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r1],r1
	store	r1,[r14+-260]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1700 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-236]
!   Data Move: _temp_1699 = *_temp_1700  (sizeInBytes=4)
	load	[r14+-236],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   if _temp_1694 != _temp_1699 then goto _Label_1692		(int)
	load	[r14+-260],r1
	load	[r14+-240],r2
	cmp	r1,r2
	bne	_Label_1692
!	jmp	_Label_1693
_Label_1693:
!   _temp_1702 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-228]
!   _temp_1703 = _temp_1702 + 4
	load	[r14+-228],r1
	add	r1,4,r1
	store	r1,[r14+-224]
!   Move address of _temp_1703 [i ] into _temp_1704
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-220]
!   _temp_1705 = _temp_1704 + 20
	load	[r14+-220],r1
	add	r1,20,r1
	store	r1,[r14+-216]
!   Data Move: _temp_1701 = *_temp_1705  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   if _temp_1701 != 2 then goto _Label_1692		(int)
	load	[r14+-232],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1692
!	jmp	_Label_1691
_Label_1691:
! THEN...
	mov	1005,r13		! source line 1005
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0AS",r10
!   _temp_1706 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-212]
!   _temp_1707 = _temp_1706 + 4
	load	[r14+-212],r1
	add	r1,4,r1
	store	r1,[r14+-208]
!   Move address of _temp_1707 [i ] into _temp_1708
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-204]
!   _temp_1709 = _temp_1708 + 20
	load	[r14+-204],r1
	add	r1,20,r1
	store	r1,[r14+-200]
!   Data Move: *_temp_1709 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-200],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0SE",r10
!   _temp_1711 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-192]
!   _temp_1712 = _temp_1711 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-188]
!   Move address of _temp_1712 [i ] into _temp_1713
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-184]
!   _temp_1710 = _temp_1713		(4 bytes)
	load	[r14+-184],r1
	store	r1,[r14+-196]
!   _temp_1714 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-180]
!   _temp_1715 = _temp_1714 + 1284
	load	[r14+-180],r1
	add	r1,1284,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=12  value=_temp_1710  sizeInBytes=4
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
!   _temp_1717 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-168]
!   _temp_1718 = _temp_1717 + 1248
	load	[r14+-168],r1
	add	r1,1248,r1
	store	r1,[r14+-164]
!   _temp_1716 = _temp_1718		(4 bytes)
	load	[r14+-164],r1
	store	r1,[r14+-172]
!   _temp_1719 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-160]
!   _temp_1720 = _temp_1719 + 1268
	load	[r14+-160],r1
	add	r1,1268,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_1716  sizeInBytes=4
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
_Label_1692:
!   Increment the FOR-LOOP index variable and jump back
_Label_1687:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_1685
! END FOR
_Label_1688:
! FOR STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1725 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-152]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1726 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-148]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1725  (sizeInBytes=4)
	load	[r14+-152],r1
	store	r1,[r14+-280]
_Label_1721:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1726 then goto _Label_1724		
	load	[r14+-280],r1
	load	[r14+-148],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1724
_Label_1722:
	mov	1011,r13		! source line 1011
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0IF",r10
!   _temp_1732 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-140]
!   _temp_1733 = _temp_1732 + 4
	load	[r14+-140],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1733 [i ] into _temp_1734
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   _temp_1735 = _temp_1734 + 12
	load	[r14+-132],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Data Move: _temp_1731 = *_temp_1735  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-144]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1737 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-120]
!   Data Move: _temp_1736 = *_temp_1737  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if _temp_1731 != _temp_1736 then goto _Label_1728		(int)
	load	[r14+-144],r1
	load	[r14+-124],r2
	cmp	r1,r2
	bne	_Label_1728
!	jmp	_Label_1730
_Label_1730:
!   _temp_1739 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-112]
!   _temp_1740 = _temp_1739 + 4
	load	[r14+-112],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Move address of _temp_1740 [i ] into _temp_1741
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-104]
!   _temp_1742 = _temp_1741 + 20
	load	[r14+-104],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_1738 = *_temp_1742  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if _temp_1738 != 1 then goto _Label_1728		(int)
	load	[r14+-116],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1728
!	jmp	_Label_1729
_Label_1729:
!   _temp_1744 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-92]
!   _temp_1745 = _temp_1744 + 4
	load	[r14+-92],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_1745 [i ] into _temp_1746
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   _temp_1743 = _temp_1746		(4 bytes)
	load	[r14+-84],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1743) then goto _Label_1728
	load	[r14+-96],r1
	cmp	r1,r0
	be	_Label_1728
!	jmp	_Label_1727
_Label_1727:
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
!   _temp_1747 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: *_temp_1747 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_1749 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-72]
!   _temp_1750 = _temp_1749 + 1248
	load	[r14+-72],r1
	add	r1,1248,r1
	store	r1,[r14+-68]
!   _temp_1748 = _temp_1750		(4 bytes)
	load	[r14+-68],r1
	store	r1,[r14+-76]
!   _temp_1751 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   _temp_1752 = _temp_1751 + 1296
	load	[r14+-64],r1
	add	r1,1296,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_1748  sizeInBytes=4
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
!   _temp_1753 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_1754 = _temp_1753 + 1248
	load	[r14+-56],r1
	add	r1,1248,r1
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
_Label_1728:
!   Increment the FOR-LOOP index variable and jump back
_Label_1723:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_1721
! END FOR
_Label_1724:
! ASSIGNMENT STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1755 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1755 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0SE",r10
!   _temp_1756 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_1757 = _temp_1756 + 1284
	load	[r14+-44],r1
	add	r1,1284,r1
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
!   _temp_1759 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_1760 = _temp_1759 + 1248
	load	[r14+-32],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1758 = _temp_1760		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1761 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_1762 = _temp_1761 + 1268
	load	[r14+-24],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1758  sizeInBytes=4
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
!   _temp_1763 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_1764 = _temp_1763 + 1248
	load	[r14+-16],r1
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
	.word	_Label_1765
	.word	8		! total size of parameters
	.word	280		! frame size = 280
	.word	_Label_1766
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1767
	.word	12
	.word	4
	.word	_Label_1768
	.word	-12
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
	.word	-32
	.word	4
	.word	_Label_1774
	.word	-36
	.word	4
	.word	_Label_1775
	.word	-40
	.word	4
	.word	_Label_1776
	.word	-44
	.word	4
	.word	_Label_1777
	.word	-48
	.word	4
	.word	_Label_1778
	.word	-52
	.word	4
	.word	_Label_1779
	.word	-56
	.word	4
	.word	_Label_1780
	.word	-60
	.word	4
	.word	_Label_1781
	.word	-64
	.word	4
	.word	_Label_1782
	.word	-68
	.word	4
	.word	_Label_1783
	.word	-72
	.word	4
	.word	_Label_1784
	.word	-76
	.word	4
	.word	_Label_1785
	.word	-80
	.word	4
	.word	_Label_1786
	.word	-84
	.word	4
	.word	_Label_1787
	.word	-88
	.word	4
	.word	_Label_1788
	.word	-92
	.word	4
	.word	_Label_1789
	.word	-96
	.word	4
	.word	_Label_1790
	.word	-100
	.word	4
	.word	_Label_1791
	.word	-104
	.word	4
	.word	_Label_1792
	.word	-108
	.word	4
	.word	_Label_1793
	.word	-112
	.word	4
	.word	_Label_1794
	.word	-116
	.word	4
	.word	_Label_1795
	.word	-120
	.word	4
	.word	_Label_1796
	.word	-124
	.word	4
	.word	_Label_1797
	.word	-128
	.word	4
	.word	_Label_1798
	.word	-132
	.word	4
	.word	_Label_1799
	.word	-136
	.word	4
	.word	_Label_1800
	.word	-140
	.word	4
	.word	_Label_1801
	.word	-144
	.word	4
	.word	_Label_1802
	.word	-148
	.word	4
	.word	_Label_1803
	.word	-152
	.word	4
	.word	_Label_1804
	.word	-156
	.word	4
	.word	_Label_1805
	.word	-160
	.word	4
	.word	_Label_1806
	.word	-164
	.word	4
	.word	_Label_1807
	.word	-168
	.word	4
	.word	_Label_1808
	.word	-172
	.word	4
	.word	_Label_1809
	.word	-176
	.word	4
	.word	_Label_1810
	.word	-180
	.word	4
	.word	_Label_1811
	.word	-184
	.word	4
	.word	_Label_1812
	.word	-188
	.word	4
	.word	_Label_1813
	.word	-192
	.word	4
	.word	_Label_1814
	.word	-196
	.word	4
	.word	_Label_1815
	.word	-200
	.word	4
	.word	_Label_1816
	.word	-204
	.word	4
	.word	_Label_1817
	.word	-208
	.word	4
	.word	_Label_1818
	.word	-212
	.word	4
	.word	_Label_1819
	.word	-216
	.word	4
	.word	_Label_1820
	.word	-220
	.word	4
	.word	_Label_1821
	.word	-224
	.word	4
	.word	_Label_1822
	.word	-228
	.word	4
	.word	_Label_1823
	.word	-232
	.word	4
	.word	_Label_1824
	.word	-236
	.word	4
	.word	_Label_1825
	.word	-240
	.word	4
	.word	_Label_1826
	.word	-244
	.word	4
	.word	_Label_1827
	.word	-248
	.word	4
	.word	_Label_1828
	.word	-252
	.word	4
	.word	_Label_1829
	.word	-256
	.word	4
	.word	_Label_1830
	.word	-260
	.word	4
	.word	_Label_1831
	.word	-264
	.word	4
	.word	_Label_1832
	.word	-268
	.word	4
	.word	_Label_1833
	.word	-272
	.word	4
	.word	_Label_1834
	.word	-276
	.word	4
	.word	_Label_1835
	.word	-280
	.word	4
	.word	0
_Label_1765:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1766:
	.ascii	"Pself\0"
	.align
_Label_1767:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1764\0"
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
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1835:
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
_Label_3454:
	push	r0
	sub	r1,1,r1
	bne	_Label_3454
	mov	1028,r13		! source line 1028
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_1836 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   _temp_1837 = _temp_1836 + 1248
	load	[r14+-88],r1
	add	r1,1248,r1
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
_Label_1838:
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1842 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1841 = *_temp_1842  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_1841 == 2 then goto _Label_1840		(int)
	load	[r14+-80],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1840
!	jmp	_Label_1839
_Label_1839:
	mov	1034,r13		! source line 1034
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0SE",r10
!   _temp_1844 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   _temp_1845 = _temp_1844 + 1248
	load	[r14+-68],r1
	add	r1,1248,r1
	store	r1,[r14+-64]
!   _temp_1843 = _temp_1845		(4 bytes)
	load	[r14+-64],r1
	store	r1,[r14+-72]
!   _temp_1846 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_1847 = _temp_1846 + 1296
	load	[r14+-60],r1
	add	r1,1296,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1843  sizeInBytes=4
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
	jmp	_Label_1838
_Label_1840:
! ASSIGNMENT STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1848 = p + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: p_exitStatus = *_temp_1848  (sizeInBytes=4)
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
!   _temp_1849 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_1849 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_1850 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   _temp_1851 = _temp_1850 + 1284
	load	[r14+-44],r1
	add	r1,1284,r1
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
!   _temp_1853 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-32]
!   _temp_1854 = _temp_1853 + 1248
	load	[r14+-32],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1852 = _temp_1854		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   _temp_1855 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-24]
!   _temp_1856 = _temp_1855 + 1268
	load	[r14+-24],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1852  sizeInBytes=4
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
!   _temp_1857 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   _temp_1858 = _temp_1857 + 1248
	load	[r14+-16],r1
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
	.word	_Label_1859
	.word	8		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_1860
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1861
	.word	12
	.word	4
	.word	_Label_1862
	.word	-12
	.word	4
	.word	_Label_1863
	.word	-16
	.word	4
	.word	_Label_1864
	.word	-20
	.word	4
	.word	_Label_1865
	.word	-24
	.word	4
	.word	_Label_1866
	.word	-28
	.word	4
	.word	_Label_1867
	.word	-32
	.word	4
	.word	_Label_1868
	.word	-36
	.word	4
	.word	_Label_1869
	.word	-40
	.word	4
	.word	_Label_1870
	.word	-44
	.word	4
	.word	_Label_1871
	.word	-48
	.word	4
	.word	_Label_1872
	.word	-52
	.word	4
	.word	_Label_1873
	.word	-56
	.word	4
	.word	_Label_1874
	.word	-60
	.word	4
	.word	_Label_1875
	.word	-64
	.word	4
	.word	_Label_1876
	.word	-68
	.word	4
	.word	_Label_1877
	.word	-72
	.word	4
	.word	_Label_1878
	.word	-76
	.word	4
	.word	_Label_1879
	.word	-80
	.word	4
	.word	_Label_1880
	.word	-84
	.word	4
	.word	_Label_1881
	.word	-88
	.word	4
	.word	_Label_1882
	.word	-92
	.word	4
	.word	0
_Label_1859:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_1860:
	.ascii	"Pself\0"
	.align
_Label_1861:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1882:
	.byte	'I'
	.ascii	"p_exitStatus\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1883
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1883:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1884
	.word	_sourceFileName
	.word	256		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1884:
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
_Label_3455:
	push	r0
	sub	r1,1,r1
	bne	_Label_3455
	mov	1085,r13		! source line 1085
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1885 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1885  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1091,r13		! source line 1091
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1092,r13		! source line 1092
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
	mov	1093,r13		! source line 1093
	mov	"\0\0SE",r10
!   _temp_1887 = &framesInUse
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
	mov	1094,r13		! source line 1094
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1095,r13		! source line 1095
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
	mov	1096,r13		! source line 1096
	mov	"\0\0SE",r10
!   _temp_1889 = &frameManagerLock
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
	mov	1097,r13		! source line 1097
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
	mov	1098,r13		! source line 1098
	mov	"\0\0SE",r10
!   _temp_1891 = &newFramesAvailable
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
	mov	1104,r13		! source line 1104
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1896 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1897 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1896  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1892:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1897 then goto _Label_1895		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1895
_Label_1893:
	mov	1104,r13		! source line 1104
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1900 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1900) then goto _Label_1899
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1899
!	jmp	_Label_1898
_Label_1898:
! THEN...
	mov	1108,r13		! source line 1108
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1901 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1901  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1108,r13		! source line 1108
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1899:
!   Increment the FOR-LOOP index variable and jump back
_Label_1894:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1892
! END FOR
_Label_1895:
! RETURN STATEMENT...
	mov	1104,r13		! source line 1104
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
	.word	_Label_1902
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1903
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1904
	.word	-12
	.word	4
	.word	_Label_1905
	.word	-16
	.word	4
	.word	_Label_1906
	.word	-20
	.word	4
	.word	_Label_1907
	.word	-24
	.word	4
	.word	_Label_1908
	.word	-28
	.word	4
	.word	_Label_1909
	.word	-32
	.word	4
	.word	_Label_1910
	.word	-36
	.word	4
	.word	_Label_1911
	.word	-40
	.word	4
	.word	_Label_1912
	.word	-44
	.word	4
	.word	_Label_1913
	.word	-48
	.word	4
	.word	_Label_1914
	.word	-52
	.word	4
	.word	_Label_1915
	.word	-56
	.word	4
	.word	0
_Label_1902:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1903:
	.ascii	"Pself\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1915:
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
_Label_3456:
	push	r0
	sub	r1,1,r1
	bne	_Label_3456
	mov	1115,r13		! source line 1115
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1119,r13		! source line 1119
	mov	"\0\0SE",r10
!   _temp_1916 = &frameManagerLock
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
!   _temp_1917 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1917  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1120,r13		! source line 1120
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1918 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1918  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1121,r13		! source line 1121
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1919 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1919  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1122,r13		! source line 1122
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1123,r13		! source line 1123
	mov	"\0\0SE",r10
!   _temp_1920 = &framesInUse
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
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_1921 = &frameManagerLock
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
	mov	1124,r13		! source line 1124
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
	.word	_Label_1922
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1923
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1924
	.word	-12
	.word	4
	.word	_Label_1925
	.word	-16
	.word	4
	.word	_Label_1926
	.word	-20
	.word	4
	.word	_Label_1927
	.word	-24
	.word	4
	.word	_Label_1928
	.word	-28
	.word	4
	.word	_Label_1929
	.word	-32
	.word	4
	.word	0
_Label_1922:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1923:
	.ascii	"Pself\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1916\0"
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
_Label_3457:
	push	r0
	sub	r1,1,r1
	bne	_Label_3457
	mov	1129,r13		! source line 1129
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0SE",r10
!   _temp_1930 = &frameManagerLock
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
	mov	1140,r13		! source line 1140
	mov	"\0\0WH",r10
_Label_1931:
!   if numberFreeFrames >= 1 then goto _Label_1933		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1933
!	jmp	_Label_1932
_Label_1932:
	mov	1140,r13		! source line 1140
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0SE",r10
!   _temp_1934 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1935 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1934  sizeInBytes=4
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
	jmp	_Label_1931
_Label_1933:
! ASSIGNMENT STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0AS",r10
	mov	1145,r13		! source line 1145
	mov	"\0\0SE",r10
!   _temp_1936 = &framesInUse
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
	mov	1146,r13		! source line 1146
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
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
!   _temp_1937 = &frameManagerLock
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
	mov	1152,r13		! source line 1152
	mov	"\0\0AS",r10
!   _temp_1938 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1938		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1154,r13		! source line 1154
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
	.word	_Label_1939
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1940
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1941
	.word	-12
	.word	4
	.word	_Label_1942
	.word	-16
	.word	4
	.word	_Label_1943
	.word	-20
	.word	4
	.word	_Label_1944
	.word	-24
	.word	4
	.word	_Label_1945
	.word	-28
	.word	4
	.word	_Label_1946
	.word	-32
	.word	4
	.word	_Label_1947
	.word	-36
	.word	4
	.word	_Label_1948
	.word	-40
	.word	4
	.word	0
_Label_1939:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1940:
	.ascii	"Pself\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1947:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1948:
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
_Label_3458:
	push	r0
	sub	r1,1,r1
	bne	_Label_3458
	mov	1159,r13		! source line 1159
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
!   _temp_1949 = &frameManagerLock
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
	mov	1162,r13		! source line 1162
	mov	"\0\0WH",r10
_Label_1950:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1952		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1952
!	jmp	_Label_1951
_Label_1951:
	mov	1162,r13		! source line 1162
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
!   _temp_1953 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1954 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1953  sizeInBytes=4
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
	jmp	_Label_1950
_Label_1952:
! FOR STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1959 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1960 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1959  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-52]
_Label_1955:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1960 then goto _Label_1958		
	load	[r14+-52],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1958
_Label_1956:
	mov	1165,r13		! source line 1165
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0AS",r10
	mov	1166,r13		! source line 1166
	mov	"\0\0SE",r10
!   _temp_1961 = &framesInUse
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
	mov	1167,r13		! source line 1167
	mov	"\0\0AS",r10
!   _temp_1962 = fr * 8192		(int)
	load	[r14+-56],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1962		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1168,r13		! source line 1168
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
_Label_1957:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1955
! END FOR
_Label_1958:
! ASSIGNMENT STATEMENT...
	mov	1170,r13		! source line 1170
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
	mov	1171,r13		! source line 1171
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1963 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1963 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0SE",r10
!   _temp_1964 = &frameManagerLock
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
	mov	1172,r13		! source line 1172
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
	.word	_Label_1965
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1966
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1967
	.word	12
	.word	4
	.word	_Label_1968
	.word	16
	.word	4
	.word	_Label_1969
	.word	-12
	.word	4
	.word	_Label_1970
	.word	-16
	.word	4
	.word	_Label_1971
	.word	-20
	.word	4
	.word	_Label_1972
	.word	-24
	.word	4
	.word	_Label_1973
	.word	-28
	.word	4
	.word	_Label_1974
	.word	-32
	.word	4
	.word	_Label_1975
	.word	-36
	.word	4
	.word	_Label_1976
	.word	-40
	.word	4
	.word	_Label_1977
	.word	-44
	.word	4
	.word	_Label_1978
	.word	-48
	.word	4
	.word	_Label_1979
	.word	-52
	.word	4
	.word	_Label_1980
	.word	-56
	.word	4
	.word	0
_Label_1965:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1966:
	.ascii	"Pself\0"
	.align
_Label_1967:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1968:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1978:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1979:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1980:
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
_Label_3459:
	push	r0
	sub	r1,1,r1
	bne	_Label_3459
	mov	1177,r13		! source line 1177
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
!   _temp_1981 = &frameManagerLock
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
	mov	1180,r13		! source line 1180
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1986 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1989 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1988 = *_temp_1989  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_1987 = _temp_1988 - 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1986  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-60]
_Label_1982:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1987 then goto _Label_1985		
	load	[r14+-60],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1985
_Label_1983:
	mov	1180,r13		! source line 1180
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0AS",r10
	mov	1181,r13		! source line 1181
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
	mov	1182,r13		! source line 1182
	mov	"\0\0AS",r10
!   _temp_1990 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_1990 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0SE",r10
!   _temp_1991 = &framesInUse
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
_Label_1984:
!   i = i + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1982
! END FOR
_Label_1985:
! ASSIGNMENT STATEMENT...
	mov	1185,r13		! source line 1185
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1993 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1992 = *_temp_1993  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1992		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0SE",r10
!   _temp_1994 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1995 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1994  sizeInBytes=4
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
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
!   _temp_1996 = &frameManagerLock
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
	mov	1187,r13		! source line 1187
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
	.word	_Label_1997
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1998
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1999
	.word	12
	.word	4
	.word	_Label_2000
	.word	-12
	.word	4
	.word	_Label_2001
	.word	-16
	.word	4
	.word	_Label_2002
	.word	-20
	.word	4
	.word	_Label_2003
	.word	-24
	.word	4
	.word	_Label_2004
	.word	-28
	.word	4
	.word	_Label_2005
	.word	-32
	.word	4
	.word	_Label_2006
	.word	-36
	.word	4
	.word	_Label_2007
	.word	-40
	.word	4
	.word	_Label_2008
	.word	-44
	.word	4
	.word	_Label_2009
	.word	-48
	.word	4
	.word	_Label_2010
	.word	-52
	.word	4
	.word	_Label_2011
	.word	-56
	.word	4
	.word	_Label_2012
	.word	-60
	.word	4
	.word	_Label_2013
	.word	-64
	.word	4
	.word	_Label_2014
	.word	-68
	.word	4
	.word	0
_Label_1997:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1998:
	.ascii	"Pself\0"
	.align
_Label_1999:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_2012:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2013:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2014:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2015
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
_Label_2015:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2016
	.word	_sourceFileName
	.word	275		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2016:
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
_Label_3460:
	push	r0
	sub	r1,1,r1
	bne	_Label_3460
	mov	1197,r13		! source line 1197
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0AS",r10
!   _temp_2017 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2019 = &_temp_2018
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2019 = _temp_2019 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2021:
!   Data Move: *_temp_2019 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2019 = _temp_2019 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2020 = _temp_2020 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2020) then goto _Label_2021
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2021
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2022 = &_temp_2018
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3461
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3461:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2017 = *_temp_2022  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3462:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3462
! RETURN STATEMENT...
	mov	1202,r13		! source line 1202
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
	.word	_Label_2023
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2024
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2025
	.word	-12
	.word	4
	.word	_Label_2026
	.word	-16
	.word	4
	.word	_Label_2027
	.word	-20
	.word	4
	.word	_Label_2028
	.word	-104
	.word	84
	.word	_Label_2029
	.word	-108
	.word	4
	.word	0
_Label_2023:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2024:
	.ascii	"Pself\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2017\0"
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
_Label_3463:
	push	r0
	sub	r1,1,r1
	bne	_Label_3463
	mov	1207,r13		! source line 1207
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2030 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2030  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1212,r13		! source line 1212
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2031 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2031  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1213,r13		! source line 1213
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1214,r13		! source line 1214
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2036 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2037 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2036  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2032:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2037 then goto _Label_2035		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2035
_Label_2033:
	mov	1214,r13		! source line 1214
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2038 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2038  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1215,r13		! source line 1215
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2040 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2040 [i ] into _temp_2041
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
!   _temp_2039 = _temp_2041		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2039  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1216,r13		! source line 1216
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2042 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2042  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1217,r13		! source line 1217
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2044 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2044 [i ] into _temp_2045
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
!   Data Move: _temp_2043 = *_temp_2045  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2043  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2046 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2046  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2047 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2047  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2048 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2048  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1221,r13		! source line 1221
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1222,r13		! source line 1222
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2050) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2049  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2049  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2051 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2051  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1223,r13		! source line 1223
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0IF",r10
	mov	1224,r13		! source line 1224
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2055) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2054  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2054) then goto _Label_2053
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2053
!	jmp	_Label_2052
_Label_2052:
! THEN...
	mov	1225,r13		! source line 1225
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1225,r13		! source line 1225
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2057) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2056  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2056  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2058
_Label_2053:
! ELSE...
	mov	1227,r13		! source line 1227
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2059 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2059  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2058:
! CALL STATEMENT...
!   _temp_2060 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2060  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0IF",r10
	mov	1230,r13		! source line 1230
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2063) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2061 else goto _Label_2062
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2062
	jmp	_Label_2061
_Label_2061:
! THEN...
	mov	1231,r13		! source line 1231
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2064 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2064  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2065
_Label_2062:
! ELSE...
	mov	1233,r13		! source line 1233
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2066 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2066  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2065:
! CALL STATEMENT...
!   _temp_2067 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2067  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0IF",r10
	mov	1236,r13		! source line 1236
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2070) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2068 else goto _Label_2069
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2069
	jmp	_Label_2068
_Label_2068:
! THEN...
	mov	1237,r13		! source line 1237
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2071 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2071  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2072
_Label_2069:
! ELSE...
	mov	1239,r13		! source line 1239
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2073 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2073  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2072:
! CALL STATEMENT...
!   _temp_2074 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2074  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1242,r13		! source line 1242
	mov	"\0\0IF",r10
	mov	1242,r13		! source line 1242
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2077) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2075 else goto _Label_2076
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2076
	jmp	_Label_2075
_Label_2075:
! THEN...
	mov	1243,r13		! source line 1243
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2078 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2078  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2079
_Label_2076:
! ELSE...
	mov	1245,r13		! source line 1245
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2080 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2080  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2079:
! CALL STATEMENT...
!   _temp_2081 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2081  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1248,r13		! source line 1248
	mov	"\0\0IF",r10
	mov	1248,r13		! source line 1248
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2084) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2082 else goto _Label_2083
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2083
	jmp	_Label_2082
_Label_2082:
! THEN...
	mov	1249,r13		! source line 1249
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2085 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2085  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2086
_Label_2083:
! ELSE...
	mov	1251,r13		! source line 1251
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2087 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2087  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2086:
! CALL STATEMENT...
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2034:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2032
! END FOR
_Label_2035:
! RETURN STATEMENT...
	mov	1214,r13		! source line 1214
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
	.word	_Label_2088
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2089
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2090
	.word	-12
	.word	4
	.word	_Label_2091
	.word	-16
	.word	4
	.word	_Label_2092
	.word	-20
	.word	4
	.word	_Label_2093
	.word	-24
	.word	4
	.word	_Label_2094
	.word	-28
	.word	4
	.word	_Label_2095
	.word	-32
	.word	4
	.word	_Label_2096
	.word	-36
	.word	4
	.word	_Label_2097
	.word	-40
	.word	4
	.word	_Label_2098
	.word	-44
	.word	4
	.word	_Label_2099
	.word	-48
	.word	4
	.word	_Label_2100
	.word	-52
	.word	4
	.word	_Label_2101
	.word	-56
	.word	4
	.word	_Label_2102
	.word	-60
	.word	4
	.word	_Label_2103
	.word	-64
	.word	4
	.word	_Label_2104
	.word	-68
	.word	4
	.word	_Label_2105
	.word	-72
	.word	4
	.word	_Label_2106
	.word	-76
	.word	4
	.word	_Label_2107
	.word	-80
	.word	4
	.word	_Label_2108
	.word	-84
	.word	4
	.word	_Label_2109
	.word	-88
	.word	4
	.word	_Label_2110
	.word	-92
	.word	4
	.word	_Label_2111
	.word	-96
	.word	4
	.word	_Label_2112
	.word	-100
	.word	4
	.word	_Label_2113
	.word	-104
	.word	4
	.word	_Label_2114
	.word	-108
	.word	4
	.word	_Label_2115
	.word	-112
	.word	4
	.word	_Label_2116
	.word	-116
	.word	4
	.word	_Label_2117
	.word	-120
	.word	4
	.word	_Label_2118
	.word	-124
	.word	4
	.word	_Label_2119
	.word	-128
	.word	4
	.word	_Label_2120
	.word	-132
	.word	4
	.word	_Label_2121
	.word	-136
	.word	4
	.word	_Label_2122
	.word	-140
	.word	4
	.word	_Label_2123
	.word	-144
	.word	4
	.word	_Label_2124
	.word	-148
	.word	4
	.word	_Label_2125
	.word	-152
	.word	4
	.word	_Label_2126
	.word	-156
	.word	4
	.word	_Label_2127
	.word	-160
	.word	4
	.word	_Label_2128
	.word	-164
	.word	4
	.word	_Label_2129
	.word	-168
	.word	4
	.word	0
_Label_2088:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2089:
	.ascii	"Pself\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2129:
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
_Label_3464:
	push	r0
	sub	r1,1,r1
	bne	_Label_3464
	mov	1259,r13		! source line 1259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0RE",r10
!   _temp_2132 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2132 [entry ] into _temp_2133
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
!   Data Move: _temp_2131 = *_temp_2133  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2130 = _temp_2131 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2130  (sizeInBytes=4)
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
	.word	_Label_2134
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2135
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2136
	.word	12
	.word	4
	.word	_Label_2137
	.word	-12
	.word	4
	.word	_Label_2138
	.word	-16
	.word	4
	.word	_Label_2139
	.word	-20
	.word	4
	.word	_Label_2140
	.word	-24
	.word	4
	.word	0
_Label_2134:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2135:
	.ascii	"Pself\0"
	.align
_Label_2136:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2130\0"
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
_Label_3465:
	push	r0
	sub	r1,1,r1
	bne	_Label_3465
	mov	1269,r13		! source line 1269
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0RE",r10
!   _temp_2143 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2143 [entry ] into _temp_2144
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
!   Data Move: _temp_2142 = *_temp_2144  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2141 = _temp_2142 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2141  (sizeInBytes=4)
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
	.word	_Label_2145
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2146
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2147
	.word	12
	.word	4
	.word	_Label_2148
	.word	-12
	.word	4
	.word	_Label_2149
	.word	-16
	.word	4
	.word	_Label_2150
	.word	-20
	.word	4
	.word	_Label_2151
	.word	-24
	.word	4
	.word	0
_Label_2145:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2146:
	.ascii	"Pself\0"
	.align
_Label_2147:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2141\0"
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
_Label_3466:
	push	r0
	sub	r1,1,r1
	bne	_Label_3466
	mov	1278,r13		! source line 1278
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1283,r13		! source line 1283
	mov	"\0\0AS",r10
!   _temp_2152 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2152 [entry ] into _temp_2153
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
!   _temp_2157 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2157 [entry ] into _temp_2158
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
!   Data Move: _temp_2156 = *_temp_2158  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2155 = _temp_2156 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2154 = _temp_2155 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2153 = _temp_2154  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1283,r13		! source line 1283
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
	.word	_Label_2159
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2160
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2161
	.word	12
	.word	4
	.word	_Label_2162
	.word	16
	.word	4
	.word	_Label_2163
	.word	-12
	.word	4
	.word	_Label_2164
	.word	-16
	.word	4
	.word	_Label_2165
	.word	-20
	.word	4
	.word	_Label_2166
	.word	-24
	.word	4
	.word	_Label_2167
	.word	-28
	.word	4
	.word	_Label_2168
	.word	-32
	.word	4
	.word	_Label_2169
	.word	-36
	.word	4
	.word	0
_Label_2159:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2160:
	.ascii	"Pself\0"
	.align
_Label_2161:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2162:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2152\0"
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
_Label_3467:
	push	r0
	sub	r1,1,r1
	bne	_Label_3467
	mov	1288,r13		! source line 1288
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0RE",r10
!   _temp_2173 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2173 [entry ] into _temp_2174
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
!   Data Move: _temp_2172 = *_temp_2174  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2171 = _temp_2172 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2171) then goto _Label_2175
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2175
!   _temp_2170 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2176
_Label_2175:
!   _temp_2170 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2176:
!   ReturnResult: _temp_2170  (sizeInBytes=1)
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
	.word	_Label_2177
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2178
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2179
	.word	12
	.word	4
	.word	_Label_2180
	.word	-16
	.word	4
	.word	_Label_2181
	.word	-20
	.word	4
	.word	_Label_2182
	.word	-24
	.word	4
	.word	_Label_2183
	.word	-28
	.word	4
	.word	_Label_2184
	.word	-9
	.word	1
	.word	0
_Label_2177:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2178:
	.ascii	"Pself\0"
	.align
_Label_2179:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2184:
	.byte	'C'
	.ascii	"_temp_2170\0"
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
_Label_3468:
	push	r0
	sub	r1,1,r1
	bne	_Label_3468
	mov	1297,r13		! source line 1297
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1301,r13		! source line 1301
	mov	"\0\0RE",r10
!   _temp_2188 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2188 [entry ] into _temp_2189
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
!   Data Move: _temp_2187 = *_temp_2189  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2186 = _temp_2187 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2186) then goto _Label_2190
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2190
!   _temp_2185 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2191
_Label_2190:
!   _temp_2185 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2191:
!   ReturnResult: _temp_2185  (sizeInBytes=1)
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
	.word	_Label_2192
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2193
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2194
	.word	12
	.word	4
	.word	_Label_2195
	.word	-16
	.word	4
	.word	_Label_2196
	.word	-20
	.word	4
	.word	_Label_2197
	.word	-24
	.word	4
	.word	_Label_2198
	.word	-28
	.word	4
	.word	_Label_2199
	.word	-9
	.word	1
	.word	0
_Label_2192:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2193:
	.ascii	"Pself\0"
	.align
_Label_2194:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2199:
	.byte	'C'
	.ascii	"_temp_2185\0"
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
_Label_3469:
	push	r0
	sub	r1,1,r1
	bne	_Label_3469
	mov	1306,r13		! source line 1306
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1310,r13		! source line 1310
	mov	"\0\0RE",r10
!   _temp_2203 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2203 [entry ] into _temp_2204
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
!   Data Move: _temp_2202 = *_temp_2204  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2201 = _temp_2202 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2201) then goto _Label_2205
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2205
!   _temp_2200 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2206
_Label_2205:
!   _temp_2200 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2206:
!   ReturnResult: _temp_2200  (sizeInBytes=1)
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
	.word	_Label_2207
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2208
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2209
	.word	12
	.word	4
	.word	_Label_2210
	.word	-16
	.word	4
	.word	_Label_2211
	.word	-20
	.word	4
	.word	_Label_2212
	.word	-24
	.word	4
	.word	_Label_2213
	.word	-28
	.word	4
	.word	_Label_2214
	.word	-9
	.word	1
	.word	0
_Label_2207:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2208:
	.ascii	"Pself\0"
	.align
_Label_2209:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2214:
	.byte	'C'
	.ascii	"_temp_2200\0"
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
_Label_3470:
	push	r0
	sub	r1,1,r1
	bne	_Label_3470
	mov	1315,r13		! source line 1315
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0RE",r10
!   _temp_2218 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2218 [entry ] into _temp_2219
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
!   Data Move: _temp_2217 = *_temp_2219  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2216 = _temp_2217 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2216) then goto _Label_2220
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2220
!   _temp_2215 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2221
_Label_2220:
!   _temp_2215 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2221:
!   ReturnResult: _temp_2215  (sizeInBytes=1)
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
	.word	_Label_2222
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2223
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2224
	.word	12
	.word	4
	.word	_Label_2225
	.word	-16
	.word	4
	.word	_Label_2226
	.word	-20
	.word	4
	.word	_Label_2227
	.word	-24
	.word	4
	.word	_Label_2228
	.word	-28
	.word	4
	.word	_Label_2229
	.word	-9
	.word	1
	.word	0
_Label_2222:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2223:
	.ascii	"Pself\0"
	.align
_Label_2224:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2229:
	.byte	'C'
	.ascii	"_temp_2215\0"
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
_Label_3471:
	push	r0
	sub	r1,1,r1
	bne	_Label_3471
	mov	1324,r13		! source line 1324
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1328,r13		! source line 1328
	mov	"\0\0AS",r10
!   _temp_2230 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2230 [entry ] into _temp_2231
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
!   _temp_2234 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2234 [entry ] into _temp_2235
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
!   Data Move: _temp_2233 = *_temp_2235  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2232 = _temp_2233 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2231 = _temp_2232  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1328,r13		! source line 1328
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
	.word	_Label_2236
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2237
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2238
	.word	12
	.word	4
	.word	_Label_2239
	.word	-12
	.word	4
	.word	_Label_2240
	.word	-16
	.word	4
	.word	_Label_2241
	.word	-20
	.word	4
	.word	_Label_2242
	.word	-24
	.word	4
	.word	_Label_2243
	.word	-28
	.word	4
	.word	_Label_2244
	.word	-32
	.word	4
	.word	0
_Label_2236:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2237:
	.ascii	"Pself\0"
	.align
_Label_2238:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2230\0"
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
_Label_3472:
	push	r0
	sub	r1,1,r1
	bne	_Label_3472
	mov	1333,r13		! source line 1333
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1337,r13		! source line 1337
	mov	"\0\0AS",r10
!   _temp_2245 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2245 [entry ] into _temp_2246
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
!   _temp_2249 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2249 [entry ] into _temp_2250
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
!   Data Move: _temp_2248 = *_temp_2250  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2247 = _temp_2248 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2246 = _temp_2247  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1337,r13		! source line 1337
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
	.word	_Label_2251
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2252
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2253
	.word	12
	.word	4
	.word	_Label_2254
	.word	-12
	.word	4
	.word	_Label_2255
	.word	-16
	.word	4
	.word	_Label_2256
	.word	-20
	.word	4
	.word	_Label_2257
	.word	-24
	.word	4
	.word	_Label_2258
	.word	-28
	.word	4
	.word	_Label_2259
	.word	-32
	.word	4
	.word	0
_Label_2251:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2252:
	.ascii	"Pself\0"
	.align
_Label_2253:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2245\0"
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
_Label_3473:
	push	r0
	sub	r1,1,r1
	bne	_Label_3473
	mov	1342,r13		! source line 1342
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0AS",r10
!   _temp_2260 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2260 [entry ] into _temp_2261
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
!   _temp_2264 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2264 [entry ] into _temp_2265
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
!   Data Move: _temp_2263 = *_temp_2265  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2262 = _temp_2263 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2261 = _temp_2262  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1346,r13		! source line 1346
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
	.word	_Label_2266
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2267
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2268
	.word	12
	.word	4
	.word	_Label_2269
	.word	-12
	.word	4
	.word	_Label_2270
	.word	-16
	.word	4
	.word	_Label_2271
	.word	-20
	.word	4
	.word	_Label_2272
	.word	-24
	.word	4
	.word	_Label_2273
	.word	-28
	.word	4
	.word	_Label_2274
	.word	-32
	.word	4
	.word	0
_Label_2266:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2267:
	.ascii	"Pself\0"
	.align
_Label_2268:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2260\0"
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
_Label_3474:
	push	r0
	sub	r1,1,r1
	bne	_Label_3474
	mov	1351,r13		! source line 1351
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1355,r13		! source line 1355
	mov	"\0\0AS",r10
!   _temp_2275 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2275 [entry ] into _temp_2276
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
!   _temp_2279 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2279 [entry ] into _temp_2280
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
!   Data Move: _temp_2278 = *_temp_2280  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2277 = _temp_2278 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2276 = _temp_2277  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1355,r13		! source line 1355
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
	.word	_Label_2281
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2282
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2283
	.word	12
	.word	4
	.word	_Label_2284
	.word	-12
	.word	4
	.word	_Label_2285
	.word	-16
	.word	4
	.word	_Label_2286
	.word	-20
	.word	4
	.word	_Label_2287
	.word	-24
	.word	4
	.word	_Label_2288
	.word	-28
	.word	4
	.word	_Label_2289
	.word	-32
	.word	4
	.word	0
_Label_2281:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2282:
	.ascii	"Pself\0"
	.align
_Label_2283:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2275\0"
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
_Label_3475:
	push	r0
	sub	r1,1,r1
	bne	_Label_3475
	mov	1360,r13		! source line 1360
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1364,r13		! source line 1364
	mov	"\0\0AS",r10
!   _temp_2290 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2290 [entry ] into _temp_2291
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
!   _temp_2294 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2294 [entry ] into _temp_2295
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
!   Data Move: _temp_2293 = *_temp_2295  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2292 = _temp_2293 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2291 = _temp_2292  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1364,r13		! source line 1364
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
	.word	_Label_2296
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2297
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2298
	.word	12
	.word	4
	.word	_Label_2299
	.word	-12
	.word	4
	.word	_Label_2300
	.word	-16
	.word	4
	.word	_Label_2301
	.word	-20
	.word	4
	.word	_Label_2302
	.word	-24
	.word	4
	.word	_Label_2303
	.word	-28
	.word	4
	.word	_Label_2304
	.word	-32
	.word	4
	.word	0
_Label_2296:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2297:
	.ascii	"Pself\0"
	.align
_Label_2298:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2290\0"
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
_Label_3476:
	push	r0
	sub	r1,1,r1
	bne	_Label_3476
	mov	1369,r13		! source line 1369
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0AS",r10
!   _temp_2305 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2305 [entry ] into _temp_2306
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
!   _temp_2309 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2309 [entry ] into _temp_2310
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
!   Data Move: _temp_2308 = *_temp_2310  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2307 = _temp_2308 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2306 = _temp_2307  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1373,r13		! source line 1373
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
	.word	_Label_2311
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2312
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2313
	.word	12
	.word	4
	.word	_Label_2314
	.word	-12
	.word	4
	.word	_Label_2315
	.word	-16
	.word	4
	.word	_Label_2316
	.word	-20
	.word	4
	.word	_Label_2317
	.word	-24
	.word	4
	.word	_Label_2318
	.word	-28
	.word	4
	.word	_Label_2319
	.word	-32
	.word	4
	.word	0
_Label_2311:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2312:
	.ascii	"Pself\0"
	.align
_Label_2313:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2305\0"
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
_Label_3477:
	push	r0
	sub	r1,1,r1
	bne	_Label_3477
	mov	1378,r13		! source line 1378
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0AS",r10
!   _temp_2320 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2320 [entry ] into _temp_2321
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
!   _temp_2324 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2324 [entry ] into _temp_2325
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
!   Data Move: _temp_2323 = *_temp_2325  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2322 = _temp_2323 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2321 = _temp_2322  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1382,r13		! source line 1382
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
	.word	_Label_2326
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2327
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2328
	.word	12
	.word	4
	.word	_Label_2329
	.word	-12
	.word	4
	.word	_Label_2330
	.word	-16
	.word	4
	.word	_Label_2331
	.word	-20
	.word	4
	.word	_Label_2332
	.word	-24
	.word	4
	.word	_Label_2333
	.word	-28
	.word	4
	.word	_Label_2334
	.word	-32
	.word	4
	.word	0
_Label_2326:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2327:
	.ascii	"Pself\0"
	.align
_Label_2328:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2320\0"
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
_Label_3478:
	push	r0
	sub	r1,1,r1
	bne	_Label_3478
	mov	1387,r13		! source line 1387
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0AS",r10
!   _temp_2335 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2335 [entry ] into _temp_2336
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
!   _temp_2339 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2339 [entry ] into _temp_2340
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
!   Data Move: _temp_2338 = *_temp_2340  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2337 = _temp_2338 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2336 = _temp_2337  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1391,r13		! source line 1391
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
	.word	_Label_2341
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2342
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2343
	.word	12
	.word	4
	.word	_Label_2344
	.word	-12
	.word	4
	.word	_Label_2345
	.word	-16
	.word	4
	.word	_Label_2346
	.word	-20
	.word	4
	.word	_Label_2347
	.word	-24
	.word	4
	.word	_Label_2348
	.word	-28
	.word	4
	.word	_Label_2349
	.word	-32
	.word	4
	.word	0
_Label_2341:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2342:
	.ascii	"Pself\0"
	.align
_Label_2343:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2335\0"
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
_Label_3479:
	push	r0
	sub	r1,1,r1
	bne	_Label_3479
	mov	1396,r13		! source line 1396
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2351 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2351 [0 ] into _temp_2352
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
!   _temp_2350 = _temp_2352		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2353 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2350  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2353  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1402,r13		! source line 1402
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1402,r13		! source line 1402
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
	.word	_Label_2354
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2355
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2356
	.word	-12
	.word	4
	.word	_Label_2357
	.word	-16
	.word	4
	.word	_Label_2358
	.word	-20
	.word	4
	.word	_Label_2359
	.word	-24
	.word	4
	.word	0
_Label_2354:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2355:
	.ascii	"Pself\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2350\0"
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
_Label_3480:
	push	r0
	sub	r1,1,r1
	bne	_Label_3480
	mov	1407,r13		! source line 1407
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2360
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2360
	jmp	_Label_2361
_Label_2360:
! THEN...
	mov	1423,r13		! source line 1423
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2362
_Label_2361:
! ELSE...
	mov	1424,r13		! source line 1424
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2364		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2364
!	jmp	_Label_2363
_Label_2363:
! THEN...
	mov	1425,r13		! source line 1425
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2364:
! END IF...
_Label_2362:
! ASSIGNMENT STATEMENT...
	mov	1427,r13		! source line 1427
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
	mov	1428,r13		! source line 1428
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
	mov	1431,r13		! source line 1431
	mov	"\0\0WH",r10
_Label_2365:
!	jmp	_Label_2366
_Label_2366:
	mov	1431,r13		! source line 1431
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2369		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2369
!	jmp	_Label_2368
_Label_2368:
! THEN...
	mov	1433,r13		! source line 1433
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2370 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2370  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1433,r13		! source line 1433
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2369:
! IF STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0IF",r10
	mov	1436,r13		! source line 1436
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2374) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2373  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2373 then goto _Label_2372 else goto _Label_2371
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2371
	jmp	_Label_2372
_Label_2371:
! THEN...
	mov	1437,r13		! source line 1437
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2375 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2375  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1437,r13		! source line 1437
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2372:
! ASSIGNMENT STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0AS",r10
	mov	1440,r13		! source line 1440
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2377) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2376  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2376 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0WH",r10
_Label_2378:
!   if offset >= 8192 then goto _Label_2380		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2380
!	jmp	_Label_2379
_Label_2379:
	mov	1442,r13		! source line 1442
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2381 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2381  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1446,r13		! source line 1446
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2383		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2383
!	jmp	_Label_2382
_Label_2382:
! THEN...
	mov	1451,r13		! source line 1451
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2383:
! END WHILE...
	jmp	_Label_2378
_Label_2380:
! ASSIGNMENT STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2365
_Label_2367:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2384
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2385
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2386
	.word	12
	.word	4
	.word	_Label_2387
	.word	16
	.word	4
	.word	_Label_2388
	.word	20
	.word	4
	.word	_Label_2389
	.word	-9
	.word	1
	.word	_Label_2390
	.word	-16
	.word	4
	.word	_Label_2391
	.word	-20
	.word	4
	.word	_Label_2392
	.word	-24
	.word	4
	.word	_Label_2393
	.word	-28
	.word	4
	.word	_Label_2394
	.word	-10
	.word	1
	.word	_Label_2395
	.word	-32
	.word	4
	.word	_Label_2396
	.word	-36
	.word	4
	.word	_Label_2397
	.word	-40
	.word	4
	.word	_Label_2398
	.word	-44
	.word	4
	.word	_Label_2399
	.word	-48
	.word	4
	.word	0
_Label_2384:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2385:
	.ascii	"Pself\0"
	.align
_Label_2386:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2387:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2388:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2389:
	.byte	'C'
	.ascii	"_temp_2381\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2394:
	.byte	'C'
	.ascii	"_temp_2373\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2396:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2397:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2398:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2399:
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
_Label_3481:
	push	r0
	sub	r1,1,r1
	bne	_Label_3481
	mov	1461,r13		! source line 1461
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1472,r13		! source line 1472
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2400
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2400
	jmp	_Label_2401
_Label_2400:
! THEN...
	mov	1473,r13		! source line 1473
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2402
_Label_2401:
! ELSE...
	mov	1474,r13		! source line 1474
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2404		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2404
!	jmp	_Label_2403
_Label_2403:
! THEN...
	mov	1475,r13		! source line 1475
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2404:
! END IF...
_Label_2402:
! ASSIGNMENT STATEMENT...
	mov	1477,r13		! source line 1477
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
	mov	1478,r13		! source line 1478
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
	mov	1479,r13		! source line 1479
	mov	"\0\0WH",r10
_Label_2405:
!	jmp	_Label_2406
_Label_2406:
	mov	1479,r13		! source line 1479
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2411		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2411
	jmp	_Label_2408
_Label_2411:
	mov	1481,r13		! source line 1481
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2413) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2412  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2412 then goto _Label_2410 else goto _Label_2408
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2408
	jmp	_Label_2410
_Label_2410:
	mov	1482,r13		! source line 1482
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2415) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2414  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2414 then goto _Label_2409 else goto _Label_2408
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2408
	jmp	_Label_2409
_Label_2408:
! THEN...
	mov	1483,r13		! source line 1483
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2409:
! ASSIGNMENT STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0AS",r10
	mov	1485,r13		! source line 1485
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2417) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2416  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2416 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0WH",r10
_Label_2418:
!   if offset >= 8192 then goto _Label_2420		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2420
!	jmp	_Label_2419
_Label_2419:
	mov	1486,r13		! source line 1486
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2421 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2421  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2423		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2423
!	jmp	_Label_2422
_Label_2422:
! THEN...
	mov	1493,r13		! source line 1493
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2423:
! END WHILE...
	jmp	_Label_2418
_Label_2420:
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2405
_Label_2407:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2424
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2425
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2426
	.word	12
	.word	4
	.word	_Label_2427
	.word	16
	.word	4
	.word	_Label_2428
	.word	20
	.word	4
	.word	_Label_2429
	.word	-9
	.word	1
	.word	_Label_2430
	.word	-16
	.word	4
	.word	_Label_2431
	.word	-20
	.word	4
	.word	_Label_2432
	.word	-24
	.word	4
	.word	_Label_2433
	.word	-10
	.word	1
	.word	_Label_2434
	.word	-28
	.word	4
	.word	_Label_2435
	.word	-11
	.word	1
	.word	_Label_2436
	.word	-32
	.word	4
	.word	_Label_2437
	.word	-36
	.word	4
	.word	_Label_2438
	.word	-40
	.word	4
	.word	_Label_2439
	.word	-44
	.word	4
	.word	0
_Label_2424:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2425:
	.ascii	"Pself\0"
	.align
_Label_2426:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2427:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2428:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2429:
	.byte	'C'
	.ascii	"_temp_2421\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2433:
	.byte	'C'
	.ascii	"_temp_2414\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2435:
	.byte	'C'
	.ascii	"_temp_2412\0"
	.align
_Label_2436:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2437:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2438:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2439:
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
_Label_3482:
	push	r0
	sub	r1,1,r1
	bne	_Label_3482
	mov	1503,r13		! source line 1503
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0IF",r10
	mov	1527,r13		! source line 1527
	mov	"\0\0SE",r10
!   _temp_2443 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2444) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2443  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2442  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2442 >= 4 then goto _Label_2441		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2441
!	jmp	_Label_2440
_Label_2440:
! THEN...
	mov	1530,r13		! source line 1530
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2441:
! IF STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2446		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2446
!	jmp	_Label_2445
_Label_2445:
! THEN...
	mov	1535,r13		! source line 1535
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2446:
! ASSIGNMENT STATEMENT...
	mov	1538,r13		! source line 1538
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
	mov	1540,r13		! source line 1540
	mov	"\0\0RE",r10
	mov	1540,r13		! source line 1540
	mov	"\0\0SE",r10
!   _temp_2449 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2448 = _temp_2449 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2450 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2451) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2448  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2450  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2447  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2447  (sizeInBytes=4)
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
	.word	_Label_2452
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2453
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2454
	.word	12
	.word	4
	.word	_Label_2455
	.word	16
	.word	4
	.word	_Label_2456
	.word	20
	.word	4
	.word	_Label_2457
	.word	-12
	.word	4
	.word	_Label_2458
	.word	-16
	.word	4
	.word	_Label_2459
	.word	-20
	.word	4
	.word	_Label_2460
	.word	-24
	.word	4
	.word	_Label_2461
	.word	-28
	.word	4
	.word	_Label_2462
	.word	-32
	.word	4
	.word	_Label_2463
	.word	-36
	.word	4
	.word	_Label_2464
	.word	-40
	.word	4
	.word	_Label_2465
	.word	-44
	.word	4
	.word	0
_Label_2452:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2453:
	.ascii	"Pself\0"
	.align
_Label_2454:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2455:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2456:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2465:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2466
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2466:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2467
	.word	_sourceFileName
	.word	309		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2467:
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
_Label_3483:
	push	r0
	sub	r1,1,r1
	bne	_Label_3483
	mov	2042,r13		! source line 2042
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2468 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2468  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2043,r13		! source line 2043
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
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
	mov	2051,r13		! source line 2051
	mov	"\0\0SE",r10
!   _temp_2470 = &semUsedInSynchMethods
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
	mov	2052,r13		! source line 2052
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
	mov	2053,r13		! source line 2053
	mov	"\0\0SE",r10
!   _temp_2472 = &diskBusy
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
	mov	2053,r13		! source line 2053
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
	.word	_Label_2473
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2474
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2475
	.word	-12
	.word	4
	.word	_Label_2476
	.word	-16
	.word	4
	.word	_Label_2477
	.word	-20
	.word	4
	.word	_Label_2478
	.word	-24
	.word	4
	.word	_Label_2479
	.word	-28
	.word	4
	.word	0
_Label_2473:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2474:
	.ascii	"Pself\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2468\0"
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
_Label_3484:
	push	r0
	sub	r1,1,r1
	bne	_Label_3484
	mov	2058,r13		! source line 2058
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0SE",r10
!   _temp_2480 = &diskBusy
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
	mov	2072,r13		! source line 2072
	mov	"\0\0WH",r10
_Label_2481:
!	jmp	_Label_2482
_Label_2482:
	mov	2072,r13		! source line 2072
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0SE",r10
!   _temp_2484 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2485) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2484  sizeInBytes=4
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
	mov	2076,r13		! source line 2076
	mov	"\0\0SE",r10
!   _temp_2486 = &semUsedInSynchMethods
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
	mov	2079,r13		! source line 2079
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2495 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2489
	cmp	r1,2
	be	_Label_2490
	cmp	r1,3
	be	_Label_2491
	cmp	r1,4
	be	_Label_2492
	cmp	r1,5
	be	_Label_2493
	cmp	r1,6
	be	_Label_2494
	jmp	_Label_2487
! CASE 1...
_Label_2489:
! SEND STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0SE",r10
!   _temp_2496 = &diskBusy
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
	mov	2082,r13		! source line 2082
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2490:
! CALL STATEMENT...
!   _temp_2497 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2497  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2084,r13		! source line 2084
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2491:
! CALL STATEMENT...
!   _temp_2498 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2498  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2086,r13		! source line 2086
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2492:
! CALL STATEMENT...
!   _temp_2499 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2499  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2088,r13		! source line 2088
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2493:
! BREAK STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0BR",r10
	jmp	_Label_2488
! CASE 6...
_Label_2494:
! CALL STATEMENT...
!   _temp_2500 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2500  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2094,r13		! source line 2094
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2487:
! CALL STATEMENT...
!   _temp_2501 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2501  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2096,r13		! source line 2096
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2488:
! END WHILE...
	jmp	_Label_2481
_Label_2483:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2502
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2503
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2504
	.word	12
	.word	4
	.word	_Label_2505
	.word	16
	.word	4
	.word	_Label_2506
	.word	20
	.word	4
	.word	_Label_2507
	.word	-12
	.word	4
	.word	_Label_2508
	.word	-16
	.word	4
	.word	_Label_2509
	.word	-20
	.word	4
	.word	_Label_2510
	.word	-24
	.word	4
	.word	_Label_2511
	.word	-28
	.word	4
	.word	_Label_2512
	.word	-32
	.word	4
	.word	_Label_2513
	.word	-36
	.word	4
	.word	_Label_2514
	.word	-40
	.word	4
	.word	_Label_2515
	.word	-44
	.word	4
	.word	_Label_2516
	.word	-48
	.word	4
	.word	_Label_2517
	.word	-52
	.word	4
	.word	0
_Label_2502:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2503:
	.ascii	"Pself\0"
	.align
_Label_2504:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2505:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2506:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2480\0"
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
	mov	2105,r13		! source line 2105
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2123,r13		! source line 2123
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
	mov	2124,r13		! source line 2124
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
	mov	2125,r13		! source line 2125
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
	mov	2126,r13		! source line 2126
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
	mov	2126,r13		! source line 2126
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
	.word	_Label_2518
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2519
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2520
	.word	12
	.word	4
	.word	_Label_2521
	.word	16
	.word	4
	.word	_Label_2522
	.word	20
	.word	4
	.word	_Label_2523
	.word	24
	.word	4
	.word	0
_Label_2518:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2519:
	.ascii	"Pself\0"
	.align
_Label_2520:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2521:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2522:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2523:
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
_Label_3485:
	push	r0
	sub	r1,1,r1
	bne	_Label_3485
	mov	2131,r13		! source line 2131
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0SE",r10
!   _temp_2524 = &diskBusy
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
	mov	2144,r13		! source line 2144
	mov	"\0\0WH",r10
_Label_2525:
!	jmp	_Label_2526
_Label_2526:
	mov	2144,r13		! source line 2144
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0SE",r10
!   _temp_2528 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2529) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2528  sizeInBytes=4
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
	mov	2147,r13		! source line 2147
	mov	"\0\0SE",r10
!   _temp_2530 = &semUsedInSynchMethods
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
	mov	2150,r13		! source line 2150
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2539 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2533
	cmp	r1,2
	be	_Label_2534
	cmp	r1,3
	be	_Label_2535
	cmp	r1,4
	be	_Label_2536
	cmp	r1,5
	be	_Label_2537
	cmp	r1,6
	be	_Label_2538
	jmp	_Label_2531
! CASE 1...
_Label_2533:
! SEND STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0SE",r10
!   _temp_2540 = &diskBusy
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
	mov	2153,r13		! source line 2153
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2534:
! CALL STATEMENT...
!   _temp_2541 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2541  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2155,r13		! source line 2155
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2535:
! CALL STATEMENT...
!   _temp_2542 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2542  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2157,r13		! source line 2157
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2536:
! CALL STATEMENT...
!   _temp_2543 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2543  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2159,r13		! source line 2159
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2537:
! BREAK STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0BR",r10
	jmp	_Label_2532
! CASE 6...
_Label_2538:
! CALL STATEMENT...
!   _temp_2544 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2544  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2165,r13		! source line 2165
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2531:
! CALL STATEMENT...
!   _temp_2545 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2545  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2167,r13		! source line 2167
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2532:
! END WHILE...
	jmp	_Label_2525
_Label_2527:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2546
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2547
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2548
	.word	12
	.word	4
	.word	_Label_2549
	.word	16
	.word	4
	.word	_Label_2550
	.word	20
	.word	4
	.word	_Label_2551
	.word	-12
	.word	4
	.word	_Label_2552
	.word	-16
	.word	4
	.word	_Label_2553
	.word	-20
	.word	4
	.word	_Label_2554
	.word	-24
	.word	4
	.word	_Label_2555
	.word	-28
	.word	4
	.word	_Label_2556
	.word	-32
	.word	4
	.word	_Label_2557
	.word	-36
	.word	4
	.word	_Label_2558
	.word	-40
	.word	4
	.word	_Label_2559
	.word	-44
	.word	4
	.word	_Label_2560
	.word	-48
	.word	4
	.word	_Label_2561
	.word	-52
	.word	4
	.word	0
_Label_2546:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2547:
	.ascii	"Pself\0"
	.align
_Label_2548:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2549:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2550:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2524\0"
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
	mov	2176,r13		! source line 2176
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2193,r13		! source line 2193
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
	mov	2194,r13		! source line 2194
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
	mov	2195,r13		! source line 2195
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
	mov	2196,r13		! source line 2196
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
	mov	2196,r13		! source line 2196
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
	.word	_Label_2562
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2563
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2564
	.word	12
	.word	4
	.word	_Label_2565
	.word	16
	.word	4
	.word	_Label_2566
	.word	20
	.word	4
	.word	_Label_2567
	.word	24
	.word	4
	.word	0
_Label_2562:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2563:
	.ascii	"Pself\0"
	.align
_Label_2564:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2565:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2566:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2567:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2568
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
_Label_2568:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2569
	.word	_sourceFileName
	.word	332		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2569:
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
_Label_3486:
	push	r0
	sub	r1,1,r1
	bne	_Label_3486
	mov	2207,r13		! source line 2207
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2570 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2570  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2214,r13		! source line 2214
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2215,r13		! source line 2215
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
	mov	2216,r13		! source line 2216
	mov	"\0\0SE",r10
!   _temp_2572 = &fileManagerLock
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
	mov	2219,r13		! source line 2219
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
	mov	2220,r13		! source line 2220
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
	mov	2221,r13		! source line 2221
	mov	"\0\0SE",r10
!   _temp_2575 = &anFCBBecameFree
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
	mov	2222,r13		! source line 2222
	mov	"\0\0AS",r10
!   _temp_2576 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2578 = &_temp_2577
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2578 = _temp_2578 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2580 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3487:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3487
!   _temp_2580 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2582:
!   Data Move: *_temp_2578 = _temp_2580  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3488:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3488
!   _temp_2578 = _temp_2578 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2579 = _temp_2579 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2579) then goto _Label_2582
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2582
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2583 = &_temp_2577
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3489
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3489:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2576 = *_temp_2583  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3490:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3490
! FOR STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2588 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2589 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2588  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2584:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2589 then goto _Label_2587		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2587
_Label_2585:
	mov	2224,r13		! source line 2224
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0AS",r10
!   _temp_2590 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2590 [i ] into _temp_2591
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
!   _temp_2592 = _temp_2591 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2592 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0SE",r10
!   _temp_2593 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2593 [i ] into _temp_2594
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
	mov	2227,r13		! source line 2227
	mov	"\0\0SE",r10
!   _temp_2596 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2596 [i ] into _temp_2597
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
!   _temp_2595 = _temp_2597		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2598 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2595  sizeInBytes=4
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
_Label_2586:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2584
! END FOR
_Label_2587:
! ASSIGNMENT STATEMENT...
	mov	2231,r13		! source line 2231
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
	mov	2232,r13		! source line 2232
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
	mov	2233,r13		! source line 2233
	mov	"\0\0SE",r10
!   _temp_2601 = &anOpenFileBecameFree
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
	mov	2234,r13		! source line 2234
	mov	"\0\0AS",r10
!   _temp_2602 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2604 = &_temp_2603
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2604 = _temp_2604 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2606 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3491:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3491
!   _temp_2606 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2608:
!   Data Move: *_temp_2604 = _temp_2606  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3492:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3492
!   _temp_2604 = _temp_2604 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2605 = _temp_2605 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2605) then goto _Label_2608
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2608
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2609 = &_temp_2603
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3493
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3493:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2602 = *_temp_2609  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3494:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3494
! FOR STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2614 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2615 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2614  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2610:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2615 then goto _Label_2613		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2613
_Label_2611:
	mov	2236,r13		! source line 2236
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0AS",r10
!   _temp_2616 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2616 [i ] into _temp_2617
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
!   _temp_2618 = _temp_2617 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2618 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0SE",r10
!   _temp_2620 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2620 [i ] into _temp_2621
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
!   _temp_2619 = _temp_2621		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2622 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2619  sizeInBytes=4
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
_Label_2612:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2610
! END FOR
_Label_2613:
! ASSIGNMENT STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3495:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3495
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0AS",r10
!   _temp_2624 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2625 = _temp_2624 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2625 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0AS",r10
	mov	2248,r13		! source line 2248
	mov	"\0\0SE",r10
!   _temp_2626 = &_P_Kernel_frameManager
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
	mov	2249,r13		! source line 2249
	mov	"\0\0SE",r10
!   _temp_2627 = &_P_Kernel_diskDriver
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
	mov	2249,r13		! source line 2249
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
	.word	_Label_2628
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2630
	.word	-12
	.word	4
	.word	_Label_2631
	.word	-16
	.word	4
	.word	_Label_2632
	.word	-20
	.word	4
	.word	_Label_2633
	.word	-24
	.word	4
	.word	_Label_2634
	.word	-28
	.word	4
	.word	_Label_2635
	.word	-32
	.word	4
	.word	_Label_2636
	.word	-36
	.word	4
	.word	_Label_2637
	.word	-40
	.word	4
	.word	_Label_2638
	.word	-44
	.word	4
	.word	_Label_2639
	.word	-48
	.word	4
	.word	_Label_2640
	.word	-52
	.word	4
	.word	_Label_2641
	.word	-56
	.word	4
	.word	_Label_2642
	.word	-60
	.word	4
	.word	_Label_2643
	.word	-64
	.word	4
	.word	_Label_2644
	.word	-68
	.word	4
	.word	_Label_2645
	.word	-72
	.word	4
	.word	_Label_2646
	.word	-100
	.word	28
	.word	_Label_2647
	.word	-104
	.word	4
	.word	_Label_2648
	.word	-108
	.word	4
	.word	_Label_2649
	.word	-392
	.word	284
	.word	_Label_2650
	.word	-396
	.word	4
	.word	_Label_2651
	.word	-400
	.word	4
	.word	_Label_2652
	.word	-404
	.word	4
	.word	_Label_2653
	.word	-408
	.word	4
	.word	_Label_2654
	.word	-412
	.word	4
	.word	_Label_2655
	.word	-416
	.word	4
	.word	_Label_2656
	.word	-420
	.word	4
	.word	_Label_2657
	.word	-424
	.word	4
	.word	_Label_2658
	.word	-428
	.word	4
	.word	_Label_2659
	.word	-432
	.word	4
	.word	_Label_2660
	.word	-436
	.word	4
	.word	_Label_2661
	.word	-440
	.word	4
	.word	_Label_2662
	.word	-444
	.word	4
	.word	_Label_2663
	.word	-448
	.word	4
	.word	_Label_2664
	.word	-452
	.word	4
	.word	_Label_2665
	.word	-456
	.word	4
	.word	_Label_2666
	.word	-460
	.word	4
	.word	_Label_2667
	.word	-500
	.word	40
	.word	_Label_2668
	.word	-504
	.word	4
	.word	_Label_2669
	.word	-508
	.word	4
	.word	_Label_2670
	.word	-912
	.word	404
	.word	_Label_2671
	.word	-916
	.word	4
	.word	_Label_2672
	.word	-920
	.word	4
	.word	_Label_2673
	.word	-924
	.word	4
	.word	_Label_2674
	.word	-928
	.word	4
	.word	_Label_2675
	.word	-932
	.word	4
	.word	_Label_2676
	.word	-936
	.word	4
	.word	_Label_2677
	.word	-940
	.word	4
	.word	_Label_2678
	.word	-944
	.word	4
	.word	0
_Label_2628:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2629:
	.ascii	"Pself\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2678:
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
_Label_3496:
	push	r0
	sub	r1,1,r1
	bne	_Label_3496
	mov	2256,r13		! source line 2256
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0SE",r10
!   _temp_2679 = &fileManagerLock
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
!   _temp_2680 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2680  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2259,r13		! source line 2259
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2685 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2686 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2685  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2681:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2686 then goto _Label_2684		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2684
_Label_2682:
	mov	2260,r13		! source line 2260
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2687 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2687  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2261,r13		! source line 2261
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2262,r13		! source line 2262
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2688 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2688  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2263,r13		! source line 2263
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0SE",r10
!   _temp_2689 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2689 [i ] into _temp_2690
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
_Label_2683:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2681
! END FOR
_Label_2684:
! CALL STATEMENT...
!   _temp_2691 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2691  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2266,r13		! source line 2266
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0SE",r10
!   _temp_2692 = _function_201_printFCB
	set	_function_201_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2693 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2692  sizeInBytes=4
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
	mov	2268,r13		! source line 2268
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2694 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2694  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2269,r13		! source line 2269
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2699 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2700 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2699  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2695:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2700 then goto _Label_2698		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2698
_Label_2696:
	mov	2270,r13		! source line 2270
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2701 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2701  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2271,r13		! source line 2271
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2272,r13		! source line 2272
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2702 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2702  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2273,r13		! source line 2273
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2704 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2704 [i ] into _temp_2705
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
!   _temp_2703 = _temp_2705		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2703  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2274,r13		! source line 2274
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2706 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2706  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2275,r13		! source line 2275
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0SE",r10
!   _temp_2707 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2707 [i ] into _temp_2708
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
_Label_2697:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2695
! END FOR
_Label_2698:
! CALL STATEMENT...
!   _temp_2709 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2709  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2278,r13		! source line 2278
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0SE",r10
!   _temp_2710 = _function_200_printOpen
	set	_function_200_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2711 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2710  sizeInBytes=4
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
	mov	2280,r13		! source line 2280
	mov	"\0\0SE",r10
!   _temp_2712 = &fileManagerLock
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
	mov	2280,r13		! source line 2280
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
	.word	_Label_2713
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2714
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2715
	.word	-12
	.word	4
	.word	_Label_2716
	.word	-16
	.word	4
	.word	_Label_2717
	.word	-20
	.word	4
	.word	_Label_2718
	.word	-24
	.word	4
	.word	_Label_2719
	.word	-28
	.word	4
	.word	_Label_2720
	.word	-32
	.word	4
	.word	_Label_2721
	.word	-36
	.word	4
	.word	_Label_2722
	.word	-40
	.word	4
	.word	_Label_2723
	.word	-44
	.word	4
	.word	_Label_2724
	.word	-48
	.word	4
	.word	_Label_2725
	.word	-52
	.word	4
	.word	_Label_2726
	.word	-56
	.word	4
	.word	_Label_2727
	.word	-60
	.word	4
	.word	_Label_2728
	.word	-64
	.word	4
	.word	_Label_2729
	.word	-68
	.word	4
	.word	_Label_2730
	.word	-72
	.word	4
	.word	_Label_2731
	.word	-76
	.word	4
	.word	_Label_2732
	.word	-80
	.word	4
	.word	_Label_2733
	.word	-84
	.word	4
	.word	_Label_2734
	.word	-88
	.word	4
	.word	_Label_2735
	.word	-92
	.word	4
	.word	_Label_2736
	.word	-96
	.word	4
	.word	_Label_2737
	.word	-100
	.word	4
	.word	_Label_2738
	.word	-104
	.word	4
	.word	_Label_2739
	.word	-108
	.word	4
	.word	_Label_2740
	.word	-112
	.word	4
	.word	_Label_2741
	.word	-116
	.word	4
	.word	0
_Label_2713:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2714:
	.ascii	"Pself\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2741:
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
_Label_3497:
	push	r0
	sub	r1,1,r1
	bne	_Label_3497
	mov	2285,r13		! source line 2285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0AS",r10
	mov	2301,r13		! source line 2301
	mov	"\0\0SE",r10
!   _temp_2742 = &_P_Kernel_fileManager
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
	mov	2302,r13		! source line 2302
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2743
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2743
	jmp	_Label_2744
_Label_2743:
! THEN...
	mov	2303,r13		! source line 2303
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2744:
! SEND STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0SE",r10
!   _temp_2745 = &fileManagerLock
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
	mov	2308,r13		! source line 2308
	mov	"\0\0WH",r10
_Label_2746:
	mov	2308,r13		! source line 2308
	mov	"\0\0SE",r10
!   _temp_2749 = &openFileFreeList
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
!   if result==true then goto _Label_2747 else goto _Label_2748
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2748
	jmp	_Label_2747
_Label_2747:
	mov	2308,r13		! source line 2308
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0SE",r10
!   _temp_2750 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2751 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2750  sizeInBytes=4
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
	jmp	_Label_2746
_Label_2748:
! ASSIGNMENT STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0AS",r10
	mov	2311,r13		! source line 2311
	mov	"\0\0SE",r10
!   _temp_2752 = &openFileFreeList
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
	mov	2314,r13		! source line 2314
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2753 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2753 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2315,r13		! source line 2315
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2754 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2754 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2755 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2755 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0SE",r10
!   _temp_2756 = &fileManagerLock
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
	mov	2321,r13		! source line 2321
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
	.word	_Label_2757
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2758
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2759
	.word	12
	.word	4
	.word	_Label_2760
	.word	-12
	.word	4
	.word	_Label_2761
	.word	-16
	.word	4
	.word	_Label_2762
	.word	-20
	.word	4
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
	.word	_Label_2768
	.word	-44
	.word	4
	.word	_Label_2769
	.word	-48
	.word	4
	.word	_Label_2770
	.word	-52
	.word	4
	.word	_Label_2771
	.word	-56
	.word	4
	.word	0
_Label_2757:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2758:
	.ascii	"Pself\0"
	.align
_Label_2759:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2770:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2771:
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
_Label_3498:
	push	r0
	sub	r1,1,r1
	bne	_Label_3498
	mov	2326,r13		! source line 2326
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2354,r13		! source line 2354
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
	mov	2355,r13		! source line 2355
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2356,r13		! source line 2356
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2773		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2773
!	jmp	_Label_2772
_Label_2772:
! THEN...
	mov	2357,r13		! source line 2357
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2774 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2774  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2357,r13		! source line 2357
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2773:
! ASSIGNMENT STATEMENT...
	mov	2361,r13		! source line 2361
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
	mov	2362,r13		! source line 2362
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2363,r13		! source line 2363
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
	mov	2364,r13		! source line 2364
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0WH",r10
_Label_2775:
!   if numFiles <= 0 then goto _Label_2777		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2777
!	jmp	_Label_2776
_Label_2776:
	mov	2367,r13		! source line 2367
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2778 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2778  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2368,r13		! source line 2368
	mov	"\0\0CA",r10
	call	_function_202_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2779 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2779  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2370,r13		! source line 2370
	mov	"\0\0CA",r10
	call	_function_202_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2780 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2780  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2372,r13		! source line 2372
	mov	"\0\0CA",r10
	call	_function_202_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2373,r13		! source line 2373
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2784 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2784 then goto _Label_2782		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2782
!	jmp	_Label_2783
_Label_2783:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2786
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
!   _temp_2785 = _temp_2786		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2785  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2375,r13		! source line 2375
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2781 else goto _Label_2782
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2782
	jmp	_Label_2781
_Label_2781:
! THEN...
	mov	2376,r13		! source line 2376
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0BR",r10
	jmp	_Label_2777
! END IF...
_Label_2782:
! ASSIGNMENT STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2775
_Label_2777:
! IF STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2788		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2788
!	jmp	_Label_2787
_Label_2787:
! THEN...
	mov	2384,r13		! source line 2384
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2788:
! SEND STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0SE",r10
!   _temp_2789 = &fileManagerLock
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
	mov	2389,r13		! source line 2389
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2794 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2795 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2794  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2790:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2795 then goto _Label_2793		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2793
_Label_2791:
	mov	2389,r13		! source line 2389
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0AS",r10
!   _temp_2796 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2796 [i ] into _temp_2797
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
!   fcb = _temp_2797		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2801 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2800 = *_temp_2801  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2800 != start then goto _Label_2799		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2799
!	jmp	_Label_2798
_Label_2798:
! THEN...
	mov	2392,r13		! source line 2392
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2802 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2805 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2804 = *_temp_2805  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2803 = _temp_2804 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2802 = _temp_2803  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0SE",r10
!   _temp_2806 = &fileManagerLock
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
	mov	2394,r13		! source line 2394
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2799:
!   Increment the FOR-LOOP index variable and jump back
_Label_2792:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2790
! END FOR
_Label_2793:
! WHILE STATEMENT...
	mov	2399,r13		! source line 2399
	mov	"\0\0WH",r10
_Label_2807:
	mov	2399,r13		! source line 2399
	mov	"\0\0SE",r10
!   _temp_2810 = &fcbFreeList
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
!   if result==true then goto _Label_2808 else goto _Label_2809
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2809
	jmp	_Label_2808
_Label_2808:
	mov	2399,r13		! source line 2399
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0SE",r10
!   _temp_2811 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2812 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2811  sizeInBytes=4
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
	jmp	_Label_2807
_Label_2809:
! ASSIGNMENT STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0AS",r10
	mov	2402,r13		! source line 2402
	mov	"\0\0SE",r10
!   _temp_2813 = &fcbFreeList
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
	mov	2405,r13		! source line 2405
	mov	"\0\0SE",r10
!   _temp_2814 = &fileManagerLock
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
	mov	2408,r13		! source line 2408
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2815 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2815 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2816 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2816 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2817 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2817 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2822 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2821 = *_temp_2822  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2821 < 0 then goto _Label_2820		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2820
	jmp	_Label_2818
_Label_2820:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2823 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2823 ) then goto _Label_2819		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2819
!	jmp	_Label_2818
_Label_2818:
! THEN...
	mov	2412,r13		! source line 2412
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2824 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2824  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2412,r13		! source line 2412
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2819:
! RETURN STATEMENT...
	mov	2414,r13		! source line 2414
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
	.word	_Label_2825
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2826
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2827
	.word	12
	.word	4
	.word	_Label_2828
	.word	-12
	.word	4
	.word	_Label_2829
	.word	-16
	.word	4
	.word	_Label_2830
	.word	-20
	.word	4
	.word	_Label_2831
	.word	-24
	.word	4
	.word	_Label_2832
	.word	-28
	.word	4
	.word	_Label_2833
	.word	-32
	.word	4
	.word	_Label_2834
	.word	-36
	.word	4
	.word	_Label_2835
	.word	-40
	.word	4
	.word	_Label_2836
	.word	-44
	.word	4
	.word	_Label_2837
	.word	-48
	.word	4
	.word	_Label_2838
	.word	-52
	.word	4
	.word	_Label_2839
	.word	-56
	.word	4
	.word	_Label_2840
	.word	-60
	.word	4
	.word	_Label_2841
	.word	-64
	.word	4
	.word	_Label_2842
	.word	-68
	.word	4
	.word	_Label_2843
	.word	-72
	.word	4
	.word	_Label_2844
	.word	-76
	.word	4
	.word	_Label_2845
	.word	-80
	.word	4
	.word	_Label_2846
	.word	-84
	.word	4
	.word	_Label_2847
	.word	-88
	.word	4
	.word	_Label_2848
	.word	-92
	.word	4
	.word	_Label_2849
	.word	-96
	.word	4
	.word	_Label_2850
	.word	-100
	.word	4
	.word	_Label_2851
	.word	-104
	.word	4
	.word	_Label_2852
	.word	-108
	.word	4
	.word	_Label_2853
	.word	-112
	.word	4
	.word	_Label_2854
	.word	-116
	.word	4
	.word	_Label_2855
	.word	-120
	.word	4
	.word	_Label_2856
	.word	-124
	.word	4
	.word	_Label_2857
	.word	-128
	.word	4
	.word	_Label_2858
	.word	-132
	.word	4
	.word	_Label_2859
	.word	-136
	.word	4
	.word	_Label_2860
	.word	-140
	.word	4
	.word	_Label_2861
	.word	-144
	.word	4
	.word	_Label_2862
	.word	-148
	.word	4
	.word	_Label_2863
	.word	-152
	.word	4
	.word	_Label_2864
	.word	-156
	.word	4
	.word	_Label_2865
	.word	-160
	.word	4
	.word	0
_Label_2825:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2826:
	.ascii	"Pself\0"
	.align
_Label_2827:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2859:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2860:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2861:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2862:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2863:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2864:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2865:
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
_Label_3499:
	push	r0
	sub	r1,1,r1
	bne	_Label_3499
	mov	2427,r13		! source line 2427
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0IF",r10
!   _temp_2868 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2868 then goto _Label_2867		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2867
!	jmp	_Label_2866
_Label_2866:
! THEN...
	mov	2430,r13		! source line 2430
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2867:
! SEND STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0SE",r10
!   _temp_2869 = &fileManagerLock
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
	mov	2433,r13		! source line 2433
	mov	"\0\0SE",r10
!   _temp_2870 = &_P_Kernel_fileManager
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
	mov	2434,r13		! source line 2434
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2871 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2871  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2872 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2875 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2874 = *_temp_2875  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2873 = _temp_2874 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2872 = _temp_2873  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2879 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2878 = *_temp_2879  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2878 > 0 then goto _Label_2877		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2877
!	jmp	_Label_2876
_Label_2876:
! THEN...
	mov	2437,r13		! source line 2437
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0SE",r10
!   _temp_2880 = &openFileFreeList
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
	mov	2438,r13		! source line 2438
	mov	"\0\0SE",r10
!   _temp_2881 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2882 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2881  sizeInBytes=4
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
	mov	2439,r13		! source line 2439
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2883 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2886 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2885 = *_temp_2886  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2884 = _temp_2885 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2883 = _temp_2884  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2890 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2889 = *_temp_2890  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2889 > 0 then goto _Label_2888		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2888
!	jmp	_Label_2887
_Label_2887:
! THEN...
	mov	2441,r13		! source line 2441
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0SE",r10
!   _temp_2891 = &fcbFreeList
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
	mov	2442,r13		! source line 2442
	mov	"\0\0SE",r10
!   _temp_2892 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2893 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2892  sizeInBytes=4
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
_Label_2888:
! END IF...
_Label_2877:
! SEND STATEMENT...
	mov	2445,r13		! source line 2445
	mov	"\0\0SE",r10
!   _temp_2894 = &fileManagerLock
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
	mov	2445,r13		! source line 2445
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
	.word	_Label_2895
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2896
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2897
	.word	12
	.word	4
	.word	_Label_2898
	.word	-12
	.word	4
	.word	_Label_2899
	.word	-16
	.word	4
	.word	_Label_2900
	.word	-20
	.word	4
	.word	_Label_2901
	.word	-24
	.word	4
	.word	_Label_2902
	.word	-28
	.word	4
	.word	_Label_2903
	.word	-32
	.word	4
	.word	_Label_2904
	.word	-36
	.word	4
	.word	_Label_2905
	.word	-40
	.word	4
	.word	_Label_2906
	.word	-44
	.word	4
	.word	_Label_2907
	.word	-48
	.word	4
	.word	_Label_2908
	.word	-52
	.word	4
	.word	_Label_2909
	.word	-56
	.word	4
	.word	_Label_2910
	.word	-60
	.word	4
	.word	_Label_2911
	.word	-64
	.word	4
	.word	_Label_2912
	.word	-68
	.word	4
	.word	_Label_2913
	.word	-72
	.word	4
	.word	_Label_2914
	.word	-76
	.word	4
	.word	_Label_2915
	.word	-80
	.word	4
	.word	_Label_2916
	.word	-84
	.word	4
	.word	_Label_2917
	.word	-88
	.word	4
	.word	_Label_2918
	.word	-92
	.word	4
	.word	_Label_2919
	.word	-96
	.word	4
	.word	_Label_2920
	.word	-100
	.word	4
	.word	_Label_2921
	.word	-104
	.word	4
	.word	0
_Label_2895:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2896:
	.ascii	"Pself\0"
	.align
_Label_2897:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2921:
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
_Label_3500:
	push	r0
	sub	r1,1,r1
	bne	_Label_3500
	mov	2450,r13		! source line 2450
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2925 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2924 = *_temp_2925  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2924) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2926 = _temp_2924 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2926 ) then goto _Label_2923		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2923
!	jmp	_Label_2922
_Label_2922:
! THEN...
	mov	2456,r13		! source line 2456
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2931 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2930 = *_temp_2931  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2930) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2932 = _temp_2930 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2929 = *_temp_2932  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2929 >= 0 then goto _Label_2928		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2928
!	jmp	_Label_2927
_Label_2927:
! THEN...
	mov	2457,r13		! source line 2457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2933 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2933  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2457,r13		! source line 2457
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2928:
! ASSIGNMENT STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2935 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2934 = *_temp_2935  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2934) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2936 = _temp_2934 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2936 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2940 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2939 = *_temp_2940  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2939) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2941 = _temp_2939 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2938 = *_temp_2941  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2944 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2943 = *_temp_2944  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2943) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2945 = _temp_2943 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2942 = *_temp_2945  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2937 = _temp_2938 + _temp_2942		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2948 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2947 = *_temp_2948  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2947) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2949 = _temp_2947 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2946 = *_temp_2949  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2950 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2937  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2946  sizeInBytes=4
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
_Label_2923:
! RETURN STATEMENT...
	mov	2455,r13		! source line 2455
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
	.word	_Label_2951
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2952
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2953
	.word	12
	.word	4
	.word	_Label_2954
	.word	-12
	.word	4
	.word	_Label_2955
	.word	-16
	.word	4
	.word	_Label_2956
	.word	-20
	.word	4
	.word	_Label_2957
	.word	-24
	.word	4
	.word	_Label_2958
	.word	-28
	.word	4
	.word	_Label_2959
	.word	-32
	.word	4
	.word	_Label_2960
	.word	-36
	.word	4
	.word	_Label_2961
	.word	-40
	.word	4
	.word	_Label_2962
	.word	-44
	.word	4
	.word	_Label_2963
	.word	-48
	.word	4
	.word	_Label_2964
	.word	-52
	.word	4
	.word	_Label_2965
	.word	-56
	.word	4
	.word	_Label_2966
	.word	-60
	.word	4
	.word	_Label_2967
	.word	-64
	.word	4
	.word	_Label_2968
	.word	-68
	.word	4
	.word	_Label_2969
	.word	-72
	.word	4
	.word	_Label_2970
	.word	-76
	.word	4
	.word	_Label_2971
	.word	-80
	.word	4
	.word	_Label_2972
	.word	-84
	.word	4
	.word	_Label_2973
	.word	-88
	.word	4
	.word	_Label_2974
	.word	-92
	.word	4
	.word	_Label_2975
	.word	-96
	.word	4
	.word	_Label_2976
	.word	-100
	.word	4
	.word	_Label_2977
	.word	-104
	.word	4
	.word	_Label_2978
	.word	-108
	.word	4
	.word	0
_Label_2951:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2952:
	.ascii	"Pself\0"
	.align
_Label_2953:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2924\0"
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
_Label_3501:
	push	r0
	sub	r1,1,r1
	bne	_Label_3501
	mov	2469,r13		! source line 2469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0SE",r10
!   _temp_2979 = &fileManagerLock
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
	mov	2485,r13		! source line 2485
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2985		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2985
!   _temp_2984 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2986
_Label_2985:
!   _temp_2984 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2986:
!   if _temp_2984 then goto _Label_2983 else goto _Label_2980
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2980
	jmp	_Label_2983
_Label_2983:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2989 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2988 = *_temp_2989  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2988 == 0 then goto _Label_2990		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2990
!   _temp_2987 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2991
_Label_2990:
!   _temp_2987 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2991:
!   if _temp_2987 then goto _Label_2982 else goto _Label_2980
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2980
	jmp	_Label_2982
_Label_2982:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2994 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2993 = *_temp_2994  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2993) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2995 = _temp_2993 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2992 = *_temp_2995  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2992 >= 0 then goto _Label_2981		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2981
!	jmp	_Label_2980
_Label_2980:
! THEN...
	mov	2486,r13		! source line 2486
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2996 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2996  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2486,r13		! source line 2486
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2981:
! ASSIGNMENT STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2997 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2997  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0WH",r10
_Label_2998:
!   if numBytes <= 0 then goto _Label_3000		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3000
!	jmp	_Label_2999
_Label_2999:
	mov	2489,r13		! source line 2489
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2498,r13		! source line 2498
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
	mov	2499,r13		! source line 2499
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
	mov	2503,r13		! source line 2503
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3004 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3003 = *_temp_3004  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3003 == sector then goto _Label_3002		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3002
!	jmp	_Label_3001
_Label_3001:
! THEN...
	mov	2504,r13		! source line 2504
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3005) then goto _runtimeErrorNullPointer
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
	mov	2506,r13		! source line 2506
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3008 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3007 = *_temp_3008  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3006 = sector + _temp_3007		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3010 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3009 = *_temp_3010  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3011 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3006  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3009  sizeInBytes=4
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
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3012 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3012 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3013 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3013 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3002:
! ASSIGNMENT STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3015 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3014 = *_temp_3015  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3014 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   _temp_3016 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3016  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2513,r13		! source line 2513
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
	mov	2517,r13		! source line 2517
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2998
_Label_3000:
! SEND STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0SE",r10
!   _temp_3017 = &fileManagerLock
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
	mov	2528,r13		! source line 2528
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
	.word	_Label_3018
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3019
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3020
	.word	12
	.word	4
	.word	_Label_3021
	.word	16
	.word	4
	.word	_Label_3022
	.word	20
	.word	4
	.word	_Label_3023
	.word	24
	.word	4
	.word	_Label_3024
	.word	-16
	.word	4
	.word	_Label_3025
	.word	-20
	.word	4
	.word	_Label_3026
	.word	-24
	.word	4
	.word	_Label_3027
	.word	-28
	.word	4
	.word	_Label_3028
	.word	-32
	.word	4
	.word	_Label_3029
	.word	-36
	.word	4
	.word	_Label_3030
	.word	-40
	.word	4
	.word	_Label_3031
	.word	-44
	.word	4
	.word	_Label_3032
	.word	-48
	.word	4
	.word	_Label_3033
	.word	-52
	.word	4
	.word	_Label_3034
	.word	-56
	.word	4
	.word	_Label_3035
	.word	-60
	.word	4
	.word	_Label_3036
	.word	-64
	.word	4
	.word	_Label_3037
	.word	-68
	.word	4
	.word	_Label_3038
	.word	-72
	.word	4
	.word	_Label_3039
	.word	-76
	.word	4
	.word	_Label_3040
	.word	-80
	.word	4
	.word	_Label_3041
	.word	-84
	.word	4
	.word	_Label_3042
	.word	-88
	.word	4
	.word	_Label_3043
	.word	-92
	.word	4
	.word	_Label_3044
	.word	-96
	.word	4
	.word	_Label_3045
	.word	-100
	.word	4
	.word	_Label_3046
	.word	-104
	.word	4
	.word	_Label_3047
	.word	-9
	.word	1
	.word	_Label_3048
	.word	-10
	.word	1
	.word	_Label_3049
	.word	-108
	.word	4
	.word	_Label_3050
	.word	-112
	.word	4
	.word	_Label_3051
	.word	-116
	.word	4
	.word	_Label_3052
	.word	-120
	.word	4
	.word	_Label_3053
	.word	-124
	.word	4
	.word	_Label_3054
	.word	-128
	.word	4
	.word	0
_Label_3018:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3019:
	.ascii	"Pself\0"
	.align
_Label_3020:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3021:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3022:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3023:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3047:
	.byte	'C'
	.ascii	"_temp_2987\0"
	.align
_Label_3048:
	.byte	'C'
	.ascii	"_temp_2984\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_3050:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3051:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3052:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3053:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3054:
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
_Label_3502:
	push	r0
	sub	r1,1,r1
	bne	_Label_3502
	mov	2533,r13		! source line 2533
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0SE",r10
!   _temp_3055 = &fileManagerLock
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
	mov	2550,r13		! source line 2550
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3061		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3061
!   _temp_3060 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3062
_Label_3061:
!   _temp_3060 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3062:
!   if _temp_3060 then goto _Label_3059 else goto _Label_3056
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3056
	jmp	_Label_3059
_Label_3059:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3065 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3064 = *_temp_3065  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3064 == 0 then goto _Label_3066		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3066
!   _temp_3063 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3067
_Label_3066:
!   _temp_3063 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3067:
!   if _temp_3063 then goto _Label_3058 else goto _Label_3056
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3056
	jmp	_Label_3058
_Label_3058:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3070 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3069 = *_temp_3070  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3069) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3071 = _temp_3069 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3068 = *_temp_3071  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3068 >= 0 then goto _Label_3057		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3057
!	jmp	_Label_3056
_Label_3056:
! THEN...
	mov	2551,r13		! source line 2551
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3072 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3072  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2551,r13		! source line 2551
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3057:
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3073 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3073  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0WH",r10
_Label_3074:
!   if numBytes <= 0 then goto _Label_3076		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3076
!	jmp	_Label_3075
_Label_3075:
	mov	2554,r13		! source line 2554
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
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
	mov	2564,r13		! source line 2564
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
	mov	2568,r13		! source line 2568
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3080 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3079 = *_temp_3080  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3079 == sector then goto _Label_3078		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3078
!	jmp	_Label_3077
_Label_3077:
! THEN...
	mov	2570,r13		! source line 2570
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3081) then goto _runtimeErrorNullPointer
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
_Label_3078:
! ASSIGNMENT STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3083 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3082 = *_temp_3083  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3082 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0AS",r10
!   _temp_3084 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3084  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2573,r13		! source line 2573
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3088 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3087 = *_temp_3088  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3087 != sector then goto _Label_3086		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3086
!	jmp	_Label_3085
_Label_3085:
	jmp	_Label_3089
_Label_3086:
! ELSE...
	mov	2576,r13		! source line 2576
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3092
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3092
	jmp	_Label_3091
_Label_3092:
!   if bytesToMove != 8192 then goto _Label_3091		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3091
!	jmp	_Label_3090
_Label_3090:
	jmp	_Label_3093
_Label_3091:
! ELSE...
	mov	2580,r13		! source line 2580
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2580,r13		! source line 2580
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3096 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3095 = *_temp_3096  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3094 = sector + _temp_3095		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3098 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3097 = *_temp_3098  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3099 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3094  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3097  sizeInBytes=4
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
_Label_3093:
! END IF...
_Label_3089:
! ASSIGNMENT STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3100 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3100 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3101 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3101 = 1  (sizeInBytes=1)
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
	mov	2589,r13		! source line 2589
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3074
_Label_3076:
! SEND STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0SE",r10
!   _temp_3102 = &fileManagerLock
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
	mov	2601,r13		! source line 2601
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
	.word	_Label_3103
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3104
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3105
	.word	12
	.word	4
	.word	_Label_3106
	.word	16
	.word	4
	.word	_Label_3107
	.word	20
	.word	4
	.word	_Label_3108
	.word	24
	.word	4
	.word	_Label_3109
	.word	-16
	.word	4
	.word	_Label_3110
	.word	-20
	.word	4
	.word	_Label_3111
	.word	-24
	.word	4
	.word	_Label_3112
	.word	-28
	.word	4
	.word	_Label_3113
	.word	-32
	.word	4
	.word	_Label_3114
	.word	-36
	.word	4
	.word	_Label_3115
	.word	-40
	.word	4
	.word	_Label_3116
	.word	-44
	.word	4
	.word	_Label_3117
	.word	-48
	.word	4
	.word	_Label_3118
	.word	-52
	.word	4
	.word	_Label_3119
	.word	-56
	.word	4
	.word	_Label_3120
	.word	-60
	.word	4
	.word	_Label_3121
	.word	-64
	.word	4
	.word	_Label_3122
	.word	-68
	.word	4
	.word	_Label_3123
	.word	-72
	.word	4
	.word	_Label_3124
	.word	-76
	.word	4
	.word	_Label_3125
	.word	-80
	.word	4
	.word	_Label_3126
	.word	-84
	.word	4
	.word	_Label_3127
	.word	-88
	.word	4
	.word	_Label_3128
	.word	-92
	.word	4
	.word	_Label_3129
	.word	-96
	.word	4
	.word	_Label_3130
	.word	-100
	.word	4
	.word	_Label_3131
	.word	-104
	.word	4
	.word	_Label_3132
	.word	-108
	.word	4
	.word	_Label_3133
	.word	-112
	.word	4
	.word	_Label_3134
	.word	-9
	.word	1
	.word	_Label_3135
	.word	-10
	.word	1
	.word	_Label_3136
	.word	-116
	.word	4
	.word	_Label_3137
	.word	-120
	.word	4
	.word	_Label_3138
	.word	-124
	.word	4
	.word	_Label_3139
	.word	-128
	.word	4
	.word	_Label_3140
	.word	-132
	.word	4
	.word	_Label_3141
	.word	-136
	.word	4
	.word	0
_Label_3103:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3104:
	.ascii	"Pself\0"
	.align
_Label_3105:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3106:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3107:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3108:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3097\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3116:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3117:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3082\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3081\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3134:
	.byte	'C'
	.ascii	"_temp_3063\0"
	.align
_Label_3135:
	.byte	'C'
	.ascii	"_temp_3060\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3137:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3138:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3139:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3140:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3141:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3142
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3142:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3143
	.word	_sourceFileName
	.word	357		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3143:
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
_Label_3503:
	push	r0
	sub	r1,1,r1
	bne	_Label_3503
	mov	2637,r13		! source line 2637
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0AS",r10
	mov	2639,r13		! source line 2639
	mov	"\0\0SE",r10
!   _temp_3144 = &_P_Kernel_frameManager
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
	mov	2640,r13		! source line 2640
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2642,r13		! source line 2642
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
	.word	_Label_3145
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3146
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3147
	.word	-12
	.word	4
	.word	0
_Label_3145:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3146:
	.ascii	"Pself\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3144\0"
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
_Label_3504:
	push	r0
	sub	r1,1,r1
	bne	_Label_3504
	mov	2647,r13		! source line 2647
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3148 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3148  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2648,r13		! source line 2648
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2649,r13		! source line 2649
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3149 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3149  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2650,r13		! source line 2650
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2651,r13		! source line 2651
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3150 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3150  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2652,r13		! source line 2652
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2653,r13		! source line 2653
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3151 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3151  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2654,r13		! source line 2654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2655,r13		! source line 2655
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3152 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3152  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2656,r13		! source line 2656
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2657,r13		! source line 2657
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3153 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3153  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2658,r13		! source line 2658
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2659,r13		! source line 2659
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2660,r13		! source line 2660
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2660,r13		! source line 2660
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
	.word	_Label_3154
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3155
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3156
	.word	-12
	.word	4
	.word	_Label_3157
	.word	-16
	.word	4
	.word	_Label_3158
	.word	-20
	.word	4
	.word	_Label_3159
	.word	-24
	.word	4
	.word	_Label_3160
	.word	-28
	.word	4
	.word	_Label_3161
	.word	-32
	.word	4
	.word	0
_Label_3154:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3155:
	.ascii	"Pself\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3152\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3151\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3148\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3162
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3162:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3163
	.word	_sourceFileName
	.word	374		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3163:
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
_Label_3505:
	push	r0
	sub	r1,1,r1
	bne	_Label_3505
	mov	2671,r13		! source line 2671
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3164 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3164  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2672,r13		! source line 2672
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2673,r13		! source line 2673
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3165 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3165  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2674,r13		! source line 2674
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3167		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3167
!	jmp	_Label_3166
_Label_3166:
! THEN...
	mov	2676,r13		! source line 2676
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2676,r13		! source line 2676
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
	jmp	_Label_3168
_Label_3167:
! ELSE...
	mov	2678,r13		! source line 2678
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3169 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3169  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2678,r13		! source line 2678
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3168:
! RETURN STATEMENT...
	mov	2675,r13		! source line 2675
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
	.word	_Label_3170
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3171
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3172
	.word	-12
	.word	4
	.word	_Label_3173
	.word	-16
	.word	4
	.word	_Label_3174
	.word	-20
	.word	4
	.word	0
_Label_3170:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3171:
	.ascii	"Pself\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3169\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3164\0"
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
_Label_3506:
	push	r0
	sub	r1,1,r1
	bne	_Label_3506
	mov	2684,r13		! source line 2684
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0SE",r10
!   _temp_3175 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3176 = _temp_3175 + 4
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
	mov	2695,r13		! source line 2695
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2696,r13		! source line 2696
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
	mov	2697,r13		! source line 2697
	mov	"\0\0SE",r10
!   _temp_3177 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3178 = _temp_3177 + 4
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
	mov	2698,r13		! source line 2698
	mov	"\0\0RE",r10
	mov	2698,r13		! source line 2698
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3181 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3180  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3179  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3179  (sizeInBytes=1)
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
	.word	_Label_3182
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3183
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3184
	.word	12
	.word	4
	.word	_Label_3185
	.word	16
	.word	4
	.word	_Label_3186
	.word	-16
	.word	4
	.word	_Label_3187
	.word	-20
	.word	4
	.word	_Label_3188
	.word	-9
	.word	1
	.word	_Label_3189
	.word	-24
	.word	4
	.word	_Label_3190
	.word	-28
	.word	4
	.word	_Label_3191
	.word	-32
	.word	4
	.word	_Label_3192
	.word	-36
	.word	4
	.word	_Label_3193
	.word	-40
	.word	4
	.word	0
_Label_3182:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3183:
	.ascii	"Pself\0"
	.align
_Label_3184:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3185:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3186:
	.byte	'?'
	.ascii	"_temp_3181\0"
	.align
_Label_3187:
	.byte	'?'
	.ascii	"_temp_3180\0"
	.align
_Label_3188:
	.byte	'C'
	.ascii	"_temp_3179\0"
	.align
_Label_3189:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3190:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3191:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3192:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3193:
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
_Label_3507:
	push	r0
	sub	r1,1,r1
	bne	_Label_3507
	mov	2703,r13		! source line 2703
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0IF",r10
	mov	2708,r13		! source line 2708
	mov	"\0\0SE",r10
!   _temp_3197 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3198) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3197  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3196  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3196 then goto _Label_3195 else goto _Label_3194
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3194
	jmp	_Label_3195
_Label_3194:
! THEN...
	mov	2709,r13		! source line 2709
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3199 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3199  sizeInBytes=4
	load	[r14+-16],r1
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
_Label_3195:
! RETURN STATEMENT...
	mov	2711,r13		! source line 2711
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
	.word	_Label_3200
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3201
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3202
	.word	-16
	.word	4
	.word	_Label_3203
	.word	-20
	.word	4
	.word	_Label_3204
	.word	-24
	.word	4
	.word	_Label_3205
	.word	-9
	.word	1
	.word	_Label_3206
	.word	-28
	.word	4
	.word	0
_Label_3200:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3201:
	.ascii	"Pself\0"
	.align
_Label_3202:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3203:
	.byte	'?'
	.ascii	"_temp_3198\0"
	.align
_Label_3204:
	.byte	'?'
	.ascii	"_temp_3197\0"
	.align
_Label_3205:
	.byte	'C'
	.ascii	"_temp_3196\0"
	.align
_Label_3206:
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
_Label_3508:
	push	r0
	sub	r1,1,r1
	bne	_Label_3508
	mov	2716,r13		! source line 2716
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3210 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3209 = *_temp_3210  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3209) then goto _Label_3208
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3208
!	jmp	_Label_3207
_Label_3207:
! THEN...
	mov	2743,r13		! source line 2743
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3211 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3211  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2743,r13		! source line 2743
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3208:
! IF STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0IF",r10
	mov	2747,r13		! source line 2747
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3215) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3214  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3214 == 1112300152 then goto _Label_3213		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3213
!	jmp	_Label_3212
_Label_3212:
! THEN...
	mov	2748,r13		! source line 2748
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3216 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3216  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2748,r13		! source line 2748
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2749,r13		! source line 2749
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3213:
! ASSIGNMENT STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0AS",r10
	mov	2753,r13		! source line 2753
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3217) then goto _runtimeErrorNullPointer
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
	mov	2754,r13		! source line 2754
	mov	"\0\0AS",r10
	mov	2754,r13		! source line 2754
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3218) then goto _runtimeErrorNullPointer
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
	mov	2755,r13		! source line 2755
	mov	"\0\0AS",r10
	mov	2755,r13		! source line 2755
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3219) then goto _runtimeErrorNullPointer
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
	mov	2756,r13		! source line 2756
	mov	"\0\0AS",r10
	mov	2756,r13		! source line 2756
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3220) then goto _runtimeErrorNullPointer
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
	mov	2757,r13		! source line 2757
	mov	"\0\0AS",r10
	mov	2757,r13		! source line 2757
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3221) then goto _runtimeErrorNullPointer
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
	mov	2758,r13		! source line 2758
	mov	"\0\0AS",r10
	mov	2758,r13		! source line 2758
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3222) then goto _runtimeErrorNullPointer
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
	mov	2761,r13		! source line 2761
	mov	"\0\0IF",r10
!   _temp_3225 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3225) then goto _Label_3224
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3224
!	jmp	_Label_3223
_Label_3223:
! THEN...
	mov	2762,r13		! source line 2762
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3226 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3226  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2762,r13		! source line 2762
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3224:
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
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
	mov	2769,r13		! source line 2769
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3228
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3228
!	jmp	_Label_3227
_Label_3227:
! THEN...
	mov	2770,r13		! source line 2770
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3229 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3229  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2770,r13		! source line 2770
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3228:
! IF STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0IF",r10
!   _temp_3232 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3232) then goto _Label_3231
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3231
!	jmp	_Label_3230
_Label_3230:
! THEN...
	mov	2776,r13		! source line 2776
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3233 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3233  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2776,r13		! source line 2776
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3231:
! IF STATEMENT...
	mov	2779,r13		! source line 2779
	mov	"\0\0IF",r10
!   _temp_3236 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3236 then goto _Label_3235		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3235
!	jmp	_Label_3234
_Label_3234:
! THEN...
	mov	2780,r13		! source line 2780
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3237 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3237  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2780,r13		! source line 2780
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3235:
! ASSIGNMENT STATEMENT...
	mov	2783,r13		! source line 2783
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
	mov	2786,r13		! source line 2786
	mov	"\0\0IF",r10
!   _temp_3240 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3240) then goto _Label_3239
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3239
!	jmp	_Label_3238
_Label_3238:
! THEN...
	mov	2787,r13		! source line 2787
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3241 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3241  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2787,r13		! source line 2787
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3239:
! IF STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0IF",r10
!   _temp_3244 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3244 then goto _Label_3243		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3243
!	jmp	_Label_3242
_Label_3242:
! THEN...
	mov	2791,r13		! source line 2791
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3245 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3245  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2791,r13		! source line 2791
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3243:
! ASSIGNMENT STATEMENT...
	mov	2794,r13		! source line 2794
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
	mov	2797,r13		! source line 2797
	mov	"\0\0AS",r10
!   _temp_3248 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3247 = _temp_3248 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3246 = _temp_3247 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3246 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3250		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3250
!	jmp	_Label_3249
_Label_3249:
! THEN...
	mov	2813,r13		! source line 2813
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3251 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3251  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2813,r13		! source line 2813
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3252 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3252  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2814,r13		! source line 2814
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3253 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3253  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2815,r13		! source line 2815
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3250:
! SEND STATEMENT...
	mov	2818,r13		! source line 2818
	mov	"\0\0SE",r10
!   _temp_3254 = &_P_Kernel_frameManager
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
	mov	2824,r13		! source line 2824
	mov	"\0\0IF",r10
	mov	2824,r13		! source line 2824
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3258) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3257  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3257 == 707406378 then goto _Label_3256		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3256
!	jmp	_Label_3255
_Label_3255:
! THEN...
	mov	2825,r13		! source line 2825
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3259 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3259  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2825,r13		! source line 2825
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2826,r13		! source line 2826
	mov	"\0\0SE",r10
!   _temp_3260 = &_P_Kernel_frameManager
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
	mov	2827,r13		! source line 2827
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3256:
! ASSIGNMENT STATEMENT...
	mov	2831,r13		! source line 2831
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
	mov	2832,r13		! source line 2832
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3265 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3266 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3265  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3261:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3266 then goto _Label_3264		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3264
_Label_3262:
	mov	2832,r13		! source line 2832
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0AS",r10
	mov	2833,r13		! source line 2833
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
	mov	2836,r13		! source line 2836
	mov	"\0\0IF",r10
	mov	2836,r13		! source line 2836
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3270) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3269  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3269 then goto _Label_3268 else goto _Label_3267
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3267
	jmp	_Label_3268
_Label_3267:
! THEN...
	mov	2837,r13		! source line 2837
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3271 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3271  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2837,r13		! source line 2837
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0SE",r10
!   _temp_3272 = &_P_Kernel_frameManager
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
	mov	2839,r13		! source line 2839
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3268:
! SEND STATEMENT...
	mov	2841,r13		! source line 2841
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
	mov	2842,r13		! source line 2842
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3263:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3261
! END FOR
_Label_3264:
! IF STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0IF",r10
	mov	2846,r13		! source line 2846
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3276) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3275  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3275 == 707406378 then goto _Label_3274		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3274
!	jmp	_Label_3273
_Label_3273:
! THEN...
	mov	2847,r13		! source line 2847
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3277 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3277  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2847,r13		! source line 2847
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2848,r13		! source line 2848
	mov	"\0\0SE",r10
!   _temp_3278 = &_P_Kernel_frameManager
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
	mov	2849,r13		! source line 2849
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3274:
! FOR STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3283 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3284 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3283  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3279:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3284 then goto _Label_3282		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3282
_Label_3280:
	mov	2853,r13		! source line 2853
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2854,r13		! source line 2854
	mov	"\0\0AS",r10
	mov	2854,r13		! source line 2854
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
	mov	2857,r13		! source line 2857
	mov	"\0\0IF",r10
	mov	2857,r13		! source line 2857
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3288) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3287  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3287 then goto _Label_3286 else goto _Label_3285
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3285
	jmp	_Label_3286
_Label_3285:
! THEN...
	mov	2858,r13		! source line 2858
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3289 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3289  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2858,r13		! source line 2858
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2859,r13		! source line 2859
	mov	"\0\0SE",r10
!   _temp_3290 = &_P_Kernel_frameManager
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
	mov	2860,r13		! source line 2860
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3286:
! ASSIGNMENT STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3281:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3279
! END FOR
_Label_3282:
! IF STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0IF",r10
	mov	2866,r13		! source line 2866
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3294) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3293  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3293 == 707406378 then goto _Label_3292		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3292
!	jmp	_Label_3291
_Label_3291:
! THEN...
	mov	2867,r13		! source line 2867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3295 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3295  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2867,r13		! source line 2867
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0SE",r10
!   _temp_3296 = &_P_Kernel_frameManager
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
	mov	2869,r13		! source line 2869
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3292:
! ASSIGNMENT STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0AS",r10
	mov	2873,r13		! source line 2873
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
	mov	2877,r13		! source line 2877
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2880,r13		! source line 2880
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
	.word	_Label_3297
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3298
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3299
	.word	12
	.word	4
	.word	_Label_3300
	.word	-16
	.word	4
	.word	_Label_3301
	.word	-20
	.word	4
	.word	_Label_3302
	.word	-24
	.word	4
	.word	_Label_3303
	.word	-28
	.word	4
	.word	_Label_3304
	.word	-32
	.word	4
	.word	_Label_3305
	.word	-36
	.word	4
	.word	_Label_3306
	.word	-40
	.word	4
	.word	_Label_3307
	.word	-9
	.word	1
	.word	_Label_3308
	.word	-44
	.word	4
	.word	_Label_3309
	.word	-48
	.word	4
	.word	_Label_3310
	.word	-52
	.word	4
	.word	_Label_3311
	.word	-56
	.word	4
	.word	_Label_3312
	.word	-60
	.word	4
	.word	_Label_3313
	.word	-64
	.word	4
	.word	_Label_3314
	.word	-68
	.word	4
	.word	_Label_3315
	.word	-72
	.word	4
	.word	_Label_3316
	.word	-76
	.word	4
	.word	_Label_3317
	.word	-10
	.word	1
	.word	_Label_3318
	.word	-80
	.word	4
	.word	_Label_3319
	.word	-84
	.word	4
	.word	_Label_3320
	.word	-88
	.word	4
	.word	_Label_3321
	.word	-92
	.word	4
	.word	_Label_3322
	.word	-96
	.word	4
	.word	_Label_3323
	.word	-100
	.word	4
	.word	_Label_3324
	.word	-104
	.word	4
	.word	_Label_3325
	.word	-108
	.word	4
	.word	_Label_3326
	.word	-112
	.word	4
	.word	_Label_3327
	.word	-116
	.word	4
	.word	_Label_3328
	.word	-120
	.word	4
	.word	_Label_3329
	.word	-124
	.word	4
	.word	_Label_3330
	.word	-128
	.word	4
	.word	_Label_3331
	.word	-132
	.word	4
	.word	_Label_3332
	.word	-136
	.word	4
	.word	_Label_3333
	.word	-140
	.word	4
	.word	_Label_3334
	.word	-144
	.word	4
	.word	_Label_3335
	.word	-148
	.word	4
	.word	_Label_3336
	.word	-152
	.word	4
	.word	_Label_3337
	.word	-156
	.word	4
	.word	_Label_3338
	.word	-160
	.word	4
	.word	_Label_3339
	.word	-164
	.word	4
	.word	_Label_3340
	.word	-168
	.word	4
	.word	_Label_3341
	.word	-172
	.word	4
	.word	_Label_3342
	.word	-176
	.word	4
	.word	_Label_3343
	.word	-180
	.word	4
	.word	_Label_3344
	.word	-184
	.word	4
	.word	_Label_3345
	.word	-188
	.word	4
	.word	_Label_3346
	.word	-192
	.word	4
	.word	_Label_3347
	.word	-196
	.word	4
	.word	_Label_3348
	.word	-200
	.word	4
	.word	_Label_3349
	.word	-204
	.word	4
	.word	_Label_3350
	.word	-208
	.word	4
	.word	_Label_3351
	.word	-212
	.word	4
	.word	_Label_3352
	.word	-216
	.word	4
	.word	_Label_3353
	.word	-220
	.word	4
	.word	_Label_3354
	.word	-224
	.word	4
	.word	_Label_3355
	.word	-228
	.word	4
	.word	_Label_3356
	.word	-232
	.word	4
	.word	_Label_3357
	.word	-236
	.word	4
	.word	_Label_3358
	.word	-240
	.word	4
	.word	_Label_3359
	.word	-244
	.word	4
	.word	_Label_3360
	.word	-248
	.word	4
	.word	_Label_3361
	.word	-252
	.word	4
	.word	_Label_3362
	.word	-256
	.word	4
	.word	_Label_3363
	.word	-260
	.word	4
	.word	_Label_3364
	.word	-264
	.word	4
	.word	_Label_3365
	.word	-268
	.word	4
	.word	0
_Label_3297:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3298:
	.ascii	"Pself\0"
	.align
_Label_3299:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3300:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3302:
	.byte	'?'
	.ascii	"_temp_3294\0"
	.align
_Label_3303:
	.byte	'?'
	.ascii	"_temp_3293\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3288\0"
	.align
_Label_3307:
	.byte	'C'
	.ascii	"_temp_3287\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3283\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3277\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3276\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3275\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3272\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3271\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3270\0"
	.align
_Label_3317:
	.byte	'C'
	.ascii	"_temp_3269\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3265\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3260\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3259\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3258\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3248\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3244\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3241\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3353:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3354:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3355:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3356:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3357:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3358:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3359:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3360:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3361:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3362:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3363:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3364:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3365:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
