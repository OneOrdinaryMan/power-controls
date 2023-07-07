#!/usr/bin/bash
rofi_choices="poweroff\nreboot\nlog_out\nsuspend\nsleeep"
choice=$(echo -e "$rofi_choices" | rofi -dmenu -i -p "Execute:")

case $choice in
    poweroff)
        poweroff
        ;;
    reboot)
        reboot
        ;;
    log_out)
        awesome-client 'awesome.quit()'
        ;;
    suspend)
        systemctl suspend
        ;;
    sleep)
        systemctl hybrid-sleep
esac
