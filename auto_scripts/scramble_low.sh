#!/bin/bash 

while true
do
	pct restore 106 /var/lib/vz/dump/vzdump-lxc-106-2020_04_17-14_52_20.tar --storage local-lvm
	pct start 106
	pct mount 106
	node mitm/index.js HACS202_B 10003 172.20.0.6 106 true scramble_low.js
	pct stop 106
	pct unmount 106
	pct destroy 106
done
