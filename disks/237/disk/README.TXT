                     
                     High-Speed CD-ROM Drive README File

This README file contains the newest information that is not shown in the
User's Manual.  Please read the following comments carefully before starting
installation:


1. Release Note:

   A. There are two kinds of installation types: Easy Install and
      Custom Install.

   B. Easy Install relies on installation program to make decision, so
      installing Device Driver is quick and easy.

   C. Custom Install is for computer users who want to have more control
      over how Device Driver is installed.

   D. DMA and Ultra DMA Bus Master transfer mode is supported by appending 
      a software option /DMA to command line of device driver in CONFIG.SYS, 
      ex., DEVICE = C:\HXCD-ROM\CDROM.SYS /D:MSCD001 /DMA

   E. PIO mode 4 and DMA mode 2 can only work on PC or PC-compatibles with 
      Intel Triton and SIS 5120, 5598 chipsets employed. 
      It may not work in other PC systems.
   
   F. Ultra DMA mode 2 for Intel 430TX, 440LX  and SIS 5120, 5598 chipsets 
      is supported now.

   G. The command line "LASTDRIVE=" will be added into CONFIG.SYS 
      automatically after installation.

   

2. Troubleshooting:

   (I)   SMARTDRV.EXE(or SMARTDRV.SYS) should be hooked before MSCDEX.EXE
         for proper caching.

   (II)  If there are two CD-ROM drives in your PC, only one Device Driver
         (CDROM.SYS or others) and MSCDEX.EXE is necessary.

   (III) Ask your local dealers for help.

