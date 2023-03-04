SoundFont(TM) Bank Maker for SB AWE32
Version 1.00
Copyright Creative Technology Ltd.

Contents
--------

1.  Introduction
2.  What is SoundFont Bank Maker for SB AWE32?
3.  How can I create new SoundFont Banks?
4.  How do SoundFont Banks work?
5.  How do I load a SoundFont Bank?
6.  An example of playing back SoundFont Bank instruments.
7.  What are the limitations of SoundFont Bank Maker for SB AWE32?


1.  Introduction
----------------

The Sound Blaster AWE32 card provides the user with a high quality Wave
Sample Synthesizer based on the EMU8000 audio DSP.  The EMU8000 can address
a matrix of up to 128 by 128 instruments (sounds) and these are contained
within its 32MB memory address space.  The card comes with a standard 1MB
ROM sample covering General MIDI (GM) patches and 512 KB of DRAM enabling
alternate patches to be loaded, giving the SB AWE32 Roland GS and MT-32 patch
compatibility.  This DRAM can also be used by the user to load their own
samples to be played back under MIDI control.

The SB AWE32 accesses its patches (samples) in banks, with each bank
containing up to 128 patches.  While the MIDI Program Change selects which 
patch to use, MIDI Controller 0 or Bank Change selects which Bank to use.  
On the SB AWE32, Bank 0 addresses the samples in the GM ROM.


2.  What is SoundFont Bank Maker for SB AWE32?
----------------------------------------------

SoundFont Bank Maker for SB AWE32 is a bimodal application; when run under 
DOS it behaves like a normal DOS application, and when run under Microsoft 
Windows it behaves like a normal Windows application.

SoundFont Bank Maker for SB AWE32, or SMAWE32 for short, allows you to
create your own SoundFont bank files using Microsoft WAV files.

SMAWE32 is meant to be a quick way to demonstrate the capabilities of
SoundFont.  We are currently working on an editor which will allow more 
editing functions and is scheduled to be released in August or September '94.


3.  How can I create new SoundFont Banks?
-----------------------------------------

As mentioned in section 2, "What is SoundFont Bank Maker for the SB AWE32",
SMAWE32 is a bimodal application, so there are really two ways of
creating your SoundFont Bank files.

SMAWE32 for DOS
===============

SMAWE32 for DOS accepts two forms of inputs - interactive response or DOS
re-direction.

A.  Interactive response

    When you execute SBKMAKE.EXE without any arguments, SBKMAKE.EXE will
    prompt you for responses.  The first prompt will be for the name of the
    destination SoundFont Bank file, the second prompt for the number of WAV
    files to be used, and finally the name of the WAV files.  A sample
    snapshot looks something like this:

    Enter output SBK file     : newsbk.sbk
    Enter number of WAV files : 3
    Enter WAV 1               : wave1.wav
    Enter WAV 2               : wave2.wav
    Enter WAV 3               : wave3.wav


B.  DOS re-direction

    You can type your responses into a response file, and use DOS
    re-direction to channel your responses into SMAWE32.  Using the
    above as an example, your response file, lets call it "RESPONS.LST",
    will look something like this:

    newsbk.sbk
    3
    wave1.wav
    wave2.wav
    wave3.wav

    To carry out DOS re-direction, all you need to do is:

    SBKMAKE < RESPONS.LST

    The commands specified in the response file will be fed into SBKMAKE to
    generate the SoundFont Bank file.


SMAWE32 for Windows
===================

SBMAKER for Windows also accepts two forms of inputs - interactive response
or script file.  Before we go into that, let's take a look at SMAWE32
for Windows.

When SMAWE32 for Windows executes, you will see three main LIST boxes.  The
first list box on the extreme left will show the selected WAV files.

The second list box in the middle allows you to choose a WAV file from a list
of possible WAV file selections.

The third list box on the extreme right allows you to navigate through drives 
and sub-directories to reach your WAV files.

There are several buttons:

The "Clear All Selections" button allows you to clear selected WAV files, 
i.e., clear the entries that appeared in the first list box.

The "Save" button allows you to save your own SoundFont Bank files.

The "AWE CP" button launches the SB AWE32 Control Panel.

The "Edit List File" button edits the currently selected "list" file 
(list files will be explained later).

The "Quit" button is self explanatory.

There is also an edit box (directly above the "Clear All Selections"
button) which allows you to enter the name of the SoundFont Bank file to be
created, and a "Looped" check box which permits you to set the loop flag of
a sample.

When you select (by double clicking on the second list box) a WAV
file into the first list box, you can set the looping status of that WAV
file by clicking on the "Looped" check box.  A check indicates that this WAV
file will have the loop flag set and vice versa.

As noted previously, SMAWE32 can operate in interactive mode or
script mode.  In interactive mode, you can basically select what WAV files 
you want by selecting them one by one.

In script mode, you can specify a script file which will tell SMAWE32 the 
output SoundFont Bank filename, the number of WAV files there are, and the 
names of each WAV file.  The script file is similar to the "DOS re-direction" 
method of SMAWE32 for DOS.  The response file, "RESPONS.LST" file shown in 
SMAWE32 for DOS, can be selected and used in SMAWE32 for Windows by using the 
second (middle) list box, and SMAWE32 will scan this response file for all 
the necessary inputs.


4.  How do SoundFont Banks work ?
---------------------------------

SoundFont Banks can be loaded into the RAM of the SB AWE32.  Once the 
SoundFont Banks have been downloaded into the SB AWE32, the instruments 
contained in the bank file will automatically become an integral instrument 
of the SB AWE32.  You can use these newly downloaded instruments with a MIDI 
sequencer to create MIDI compositions, soundtracks or special effects.


5.  How do I load a SoundFont Bank ?
------------------------------------

SoundFont Banks can be loaded very easily by using the SB AWE32 Windows
Control Panel applet, AWECP.EXE.  This can be done as follows:

      * Use the up or down arrows next to the user bank number to select the
	bank to load SoundFonts into.

      * A pop-up screen will be activated to the right where you can
	set the directory containing *.SBK files and select the file to
	load into that bank.

      * Double clicking on a file loads it into the selected bank.

NOTE:   You must have enough free RAM on the SB AWE32 to accommodate the
	SoundFont Bank.


6.  Example of playing back SoundFont Bank instruments
------------------------------------------------------

Once you have loaded a SoundFont Bank into an empty user bank, the SoundFont
Bank automatically integrates into the SB AWE32, becoming a part of the
SB AWE32 MIDI instruments.

For example, let's say you loaded a SoundFont Bank file into a user bank:

User bank 1 will then contain all the instruments (WAV files)contained in 
the Bank file.  In other words, if the bank file contains WAVE1.WAV, 
WAVE2.WAV and WAVE3.WAV files in that sequence, then user bank 1
instrument 1 will be WAVE1.WAV, bank 1 instrument 2 will be WAVE2.WAV and
bank 1 instrument 3 will be WAVE3.WAV

You can easily access these new instruments from within a sequencer
software (such as CakeWalk for Windows or MasterTracks Pro) by first
sending a controller change 0 (Bank Select) to select bank 1 (which is
the downloaded SoundFont Bank), followed by a program change to select the
instrument from that bank.


7.  What are the limitations of SoundFont Bank Maker for SB AWE32 ?
-------------------------------------------------------------------

A.  SMAWE32 only accepts MONO, 16-bit WAV files.  All other formats (8-bit,
    stereo, compressed, etc.) are not suitable for SMAWE32.

B.  SMAWE32 for Windows offers a looping option, a feature not offered by 
    SMAWE32 for DOS.  With looping enabled, a WAV file, when finished playing,
    will loop back to the beginning and replay for as long as the MIDI key is 
    held down.

C.  SMAWE32 does not offer SoundFont preset editing.
