#! /bin/bash
while true; do
    LEVEL=$(cat /sys/class/power_supply/BAT0/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT0/status)
    if [ $LEVEL -le 15 ] && [ $STATUS = "Discharging" ]; then
        dunstify "Plug in charger"
        sleep 300
    else
        sleep 120
    fi
done
