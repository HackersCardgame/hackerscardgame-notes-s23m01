You can place any compressed Linux kernel on this disk, and it should boot.
To do so:
    Configure the kernel with the following facilities linked in: initrd,
	ramdisk, loop, msdos, fat, elf, ext2fs, procfs.
    Make your kernel with "make bzImage".
    Copy it to "linux" on the boot disk.
    Change directory to the boot disk and run ./rdev.sh to configure the kernel.
    Optionally, edit syslinux.cfg to add arguments to the "DEFAULT"
	line, or add an "APPEND" line with arguments to be appended to any
	user-typed command line as well as the default.

Documentation to read:
    /usr/doc/syslinux/syslinux.doc.gz
    "man rdev"
    /usr/src/linux/Documentation/ramdisk.txt

Source code:
    The scripts that create this disk and the other Debian bootstrap disks
    are installed in /usr/src/boot-floppies/ by the boot-floppies package.

- Bruce Perens, 12-March-1996
