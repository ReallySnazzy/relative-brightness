#!/bin/sh
cur=`brightnessctl get`;
if [[ "$1" = "inc" ]]; then
    cur=$(( cur + 10 ));
elif [[ "$1" = "dec" ]]; then
    cur=$(( cur - 10 ));
fi

if [[ $cur > 255 ]]; then
    cur=255;
elif [[ $cur < 0 ]]; then
    cur=0
fi

brightnessctl set $cur
