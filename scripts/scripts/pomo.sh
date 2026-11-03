#!/bin/sh

if [ "$POMO_STATE" == "COMPLETE" ] ; then
   notify-send "task completed!"
   noctalia msg media stop
fi


if [ "$POMO_STATE" == "BREAKING" ] ; then
    notify-send "time to take a break!"
    noctalia msg media stop
fi

notify-send "task completed!"
noctalia msg media stop
