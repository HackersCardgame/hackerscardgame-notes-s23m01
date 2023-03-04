======================================================================
Norton Ghost 5.1c SP1                                       README.TXT
Copyright (c) 1998 - 1999 Symantec Corporation           30 March 1999
All Rights Reserved
======================================================================
Norton Ghost 5.1c SP1 Release Notes
======================================================================

  1. Installation notes
  2. What's new in this release 
  3. Technical support contact details 

======================================================================
  1. Installation notes
======================================================================
  NOTE:
  Norton Ghost 5.1c SP1 is an update for Users of Norton Ghost version
  5.1c. If you are not currently using version 5.1c, you must upgrade 
  to Version 5.1c before using this release. Further information
  on upgrading and obtaining the latest release versions of Norton
  Ghost is included on the Symantec Technical Support website:
                http://service.symantec.com/ghost 
    
  
  1. Copy the Norton Ghost executable file (ghost.exe) into a 
     temporary directory.   

  2. Copy your Norton Ghost environment file (a file with an .ENV 
     extension) to this directory. The Norton Ghost environment file
     was created or supplied when you first installed the version of
     Norton Ghost you purchased.

  4. At the DOS prompt, enter the command line GHOST -#E=XXXXX.ENV 

     Note: If your Norton Ghost environment file is named GHOST.ENV, then 
           simply execute ghost using the command GHOST with no switches.

     Examples:

     If your ENV file is named GHOST.ENV, type:
     GHOST

     If your ENV file is named JS1234.ENV, type:
     GHOST -#E=JS1234.ENV

     If you did not get the response "Product successfully registered...",
     repeat the steps carefully. This command only needs to be 
     successfully executed once. Afterwards, you may execute GHOST 
     normally.

     If you need additional help, please contact Technical Support. 

======================================================================
  2. What's new in this release 
======================================================================
  Since Norton Ghost version 5.1c, The following changes have been 
  made:

  1) Update to IDE direct disk access
     --------------------------------
     The IDE direct disk access has been updated to resolve speed and 
     operation issues with some hard disk drives, including Maxtor
     hard disk drive models.

  2) Update to SCSI tape drive device access
     ---------------------------------------
     The SCSI tape drive device access has been updated to improve 
     operation with several high speed tape drives, including streaming
     devices and the HP DLT4000.

  3) Fix for NTFS error message "Bad Used MFT record - run chkdsk"
     -------------------------------------------------------------
     A fix has been applied to resolve the error message:
        ERROR: "Bad Used MFT record - run chkdsk"

     and abort message:
        ABORT: "(24010) Bad Used MFT record - run chkdsk"

     while cloning an NTFS partition.

     If either of these error messages were reported during a
     cloning operation, the created target is incomplete and
     should be recreated.

  4) -SLOWFILE command-line switch added
     -----------------------------------
     A new switch, -SLOWFILE has been added into the Norton Ghost 
     command-line. -SLOWFILE forces Norton Ghost to use a slower 
     alternative read and write method to access an image file. 
     This switch does not affect the disk and partition read and 
     write operations.

  5) -BUFFERSIZE=x command-line switch added
     ---------------------------------------
     A new switch, -BUFFERSIZE has been added into the Norton Ghost
     command-line. -BUFFERSIZE=x sets the Norton Ghost buffer size 
     used during reading and writing to an image file to 'x'K.  
     The buffer size, 'x', can be set from 1 to 32, with the default 
     buffer size being 32K. 
     When the -BUFFERSIZE switch is used in conjunction with the 
     -SLOWFILE switch, The buffer size may be set to any value 
     including 0, representing buffer disabled.
     This switch does not affect the disk and partition read and 
     write operations.
  
  6) Logical partition partition-type corrected on large hard disk drives
     --------------------------------------------------------------------
     The partition-type identifier assigned to the second or subsequent 
     logical partitions within an extended partition straddling the 1024 
     cylinder barrier has been altered.
     Norton Ghost version 5.1c assigned the partition-type identifier
     incorrectly, causing the second or subsequent logical partitions to 
     be inaccessible in some operating systems.

  7) Compatibility patch for Toshiba Libretto 110CT Notebook
     -------------------------------------------------------
     A patch to resolve an issue where Norton Ghost freezes while
     displaying the Image File Locator dialog box on a Toshiba Libretto 
     110CT notebook.

======================================================================
  6. Technical support contact details
======================================================================
  Symantec corporation maintains a comprehensive Technical Support web 
  site for Norton Ghost. Please point your browser to
	
	http://service.symantec.com/ghost 

  for the enhanced support options described below.

  GHOST Frequently Asked Questions (FAQ)
  --------------------------------------
  This online version of the FAQ will include the top issues for your
  version of Ghost.

  GHOST Knowledge Base
  --------------------
  Search or browse through a collection of clearly written articles 
  that can answer your technical questions and help troubleshoot 
  problems.

  The GHOST "Ask Symantec" Discussion Forum
  -----------------------------------------
  This Ghost discussion group is hosted by experienced GHOST support
  personnel and our goal will be to provide solutions within 24 hours
  of your technical posts.

  File Downloads
  --------------
  Here you can find free Ghost downloads including:
	-Latest release versions of Ghost software
	-Beta versions of Ghost software
	-Additional Utilities for Ghost
	-Latest version of the Ghost User Guide

  You can also contact our Technical Support department by phone. 
  An explanation of the phone support options are included on
  the Symantec Technical Support website for Norton Ghost. Point
  your web browser to:
                http://service.symantec.com/ghost 

======================================================================
                                END OF FILE
======================================================================
