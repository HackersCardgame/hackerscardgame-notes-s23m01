P>???	?!XS?3?!??s"P>?|?	?!XP>???	?!X????!?
?L?![?*PS?E? ?!??[XPS?>? ?![Xs1PS?j? ? ?@?![X?  Error closing file handle.
????!????À????r?? ?À??? ?u?? ??s!?>?AuP>?&?	?!X? P>???	?!X????'???D?>?N?! ?>?1u
?>?t? P>???	?!X?_???>?t???PVW???V?_^X?>?N?t?P>???	?!X??+???^????>?t??????!??3?!??>?NuP>???	?!X? ?>?1u
P>?6?	?!XP>??	?!X?@P>?h?	?!XP>?C?	?!X????!? ?L?!????P>???	?!X?1??!??!8?uc?!A??A?A?A?A????1P>??	?!XP>???	?!X??V????????!P>?3?	?!X????!??L?!P>?:?	?!X????!P>?J?	?!X????!??L?!?? ?< ?Q 4??? ???? ?B ?< t?<??8 ??<1u	OO???? $?<H?  <AuO???? <N? ??</t?<-t?? ?XHP?? ?Y	? ?? ??	?t
?a	???Lu?P>?%	?	?!X????!< t$?<Qt??P>?L?	?!XP>?a?	?!X?L?!?R?!&?G???=??v"P>?p?	?!XP>???	?!X????!?&?L?!&? 5 u??& @???Č?&? ????&?>  ? t"P>???	?!XP>???	?!X????!?#?L?!&?, ????H????&; u?&? ????1?&???  t'G9?r?P>?P?	?!XP>???	?!X????!?$?L?!G????? ???1??B??&;6?w??<  u????>@??>À?t3?	D1??!r*?с? t
?? Ht?? ??????!??!8?t?? ??!?Q????!?d?N? ?!rP>???	?!X????~ ?m?N? ?!r2YQ?? uP>???	?!X????X ?? HuP>???	?!X?$??@ ?^?N? ?!rP>?z?	?!X?T??" ?.@ .P>?'?	?!XP>???	?!X???Y?W !P>??	?!X?!???????(!_?1???
???tW00???????????_?W 0??????????????_?VWPQ?1Ɋ????F?6?1??B?@)????}?  t/?6?????u???+6??@)????@)??????>@1ɉM???YX_^?Q?>1ɊF????>Y???>@??)?󤾣? ???B??)?;?v`??PSQ? >??? ?@?!Y[X????O ?? P>?h?	?!XP>?C?	?!XPSQ? >???? ?@?!Y[XP>???	?!X????!?%?L?!????1????PSQ?F??? ?!sRVW?Y?  ?!??L?!_^ZY[X??!@??@?@?@?@?? ??0?? ?? ?? ?$ ?T ?? þ????1???
???t00?  0???1???
???t00?  0???1???
???t00?  0???1?$?
???t00?  0?$?1?T?
???t00?  0?T?1???
???t00?  0????              

 RAMDISK Detection Utility
 Version 4.01

 (C) Copyright Kofi Kekessie,
     September 2002 - February 2006.

 All Rights Reserved.


$  Detects ramdrives from various manufacturers.

           [/1|-1] [/a|-a] [/n|-n]

    /1|-1  Set an environment variable for only the first drive found.
    /a|-a  Process unknown drives. Unknown ramdrive types are normally skipped.
    /n|-n  Do not set environment variables for drives. Supercedes /1 option.

 This program only recognizes RAMDRIVEs from IBM PC=DOS 5+, 
 Microsoft MS-DOS 5+, Digital Research DR-DOS 7+, in its 
 various incarnations, and Microsoft Windows 95/98/Me.

   - Press 'Q' to quit; 'spacebar' to continue -$ '/a|-a' will force processing of other drive types.

 Environment variables are set in the form RAMDn=<Drive>, as recognized.

 RAMD is always set to equal RAMD1.

 Return codes:

    0 = success
    1 = no ramdrives found. RAMD1 set to floppy A:
    2 = no ramdrives found. Cannot access floppy drive.
    4 = incorrect command line parameters, or 'Help' request.
   10 = invalid DOS version. Must be version 4 or higher.
   35 = could not find segment for command processor.
   36 = could not find end of current environment.
   37 = insufficient environment space.
   38 = scanned all of memory without finding COMSPEC segment.

$  No valid RAMDISK found. Defaulting to using default floppy A:
 Exiting with errorlevel 1.

$  Could not access default floppy. Exiting with errorlevel 2.

$  Invalid DOS version. DOS version 4 or higher is required.

$  Error! The drive number is greater than possible.

$  Error! Cannot determine segment of command processor.
 Exiting with errorlevel 35.


$  Error! Cannot find end of current environment.
 Exiting with errorlevel 36

$  Insufficient environment space. Use the "shell" statement in
 CONFIG.SYS to increase the environment by at least 256 bytes.

 No environment variables have been set.

 Exiting with errorlevel 37

$  Scanned all of memory without finding COMSPEC segment.
 Exiting with errorlevel 38

$  The unidentified drive will be ignored.
 Drive letter identification may be suspect.

$ 
 Command line parameter = '/a' or '-a' specified, so the drive
 will be processed anyway.
 Drive letter identification may be suspect.

$ 
 Command line parameter = '/n' or '-n' specified. No environment
 variables were set for any ramdrives that were found.

$ 
 Command line parameter = '/1' or '-1' specified. An environment
 variable was set only for the first valid ramdrive found.

$  Setting environment variable for ramdrive number    ==> @:

$  Setting RAMD equal to the first found ramdrive so that RAMD=RAMD1

$  First ramdrive is A:

$ VDISK RAMDRIVE MS-RAMDR.IVE  Found a DR-DOS ramdrive.$ Found an MS-DOS ramdrive.$ Found a PC-DOS ramdrive.$ Found a Windows 95/98/Me ramdrive.$ Found an unidentified ramdrive.$ RAMDRIVE is drive @:
$  Drive @: responded as a potential RAMDRIVE, but its identity cannot 
 be completely determined, as its drive label is not recognized. 

 This program only recognizes RAMDRIVEs from IBM PC=DOS 5+, 
 Microsoft MS-DOS 5+, Digital Research DR-DOS 7+, in its 
 various incarnations, and Microsoft Windows 95/98/Me.

$  Total number of ramdrives identified:        

  PC-DOS ramdrives found:                     
  MS-DOS ramdrives found:                     
  Windows 95/98/Me ramdrives found:           
  DR-DOS ramdrives found:                     

  Unknown type(s) of ramdrives found:         

$                                   0123456789ABCDEF                                                            	RAMD =@: 
RAMD  =@: RAMD=@:   Return Code = 0

$   Return Code = 1

$   Return Code = 2

$   Return Code = 4                                  

$   Return Code = 10

$   Return Code = 35

$   Return Code = 36

$   Return Code = 37

$   Return Code = 38

$                                                                                                                                                                                                                                                                                                                 ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????