#!/bin/sh
# Name: Toggle KPP debug menu
# Author: Marek
# Icon:

restart_kppmainapp() 
{
  echo "restarting kppmainapp in 3 seconds, have fun!"
  sleep 3
  restart kppmainapp &
  exit 0
}

IS_DBG_MENU_ENABLED=$(grep "isKPPDebugMenuEnabled" /var/local/CHROME_CONFIG)
if [ "$IS_DBG_MENU_ENABLED" = "" ]; then
  echo "Debug menu hasn't been enabled yet, enabling it."
  echo "isKPPDebugMenuEnabled=true" >> /var/local/CHROME_CONFIG
  restart_kppmainapp 
fi

if [ "$(echo $IS_DBG_MENU_ENABLED | grep "false")" = "" ]; then
  echo "Debug menu is enabled, disabling it."
  sed -i 's/isKPPDebugMenuEnabled=true/isKPPDebugMenuEnabled=false/' /var/local/CHROME_CONFIG
  restart_kppmainapp
fi

echo "Debug menu is disabled, enabling it."
sed -i 's/isKPPDebugMenuEnabled=false/isKPPDebugMenuEnabled=true/' /var/local/CHROME_CONFIG
restart_kppmainapp
