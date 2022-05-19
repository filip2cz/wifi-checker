#!/bin/bash
while :
do
   if ! [ "`ping -c 1 google.com`" ]; then
      nmcli networking off
      sleep 5
      nmcli networking on
      echo Networking service restarted due to no ping response from google.com.
      sleep 30
   else
      echo Networking service running without any problem.
      sleep 30
   fi
done

# created by filip2cz
# github: https://github.com/filip2cz/wifi_check
