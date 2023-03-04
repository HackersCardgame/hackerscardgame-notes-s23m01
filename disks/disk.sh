#!/bin/bash

for i in $(seq 200 1000)
do
	mkdir -p /home/marc/disks/$i
	sudo mount /dev/sdm /media/marc/disk
	cp -rvu /media/marc/disk /home/marc/disks/$i
	sudo umount /media/marc/disk
	read -p "Press [Enter] key to start next disk..."
done
