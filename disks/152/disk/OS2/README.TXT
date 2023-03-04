
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
= Adaptec 7800 Family Manager Set v3.02.2 =
=                                         =
=           README for IBM OS/2           =
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

The following information is available in this README file:

   o Supported Hardware
   o Changes From Prior Release
   o Installation Instructions
         Installing a New Driver or Updating an Existing Driver for 
             OS/2 2.1X/Warp/Server
         First-Time Installation of OS/2 2.1X/Warp/Server From Floppy 
             Diskette
         First-Time Installation of OS/2 2.1X From CD-ROM
         First-Time Installation of OS/2 Warp 3.x, 4.0 or 4.0 Server 
             From CD-ROM
   o Known Issues
   o Additional Notes
   o Command Line Options
   o Diskette Contents
   o Contacting Adaptec



=-=-=-=-=-=-=-=-=-
Supported Hardware
=-=-=-=-=-=-=-=-=-

The following Adaptec SCSI Host Adapters are supported by the 7800 FMS v3.02.2.  
The first list (Fast/Ultra Adapters) is supported by the AIC7870.ADD driver, 
while the second list (Ultra2 Adapters) is supported by the AIC78U2.ADD 
driver.

   Fast/Ultra Adapters  Description
   -------------------  -----------
   AHA-2910C            PCI-to-Fast SCSI (non-bootable)
   AHA-2915C            PCI-to-Fast SCSI (non-bootable)
   AHA-2920C            PCI-to-Fast SCSI
   AHA-2930C            PCI-to-Ultra Single-ended SCSI
   AHA-2940             PCI-to-Fast SCSI
   AHA-2940W            PCI-to-Fast and Wide Single-ended SCSI
   AHA-2940AU           PCI-to-Ultra Single-ended SCSI
   AHA-2940U            PCI-to-Ultra Single-ended SCSI
   AHA-2940U Dual       DualChannel PCI-to-Ultra Wide Internal Single-ended
                        SCSI with 50-pin external connector
   AHA-2940UW           PCI-to-Ultra Wide Single-ended SCSI
   AHA-2940UW Pro       PCI-to-Ultra Wide Single-ended SCSI (See Changes From 
                        Prior Release Section)
   AHA-2940UW Dual      DualChannel PCI-to-Ultra Wide Single-ended SCSI
                        with 68-pin external connector
                       
   AHA-2944W            PCI-to-Fast and Wide Differential SCSI
   AHA-2944UW           PCI-to-Ultra Wide Differential SCSI
 
   AHA-3940             MultiChannel PCI-to-Fast SCSI
   AHA-3940W            MultiChannel PCI-to-Fast and Wide SCSI
   AHA-3940U            MultiChannel PCI-to-Ultra SCSI
   AHA-3940UW           MultiChannel PCI-to-Ultra Wide SCSI
   AHA-3940UWD          MultiChannel PCI-to-Ultra Wide SCSI with dual
                        external VHD connectors
   AHA-3944UWD          MultiChannel PCI-to-Ultra Wide Differential SCSI
                        with dual external VHD connectors
   AHA-3940AU           MultiChannel PCI-to-Ultra SCSI
   AHA-3940AUW          MultiChannel PCI-to-Ultra Wide SCSI
   AHA-3940AUWD         MultiChannel PCI-to-Ultra Wide SCSI with dual
                        external VHD connectors
   AHA-3944AUWD         MultiChannel PCI-to-Ultra Wide Differential SCSI
                        with dual external VHD connectors

   AHA-4944W            Quad Channel PCI-to-Fast and Wide Differential SCSI
   AHA-4944UW           Quad Channel PCI-to-Ultra Wide Differential SCSI

   AIC-7850             Single-chip PCI-to-Fast SCSI
   AIC-7855             Single-chip PCI-to-Fast SCSI
   AIC-7856             Single-chip PCI-to-Fast SCSI
   AIC-7860             Single-chip PCI-to-Ultra SCSI
   AIC-7870             Single-chip PCI-to-Fast and Wide SCSI
   AIC-7880             Single-chip PCI-to-Ultra Wide SCSI
   AIC-7895             Single-chip PCI-to-MultiChannel Ultra Wide SCSI

   Ultra2 Adapters      Description
   ---------------      -----------
   AHA-2940U2 OEM       PCI-to-Ultra2 Wide LVD/Single-ended SCSI 
   AHA-2940U2B          PCI-to-Ultra2 Wide LVD SCSI
   AHA-2940U2W          PCI-to-Ultra2 Wide LVD/Single-ended SCSI
   AHA-2950U2B          64-bit PCI-to-Ultra2 Wide LVD SCSI
   AHA-3950U2B          64-bit PCI-to-MultiChannel Ultra2 Wide LVD SCSI
   AHA-3950U2D          64-bit PCI-to-MultiChannel Ultra2 Wide LVD SCSI
                        with dual external VHD connectors

   AIC-7890             Single-chip PCI-to-Ultra2 SCSI
   AIC-7891             Single-chip 64-bit PCI-to-Ultra2 SCSI
   AIC-7896             Single-chip PCI-to-MultiChannel Ultra2 SCSI
   AIC-7897             Single-chip 64-bit PCI-to-MultiChannel Ultra2 SCSI


=-=-=-=-=-=-=-=-=-=-=-=-=-=
Changes From Prior Release
=-=-=-=-=-=-=-=-=-=-=-=-=-=

This release of the Adaptec 7800 Family Manager Set v3.02.2 adds the 
following support from the previous v3.02 release:

   o Support for the AHA-2940UW Pro
       1. Adds the ability to use all three connectors at the same time
       2. Current Sensing Circuit checks for improper termination
   o Support for the AHA-3950U2D
       1. Adds two external VHD connectors instead of one wide external 
          connector


=-=-=-=-=-=-=-=-=-=-=-=-=
Installation Instructions
=-=-=-=-=-=-=-=-=-=-=-=-=

The AIC78U2.ADD Ultra2SCSI driver only supports OS/2 Warp 3.x, 4.0 and 4.0
Server. The AIC7870.ADD UltraSCSI or earlier driver also supports OS/2 version
2.1x in addition to versions 3.x, 4.0 and 4.0 Server.


Installing a New Driver or Updating an Existing Driver 
for OS/2 2.1X/Warp/Server
------------------------------------------------------

(NOTE: When installing a new host adapter, make sure it is inserted in the 
 system before installing the driver.)

  1) Open the OS/2 System Folder, then open the System Setup folder.

  2) If running OS/2 Warp 4.0, open the Install/Remove Folder.

  3) Double-click on Device Driver Install.

  4) Insert the Adaptec 7800 Family Manager Set floppy in the
     appropriate drive.

  5) Change to the directory where the driver is located.
     a) For Ultra2SCSI host adapters, the driver will be located in
        \OS2\AIC78U2 (for OS/2 Warp or Server only)
     b) For UltraSCSI or earlier host adapters, the driver will be located in
        \OS2\AIC7870
                                      
  6) a) For Ultra2SCSI host adapters,
        When you find the driver (AIC78U2.ADD), select INSTALL.
     b) For UltraSCSI or earlier host adapters,
        When you find the driver (AIC7870.ADD), select INSTALL.

  7) After the installation finishes, be sure to check the C:\ directory and 
     delete any previous versions of the AIC78U2.ADD and/or AIC7870.ADD drivers 
     before rebooting the system.  If you do not remove those drivers, OS/2 
     will load them instead of the new drivers that you have just installed.

  8) Select EXIT and reboot the computer.


You may also install the driver manually. 

For Ultra2SCSI host adapters:
Copy AIC78U2.ADD to C:\OS2\BOOT.
Add a line to your CONFIG.SYS that says BASEDEV=AIC78U2.ADD /V.
For UltraSCSI or earlier host adapters:
Copy AIC7870.ADD to C:\OS2\BOOT.
Add a line to your config.sys that says BASEDEV=AIC7870.ADD /V.


First-Time Installation of OS/2 2.1X/Warp/Server From Floppy Diskette
---------------------------------------------------------------------

(NOTE:  To install the driver, it is necessary to copy the driver from
the Adaptec 7800 Family Manager Set diskette for OS/2 on to the
OS/2 Diskette 1. However, before you can copy the driver, you must first
remove various files from the OS/2 Diskette 1, as explained in step 2 below.)

  1) Make backup copies of the Installation Diskette and Diskette 1.

  2) Delete some of the existing files on the backup copy of the OS/2
     Diskette 1 so that approximately 140 KB of disk space is available
     on the diskette. Use the following information to help you decide
     which files to delete. 

     a) If the Adaptec 7800 Family host adapter is the only Adaptec
        host adapter installed in your system, delete all other Adaptec
        drivers (aha152x.add, aha154x.add, aha164x.add, aha174x.add,
        aic7770.add, aic7870.add, and fd16-700.add).

     b) If you have an Adaptec host adapter that is not part of the 7800
        Family , delete all of the Adaptec drivers not used by that
        particular host adapter. For example, if you have an Adaptec
        AHA-1540CP host adapter installed in your computer, delete all
        Adaptec drivers except for the aha154x.add driver. 

     c) If you have deleted the suggested Adaptec drivers above, and you  
        still do not have approximately 140 KB of disk space available on 
        the diskette, delete the file: CDINST.EXE (for OS/2 Warp or Server 
        only).    

  3) If you are installing OS/2 2.1X, use the backup copies of the
     Installation Diskette and Diskette 1 to do the following:

     a) Copy OS2LDR from the Adaptec 7800 Family Manager Set 
        diskette onto the OS/2 Installation Diskette.

     b) Copy IBMINT13.I13 from the Adaptec 7800 Family Manager Set 
        diskette onto the OS/2 Diskette 1.

     (NOTE: You do not need these files when installing OS/2 Warp or 
      Server)

  4) Add the following lines to the config.sys file on OS/2 Diskette 1:

     a) For Ultra2SCSI host adapters:  
          BASEDEV=AIC78U2.ADD
          Set CopyFromFloppy=1

     b) For UltraSCSI or earlier host adapters:
          BASEDEV=AIC7870.ADD
          Set CopyFromFloppy=1
          
  5) Install OS/2 using the backup diskettes and the remainder of the 
     standard OS/2 diskettes.
     
  6) When installation has completed, reboot the system.



First-Time Installation of OS/2 2.1X From CD-ROM
------------------------------------------------

Only the AIC7870.ADD driver is supported under OS/2 2.1X . The Ultra2SCSI
AIC78U2.ADD driver is not supported under OS/2 2.1X.

(NOTE:  To install the AIC7870.ADD driver, it is necessary to copy the
driver from the Adaptec 7800 Family Manager Set diskette for OS/2 on
to the OS/2 Diskette 1. However, before you can copy the driver, you must
first remove various files from the OS/2 Diskette 1, as explained in step 
2 below.)

  1) Use diskcopy to make backup copies of all IBM OS/2 and Adaptec
     supplied diskettes. Use the backup copies as your working diskettes.

  2) Delete some of the existing files on the backup copy of the OS/2
     Diskette 1 so that approximately 140 KB of disk space is available
     on the diskette. Use the following information to help you decide
     which files to delete. 

     a) If the Adaptec 7800 Family host adapter is the only Adaptec host
        adapter installed in your system, delete all other Adaptec drivers
        (aha152x.add, aha154x.add, aha164x.add, aha174x.add, aic7770.add
        and fd16-700.add).

     b) If you have an Adaptec host adapter that is not part of the 7800
        Family, delete all of the Adaptec drivers not used by that
        particular host adapter. For example, if you have an Adaptec
        AHA-1540CP host adapter installed in your computer, delete all
        Adaptec drivers except for the aha154x.add driver. 

  3) Copy the OS2LDR file from the Adaptec 7800 Family Manager Set  
     diskette (i.e., \OS2\AIC7870\OS2LDR) onto the OS/2 installation
     diskette. This overwrites the existing OS/2 loader on the diskette.

  4) Copy the IBMINT13.I13 driver from the Adaptec 7800 Family Manager Set 
     diskette (i.e.,\OS2\AIC7870\IBMINT13.I13) onto the OS/2 
     Diskette 1. This overwrites any existing version of the driver 
     included on Diskette 1.

  5) Copy the AIC7870.ADD driver from the Adaptec 7800 Family Manager Set 
     diskette (i.e., \OS2\AIC7870\AIC7870.ADD) onto the OS/2
     Diskette 1. This overwrites any existing version of the driver 
     included on Diskette 1.

  6) Modify the CONFIG.SYS file on Diskette 1 to include the following
     line:

          BASEDEV=AIC7870.ADD

  7) Run the OS/2 installation program; follow the instructions in your
     OS/2 documentation.

  8) At the end of the installation process, follow the on screen instructions
     to remove the last OS/2 distribution diskette and reboot the computer.
     If the computer fails to boot up, and locks up while displaying the OS/2
     logo screen, you may use one of the following options to get to the 
     command prompt:

     a) If you installed OS/2 using the FAT Filesystem, boot up MS-DOS 
        to get to the command prompt.

     b) If you installed OS/2 using the HPFS Filesystem, insert the 
        Installation Diskette and boot up the computer from this diskette.
        When the IBM screen is displayed, remove the Installation diskette
        and insert Diskette 1 as instructed to do so. After a while, a screen 
        will be displayed asking which installation method you wish to choose.
        At this point, press the F3 key to get to the command prompt.

     Once you get to the command prompt, change to the drive where the OS/2 
     system files are located (usually Drive C:).  You may now use a text
     editor to again modify the OS/2 CONFIG.SYS file on the hard drive to add
     the /!PCIHW switch to the BASEDEV=AIC7870.ADD line. OS/2 should then
     boot normally from the hard disk.

  9) After the computer has restarted, OS/2 displays a screen. You have the
     option to view online information while the OS/2 desktop is building.
     Allow OS/2 to finish building, and follow the on screen instructions to
     restart the computer. Again, if the computer fails to boot up, and locks
     up while displaying the OS/2 logo screen, repeat the process specified
     in step 8 to correct the problem.

(NOTE:  The CONFIG.SYS, IBMINT13.I13, and OS2LDR files may be overwritten
by equivalent files from the CD-ROM. If this occurs, follow step 8 above
to recover those files.)


First-Time Installation of OS/2 Warp 3.x, 4.0 or 4.0 Server From CD-ROM
-----------------------------------------------------------------------

(NOTE:  To install the driver, it is necessary to copy the driver from
the Adaptec 7800 Family Manager Set diskette for OS/2 on to the
OS/2 Diskette 1. However, before you can copy the driver, you must first
remove various files from the OS/2 Diskette 1, as explained in step 2 below.)

  1) Type CDINST from CD-ROM drive to create the boot diskettes from OS/2
     CD.

  2) Delete some of the existing files on the OS/2 Diskette 1 so that 
     approximately 140 KB of disk space is available on the diskette. 
     Use the following information to help you decide which files to delete. 

     a) If the Adaptec 7800 Family host adapter is the only Adaptec host
        adapter installed in your system, delete all other Adaptec drivers
        (aha152x.add, aha154x.add, aha164x.add, aha174x.add, aic7770.add,
        and fd16-700.add).

        (NOTE: If you are installing the Ultra2SCSI host adapter, delete 
         the AIC7870.add driver as well.)

     b) If you have an Adaptec host adapter that is not part of the 7800
        Family, delete all of the Adaptec drivers not used by that
        particular host adapter. For example, if you have an Adaptec
        AHA-1540CP host adapter installed in your computer, delete all
        Adaptec drivers except for the aha154x.add driver. 

     c) If you have deleted the suggested Adaptec drivers above, and you 
        still do not have approximately 140 KB of disk space available on 
        the diskette, delete the file: CDINST.EXE. 

        ***************************************************************
        Note:  The following files MUST NOT BE DELETED from Diskette 1:
          CLOCK01.SYS 
          CLOCK02.SYS 
          IBM1S506.ADD  
          IBM1FLPY.ADD  
          IBM2FLPY.ADD 
          IBM2ADSK.ADD 
          IBM2SCSI.ADD  
          IBMINT13.I13  
          IBMKBD.SYS  
          KBDBASE.SYS  
          OS2LOGO  
          OS2DASD.DMD   
          PNP.SYS   
          RESERVE.SYS  
          RESOURCE.SYS 
          SCREEN01.SYS  
          SCREEN02.SYS  
          XDFLOPPY.FLT
          *.SNP   (all files with the extension of SNP)
        ****************************************************************
 
  3) Copy the driver from the Adaptec 7800 Family Manager Set diskette for
     OS/2 onto the OS/2 Diskette 1.
     a) For Ultra2SCSI host adapters, the driver (AIC78U2.ADD) will be
        located in \OS2\AIC78U2 directory.
     b) For UltraSCSI or earlier host adapters, the driver (AIC7870.ADD)
        will be located in \OS2\AIC7870 directory.
     
  4) For each driver removed from the OS/2 Diskette 1, remove its 
     corresponding line in the config.sys file (also on OS/2 Diskette 1).
     
     For example, if you deleted all Adaptec drivers, as explained in step 
     2a, above, remove the following lines from config.sys:
     
        rem basedev=aha152x.add
        rem basedev=aha154x.add
        rem basedev=aha164x.add
        rem basedev=aha174x.add
        rem basedev=aic7770.add
        rem basedev=fd16-700.add

     (NOTE: If you are installing the Ultra2SCSI host adapter, then
      remove the basedev=aic7870.add statement as well.)
  
  5) In the config.sys file on OS/2 Diskette 1, add the line
     "set copyfromfloppy=1".
  
     This line should be added so that the install process copies the 
     AIC78U2.ADD or AIC7870.ADD driver from the OS/2 Diskette 1, rather 
     than the driver included on the OS/2 CD-ROM.
     
     (NOTE: a. For Ultra2SCSI host adapters, Add "BASEDEV=aic78U2.add" to
     the top line of config.sys on OS/2 Diskette 1. This may result in
     two "BASEDEV=aic78U2.add" statements in the config.sys file.
     b. For UltraSCSI or earlier host adapters, add "BASEDEV=aic7870.add" 
     to the top line of config.sys on OS/2 Diskette 1.  This will result 
     in two "BASEDEV=aic7870.add" statements in the config.sys file.)

  6) Run the OS/2 installation program; follow the instructions in your 
     OS/2 documentation, until you reach the System Configuration window.
  
  7) In the System Configuration window, click the SCSI Adapter Support 
     icon.
  
  8) Deselect any highlighted adapters (including the Adaptec 294x, 394x, 
     AIC7870 PCI SCSI), and click OK.  The text box for SCSI Adapter 
     Support should say "None".
     
     (NOTE: If these adapters are not deselected, the driver included on
     the CD-ROM will be copied over the driver being installed.)
 
  9) Follow the instructions in your OS/2 documentation to complete the 
     installation.
  
(NOTE:  After installation is complete, verify that only one 
"BASEDEV=aic78U2.add" or "BASEDEV=aic7870.add" statement exists in your 
config.sys file on your hard drive.  Remove other instances if more than 
one is found.)

NOTE:  There is also another procedure posted on the IBM web site that 
does not require the "SET COPYFROMFLOPPY=1" flag in CONFIG.SYS.

    http://service.software.ibm.com/os2ddpak/html/

(Go to above URL, select OS/2 Component Updates
                         Installation Diskette Updates
                         Adaptec 7870 Hardfile Controller Support)



=-=-=-=-=-=-
Known Issues
=-=-=-=-=-=-

o  This version of the Adaptec 7800 Family Manager Set driver added
   a new switch named /!PCIHW which enables the driver to skip accessing
   the PCI hardware registers directly, and use PCI BIOS instead. This
   switch could be useful for users having problems loading the driver
   included with OS/2 Warp or Server. Modify the CONFIG.SYS file to include
   the following line:
                        
   a. For Ultra2SCSI host adapters:
         BASEDEV=AIC78U2.ADD /!PCIHW
   b. For UltraSCSI or earlier host adapters:
         BASEDEV=AIC7870.ADD /!PCIHW

o  Intel Errata #8511 lists known data integrity issues with the 
   processor cache on the Saturn-1 chipset (82424TX).  For this reason,
   Adaptec recommends that processor cache be disabled via the CMOS 
   setup to avoid data corruption.  For more information, see Intel 
   Errata #8511.  You may get this from Intel's FaxBack system at 
   800.628.2283 or 916.356.3105.
                    
o  There are installation problems when installing on the maximum hard 
   disk drive partition size supported by OS/2 v3.0. On OS/2 v3.0 it is 
   a known problem. Refer to IBM for further info. IBM's APARs PJ15988 
   and PJ 6151 deal with this issue.

o  There are known installation problems installing OS/2 Warp v4.0 on a 
   Micron (LSI chipset) 64 bit PCI system.

o  There are known installation problems installing OS/2 Warp with 8MB 
   of RAM unless all the third-party basedev statements are removed from 
   config.sys.

o  There are known installation problems installing OS/2 using two SCSI 
   host adapters on Marl mother board.

o  Whenever you have a LVD HDD on one Ultra2SCSI host adapter and a HDD,
   CD-ROM, and removable Syjet on another UltraSCSI host adapter, Syjet 
   conflicts with the CD-ROM and the system is unable to access the 
   CD-ROM.
  

=-=-=-=-=-=-=-=-
Additional Notes
=-=-=-=-=-=-=-=-

o  This version of the Adaptec 7800 Family Manager Set driver supports
   the AIC-7800 Family of Host Adapters.  Adapter numbers are first 
   assigned to boards with their BIOS enabled.  The numbers are assigned from 
   lowest BIOS address to highest address.  Any remaining boards are assigned
   numbers by scanning slots.  Each slot is a combination of a bus number
   and a device number pair starting from lowest to highest numbers, and the
   adapters are assigned a number in the order they are found.
   
      Example: Bus 0, device 0 assigned as adapter 0,
               Bus 1, device 1 assigned as adapter 1, etc.
   
o  On some PCI systems, users may sometimes have problems loading the
   driver when the host adapter board is seated in a particular slot.
   Moving the host adapter board to another slot may solve the problem. If
   the problem still persists, it may be occurring because the Adaptec 7800
   Family Manager Set driver is unable to access the PCI hardware
   registers directly. To overcome this, users should use the /!PCIHW
   switch. Modify the CONFIG.SYS file to include the following line:

   a. For Ultra2SCSI host adapters:
         BASEDEV=AIC78U2.ADD /!PCIHW
   b. For UltraSCSI or earlier host adapters:
         BASEDEV=AIC7870.ADD /!PCIHW

o  There are no switches for controlling OS2ASPI.DMD directly. IBM did
   not define them in their specification and we cannot be sure that other
   host adapters will have the same switches.

o  OS2SCSI.DMD will only allocate devices when a device driver
   requests it, but this will prevent OS2ASPI from accessing it. There
   is nothing in the ASPI specification regarding device allocation so
   OS2ASPI must rely on other managers to fairly share targets. This
   should only be a problem if you have two drivers that use different
   managers and you want them both to access the same target at the same
   time.

o  Do NOT disable DASD manager access to target 0 if you are booting
   from your SCSI host adapter. This will prevent the system from booting!

o  Fault Tolerance is supported in the driver. However, ABORT and SCSI
   BUS RESET will only work for targets that are properly behaved.

o  IBM does not support installing the operating system onto magneto optical
   devices.  Additionally, OPTICAL.SYS (OS/2 V3.0) or OPTICAL.DMD (OS/2 V4.0) 
   allows magneto optical devices to be supported as though they were large
   floppy devices.  LOCKDRV.FLT allows removable media such as MO's to be
   supported as though they were fixed hard drives.

o  It is not possible to install OS/2 3.0 on drives with capacity greater
   than 8 GB, nor in a partition greater than 4 GB.  The following is the 
   suggestion from IBM on this problem:  

   Problems with large partitions and installation or booting
   --------------------------------------------------------------
   There is a BIOS restriction that installable (startable) or bootable
   partitions must be contained within the first 1024 physical cylinders 
   of the disk.  FDISK does not enforce this limitation.

   If you have installation or boot failures this could be the reason.
   Use FDISK to reduce the size of your startable or bootable partition by
   sufficient MBytes.  One way to calculate the correct size partitions to
   do the following:

   1) Edit your CONFIG.SYS and add the following parameter to the
      BASEDEV=IBM1S506.ADD line as below:
      BASEDEV=IBM1S506.ADD /V
   2) Save this change.
   3) Reboot your system.
   4) At initialization, record the far left hand column of number of 
      the Geometry information under the ACT heading.
      Example:  ACT Cyl 1027 Head 63 Sec 128
      (head x sec) /2 = bootable partition must be contained within this
      boundary in MBytes (round down)

   This is the maximum size of a bootable partition in MBytes.  Any
   bootable partition must also be contained from the beginning of the
   drive to this number of MBytes.  A bootable partition may be smaller
   than the maximum size but still must be contained within this boundary.
   
   In this example the bootable partition must be contained in the first 
   4032 MBbytes of the disk and cannot exceed a single partition size of 
   4032 MBytes within this area.  No bootable partition may extend beyond 
   the first 4032 MBytes.

   Use this information when configuring your bootable partition with FDISK.

o  OS/2 will allocate the SCSI devices as the order in CONFIG.SYS if two 
   drivers (AIC7870.ADD and AIC78U2.ADD) are loaded.

o  OS/2 will assign drive letters for SCSI devices first then IDE devices.



=-=-=-=-=-=-=-=-=-=-
Command Line Options
=-=-=-=-=-=-=-=-=-=-

OS/2 adapter device drivers (.ADD files) are normally installed 
automatically and require no further information from the user. However,
in certain situations the user may wish to modify the behavior of the 
driver to meet their specific needs.

(IMPORTANT:  Please proceed cautiously with the following information.)

The standard format for command line switches is :
 
a. For Ultra2SCSI host adapter:
   BASEDEV=AIC78U2.ADD [Universal Parameter][Adapter ID][Unit Parameter]
             {[SCSI Target ID]}
b. For UltraSCSI or earlier host adapters:
   BASEDEV=AIC7870.ADD [Universal Parameter][Adapter ID][Unit Parameter]
             {[SCSI Target ID]}

o  [Universal Parameter] - An option that applies to all adapters 
   controlled by the driver.

o  [Adapter ID] - /A:n, where n is the number (zero relative) of the
   adapter installed in the system. The adapter ID is determined when 
   the driver is loaded based on the order that adapters are 
   found in the system. (Refer to the Configuration Examples in the
   "General Unit Parameters" section below for information on how to
   use this option.)

o  [Unit Parameter] - Modifies the behavior of the selected host adapter.

o  [SCSI Target ID] - The targets to which the Unit Parameter will be
   applied. This parameter may be a single ID (d) or list of IDs (d,d,d).


Universal Parameters:
---------------------

o  /ET -- Allow embedded targets.  This parameter indicates that the ADD
      should assume that all targets have more than one logical unit (LUN)
      defined.

o  /!ET -- Do not allow embedded targets (DEFAULT). This parameter indicates
      that the ADD should assume that all targets have only one logical 
      unit (LUN) defined.

o  /V -- Load driver verbosely. This parameter will display the driver
      name as well as the version number and Adaptec copyright if the driver
      loads successfully. Information on all targets found in the system
      will also be displayed.

o  /PCIHW -- Enables driver to access PCI configuration hardware registers.
      This switch is implemented because in some PCI systems, accessing
      PCI configuration space through PCI BIOS function calls causes
      problems. This switch is enabled by default.

o  /!PCIHW -- Disables the PCIHW switch. This parameter will cause the driver
      to access the PCI configuration space through PCI BIOS function calls.

General Unit Parameters:
------------------------

o  /I -- Ignore the specified adapter. This allows another driver to
      share the adapters that the ADD would normally use.

o  /DM -- Enable DASD manager support (DEFAULT). This parameter allows
      OS2DASD.DMD to control the specified target(s) if they are 
      identified as DASD (hard disk) devices.

o  /!DM -- Disable DASD manager support. This parameter prevents
      OS2DASD.DMD from controlling the specified target(s).

o  /SM -- Enable SCSI manager support (DEFAULT). This parameter allows
      OS2SCSI.DMD to control the specified target(s) if they are 
      identified as NON-DASD SCSI devices. All SCSI hard drives 
      will be controlled by OS2DASD.DMD.

o  /!SM -- Disable SCSI manager support. This parameter prevents
      OS2SCSI.DMD from controlling the specified target(s).

o  /TAG -- Specifies the maximum number of tagged commands for all target
      devices on the host adapter (1-16).  A value of 1 disables tagged
      queuing.  The maximum number allowed is 16.  (The default is 8.)

o  /UR -- Enables reporting of under runs (DEFAULT).

o  /!UR -- Disables reporting of under runs. 


Configuration Examples:

      Example 1:

      Suppose that you had a removable hard drive as target 3 and you
      wanted to control the hard drive with an ASPI application and driver.
      Normally OS2DASD will allocate this device, treat it as a large
      floppy and prevent you from sending any SCSI commands via ASPI.

      The following command line will prevent OS2DASD.DMD from accessing
      the target and still allow OS2SCSI.DMD and OS2ASPI.DMD to share access
      to it.
      
      BASEDEV=AIC78U2.ADD /A:0 /!DM:3

      Example 2:

      Suppose that you had a multi-disk CD-ROM as target 4 on host adapter
      0 and two DASD devices as targets 1 and 5 on host adapter 1.

      The following command line will prevent OS2SCSI.DMD from accessing
      the CD-ROM and prevent OS2DASD.DMD from controlling the DASD devices.
      The driver will also search for multiple LUNs on all host adapters.

      BASEDEV=AIC7870.ADD /ET /A:0 /!SM:4 /A:1 /!DM:1,5
      

Special Unit Parameters:
------------------------

o  /TAG: -- Sets the number (1-16) of tagged commands for all target
      devices on the host adapter. A value of one disables tagged queuing.
      16 is the maximum number allowed and 8 is the default value.

o  /TAG:1 -- Disables tagged queuing for all target devices on a given
      host adapter. The driver maintains a maximum of 2 non-tagged
      commands per target internally. The driver treats all target devices
      as non-tagged devices, and sends only one command at a time per
      target to the host adapter.

      Example:

      BASEDEV=AIC78U2.ADD /A:0 /TAG:8
      will set the number of tagged commands for all target
      devices on the first host adapter to 8.



=-=-=-=-=-=-=-=-=
Diskette Contents
=-=-=-=-=-=-=-=-=

The following files are included in this diskette:
 
   o \OS2\README.TXT - Readme file for OS/2 (this file)
   o \OS2\README.HTM - HTML version of README.TXT
 
For Ultra2SCSI host adapters:

   o \OS2\AIC78U2\AIC78U2.ADD - The Adaptec Ultra2SCSI driver for the 7800 
                                Family Manager Set
   o \OS2\AIC78U2\AIC78U2.DDP - Install script used by the OS/2 Install
                                utility
   o \OS2\AIC78U2\78U2PRES.EXE - Adapter Presence Check program used by the 
                                 Install script

For UltraSCSI or earlier host adapters:

   o \OS2\AIC7870\AIC7870.ADD - The UltraSCSI Adaptec driver for the 7800 
                                Family Manager Set
   o \OS2\AIC7870\AIC7870.DDP - Install script used by the OS/2 Install
                                utility
   o \OS2\AIC7870\7870PRES.EXE - Adapter Presence Check program used by the 
                                 Install script
   o \OS2\AIC7870\IBMINT13.I13 - Used for a first time install of OS/2 2.1x
   o \OS2\AIC7870\OS2LDR - Used for a first time install of OS/2 2.1x



=-=-=-=-=-=-=-=-=-=
Contacting Adaptec
=-=-=-=-=-=-=-=-=-=

Electronic Support
------------------

Technical information, including product literature, answers to frequently 
asked questions, information on software upgrades, and other topics is 
available electronically through the following:

   o Adaptec World Wide Web (WWW) site at http://www.adaptec.com.
   o File Transfer Protocol (FTP) server at ftp.adaptec.com.
   o To submit your electronic mail message to Adaptec Technical Support 
     use the product support information Webmail form at 
     http://www.adaptec.com/support/webmail.html. 
   o Adaptec USA Bulletin Board Service (BBS) at 408-945-7727; supports up to
     28,800 bps (bits per second), 8 data bits, 1 stop bit, no parity. No
     product literature is available on the Adaptec BBS.
   o Interactive Fax System at 303-684-3400; available 23 hours a day, 7 days
     a week. The fax system is out of service 1 hour each day.


Technical and Product Support
-----------------------------

   o For electronic technical support and information about many of Adaptec's   
     other electronic support services, or to use the Adaptec Interactive 
     Support System, call 800-959-SCSI (7274) or 408-945-2550, 24 hours a day, 
     7 days a week. The system prompts you with questions regarding your 
     problem and then provides step-by-step troubleshooting instructions. 
   o To speak with a product support representative, call 408-934-SCSI (7274),
     M-F, 6:00 a.m. to 5:00 p.m., Pacific Time. After hours, on weekends, and
     on holidays, product support is also available for a fee at 800-416-8066.


Sales and Ordering Information
------------------------------

   o For sales information, call 800-442-SCSI (7274), M-F, 6:00 a.m. to
     5:00 p.m., Pacific Time, or 408-945-8600 and ask for Inside Sales, 
     M-F, 8:00 a.m. to 5:00 p.m., Pacific Time.
   o To order Adaptec software and SCSI cables, call 800-442-SCSI (7274),
     M-F, 6:00 a.m. to 5:00 p.m., Pacific Time.
   o To request additional documentation for Adaptec products, call
     800-934-2766 or 510-732-3829, M-F, 6:00 a.m. to 5:00 p.m., Pacific Time.



