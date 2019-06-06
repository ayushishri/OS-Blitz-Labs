  -----------------------------  DiskDriver  ---------------------------------
  --
  --  There is only one instance of this class.
  --
  class DiskDriver
    superclass Object
    fields
      DISK_STATUS_WORD_ADDRESS: ptr to int
      DISK_COMMAND_WORD_ADDRESS: ptr to int
      DISK_MEMORY_ADDRESS_REGISTER: ptr to int
      DISK_SECTOR_NUMBER_REGISTER: ptr to int
      DISK_SECTOR_COUNT_REGISTER: ptr to int
      semToSignalOnCompletion: ptr to Semaphore
      semUsedInSynchMethods: Semaphore
      diskBusy: Mutex
    methods
      Init ()
      SynchReadSector  (sectorAddr, numberOfSectors, memoryAddr: int)
      StartReadSector  (sectorAddr, numberOfSectors, memoryAddr: int,
                        whoCares: ptr to Semaphore)
      SynchWriteSector (sectorAddr, numberOfSectors, memoryAddr: int)
      StartWriteSector (sectorAddr, numberOfSectors, memoryAddr: int,
                        whoCares: ptr to Semaphore)
  endClass

  -----------------------------  FileManager  ---------------------------------

  class FileManager
    superclass Object
    fields
      fileManagerLock: Mutex
      fcbTable: array [MAX_NUMBER_OF_FILE_CONTROL_BLOCKS] of FileControlBlock
      anFCBBecameFree: Condition
      fcbFreeList: List [FileControlBlock]
      openFileTable: array [MAX_NUMBER_OF_OPEN_FILES] of OpenFile
      anOpenFileBecameFree: Condition
      openFileFreeList: List [OpenFile]
      directoryFrame: int
      serialTerminalFile: OpenFile
    methods
      Init ()
      Print ()
      FindFCB (filename: String) returns ptr to FileControlBlock  -- null if errors
      Open (filename: String) returns ptr to OpenFile             -- null if errors
      Close (open: ptr to OpenFile)
      Flush (open: ptr to OpenFile)
      SynchRead (open: ptr to OpenFile, targetAddr, bytePos, numBytes: int) returns bool
      SynchWrite (open: ptr to OpenFile, sourceAddr, bytePos, numBytes: int) returns bool
  endClass

  -----------------------------  FileControlBlock  ---------------------------------

  class FileControlBlock
    superclass Listable
    fields
      fcbID: int
      numberOfUsers: int             -- count of OpenFiles pointing here
      startingSectorOfFile: int      -- or -1 if FCB not in use
      sizeOfFileInBytes: int
      bufferPtr: int                 -- addr of a page frame
      relativeSectorInBuffer: int    -- or -1 if none
      bufferIsDirty: bool            -- Set to true when buffer is modified
    methods
      Init ()
      Print ()
    endClass

  -----------------------------  OpenFile  ---------------------------------

  class OpenFile
    superclass Listable
    fields
      kind: int                      -- FILE, TERMINAL, or PIPE
      currentPos: int                -- 0 = first byte of file
      fcb: ptr to FileControlBlock   -- null = not open
      numberOfUsers: int             -- count of Processes pointing here
    methods
      Print ()
      ReadBytes (targetAddr, numBytes: int) returns bool        -- true=All Okay
      ReadInt () returns int
      LoadExecutable (addrSpace: ptr to AddrSpace) returns int  -- -1 = problems
  endClass
