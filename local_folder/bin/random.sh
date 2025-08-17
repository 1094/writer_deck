#!/bin/sh

swaybg -i $(find $HOME/walls/. -type f | shuf -n1) -m fill &
OLD_PID=$!
while true; do
	sleep 18000
	swaybg -i $(find $HOME/walls/. -type f | shuf -n1) -m fill &
	NEXT_PID=$!
	sleep 5
	kill $OLD_PID=$NEXT_PID
done
