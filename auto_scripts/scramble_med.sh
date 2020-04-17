#!/bin/bash 

while true
do
	pct restore 107 /var/lib/vz/dump/vzdump-lxc-107-2020_04_17-14_47_35.tar --storage local-lvm
	pct start 107
	pct mount 107
	node mitm/index.js HACS202_B 10002 172.20.0.5 107 true scramble_med.js
	pct stop 107
	pct unmount 107
	pct destroy 107
done
