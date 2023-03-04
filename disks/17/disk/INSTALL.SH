#! /bin/sh
#
# Creates the  /boot  directory;
# Installs the kernel image to the /boot directory and
# makes necessary (sym-)links to the kernel.
#

set -e
umask 022
VERSION=2.2.18pre21
readonly Arch=i386
if [ ! install.sh ]; then
	echo 1>&2 "Error: Change directory to the boot disk before running this script."

	exit -1
fi
if [ $# -gt 0 ]; then
	DDIR=$1
fi
if [ ! -d ${DDIR}/boot ]; then
	mkdir -m 755 ${DDIR}/boot
fi
# Check for a pmac compressed kernel and copy/gunzip it.
if [ -f linux.gz -a "$Arch" != "alpha" ]; then
	zcat linux.gz > ${DDIR}/boot/vmlinux-${VERSION}
else
	cp linux ${DDIR}/boot/vmlinuz-${VERSION}
fi
if [ "$Arch" = "i386" ]; then
	rdev ${DDIR}/boot/vmlinuz-${VERSION} ${DDIR}
	rdev -r ${DDIR}/boot/vmlinuz-${VERSION} 0
	rdev -R ${DDIR}/boot/vmlinuz-${VERSION} 1
	rdev -v ${DDIR}/boot/vmlinuz-${VERSION} -1
fi
if [ -f sys_map.gz ]; then
	zcat sys_map.gz > ${DDIR}/boot/System.map-${VERSION}
fi
if [ -f config.gz ]; then
	zcat config.gz > ${DDIR}/boot/config-${VERSION}
fi
if [ -f ${DDIR}/vmlinuz ]; then 
	rm -f ${DDIR}/vmlinuz.old
	mv ${DDIR}/vmlinuz ${DDIR}/vmlinuz.old
	rm -f ${DDIR}/vmlinuz
fi
(cd ${DDIR};
 if [ -f boot/vmlinux-${VERSION} ]; then
	ln -s boot/vmlinux-${VERSION} vmlinux
 else
	ln -s boot/vmlinuz-${VERSION} vmlinuz
 fi)
if [ -f ${DDIR}/boot/System.map ]; then 
	rm -f ${DDIR}/boot/System.map
	if [ -f ${DDIR}/boot/System.map-${VERSION} ]; then
	    cd ${DDIR}/boot && ln -s System.map-${VERSION} System.map
	fi
fi
sync
exit 0
