#!/bin/sh
cur=`brightnessctl get`;
if [[ "$1" = "inc" ]]; then
    cur=$(( cur + 10 ));
elif [[ "$1" = "dec" ]]; then
    cur=$(( cur - 10 ));
fi

if (( $cur > 255 )); then
    cur=255;
elif (( $cur < 1 )); then
    cur=1
fi

brightnessctl set $cur
