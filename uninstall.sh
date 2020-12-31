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

rm -rf /Library/Audio/Plugin-Ins/HAL/VBCable.Driver/
rm -rf /Applications/VB-Audio/
rm -rf /Library/Preferences/com.vbaudio.vbcable.plist
rm -rf /Library/LaunchDaemons/com.vbaudio.vbcableagent.plist

echo "VB-Cable uninstalled! Please restart your computer."
