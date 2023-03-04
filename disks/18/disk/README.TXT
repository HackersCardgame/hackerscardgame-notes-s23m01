				 
			 README.TXT

    Release Notes for the Microsoft(R) Natural Keyboard(TM)
           and Microsoft IntelliType version 1.10

	  (C) Copyright Microsoft Corporation, 1995

This document contains late-breaking information that supplements 
the Getting Started booklet and the IntelliType Online User's Guide.

-------------------------
How to View This Document
-------------------------
This document was formatted to be read in Windows Notepad or the
MS-DOS Editor.  To print the document in either application, 
choose Print from the File menu.

******************************************************************
CONTENTS

   I.	General Notes Covering Various Operating Systems
        1.  Do Not Install on a Network Drive
	2.  Special Keyboard Drivers May Conflict with IntelliType
 	3.  Using MS-DOS Disk Caching Software During Setup
	4.  Running IntelliType on a Computer with Multiple Operating 
            Systems
	5.  Protecting Your Keyboard Adapter
	6.  Using a Nonstandard BIOS
	7.  Connecting an Input Device to a Laptop During a Power Save
 	8.  Starting Task Manager Using the Windows Logo Keys
 	9.  Using Mouse Keys with the PointerWrap Feature
	10. Using IntelliType with the TI 710 Chip
	11. Starting Your Computer from a Floppy Disk
	12. Using the Numeric Keypad to Draw in Microsoft Paintbrush
	13. Using Increased Security in Microsoft Mail
	14. If Keyboard Sounds Begin Repeating
	15. Disabling the SnapTo Feature if You Use CorelDRAW
	16. The Vanish Feature Does Not Function in Spreadsheet 
            Applications

  II.	Notes For Windows 95 Users
	1.  Running IntelliType Without the Microsoft Natural Keyboard
	2.  Running IntelliType on a Computer with Multiple User Profiles
	3.  Some Keyboard Tabs Are Part of the Operating System
	4.  If You Have a Sound Card, Do Not Select the System Speaker
            Option
	5.  Hiding the Taskbar when Using the PointerWrap Feature
	6.  IntelliType's Num Lock Setting May Conflict with CMOS setting

 III.	Notes For Windows 3.1x Users
	1.  Disabling the CAPS LOCK Key in an MS-DOS Window
	2.  Task Manager May Not Launch When Memory is Low
	3.  Replacing Task Manager with Task List

  IV.   Notes for Windows NT(TM) Users
	1.  IntelliType Only Supports x86 Operating Systems
	2.  Opening the Windows NT Task List
	3.  Closing IntelliType from Task Manager

   V.	Notes for MS-DOS-Only Users
	Using Command-Line Options in MS-DOS
 
  VI.   Regulatory Information
	1.  United States Radio and TV Interference Regulations
	2.  Canadian Interference-Causing Equipment Regulations
  
 
========================================================
Part I: General Notes Covering Various Operating Systems
========================================================

1.  Do Not Install on a Network Drive
 
    Installing IntelliType on a network drive is not supported.  
    Users with IntelliType version 1.0 installed on a network drive 
    will not be able to perform an upgrade to that drive.


2.  Special Keyboard Drivers May Conflict With IntelliType

    When you install IntelliType on Windows 3.1x or Windows NT, 
    Setup replaces your current keyboard driver with the Microsoft
    Natural Keyboard driver, which includes support for the three 
    additional keys.  Because of this, you may encounter problems 
    with software that requires specialized keyboard drivers, 
    including remote control software, such as pcANYWHERE and 
    Carbon Copy, and various language versions of the Windows 
    operating system, such as Arabic, Greek, and Hebrew.

    You can use remote control software with the Microsoft Natural
    Keyboard, but not with the IntelliType software.  To use the
    remote control software, uninstall IntelliType (see the IntelliType 
    Online User's Guide if you are unsure how to uninstall).  Then 
    reinstall the remote control software to reset the keyboard driver.

    If you are using a language version of Windows that requires a special 
    keyboard driver, you can use the Microsoft Natural Keyboard 
    as a standard 101/102AT keyboard.  If you uninstall IntelliType, 
    the keyboard driver provided by your operating system is restored.

    NOTE: This section does not apply to Windows 95, as IntelliType does
    not add keyboard drivers when you install on Windows 95.

    
3.  Using MS-DOS-based Disk Caching Software During Setup

    If you use MS-DOS-based disk cache software other than Microsoft 
    SMARTDrive, do not choose the Restart command after completing setup.
    Instead choose Exit, then exit Windows and restart your computer 
    manually.  Some MS-DOS-based disk caching programs use a write-behind 
    caching technique.  If the cache isn't flushed before restarting your 
    computer, disk errors could occur.

    Alternatively, you could temporarily disable your disk caching 
    software by 'REMing' it out in your AUTOEXEC.BAT file, then 
    re-enable it once you have installed IntelliType.


4.  Running IntelliType on a Computer with Multiple Operating Systems

    If you have installed Windows NT and Windows 95 on the same computer
    and IntelliType is installed on both operating systems, uninstalling 
    IntelliType from one operating system may remove files that are used
    by IntelliType on the other operating system.  If you encounter
    problems with IntelliType on the second operating system, reinstall
    it on that system.


5.  Protecting Your Keyboard Adapter

    Be sure to provide ample space between your computer and the wall
    behind it to avoid undue pressure on any adapter plugged into the
    back of the computer.  If an adapter (such as the PS/2 to 5-pin 
    adapter for the Microsoft Natural Keyboard) is subjected to 
    extra pressure, it can cause permanent damage to the computer's 
    motherboard when you turn on the computer.  Never remove or plug in 
    any device while the computer is on.  Turn the computer off, install
    the device, and then turn the computer back on.


6.  Using a Nonstandard BIOS

    Nonstandard brands of BIOS may conflict with the Microsoft Natural
    Keyboard, causing errors and possible system failure at startup.  
    If this happens, you might need to install another brand of BIOS.  
    Common system BIOS manufacturers include AMI and Phoenix.  Contact 
    your BIOS manufacturer or computer dealer if you have problems 
    starting your machine after installation of the Microsoft Natural 
    Keyboard.


7.  Connecting an Input Device to a Laptop During a Power Save

    Many laptop computers save power by turning off mouse and keyboard
    ports after the computer has gone unused for a specified period of 
    time.  If your input device (mouse or keyboard) doesn't work after 
    the computer has been in sleep mode, refer to power-saving options 
    in the documentation for your computer.


8.  Starting Task Manager Using the Windows Logo Keys

    Under Windows 3.1x and Windows NT, IntelliType assigns the Windows
    logo keys to launch Task Manager.  Some shell programs change the 
    functionality of the Windows logo keys or don't recognize them 
    at all.  In these cases, press CTRL+ESC or double-click on the 
    desktop to launch Task Manager or, in Windows NT, the Task List.


9.  Using Mouse Keys with the PointerWrap Feature

    If you have enabled both the PointerWrap and Mouse Keys features,
    the pointer may become 'stuck' at the edges of the screen when
    you hold down the arrow keys for an extended time.  If this 
    happens, on the Mouse Keys tab, adjust Pointer Top Speed to 
    a slower setting.  PointerWrap is available in Windows 95 and 
    Windows 3.1x only.  In Windows 95, Mouse Keys is one of the 
    Accessibility Options on the Control Panel.


10. Using IntelliType with the TI 710 Chip

    IntelliType supports the 8042 port used in most laptops.  However, 
    installing IntelliType on a Texas Instrument laptop that uses 
    the 710 chip can cause problems.  In particular, if you are running 
    Windows NT, the mouse won't work.


11. Starting Your Computer from a Floppy Disk

    When you install IntelliType, Setup modifies the
    AUTOEXEC.BAT file located on your hard disk, (typically on 
    drive C:).  If you start Microsoft Windows from a floppy disk, 
    manually copy the two lines of information that were added to 
    the AUTOEXEC.BAT file on your hard disk to the AUTOEXEC.BAT file 
    located on the floppy disk.  The two lines you must copy are:

  	 SET MSINPUT=C:\MSINPUT
 	 C:\MSINPUT\KEYBOARD\ITYPE.EXE /S

    (The destination directory will be different if you installed
    IntelliType in a different directory.)


12. Using the Numeric Keypad to Draw in Microsoft Paintbrush

    If you enable the Mouse Keys feature on the Mouse Keys tab, you 
    can use the numeric keypad to draw in Microsoft Paintbrush.  To  
    draw (or erase), press the 0 key on the keypad.  That puts you 
    in draw mode.  To return to normal mode, press the period key on
    the keypad.

    IMPORTANT: If you are working in Paintbrush and using the numeric
    keypad, return to normal mode before opening Task Manager.
    If you open Task Manager while in draw mode, your system may
    stop responding and you'll have to restart Paintbrush.


13. Using Increased Security in Microsoft Mail

    Microsoft Mail enables you to increase the security of your e-mail
    by requiring a password when you restore Mail from a minimized icon.  
    However, if you have set this security feature, you cannot use
    Task Manager to switch to Microsoft Mail when it is minimized.
    Instead, press ALT+TAB or double-click the Mail icon.


14. If Keyboard Sounds Begin Repeating

    If you have assigned a sound to your keyboard, and the sound repeats
    continually after you press a key, there may be an interrupt (IRQ)
    conflict.  To resolve the problem, you can either turn off the 
    sound (select Sounds Off on the Options tab) or change your sound 
    card IRQ setting.


15. Disabling the SnapTo Feature if You Use CorelDRAW

    If you use the Zoom In feature in CorelDRAW, be sure to disable
    the SnapTo feature on the Pointer Activity tab.  Zoom In does not 
    work if SnapTo is enabled.


16. The Vanish Feature Does Not Function in Spreadsheet Applications

    The Vanish feature does not hide the pointer in spreadsheet 
    applications.


===================================
Part II. Notes for Windows 95 Users
===================================

1.  Running IntelliType Without the Microsoft Natural Keyboard

    The IntelliType software is designed to work with the Microsoft
    Natural Keyboard.  If you install IntelliType under Windows 95, 
    but connect a different keyboard to your computer, some IntelliType 
    features may not be available.


2.  Running IntelliType on a Computer with Multiple User Profiles

    Uninstalling IntelliType under Windows 95 is not recommended 
    when user profiles are enabled on the system.  Uninstalling can
    result in instability and invalid settings for other users who 
    logon to the computer.


3.  Some Keyboard Tabs Are Part of the Operating System

    Under Windows 95, the Speed, Language, and General tabs are 
    a standard part of the Windows 95 operating system and are not part 
    of IntelliType.  Only tabs with the Microsoft IntelliType logo, 
    including Pointer Activity and Options, are installed by IntelliType.


4.  If You Have a Sound Card, Do Not Select the System Speaker Option

    If you have a sound card, the Sounds option "System Speaker" will
    not make a sound when you press a key on your keyboard.  Choose one
    of the other Sounds options.  The System Speaker option is intended
    for computers without sound cards.


5.  Hiding the Taskbar when Using the PointerWrap Feature

    When using PointerWrap in conjunction with the Windows 95 setting 
    to hide the Taskbar, it may be difficult to grab the Taskbar's 
    border.  If this happens, display the Taskbar by pressing the 
    Windows logo key, pointing to Settings on the Start menu, and 
    then clicking Taskbar.  Clear the Auto hide check box.


6.  IntelliType's Num Lock Setting May Conflict with CMOS Setting

    If you use your CMOS settings to automatically turn on or off 
    Num Lock when you start your computer, the Num Lock setting in
    IntelliType may not function correctly.  If you notice that 
    Num Lock is incorrectly set when you start your computer, 
    check your CMOS settings and turn off Num Lock.


======================================
Part III. Notes for Windows 3.1x Users
======================================

1.  Disabling the CAPS LOCK Key in an MS-DOS Window

    In Microsoft Windows 3.1x, the Disable Caps Lock feature on the 
    Options tab does not disable the CAPS LOCK key when you are 
    working in an MS-DOS window.


2.  Task Manager May Not Launch When Memory is Low

    If you attempt to launch Task Manager and nothing happens, close 
    one or more applications to free up memory, then try again.


3.  Replacing Task Manager with Task List

    When you install IntelliType on Windows 3.1x, the default Task List 
    is replaced by Task Manager. If you want to use the Task List, 
    follow this procedure:

    1. Find the line in the [boot] section of the SYSTEM.INI file 
       (located in your Windows directory) that reads:
  
 	  taskman.exe=tasksw16.exe

    2. Edit the line to read:

	  taskman.exe=taskman.exe


====================================
Part IV. Notes for Windows NT Users
====================================

1.  IntelliType Only Supports x86 Operating Systems

    This version of IntelliType only supports Intel-compatible x86 
    operating systems.  You cannot install IntelliType on another
    operating system, such as MIPS or Alpha.  However, you can use
    the Microsoft Natural Keyboard with those systems, though the 
    Windows logo keys and the Application key may not be supported.


2.  Opening the Windows NT Task List

    To open the Microsoft Windows NT Task List, press CTRL+ESC or
    double-click on the desktop. If you want to open Task Manager
    instead, press the left or right Windows logo key.  However, 
    you can't open Task Manager from an MS-DOS window.


3.  Closing IntelliType from Task Manager

    If you are running Windows NT, do not use the End Task button 
    in Task Manager to close IntelliType.  If you do, IntelliType 
    won't work until you restart Windows.


=====================================
Part V. Notes for MS-DOS-Only Users
=====================================

    Using Command-Line Options in MS-DOS 

    If you are running IntelliType under MS-DOS, you can type the 
    following at the command prompt to see a list of available 
    command-line options:

	   itype.exe /?


===============================
Part VI. Regulatory Information
===============================

1.  United States Radio and TV Interference Regulations

    This device complies with Part 15 of the U.S. Federal Communications
    Commission (FCC) Rules.  Operation is subject to the following 
    conditions: (1) this device may not cause harmful interference, and 
    (2) this device must accept any interference received, including 
    interference that may cause undesired operation.

    The Microsoft hardware device(s) which accompanies this software can 
    radiate radio frequency (RF) energy.  If not installed and used in 
    strict accordance with the instructions given in the printed 
    documentation, the device may cause harmful interference with radio
    and TV reception.  Any cable that is connected to the device must be
    a shielded cable that is properly grounded.

    Your Microsoft hardware device has been tested, and it complies with 
    the limits for a Class B computing device in accordance with the 
    specifications in Part 15 of the U.S. Federal Communications 
    Commission (FCC) rules.  These limits are designed to provide 
    reasonable protection against harmful RF interference in a residential 
    installation.  There is, however, no guarantee that RF interference 
    will not occur in a particular installation.

    To determine if your hardware device is causing interference, 
    disconnect the device from your computer.  If the interference stops, 
    it was probably caused by the device.  If the interference continues 
    after you disconnect the hardware device, turn the computer off and 
    then on again.  If the interference stopped when the computer was off, 
    check to see if one of the input/output (I/O) devices or one of the 
    computer's internal accessory boards is causing the problem.  
    Disconnect the I/O devices one at a time and see if the interference 
    stops.

    If your computer does cause interference, try the following measures 
    to correct it:

    *  Relocate the radio or TV antenna until the interference stops.
    *  Move the computer farther away from the radio or TV, or move it to 
       one side or the other of the radio or TV.
    *  Plug the computer into a different power outlet so that the 
       computer and radio or TV are on different circuits controlled by 
       different circuit breakers or fuses.
    *  If necessary, ask your computer dealer or an experienced radio-TV 
       technician for more suggestions.  You may find helpful information 
       in the booklet "The Interference Handbook" (1993), published by the 
       FCC.  The booklet is available from the U.S. Government Printing 
       Office, Washington, D.C. 20402.  The stock number is 004-000-00493-1.

    NOTE:  Any changes or modifications not expressly approved by Microsoft 
    could void the user's authority to operate this device.


2.  Canadian Interference-Causing Equipment Regulations

    This Class B digital apparatus meets all requirements of the Canadian 
    Interference-Causing Equipment Regulations.

    Cet appareil numérique de la classe B respecte toutes les exigences 
    du réglement sur le matériel brouilleur du Canada.


