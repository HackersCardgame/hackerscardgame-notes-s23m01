
	    LX-2000JL ETHERNET ADAPTER EASY INSTALLATION GUIDE            


INTRODUCTION
++++++++++++

Thank you for purchasing the LX2000JL (Jumper/Jumperless) Environmentally 
Friendly Ethernet card. This card consumes less than 0.7 watts. This is 
only 25% of power consumption of a typical LAN card. From EPA's data, 
using this card for one year helps to reduce air pollution by savings 
equivalent to eliminating emissions from a car running for 3.1 hours! 

The LX-2000JL is a 16 bit Ethernet card which is compatible with software 
for Novell's NE2000 adapter. It is a Jumper/Jumperless design which can be 
easily installed in any ISA Bus Personal Computer. The install program 
supplied with your card allows easy setup of all the configuration 
parameters.  

YOU NEED TO REMOVE THE JUMPER J/L ON THE UPPER LEFT CORNER OF THE COMPONENT 
SIDE OF THE CARD BEFORE INSTALLATION IN ORDER TO ENABLE HARDWARE 
CONFIGURATION.

				    
CONFIGURATION
+++++++++++++

Default Configuration:

I/O BASE ADDRESS: 300
IRQ: 3
BOOT ROM: DISABLE
JUMPER/JUMPERLESS: JUMPERLESS

Available Choices:
==================

IRQ level: 3,4,5,9,10,11,12,15

I/O Base Address: 240,280,2C0,300,320,340,360

Boot ROM start address: C0000h, C4000h, C8000h, CC000h, D0000h, D4000h, 
D8000h, DC000h

Boot ROM size: 8/16KB, 32KB, 64KB 


LX-2000JL GREEN ETHERNET JUMPER/JUMPERLESS FEATURES:

. Compatible with IEEE 802.3

. Low Power Consumption: 0.7 watts only

. Diskless remote boot feature

. Hardware Compatible: PC/AT/386/486/586
  Compact size makes it easy to install in any PC/AT/386/486/586

. Software Compatible:
    Novell NetWare 2.x, 3.x, 4.x server and workstation
    IBM LAN Manager 
    TCP/IP
    Microsoft Windows, Windows for Workgroups, Windows NT 3.x

. Software/Hardware Setting Configuration

. Media Auto-detection /Auto-switching


INSTALLATION GUIDE
++++++++++++++++++

Configure Network Interface Card
================================

  1. For Jumperless installation configure use the INSTALL.EXE setup 
  program on the diskette after installation in the computer.

  2. For Jumper version, please remove the jumper on J/L to enable hardware 
  configuration and verify the correct jumper setting for your network 
  card. Please refer the jumper setting table in the User Guide.


Insert Network Interface Card into Computer
===========================================

To insert the network interface card in your computer, perform the 
following:

   1. Turn off the computer's power and unplug the AC line cord. 
   
   2. Remove or open the cover of your computer.
   
   3. Remove the slot screw and slot cover from an available I/O expansion 
   slot.
   
   4. Insert your LX-2000JL network interface card into the available I/O 
   expansion slot. 
   
   5. Secure the network interface card to the rear of the computer chassis 
   by replacing and the tightening the slot screw you removed in step 3 
   above.
   
   6. Replace the cover, plug in the AC line cord and turn on the 
   computer's power. 


Connect Computer to Network
===========================

For Thin Coax (10Base2) use a BNC "T" connector to add the computer to your 
network. Make sure that the computers at both ends of the network cable 
have 50 Ohm terminators installed on the T connector.

For Twisted Pair (10BaseT) connect the computer to the 10BaseT hub with a 
properly wired (straight through) cable.


Note:

  1. The program "INSTALL.EXE" has replaced the program "LX2000JL.EXE" 
  mentioned in early versions of the User Guide on page 7.

  2. The Diagnostic program on the installation disk only works when the 
  J/L jumper is in place (software mode).

  3. The loopback test will fail if the card is not connected to the 
  network cable.
