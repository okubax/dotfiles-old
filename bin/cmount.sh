#!/bin/zsh
# LICENSE: PUBLIC DOMAIN
# mount/unmount encrypted flash drives
 
mp=$3
uuid=""
 
case $2 in
    "0")
        uuid="bde0635e-f536-4df4-b150-23e7fc1e6305" # my red USB drive
        ;;
    "1")
        uuid="cf169437-b937-4a39-86cb-7ca82bd9fe94" # my green one
        ;;
    "2")
        uuid="57a0b7d5-d2a6-47e0-a0e3-adf69501d0cd" # my blue one
        ;;
    *)
        ;;
esac
 
if [[ $uuid == "" ]]; then
    echo "No predefined device specified."
    exit 0
fi
 
case $1 in
    "m")
        echo "Authorizing encrypted partition /dev/mapper/$mp..."
        sudo cryptsetup luksOpen /dev/disk/by-uuid/$uuid $mp
        echo -n "Mounting partition on /mnt/$mp..."
        sudo mount -t ext4 /dev/mapper/$mp /mnt/$mp && echo "done."
        ;;
    "u")
        echo -n "Unmounting /mnt/$mp..."
        sudo umount /mnt/$mp && echo "done."
        echo -n "Closing encrypted partition /dev/mapper/$mp..."
        sudo cryptsetup luksClose $mp && echo "done."
        ;;
    *)
        ;;
esac