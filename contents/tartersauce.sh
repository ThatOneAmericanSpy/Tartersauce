#!/bin/bash

if [ -z "$1" ]; then
    zenity --error --title="Package Installer" --text="No package file specified!"
    exit 1
fi

app=$(basename "$1")

zenity --question \
    --title="Package Installer" \
    --text="Are you sure you want to install ${app}?"

if [ $? -ne 0 ]; then
    exit 1
fi


(
    pkexec pacman --noconfirm -U "$1" > /dev/null 2>&1

    echo $? > /tmp/installer_status
) | zenity --progress \
        --title="Installing Package" \
        --text="Installing ${app}... Please wait." \
        --pulsate \
        --auto-close \
        --no-cancel

status=$(cat /tmp/installer_status)
rm /tmp/installer_status

if [ "$status" -eq 0 ]; then
    zenity --info --title="Package Installer" --text="${app} installed successfully!"
else
    zenity --error --title="Package Installer" --text="Installation failed. Check your password or package integrity."
fi
