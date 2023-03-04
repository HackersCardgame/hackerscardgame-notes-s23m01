#!	/bin/sh
set -e

#readonly Arch=i386
readonly Arch=i386

# this script only relevant to i386
if [ "$Arch" != "i386" ]; then
    echo "nothing to be done"
    exit 0
fi

# find the image
if [ $# -eq 1 ]; then
    IMAGE=$1
    if [ ! -f ${IMAGE} ]; then
        echo "error: cannot find kernel image '$1'" 1>&2
        exit 1
    fi
elif [ -f $PWD/linux ]; then
    IMAGE="$PWD/linux"
elif [ -f /mnt/linux ]; then
    IMAGE=/mnt/linux
else
    echo "error: no kernel image supplied, nor in PWD, nor in /mnt" 1>&2
    exit 1
fi

# do our stuff
rdev -R "$IMAGE" 1
rdev -r "$IMAGE" 0
rdev -v "$IMAGE" -1
rdev "$IMAGE" /dev/ram0

exit 0

