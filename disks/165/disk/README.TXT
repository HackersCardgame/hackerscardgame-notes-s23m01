IBM eserver xSeries x346 Baseboard Management Controller (BMC) Update Diskette
Version 1.20 Build ID KPBT37AUS

System 8840, 1880

Note: Before using this information and the product it supports, read the 
      general information in "Trademarks and Notices" in this document.


CONTENTS
________

1.0  Overview
2.0  Installation and Setup Instructions
3.0  Configuration information
4.0  Unattended Mode
5.0  Web Sites and support phone Number
6.0  Trademarks and Notices
7.0  Disclaimer


1.0  Overview
________________________

This diskette will update the Baseboard Management Controller (BMC) firmware and 
sensor data records (SDRs) only.  It will not affect any device drivers.


        1.1     To use this diskette, perform the following steps:

        a).     Make sure BIOS version 1.00, or later, is installed.
        b).     Insert this diskette into the diskette drive and
                restart the system.  If your system does not boot from
                the diskette, use POST/BIOS setup to configure the
                diskette drive as a boot device.  Please refer to the
                Server Library that was included with your system for
                additional information.
        c).     Once your system boots, a ramdrive will be created, the 
                appropriate files will be copied to this ramdrive and the
                BMC update firmware update will execute automatically.
        d).     When you are finished using the utility, remove the 
                diskette from the diskette drive and restart your system.

        1.2     Limitations

                If there is an error in loading the BMC firmware or SDRs
                retry loading the software by repeating the instructions 
                in section 1.1.

        1.3     Enhancements

                - IPMI

        1.4.    Level of Recommendations and Prerequisites for the
                update:

                - BIOS version 1.00, or later, must be installed prior to
                  installing this ISMP firmware update.

                - RSA II version 1.06, or later, must be installed when
                  installing this ISMP firmware update.

                - A full tape backup should be completed and verified
                  prior to running this, or any other system upgrade.

                - RAID configuration should be saved to a diskette:
                  see the "Hardware Maintenance Manual" for more details.

        1.5     Dependencies:

                - none


2.0  Installing and Setup Instructions
______________________________________

To install the firmware on this diskette, perform the following steps:

        2.1     Make sure BIOS version 1.00, or later, is installed.
        2.2     Make sure your system is powered down.
        2.3     Insert the diskette in the diskette drive.
        2.4     Power on your system to boot from diskette drive.
                If your system does not boot from the diskette, use
                POST/BIOS setup utility to configure the diskette drive
                as a boot device.
        2.5     Once your system boots, a ramdrive will be created, the 
                appropriate files will be copied to this ramdrive and the
                BMC update firmware update will execute automatically.
        2.6     When the update completes, remove the diskette from the drive
                and restart the system.
        2.7     You may clear the BMC's SEL.


3.0 Configuration information
_____________________________

There is no configuration information necessary.


4.0     Unattended Mode
_______________________

This update utility does not support unattended installations but there are other
ways to incorporate unattended installations of this code. Check the UpdateXpress 
CD for availability of unattended installs of this firmware.  (The UpdateXpress 
CD is downloadable from http://www.ibm.com (use the search function to find 
"UpdateXpress").


	4.1   Steps for unattended mode

                   - Boot to DOS
		   
		   - Create a directory for your BMC flash files.

                   - Copy the following files from the"IBM xSeries 346 BMC 
		     Baseboard Management Contoller Flash Disk" 
                     to the same directory on some media capable
                     of storing 2.5MB of data.

		   - "update.bat"
		     "flash.exe"
		     "bmc_cfg.exe"
	 	     "fullfw.mot"
		     "intf.ini"

                   - From the directory just copied to, run
                     "update.bat"





5.0     WEB Sites and Support Phone Number
__________________________________________

        5.1     IBM Support Web Site:
                http://www.pc.ibm.com/support

        5.2     IBM eserver xSeries Web Site:
                http://www.ibm.com/eserver/xseries

        5.3     If you have any questions about this update, or
                problems applying the update, go to the following
                Help Center World Telephone Numbers and URL:
                http://www.pc.ibm.com/qtechinfo/YAST-3P2QYL.html.


6.0.    TradeMarks and Notices
______________________________

        6.1     The following terms are trademarks of the IBM
                Corporation in the United States, or other countries
                or both:
                            * IBM
                            * Netfinity
                            * Netfinity Manager
                            * Advanced System Management

                Other company, product, and service names may be
                trademarks or service marks of others.


7.0.    Disclaimer
__________________

        7.1     THIS DOCUMENT IS PROVIDED "AS IS" WITHOUT WARRANTY OF
                ANY KIND.  IBM DISCLAIMS ALL WARRANTIES, WHETHER EXPRESS
                OR IMPLIED, INCLUDING WITHOUT LIMITATION, THE IMPLIED
                WARRANTIES OF FITNESS FOR A PARTICULAR PURPOSE AND
                MERCHANTABILITY WITH RESPECT TO THE INFORMATION IN
                THIS DOCUMENT.  BY FURNISHING THIS DOCUMENT, IBM
                GRANTS NO LICENSES TO ANY PATENTS OR COPYRIGHTS.

        7.2     Note to Government users:

                Note to U.S. Government users-- Documentation related
                to restricted rights-- Use, duplication and disclosure
                is subject to restrictions set forth in GSA ADP Schedule
                Contract with IBM Corporation.


(C) Copyright International Business Machines Corporation 2005, 2006. 
    All rights reserved.

