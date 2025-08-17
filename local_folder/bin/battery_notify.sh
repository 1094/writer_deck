#!/bin/bash

while true; do

	bl=$(cat /sys/class/power_supply/BAT0/capacity)

	if [ "$bl" -le 10 ]; then
		notify-send --urgency=CRITICAL "Plug it in!" "Battery: ${bl}%"
		sleep 1200

	elif [ "$bl" -gt 95 ]; then
		notify-send --urgency=NORMAL "Charged!" "Battery: ${bl}%"
		sleep 1200

	else
		sleep 120

	fi

done

