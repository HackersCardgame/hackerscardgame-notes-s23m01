
------------------ NetWare Connect Installation README ----------------------

Introduction:
-------------

This is the NetWare Connect 2.0 server installation (PINSTALL) program.

This version of PINSTALL supports the following new features:

        **) NDS integration for NetWare 4 servers.
        **) Remote installation to multiple servers.
        **) Online display of this README file.

In the following context, source server refers to the server where 
NetWare Connect 2.0 release diskettes are located. Local server refers
to the server where PINSTALL.NLM is running. Target servers refer to
servers on which NetWare Connect is to be installed.

If you are performing a remote installation, make sure before you
begin the installation, that BROUTER is loaded at the local server, 
and that BSPXCOM and BTRIEVE are running on each of the target servers. 

Note: PINSTALL allows you to select remote target servers from a 
list of servers that are running BSPXCOM.

Pinstall writes installation results to SYS:SYSTEM\CSINSTAL\PILOG.LOG
file on your local server. Each time PINSTALL restarts, the log file is
renamed to PILOG.BAK and a new PILOG.LOG file is created.

If this is a multiple remote server installation, PINSTALL will not install
the NetWare Connect license onto your target servers. NetWare Connect will
prompt you for the license diskette the first time you bring up NetWare
Connect. You can cancel a multiple server installation by pressing
and holding <ALT> and pressing <F7> twice. When you cancel an installation,
PINSTALL finishes installing to the current target server and quits. You
can check the log file to see the target servers on which PINSTALL has
installed NetWare Connect.


Limitations:
------------

Assuming your source server is a NetWare server, the following table list
the four configurations supported:

        Source Server   Local Server    Target Server(s)
        -------------   ------------    ----------------
1.           3x             3x               3x
2.           4x             4x               4x
3.           4x             3x               3x
4.           3x             4x               4x

Configuration (3) requires that Bindery Emulation (Context) set at
the source server. Configuration (4) requires that Bindery Emulation
set at the local server.

PINSTALL assumes that all involved NetWare 4x servers (source server,
local server, and target servers) have NDS installed and that they are all
in the same NetWare Directory Service tree.


Problems & Workarounds:
-----------------------

-) If you get an error message that explains that PINSTALL cannot create
or open the PRODUCTS.DAT file on the remote server, check to see if you
have BSPXCOM loaded at the remote server. If BSPXCOM is loaded at the
remote server, unload and reload BROUTER at the local server, then restart
PINSTALL.

-) During the remote server installation, do not unload BSPXCOM or down
any of the target servers until you exited out of the remote installation,
this includes servers that have completed installation. Downing any of the
target servers before you exit out of remote installation may cause
PINSTALL program to hang.
