#!/bin/bash
# klavye tus durumları
# Serkan 30/12/2018
durumCL=$(xset -q | grep Caps | awk '{print $4}')
durumCLEski=$durumCL
durumNL=$(xset -q | grep Caps | awk '{print $8}')
durumNLEski=$durumNL

while true
do

durumCL=$(xset -q | grep Caps | awk '{print $4}')
durumNL=$(xset -q | grep Caps | awk '{print $8}')
if [ "$durumCLEski" != "$durumCL" ]
then
if [ "$durumCL" = "on" ]
then
notify-send -i  "/opt/tuslar/buyuk.png" "                    Caps Lock AÇIK" -t 1000
else
notify-send -i  "/opt/tuslar/kucuk.png" "                    Caps Lock KAPALI" -t 1000
fi
fi
---
if [ "$durumNLEski" != "$durumNL" ]
then
if [ "$durumNL" = "on" ]
then
notify-send -i  "/opt/tuslar/sayilar.png" "                    Num Lock AÇIK" -t 1000
else
notify-send -i  "/opt/tuslar/oklar.png" "                    Num Lock KAPALI" -t 1000
fi
fi
---
durumCLEski=$durumCL
durumNLEski=$durumNL
done
