#!/bin/bash

set -u

if [[ $OSTYPE != "darwin"* ]]; then
  abort "The VB-Cable uninstall script is only supported on macOS."
fi

abort() {
  printf "%s\n" "$1"
  exit 1
}

echo "Uninstalling VB-Cable..."

sudo rm -rf /Library/Audio/Plug-Ins/HAL/VBCable.driver/
sudo rm -rf /Applications/VB-Audio/
sudo rm -rf /Library/Preferences/com.vbaudio.vbcable.plist
sudo rm -rf /Library/LaunchDaemons/com.vbaudio.vbcableagent.plist

echo "VB-Cable uninstalled! Please restart your computer."
