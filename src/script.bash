#!/usr/bin/bash
# Power Controls
# Copyright (C) 2023  Srivathsan Sudarsanan
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
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
