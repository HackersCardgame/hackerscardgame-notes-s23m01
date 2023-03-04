##                   ###           ########
 ## G o l d W a v e ## ##  v2.10  ##
  ##               ##   ##       ##
   ##     ###     ## *** ##     ## *****
    ##   ## ##   ##       ##   ##
     ## ##   ## ##         ## ##
      ###     ###           ### ***** TM


--------------------------------------------------------------
Table of Contents
--------------------------------------------------------------

1.0 GoldWave Features
2.0 Important Additional Notes
3.0 Shareware, Copyright & Distribution, Warrenty
4.0 Contacting the Author
5.0 Statistics

Please read GOLDWAVE.WRI for installation instructions.
GOLDWAVE.WRI is in Windows Write format.

--------------------------------------------------------------
1.0 GoldWave Features
--------------------------------------------------------------

GoldWave is sound editor, player and recorder for MS-Windows.

Features:
  * Supports all MPC sound cards (SB, SB16, PAS16, GUS, ...)
  * Full 16-bit stereo editing
  * Uses 386 32-bit instructions for fast processing
  * Multiple re-sizable file windows with time axis and
     "Overview" box.
  * Independent left/right channel editing and viewing
  * Super zoom to magnify to a sub-sample level for extra
     accurate editing
  * Direct editing with the mouse
  * Standard editing functions: undo, cut, copy, paste,
     trim, mix, delete
  * Intelligent editing that automatically converts
     sampling rates, bits, and channels when copying and
     pasting to different file formats
  * Detached "Device Controls" window with dual oscilloscopes
     and play, pause, stop, record, volume, balance, and speed
     controls
  * Amplitude or Spectral oscilloscopes
  * Built-in support for WAV, VOC, IFF, AU, SND, MAT as well
     as the ability to open RAW files
  * Export command to save files in various formats
  * Tool Bar for editing, zooming, and opening files
  * Standard effects: echo, volume, reverse, envelope shaping,
     panning, filters, ...
  * Ability to set and describe reference/cue points
  * Flexibility to choose input/output devices
  * Expression evaluator for any type of sound generation
     and manipulation
  * Shareware, with NO FEATURES DISABLED !


--------------------------------------------------------------
2.0 Important Additional Notes
--------------------------------------------------------------

2.1) GoldWave requires a 386 or better processor.  It will not
work on a 286 or below.

2.2) If you are using a desktop other than Program Manager,
you may get an error when trying to run GoldWave.  If such
an error occurs, try running GoldWave from Program Manager.
(For PC Tools users, I have not been able to find a reason for
the GPF yet.  I have made some changes that may solve the
problem.  As yet, I do not have PC Tools, which makes testing
difficult.  I will be getting a copy soon.)

2.3) The Cross-fade command has been renamed to Interpolate.

2.4) VOC files are now saved using version 1.20 format.
GoldWave will only use the older VOC format if the sound
is mono 8-bit with a sampling rate less than 23000Hz.
If a VOC file saved by GoldWave becomes incompatible with
your Sound Blaster driver:
    1)	Open the file in GoldWave
    2)	Make sure the sampling rate is less than 23000Hz.
	If it is not, use Effects | Resample to convert
	to a lower sampling rate.
    3)	Use File | Export to save the file as mono unsigned
	8-bit.
If possible, you should get a copy of the latest Sound
Blaster drivers.

2.5) GoldWave now makes use of more of the RIFF WAVE
standard file format.  New chunks such as the 'cue ' and
LIST 'adtl' are included to store cue points.  These chunks
are stored at the end of the WAVE file to minimize problems
with some programs that do not correctly read/ignore WAVE
chunks.  Cues are stored only in Wave files.

2.6) The largest file you can open depends upon how much RAM
you have for Windows.  If you plan to use 16-bit, stereo,
44100Hz CD quality, then you need 10 megabytes of RAM for
every minute of sound.  Future version of GoldWave will
allow direct-to-disk editing of large wave files.

2.7) If you are tired of the current colour scheme, add the
following lines to the end of the GOLDWAVE.INI file in your
WINDOWS directory (this file will be created when you
first run and close GoldWave):

[Colour]
Start Marker=255, 255, 255
Finish Marker=255, 255, 255
Graph Background=0, 0, 128
Scope Background=0, 0, 128
Amplitude Scope=255, 255, 255
Spectral Scope=255, 255, 0
Scope Grid=0, 0, 0

The three values specify the intensities of red, green, and
blue.  They can be set to: 0, 128, or 255.  The value 255
is the maximum intensity.  To get light grey, set all three
values to 192.  Note that the colour of the markers depends
upon the background colour.  Make sure the colours you
specify are visible (i.e. don't set background and scope
colours to the same values)

2.8) In order to get the scope working correctly, you might
have to change the positioning method in the Device Setup
dialog box.  The Estimate method is good for playback, but
there is a small delay for recording to allow certain cards
to transfer recorded data to RAM.

2.9) When using record looping, remember to turn it off when
you want to do your final recording.


--------------------------------------------------------------
3.0 Shareware, Copyright & Distribution, Warrenty
--------------------------------------------------------------

3.1 Shareware
-------------
GoldWave is a shareware program.  To register and encourage
further development, please follow the directions in the
ORDER.TXT or (ORDER.WRI) file included with this program.

3.2 Copyright & Distribution
----------------------------
GLDWAV21.ZIP ("the package") includes the following software
and documentation:
	GOLDWAVE.EXE	GoldWave application file
	GOLDWAVE.HLP	GoldWave help
	GOLDWAVE.WRI	Manual (in Write format)
	EXPRESS.EQX	Evaluator expressions
	ORDER.WRI	Order form (in Write format)
	ORDER.TXT	Order form (in ASCII text format)
	README.TXT	Important notes/information
	BWCC.DLL	Borland's Windows control library

The package is copyright (C) 1993-1994 by Chris S. Craig.

You may copy and distribute the package through BBS and ftp
sites.  Only the unmodified GLDWAV21.ZIP may be distributed
or copied.
You are prohibited from:
   charging a fee or requesting donations for the package;
   distributing/including the package in commercial products;
   modifying the package.

The package may be distributed on CDROM in the case where ftp
sites issue CDROMs of their collections.  This includes the
SimTel CDROM, Garbo CDROM, Sound Site CDROM, and other
similar large collection.

All trademarks/registered names acknowledged.

3.3 Warrenty
------------
The package is provided as is, without warranty of any kind.
The author shall not be liable for damages of any kind.  Use
of this software indicates you agree to this.

--------------------------------------------------------------
4.0 Contacting the Author
--------------------------------------------------------------

Please refer to the GOLDWAVE.WRI manual or on-line help.

--------------------------------------------------------------
5.0 Statistics
--------------------------------------------------------------

Version 2.10 Statistics
-----------------------
	Compilier:	Borland 3.1, C++
	Environment: 	Microsoft Windows 3.1
	System:		20MHz 386
	Total hours:	1428

	Source code (in bytes):
		Total	828344	(~30000 lines)

	Documentation (in bytes):
		Total	~150000


Version 2.00 Statistics
-----------------------
	Language:	C++
	Compilier:	Borland 3.1
	Environment: 	Microsoft Windows 3.1
	System:		a slow 20MHz, 386
	Total hours:	1266

	Source code (in bytes):
		 *.CPP	448939
		 *.H	 76850
		 *.RC	192852
		Total	718641	(~26000 lines)

	Documentation (in bytes):
		Total	~140000

Version 1.00 Statistics
-----------------------
	Language:	 C++
	Environment: 	 Microsoft Windows
	Hours required:	 657

	Source code (in bytes):
		 *.CPP	272701	
		 *.H	 48037	
		 *.RC	112669	
		Total	433407	(~15000 lines)

	Documentation (in bytes):
		Total	~90000


--------------------------------------------------------------	 		

Chris Craig
chris3@garfield.cs.mun.ca
