
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
= Adaptec 7800 Family Manager Set v3.02.2 =
=                                         =
=        README for Novell NetWare        =
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

The following information is available in this README file:

   o Supported Hardware
   o Changes From Prior Release
   o Installation Instructions
         Installing an Ultra2 Host Adapter and NetWare v3.12 for the First Time
         Installing an Ultra2 Host Adapter and NetWare v4.xx for the First Time
         Installing the DSK Driver When Installing NetWare v3.12 for the First
            Time
         Installing an Ultra2 Host Adapter in an Existing NetWare v3.12
            Installation
         Installing the Driver in an Existing NetWare v4.xx Installation
         Loading the Driver at Server Bootup         
   o Known Issues
   o Additional Notes
   o Command Line Options
   o Diskette Contents
   o Contacting Adaptec



=-=-=-=-=-=-=-=-=-=
Supported Hardware
=-=-=-=-=-=-=-=-=-=

The following Adaptec SCSI Host Adapters are supported by the 7800 FMS v3.02.2.  
The first list (Fast/Ultra Adapters) is supported by the AIC7870.DSK driver, 
while the second list (Ultra2 Adapters) is supported by the AIC78U2.HAM 
driver.

   Fast/Ultra Adapters   Description
   -------------------   -----------
   AHA-2910C             PCI-to-Fast SCSI (non-bootable)
   AHA-2915C             PCI-to-Fast SCSI (non-bootable) 
   AHA-2920C             PCI-to-Fast SCSI
   AHA-2930C             PCI-to-Ultra Single-ended SCSI
   AHA-2940              PCI-to-Fast SCSI
   AHA-2940W             PCI-to-Fast and Wide Single-ended SCSI
   AHA-2940AU            PCI-to-Ultra Single-ended SCSI
   AHA-2940U             PCI-to-Ultra Single-ended SCSI
   AHA-2940U Dual        DualChannel PCI-to-Ultra Internal Single-ended
                         SCSI with 50-pin external connector
   AHA-2940UW            PCI-to-Ultra Wide Single-ended SCSI
   AHA-2940UW Pro        PCI-to-Ultra Wide Single-ended SCSI (See Changes From 
                         Prior Release Section)
   AHA-2940UW Dual       DualChannel PCI-to-Ultra Wide Single-ended
                         SCSI with Wide external connector
   AHA-2944W             PCI-to-Fast and Wide Differential SCSI
   AHA-2944UW            PCI-to-Ultra Wide Differential SCSI

   AHA-3940              MultiChannel PCI-to-Fast SCSI
   AHA-3940W             MultiChannel PCI-to-Fast and Wide SCSI
   AHA-3940U             MultiChannel PCI-to-Ultra SCSI
   AHA-3940UW            MultiChannel PCI-to-Ultra Wide SCSI
   AHA-3940UWD           MultiChannel PCI-to-Ultra Wide SCSI with dual
                         external VHD connectors
   AHA-3944UWD           MultiChannel PCI-to-Ultra Wide Differential SCSI
                         with dual external VHD connectors
   AHA-3940AU            MultiChannel PCI-to-Ultra SCSI
   AHA-3940AUW           MultiChannel PCI-to-Ultra Wide SCSI
   AHA-3940AUWD          MultiChannel PCI-to-Ultra Wide SCSI with dual
                         external VHD connectors
   AHA-3944AUWD          MultiChannel PCI-to-Ultra Wide Differential SCSI
                         with dual external VHD connectors

   AHA-4944W             Quad Channel PCI-to-Fast and Wide Differential SCSI
   AHA-4944UW            Quad Channel PCI-to-Ultra Wide Differential SCSI

   AIC-7850              Single-chip PCI-to-Fast SCSI
   AIC-7855              Single-chip PCI-to-Fast SCSI
   AIC-7856              Single-chip PCI-to-Fast SCSI
   AIC-7860              Single-chip PCI-to-Ultra SCSI
   AIC-7870              Single-chip PCI-to-Fast and Wide SCSI
   AIC-7880              Single-chip PCI-to-Ultra Wide SCSI
   AIC-7895              Single-chip PCI-to-MultiChannel Ultra Wide SCSI   

   Ultra2 Adapters       Description
   --------------        -----------
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


=-=-=-=-=-=-=-=-=-=-=-=-=-=
Installation Instructions
=-=-=-=-=-=-=-=-=-=-=-=-=-=

This section explains how to install the Adaptec 7800 Family Manager Set 
v3.02.2 Driver AIC7870.DSK (UltraSCSI) or AIC78U2.HAM (Ultra2SCSI) for Novell
NetWare - NetWare v3.1x, v4.0, and v4.1x.  For other installation issues, 
please refer to "http://developer.novell.com/devres/sas/certinfo.htm", and
follow the appropriate "NWPA Update Package installation instructions"
link.


Installing an Ultra2 Host Adapter and NetWare v3.12 for the First Time
----------------------------------------------------------------------

    1. Create the DOS partition and/or install DOS from the Setup diskette.
    2. Insert EZ-SCSI v4.03 (or greater) for Windows 3.1x and DOS Setup 
       diskette in drive A.
    3. Go to drive A: and type DOSINST.
    4. Install the EZ-SCSI software to access the CD-ROM.  You will need 
       a DOS version of MSCDEX.EXE and will be prompted to install the file
       if it is not in your DOS directory.
    5. Reboot your system after install.
    6. Start the NetWare 3.12 installation. 
         (i.e., D:\netware.312\english\install)
    7. After NetWare installs the DOS portion of the software, DOWN and 
       EXIT to DOS from the server prompt.
    8. Copy the AIC78U2.HAM and AIC78U2.DDI from the NETWARE directory of the
       7800 Family Manager Set diskette to the C:\server.312 directory.
    9. Obtain the NWPA_UP.EXE patch from the Novell Web site
         (http://developer.novell.com/devres/sas/certinfo.htm)
   10. Change directory to c:\server.312, and copy the patch file NWPA_UP.EXE 
       to the directory.
   11. Run NWPA_UP.EXE  (note: this will create another file, 312PTC.EXE.
       Answer Y to the prompt to overwrite CDROM.NLM.)
   12. Run 312PTC.EXE.  
   13. Create the directory c:\server.312\CDSAVE
   14. Copy CDROM.NLM to c:\server.312\CDSAVE
   15. Update the server with the following command from the DOS prompt
         [312PTC\native\loader\lswap c:\server.312\312PTC\native\loader\
          loader.exe c:\server.312\server.exe]
   16. Create the file Startup.ncf in the c:\server.312 directory using EDIT
       or a text editor with the following lines:
         load c:\server.312\312PTC\native\start\npapatch
         load c:\server.312\mmattrfx
         load c:\server.312\nbi31x
         load c:\server.312\AIC78U2
   17. Run SERVER.EXE. 
   18. Note the slot number detected for the Ultra2 adapter.  This can be
       added to the Startup.ncf load AIC78U2 statement to automate driver
       load using the parameter:
          SLOT=x  (x is the detected slot number).
   19. Load Install.  Create the NetWare partition, SYS volume, and mount the
       volume. Complete the installation of the System and Public Files.
   20. Create the Autoexec.NCF file.  Add the following lines and save
         load after311
         load c:\server.312\nwpaload
         search add 1 c:\server.312\cdsave
         load cdrom
   21. Load, from the console prompt, the following command 
         load c:\server.312\312PTC\patch312
   22. Install the patches from the c:\server.312\312PTC directory
   23. DOWN and EXIT the server
   24. Run SERVER.EXE
   25. Installation of the Ultra2 adapter for NetWare 3.12 is complete.


Installing an Ultra2 Host Adapter and NetWare v4.xx for the First Time
----------------------------------------------------------------------

Follow these instructions only if you are installing NetWare 4.0 or v4.1x 
for the first time:

    1. Begin installation of NetWare v4.0 or v4.1x on your server as
       instructed in your NetWare documentation.
    2. When a screen appears that asks you to select a disk driver, press
       INS.
    3. Insert the Adaptec 7800 Family Manager Set diskette for NetWare
       into your floppy drive.
    4. Press F3 and specify the path to the AIC78U2.HAM driver for NetWare
       (e.g., a:\netware on the diskette).
    5. Select AIC78U2.HAM and press ENTER.
    6. When "Choose the Server Driver - Disk Driver Parameters" appears,
       select "Save Parameters and Continue".
    7. When "Install addition driver" appears, select "YES" if installing 
       more than one host adapter or installing a dual-channel host adapter,
       and repeat step 5 & 6 until one driver is chosen for each host 
       adapter; otherwise, select "NO".
    8. Select "Continue with Installation" to continue the installation.
    9. You will be prompted to confirm slot option, press "Enter" to 
       select the slot number. Repeat until all slot options are loaded.
   10. Select "Continue with Installation" to complete the installation.

    (NOTE: To load the driver automatically at server bootup, make sure
    the STARTUP.NCF file includes the load command line for your host
    adapter.  See "Loading the Driver at Server Bootup", below.)


Installing the DSK Driver When Installing NetWare v3.12 for the First Time
--------------------------------------------------------------------------

Follow these instructions only if you are installing NetWare v3.1x for the 
first time:

    1. Follow the procedures in your NetWare documentation for installing a 
       new server.
    2. When you see the NetWare colon prompt (:), use the load command to 
       install the driver from the Adaptec 7800 Family Manager Set 
       diskette for NetWare.
      
       The correct syntax to load the 7800 Family driver is
      
       :load [pathname]aic7870 [options]
      
       The command line options are not case sensitive.  Placing commas 
       between command line options is optional.  See Command Line Options 
       below for possible values.
      
       (NOTE: The ASPITRAN.DSK file must reside in the same path as 
       AIC7870.DSK, because NetWare attempts to load the file automatically.)
      
       (NOTE: To load the driver automatically at server bootup, copy the 
       driver to the server's startup directory and modify the STARTUP.NCF
       file. See Installing the Driver When NetWare is Already Installed and
       Loading the Driver at Server Bootup, below)
    3. Load the NetWare install program from the NetWare colon prompt
       (:load install).  Follow the instructions in the NetWare 
       documentation to complete the installation (e.g., creating disk
       partitions, system volumes, etc.) of your server.
    

Installing the DSK Driver When Installing NetWare v4.xx for the First Time
--------------------------------------------------------------------------

Follow these instructions only if you are installing NetWare 4.0 or v4.1x 
for the first time:

    1. Begin installation of NetWare v4.0 or v4.1x on your server as 
       instructed in your NetWare documentation.
    2. When a screen appears that asks you to select a disk driver, press 
       F10.
    3. When "Choose the Server Drivers - Summary" appears, press Enter.
    4. Move highlight to "Disk and CD-ROM Drivers" and press Enter.
    5. Deselect all "AIC7870" drivers that are picked up by Netware.
    6. Highlight "Select an additional driver" and press Enter.
    7. When a screen appears that asks you to select a disk driver, press 
       Ins.
    8. Insert the Adaptec 7800 Family Manager Set diskette for NetWare 
       into your floppy drive.
    9. Press F3 and specify the path to the AIC7870.DSK driver for NetWare 
       (e.g., a:\netware\v4_xx on the diskette).
   10. Select AIC7870.DSK and press ENTER.
   11. Select "Continue installation" to complete the installation.
    
    (NOTE: To load the driver automatically at server bootup, make sure
    the STARTUP.NCF file includes the load command line for your host 
    adapter.  See "Loading the Driver at Server Bootup", below.)


Installing an Ultra2 Host Adapter in an existing NetWare v3.12 installation
---------------------------------------------------------------------------

    1. Download NWPA_UP.exe from this site:
         http://developer.novell.com/devres/sas/certinfo.htm.
    2. Copy NWPA_UP.EXE to c:\Server.312 directory.
    3. Change to that directory.
    4. Run NWPA_UP.EXE from the same directory.  Answer Y when prompted to 
       overwrite CDROM.NLM.
         (Note:  If NetWare has already been updated with the latest patch
          file, 312PTC.EXE, you will be prompted to overwrite the file.
          Answer N) 
 
    5. Delete NBI.NLM from the c:\server.312 directory.
    6. If 312PTC has not been installed previously, run 312PTC.EXE from
       the same directory.
    7. Create the directory c:\Server.312\CDSAVE
    8. Copy the CDROM.NLM to the C:\Server.312\CDSAVE
    9. Copy the AIC78U2.HAM and AIC78U2.DDI file to the C:\Server.312 
       directory from the 7800 Family Manager Set NetWare directory.
   10. Update the Server with the following command: 
         [312PTC\native\loader\lswap c:\server.312\312PTC\native\loader\
          loader.exe c:\server.312\server.exe]      
   11. From the prompt type: server 
   12. Load install
   13. Edit the STARTUP.NCF file.  Remark out "Load CDROM" statement.
   14. Enter the following lines after lines already present and save:
         load \native\start\npapatch
         load mmattrfx
         load nbi31x
         load AIC78U2

   15. Edit the  Autoexec.NCF file, add the following lines after lines 
       already present, then save the file:
         load after311
         load c:\server.312\nwpaload
         search add 1 c:\server.312\cdsave
         load cdrom

   16. At the console prompt enter the following command:
         load c:\server.312\312PTC\Patch312
   17. Install the patches from the c:\server.312\312PTC directory
   18. Down and EXIT the server.
   19. Reboot the server.  (Note:  Note the slot number prompt of the AIC78U2.
       Edit the Startup.NCF file load AIC78U2 command with the parameter 
       slot=x (x is the slot number) for autoload of the driver.)
   20. Installation complete.



Installing the Driver in an Existing NetWare v4.xx Installation 
---------------------------------------------------------------
      
To update or install the AIC7870.DSK or AIC78U2.HAM driver when NetWare v4.xx 
is already installed, follow the instructions in this section.  The procedures 
are similar for all versions of NetWare.  Procedures that are specific to a
NetWare version are noted when necessary.

    1. Make a backup copy of the old driver (if it exists) before installing 
       the new driver.
      
    2. Copy the AIC7870.DSK or AIC78U2.HAM driver from the 7800 Family Manager 
       Set diskette for NetWare into the server's startup directory 
       (e.g. c:\nwserver, c:\server.40, etc.) on your hard disk.  This 
       overwrites any existing version of the driver in the directory.
      
       (NOTE: For NetWare v4.xx, the driver file is located in the
       \netware\v4_xx directory on the diskette.)
      
    3. If necessary, modify the load command line in the STARTUP.NCF so that
       the proper path to the driver and all appropriate command line 
       options are specified.  See the "Loading the Driver at Server Bootup 
       and Command Line Options sections, below.)
      
       The correct syntax to load the 7800 Family Manager driver is:
      
       load [pathname]aic7870 [options]
       or
       load [pathname]aic78u2 [options]
      
       Command line options are not case sensitive.  Placing commas between 
       command line options is optional.  See "Command Line Options", below,
       for possible values.
      
     
Loading the Driver at Server Bootup
-----------------------------------

To automatically load the AIC7870.DSK or AIC78U2.HAM at server bootup, the 
STARTUP.NCF file (usually located in your server's startup directory) must 
contain a load command line that specifies the location of the driver and any 
appropriate command line options (see Command Line Options, below).
For additional information on the STARTUP.NCF file, refer to your NetWare
documentation.

(NOTE: To load the driver from your hard disk, the AIC7870.DSK driver and 
ASPITRAN.DSK module must be copied from the Adaptec 7800 Family Manager Set
diskette for NetWare to a directory on your hard disk [usually the
server's startup directory (e.g., c:\nwserver)]).

The correct syntax to load the driver is

    load [pathname]aic7870 [options]
    or
    load [pathname]aic78u2 [options]

For example, the command line to load the driver from the c:\nwserver 
directory, with the "verbose=" option on is

    load c:\nwserver\aic7870 verbose=y
    or
    load c:\nwserver\aic78u2 verbose=y

Command line options are not case sensitive.  Placing commas between command 
line options is optional.  See Command Line Options, below,  for possible
values.

To modify the STARTUP.NCF file, follow these steps:

(NOTE: You can also use your DOS text editor to modify the STARTUP.NCF 
file.)

    1 Type load install at the NetWare prompt and press ENTER.
    
    2 Select the appropriate menu choice that allows you to edit the 
      STARTUP.NCF file.
    
    3 Make the necessary changes.  When you are done, press ESC.



=-=-=-=-=-=-=
Known Issues
=-=-=-=-=-=-=

o  There is a known problem which occurs during the installation of Netware
   4.0X, that involves the DDI file used during the initialization of the
   host adapter device driver. The DDI file does not contain all the
   possible slot number options available on all PCI systems, as there are
   too many combinations. As a result, during the installation procedure,
   NetWare will report that it is unable to load the driver in the given
   amount of time.  This is because the DDI file does not contain any
   slot options, which causes NetWare not to load the driver. Note, however,
   that this is not an error. The user simply needs to go to the console
   screen and manually enter in the correct slot number and installation
   will continue.

o  A second known problem exists that will hang the server after loading the
   host adapter device driver. This problem involves targets that do not
   support scanning of multiple luns, with the command line option 
   lun_enable.  The user simply needs to set the command line option
   multlun_targets to only scan targets that support multiple luns.  This
   problem is known to occur with Quantum Empire 540S drives.

o  Novell recommends not using IRQ 15 for host adapters.  If your system
   bios allows the assignment of IRQs, change your adapters IRQ to a value
   other than 15.

o  On NetWare 4.11, without media in the CD-ROM drive, and using built in 
   driver support for CD-ROMs, the message "No CD-ROM Devices Registered 
   with NetWare." is reported, if "cd device list" is issued.

o  There is a known problem with some hard drives that are less than or
   equal to 1 GB. If these drives were previously formatted using the
   Adaptec 7800 Family Manager Set v2.1x driver for Netware, and are now
   being upgraded to the 7800 Family Manager Set driver, the user
   may have problems in finding the device during initialization. If 
   this occurs, use the following command line option in your STARTUP.NCF
   file:

      ext_tran=n

o  On some system configurations and during a first time installation or
   when upgrading to the 7800 Family Manager Set v3.02.2 driver, the user
   may see a window with the following warning message:

      "One or more partitions on drive 0 are inconsistent with the driver
      geometries (xxx heads, xx sectors, and xxx cylinders) that NetWare
      is using. You may continue and edit the partition anyway, although
      this inconsistency could create problems later on."

   This message is shown when the "Installation Options" window appears,
   and the user highlights and selects "Disk Options", followed by "Modify
   Disk Partitions and Hot Fix". The user should simply continue to the
   "Disk Partitions Options" window to edit the partition, and installation
   will complete successfully.

o  The AIC78U2.HAM driver will not load if older versions of the NWPA.NLM
   file have been used. To fix this problem, use the updated version of
   the NWPA.NLM file that is included in this diskette.

o  The AIC78U2.HAM driver requires a minimum of 16 MB of memory.

o  When starting a NetWare server with two Ultra2 host adapters, the 
   error message "Unbound Device Object" might appear.  Manually unloading
   and reloading the driver will fix the problem, as well as removing
   the "slot=xx" option in the STARTUP.NCF file (and then selecting the 
   default slot number(s)).  This is being addressed by Novell.

o  When loading server.exe with the ""load aic78u2.ham slot=# lun_enable""
   switch, the server locks up while scanning the LUNs.  This is
   being addressed by Novell.

o  On some SMP systems, if the IRQ setting is set to "Auto" in the 
   system's BIOS then NW 4.11 installation will hang at loading a NIC 
   driver.  This problem was tested with a Tyan P5 SMP, and it did 
   show up.  The problem did not show up on the DEC SMP system.  This is 
   being addressed by Novell.

o  Certain systems will not run Sbackup under NetWare v3.12.  NetWare 
   v4.11 runs it with no problems.  This is an issue which is 
   currently being addressed by Novell.

o  Some systems experienced problems loading NetWare when loading
   the AIC7870.DSK and ASPICD.DSK drivers after the AIC78U2.HAM 
   driver.  The workaround is to load the DSK drivers before the 
   HAM driver. 


=-=-=-=-=-=-=-=-=
Additional Notes
=-=-=-=-=-=-=-=-=

o  All of Adaptec's NetWare drivers have full support for standard
   SCSI disk drives, "NetWare Ready" drives, and removable media disk
   drives (including optical drives).

o  For NetWare patches and other latest information, reference the
   Novell website at http://developer.novell.com/cgi-bin/devnet

o  The AIC7870.DSK driver also contains a built-in ASPI manager.  This 
   allows for other NetWare Loadable Modules (NLMs) to gain access to the host 
   adapter. Given the flexibility of ASPI, several companies are currently 
   providing server-based tape backup solutions through ASPI.  SBackup is a 
   server based tape backup solution which is shipped by Novell with NetWare.
   SBackup supports the ASPI interface.  There are other ASPI modules already
   developed or under development.  A programming specification is available
   from Adaptec if you are interested in writing your own NetWare 386 ASPI
   module.

o  The AIC78U2.HAM driver also supports applications that use the ASPI
   interface to access devices on a NetWare Server, through NWASPI.CDM.
   This CDM is not included with the current release, but can be downloaded
   from http://developer.novell.com/engsup/sample/areas/smsi.htm.

o  If your file server does a lot of IO operations and you want to try
   optimizing its performance, you can adjust the "max_tags=?" command
   line switch.  This switch controls the maximum number of tagged
   commands outstanding at a given device.  Refer to your disk-drive's
   documentation to determine if tagged-queuing is supported, and the
   maximum number of outstanding commands supported. Its default value
   is 16.

   The following are examples of how to change this feature:

   For all 7800 Manager Set host adapters:
      :load aic7870 max_tags=2
   For UltraSCSI or earlier only host adapters:
      :load aic7870 tag_disable=ffff

   The first example shows how to use the max_tags command line option.
   The max_tags parameter can be set between 1 and 128.  Larger values
   give the drives more opportunity for optimization, but take up more
   memory in the server.

   For several reasons, you may want to use a lower value of max_tags.
   For some drives, maximum performance is achieved with
   a max_tags less than the maximum supported by the drive.
   Also, some drives may not support the driver's maximum count of 128,
   or may suffer starvation problems with large counts, leading to
   drive deactivation.

   The second example applies only to the AIC7870.DSK driver. It turns
   off tagged-queuing for all devices. This may be necessary for 
   starvation-prone drives.

o  The Adaptec 7800 Family Manager Set NetWare driver no longer
   supports the slot=0 command line option. For the AIC7870.DSK driver, 
   if no slot is mentioned on the command line, the driver is loaded for
   all host adapters present in the system. For the Ultra2SCSI AIC78U2.HAM
   driver, if no slot is mentioned on the command line, the driver
   prompts you for a valid slot number.


=-=-=-=-=-=-=-=-=-=-=
Command Line Options
=-=-=-=-=-=-=-=-=-=-=

(NOTE: Possible values for command line options can be enabled with ON, Y,
or 1 without distinction, or can be disabled with OFF, N, or 0.)

The following table shows driver command line options:

(NOTE: Those command line options indicated with an asterisk are specific
only for the AIC7870.DSK driver.)

OPTION              DEFINITION                 POSSIBLE       DEFAULT
                                               VALUES         VALUES
-----------------------------------------------------------------------------
auto_bus_fairness=  Enable/disable auto SCSI   OFF, ON        ON
                    bus fairness algorithm

auto_disable_tagq=  Enable/disable auto        OFF, ON        ON
                    disable tag queuing
                    algorithm

auto_flush_diskreq= Enable/disable auto disk   OFF, ON        ON
                    flush algorithm

bus_release=        Passed to HIM              ---            ---
 *

cdrom=              Indicate if CDROM          OFF (ASPI),    ON
 *                  devices are controlled by  ON (Driver)
                    driver or ASPI

dev_enable=         Bitmask which enables      Hexadecimal    FFFF (Scan
                    scanning on selected       0-FFFF         all targets)
                    targets

edge_or_level=      Determines edge or level   ---            ---
 *                  triggered interrupt

ext_tran=           Determine translation      Y              Standard, unless
 *                  method for a new drive     (Extended),    set to extended
                    in the system; extended    N (Standard)   by SCSI-Select
                    or standard

fixed_disk=         Indicate if fixed disks    OFF (ASPI),    ON
 *                  are controlled by driver   ON (Driver)
                    or ASPI

flush_diskreq=      Send occasionally          Hexadecimal    0 (Disabled for
                    ordered tags to targets    0-FFFF         all targets)

instr=              Enable/disable recording   OFF (Disable), OFF
 *                  of I/O statistics and      ON (Enable)
                    errors

int                 Required by Netware        ---            ---
 *

interrupt_level     Sets interrupt level. Used ---            ---
 *                  if PCI config space is not
                    setup correctly by BIOS

io_combine=         Maximum number of IO's     1 - 64         16
 *                  that will be combined into (1-32 for
                    one using scatter/gather    AIC7870.DSK)

lun_enable=         LUN scan enable mask       Hexadecimal    1 (Scan LUN
                    on all targets             0 - FF         0 only)

max_nontags=        Maximum number of          ---            ---
 *                  non-tagged I/Os that
                    will be active per
                    device

max_sectors=        Maximum number of          1 - 256        256
 *                  sectors that will be
                    combined using
                    scatter/gather. Max
                    value is
                    MaxRequestSize (128)
                    x IOCombine(64)

max_tags=           Maximum number of          1 - 128        16
                    tagged I/O's which will
                    be active per device

mem                 Required by NetWare        ---            ---
 *

multlun_targets=    Bitmask that enables       Hexadecimal    FFFF (LUNs
                    LUNS on selected           0 - FFFF       on all targets)
                    targets

pcimech             Selects hardware           ---            ---
 *                  mechanism to address
                    PCI registers

prompt=             Prompt all available       Y, N           N
 *                  slots to load the driver
                    on

read_after_write=   Enable write with          0 (OFF),       1
 *                  verify for writes          1 (ON)

removable=          Indicate if removable      OFF (ASPI),    ON
 *                  media is controlled        ON (Driver)
                    by driver or ASPI

start_unit=         Target id mask to send     Hexadecimal    0 (No start
 *                  start unit SCSI command    0 - FFFF       unit cmd. to
                                                              any target)

tag_disable=        Target tag queuing         Hexadecimal    0 (Enabled for
 *                  disable mask               0 - FFFF       all targets)

verbose=            Display host adapter       Y, N           N
                    settings

slot=               Obtains a physical slot    Dependent on   If none
                    number for the host        system         specified,
                    adapter                    configuration  driver loaded
                                                              for all 
                                                              available slots
                                                              (AIC78U2.HAM -
                                                              NetWare prompts
                                                              user to choose)


Bit Mask Options
----------------

Use this example to aid in calculating bit mask options hex values.  Each 
SCSI device ID 0-7 (or 0-15 for wide host adapters) is enabled by a 1 in 
its corresponding bit position.  In this example, lun_enable=05 enables 
scanning for LUNs 0 and 2 on all targets.

           Bit Position
          |-------------------------------------------------------|
SCSI ID   | 15 14 13 12 | 11 10 09 08 | 07 06 05 04 | 03 02 01 00 |
          |-------------------------------------------------------|
0, 2      |  0  0  0  0 |  0  0  0  0 |  0  0  0  0 |  0  1  0  1 |
          |-------------------------------------------------------|
Converted |             |             |             |             |
binary to |             |             |             |             |
hex:      |           0 |           0 |           0 |           5 | = 05h
          |-------------------------------------------------------|



=-=-=-=-=-=-=-=-=
Diskette Contents
=-=-=-=-=-=-=-=-=

In the \netware Directory
-------------------------

   o AIC78U2.HAM - 7800 Family of Ultra2SCSI Host Adapters Driver for
                   NetWare NWPA
   o AIC78U2.DDI - Driver definition information file for NetWare NWPA
   o NBI.NLM - File required by the NetWare Bus Interface
   o NWPA.NLM - File required by the NetWare Bus Interface
   o CDROM.NLM - File required by the NetWare Bus Interface
   o NWPALOAD.NLM - File required by the NetWare Bus Interface
   o README.TXT - Readme file for NetWare (this file)
   o README.HTM - HTML version of README.TXT


In the \netware\v3_1x Directory
-------------------------------

   o AIC7870.DSK - AIC-7870 Family of Host Adapters Driver For NetWare 386
                   v3.1x.
   o ASPITRAN.DSK - ASPI Transport Layer Manager Driver for NetWare v3.1x. 
   o ASPICD.DSK - CD-ROM Driver for NetWare v3.1x.

In the \netware\v4_xx Directory
-------------------------------

   o AIC7870.DSK - AIC-7870 Family of Host Adapters Driver For NetWare 386
                   v4.xx.
   o AIC7870.DDI - Driver definition information file for NetWare v4.xx only.
   o ASPITRAN.DSK - ASPI Transport Layer Manager Driver for NetWare v4.xx.
   o ASPITRAN.DDI - Driver definition information file for NetWare v4.xx 
                    only.
   o ASPICD.DSK - CD-ROM Driver for NetWare v4.xx.
   o ASPICD.DDI - Driver definition information file for NetWare v4.xx only.
   o NWPALOAD.NLM - File required by the NetWare Bus Interface
   o NWPA.NLM - File required by the NetWare Bus Interface
   o NBI.NLM - File required by the NetWare Bus Interface



=-=-=-=-=-=-=-=-=-=
Contacting Adaptec
=-=-=-=-=-=-=-=-=-=

Electronic Support
------------------

Technical information, including product literature, answers to commonly asked 
questions, information on software upgrades and other topics is available 
electronically through the following:

   o Adaptec World Wide Web (WWW) site at http://www.adaptec.com. 
   o File Transfer Protocol (FTP) server at ftp.adaptec.com. 
   o To submit your electronic mail message to Adaptec Technical Support
     use the product support information Webmail form at:
     http://www.adaptec.com/support/webmail.html. 
   o Adaptec USA Bulletin Board Service (BBS) at 408-945-7727; supports up 
     to 28,800 bps (bits per second), 8 data bits, 1 stop bit, no parity. 
     No product literature is available on the Adaptec BBS. 
   o Interactive Fax System at 303-684-3400; available 23 hours a day, 7 
     days a week. The fax system is out of service 1 hour each day. 


Technical and Product Support
-----------------------------

   o To speak with a product support representative, call 408-934-SCSI
     (7274), M-F, 6:00 a.m. to 5:00 p.m., Pacific Time. After hours, on
     weekends, and on holidays, product support is also available for a 
     fee at 800-416-8066.
   o For electronic technical support and information about many of 
     Adaptec's other electronic support services, or to use the Adaptec
     Interactive Support System call 800-959-SCSI (7274) or 408-945-2550,
     24 hours a day, 7 days a week.  The system prompts you with 
     questions regarding your problem and then provides step-by-step
     troubleshooting instructions.


Sales and Ordering Information
------------------------------

   o For sales information, call 800-442-SCSI (7274), M-F, 6:00 a.m. to
     5:00 p.m., Pacific Time, or 408-945-8600 and ask for Inside Sales, 
     M-F, 8:00 a.m. to 5:00 p.m., Pacific Time.
   o To order Adaptec software and SCSI cables, call 800-442-SCSI (7274),
     M-F, 6:00 a.m. to 5:00 p.m., Pacific Time.
   o To request additional documentation for Adaptec products, call
     800-934-2766 or 510-732-3829, M-F, 6:00 a.m. to 5:00 p.m., Pacific Time.

