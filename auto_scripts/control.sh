#!/bin/bash 

while true
do
	pct restore 109 /var/lib/vz/dump/vzdump-lxc-109-2020_04_17-11_01_00.tar --storage local-lvm
	pct start 109
	pct mount 109
	node mitm/index.js HACS202_B 10000 172.20.0.3 109 true control.js
	pct stop 109
	pct unmount 109
	pct destroy 109
done
