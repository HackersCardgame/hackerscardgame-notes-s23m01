
 Filename:   README.TXT
 Product:    NetWare(R) Connect(tm) 2.0 software
 Date:       June 1995


 ===========================================================================
 1.0 Contents
 ============

 2.0 General Information
 3.0 Merging Directory Services Trees if NetWare Connect Is on Only One Tree
 4.0 Creating Standard Profiles for X.25
 5.0 Post-installation Steps
 6.0 NetWare MultiProtocol Router 3.0 software and NetWare Connect 2.0 
          Combined on a NetWare 3.12 Server
 7.0 AppleTalk and NetWare Connect 2.0 Combined on a NetWare 3.12 Server
 8.0 Performing Multiple Remote Installations
 9.0 BOOTP Limitations
 10.0 TFTP Server Address
 11.0 Upgrading a NetWare 3 Server Running NetWare Connect 1.0 
           to a NetWare 4 Server Running NetWare Connect 2.0
 12.0 Upgrading Multiple NetWare 4 Servers Running NetWare Connect 1.0 
          to NetWare Connect 2.0
 13.0 Dial-out Restrictions
 14.0 Btrieve Parameters 
 15.0 Trademarks

 ===========================================================================
 2.0 General Information
 =======================

 This README file for NetWare Connect 2.0 describes several operating 
 procedures and considerations that are not described in the manuals.
 
 ============================================================================
 3.0 Merging Directory Services Trees if NetWare Connect Is on Only One Tree
 ============================================================================

 NetWare Connect 2.0 requires either NetWare 4.1 or NetWare 3.12. If you 
 wish to merge two NetWare 4.1 directory services trees into one tree, and 
 NetWare Connect 2.0 is on only one of the trees, you must change the 
 directory tree that does not have NetWare Connect 2.0 on it by loading 
 NWCEXTDS.NLM on a server within this tree. If this step is not taken prior 
 to the merge, the DSMERGE will fail during the checking phase and will not 
 allow the merge to begin.  

 You may safely attempt the merge to see if this is an issue. The checking 
 phase of the merge can be completed without harm to the directory and will 
 inform you if there are issues that prevent the completion of the merge. 
 If the checking phase of DSMERGE completes successfully without finding 
 problems, you will be prompted if you wish to continue and start the merge. 
 If you do not want to complete the merge at that time, answer no.

 ===========================================================================
 4.0 Creating Standard Profiles for X.25
 ========================================

 Standard profiles for X.25 can be created by loading PROFINST.NLM anytime 
 after the installation of NetWare Connect 2.0.
   
 ============================================================================
 5.0 Post-installation Steps
 ============================

 After installing NetWare Connect 2.0 on a NetWare 4.1 server that does 
 not have any WAN products installed, the server should be brought down 
 and restarted before starting NWCCON.NLM and performing the setup 
 procedure. This ensures that the CSL.NLM file is loaded instead 
 of CSLSTUB.NLM.

 After installing NetWare Connect 2.0 on a NetWare 3.12 server, 
 the server needs to be brought down and restarted before starting NWCCON.NLM.  
 This insures that the latest NWSNUT.NLM file, that is installed with 
 NetWare Connect 2.0, is loaded.

 ===========================================================================
 6.0  NetWare MultiProtocol Router(tm) 3.0 Software and 
      NetWare Connect 2.0 Combined on a NetWare 3.12 Server
 ==========================================================

 Before you install NetWare Connect 2.0 on a NetWare 3.12 server that has 
 NetWare MultiProtocol Router 3.0 installed, you need to save the 
 APPLETLK.NLM file that is on the server. After NetWare Connect 2.0 has 
 been installed, you must reinstall the APPLETLK.NLM file that you 
 previously saved.

 ==========================================================================
 7.0 AppleTalk* and NetWare Connect 2.0 Combined on a NetWare 3.12 Server
 ==========================================================================

 When you install NetWare Connect 2.0 on a NetWare 3.12 server without 
 NetWare MultiProtocol Router 3.0, AppleTalk 4.5c is installed. 
 Consequently, you may need to modify the following parameters of the 
 AppleTalk configuration:

    - AppleTalk LOAD and BIND commands
    - AppleTalk and LLC 802.2
    - AppleTalk and Source Route Bridging

 7.1 AppleTalk LOAD and BIND Commands 
 -------------------------------------
 The APPLETLK.NLM 4.5c file does not allow for space between the parameter 
 keyword and the parameter value in the LOAD and BIND commands. You must 
 check the AUTOEXEC.NCF file and remove the spaces from the APPLETLK LOAD 
 and BIND command line parameters.

 For example, the LOAD and BIND commands in the first example should 
 be altered to the form shown in the second example.
 
  load appletlk net = 50001 zone = {"production"}
  bind appletlk ne2000 net = 0-0

  load appletlk net=50001 zone={"production"}
  bind appletlk ne2000 net=0-0

 7.2 AppleTalk and LLC 802.2
 ----------------------------
 You must remove all commands to load and bind ATTOKLLC from the 
 AUTOEXEC.NCF. ATTOKLLC is not supported in APPLETLK.NLM 4.5c. You should 
 use LLC8022.NLM and bind APPLETLK to all the token ring frame boards that 
 ATTOKLLC used to bind to.

 7.3 AppleTalk and Source Route Bridging
 ----------------------------------------
 If you have Macintosh* computers and source routing bridges in a 
 TokenTalk* network, you must add the following LOAD and BIND commands 
 to the SYS:\SYSTEM\AUTOEXEC.NCF file to enable APPLETLK 4.5c to 
 support the Macintosh computers correctly.

  load token int=2 saps=4 ls=32 frame=token-ring name=token_tok
  load llc8022
  bind appletlk to token_tok 

  Note: If the token ring board is already loaded with the token ring 
        frame for use by another protocol, such as the IPX(tm) protocol, 
        you do not need to load the same token ring board again with 
        token ring frame for APPLETLK 4.5c. You simply bind APPLETLK 4.5c to the 
        token ring frame board.

 ====================================================================
 8.0 Performing Multiple Remote Installations
 =============================================

 You must observe the following limitations when performing a multiple 
 server installation of NetWare Connect 2.0:

  - Multiple remote installation is not supported if you are 
    using the Upgrade Kit to upgrade NetWare Connect 1.0 to 
    NetWare Connect 2.0.

  - You cannot bring down any target server until the installation is complete 
    on all target servers.

 ======================================================================
 9.0 BOOTP Limitations
 ======================

 The BOOTP feature is not supported in the DOSDIAL program. You must 
 use the Windows* Dialer for this feature.

 ======================================================================
 10.0 TFTP Server Address
 =========================

 The TFTP server address in the IP parameters for PPPRNS is currently 
 not used.

 ======================================================================
 11.0 Upgrading a NetWare 3(tm) Server Running NetWare Connect 1.0 to a 
      NetWare 4(tm) Server Running NetWare Connect 2.0
 =====================================================

 You must observe the following considerations when performing this upgrade:

  - Verify that you have sufficient disk space.
  - Complete the steps for upgrading.
  - Note the limitations of this upgrade.

 11.1 Verify that You Have Sufficient Disk Space
 ------------------------------------------------
 Before attempting this upgrade, verify that you have a minimum
 of 76 MB of disk space (at least 50 MB for the NetWare 
 upgrade plus 26 MB for the NetWare Connect upgrade) for 
 both upgrade steps before you start.

 
 11.2 Steps for Upgrading
 -------------------------
 If you are planning to upgrade multiple NetWare Connect 1.0 servers 
 running NetWare 3.x to NetWare Connect 2.0 servers running NetWare 4.1
 in the same NetWare Directory Services(tm) NDS(tm) context, complete 
 the following steps:

  1. Upgrade one NetWare 3 server to NetWare 4.

  2. Upgrade that server from NetWare Connect 1.0 to 2.0.

  3. Bring down the server and restart it.

  4. Use NWCSTART to bring up and configure NetWare Connect 2.0.

  5. Repeat Steps 1 through 4 for other servers.

 11.3 Limitations of this Upgrade
 ---------------------------------
 You cannot upgrade a NetWare 3 server running NetWare Connect 1.0 to 
 NetWare 4.1 into the same context as an existing NetWare 4.1 server 
 that is running NetWare Connect 1.0.

 =========================================================================
 12.0 Upgrading Multiple NetWare 4 Servers Running NetWare Connect 1.0 to 
      NetWare Connect 2.0
 =========================

 If you are upgrading multiple NetWare 4 servers running NetWare Connect 1.0 
 to NetWare Connect 2.0 in the same bindery context, automatic conversion 
 of the NetWare Connect configuration is not supported. You must use the 
 report generation feature of NetWare Connect to save the NetWare 
 Connect 1.0 configuration information and then use this information to 
 configure the server after you upgrade to NetWare Connect 2.0.

 ==================================================================
 13.0 Dial-out Restrictions
 ===========================

 If you configure the dial-out restrictions for a user and then disable this 
 user list by selecting to use the global list, you must explicitly delete 
 the user list.

 ====================================================================
 14.0 Btrieve* Parameters
 =======================

 If you plan to use BSETUP to configure Btrieve, make sure the 
 Largest Compressed Record Size parameter is set to 1. This will 
 result in the addition of "-u=1" to the load parameters of Btrieve 
 in the BSTART.NCF file. If you are loading Btrieve manually, either 
 do not specify the "-u" parameter or specify "-u=1".

 ============================================================================
 15.0 Trademarks
 ===============
             
  Novell, Inc. has attempted to supply trademark information about
  company names, products, and services mentioned in this README file.  
  The following list of trademarks was derived from various sources.

  Novell and NetWare are registered trademarks of Novell, Inc.

  Internetwork packet Exchange, IPX, NDS, NetWare 3, NetWare 4, 
  NetWare Connect, NetWare Directory Services, NetWare Loadable Module, 
  NetWare MultiProtocol Router, and NLM are trademarks of Novell, Inc.

  AppleTalk, Macintosh, and TokenTalk are registered trademarks of 
  Apple Computer, Inc.

  Btrieve is a registered trademark of Btrieve Technologies, Inc. 
 
  Windows is a registered trademark of Microsoft Corporation.

  (c)Copyright 1995, Novell, Inc. All rights reserved.

 ===========================================================================
 ** End of README.TXT **
 
