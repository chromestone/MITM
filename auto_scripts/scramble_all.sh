#!/bin/bash 

while true
do
	pct restore 108 /var/lib/vz/dump/vzdump-lxc-108-2020_04_17-14_35_03.tar --storage local-lvm
	pct start 108
	pct mount 108
	node mitm/index.js HACS202_B 10001 172.20.0.4 108 true scramble_all.js
	pct stop 108
	pct unmount 108
	pct destroy 108
done
