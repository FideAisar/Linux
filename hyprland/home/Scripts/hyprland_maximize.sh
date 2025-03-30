#!/bin/bash

gaps_out=$(hyprctl getoption general:gaps_out -j | jq '.int')

win_info=$(hyprctl activewindow -j)
win_pos=$(echo "$win_info" | jq -r '.at')
win_size=$(echo "$win_info" | jq -r '.size')
monitor_info=$(hyprctl monitors -j | jq -r '.[0]')
monitor_res=$(echo "$monitor_info" | jq -r '.width,.height')

win_x=$(echo "$win_pos" | jq -r '.[0]')
win_y=$(echo "$win_pos" | jq -r '.[1]')
win_w=$(echo "$win_size" | jq -r '.[0]')
win_h=$(echo "$win_size" | jq -r '.[1]')
monitor_w=$(echo "$monitor_res" | head -1)
monitor_h=$(echo "$monitor_res" | tail -1)

new_w=$(( 1855 ))
new_h=$(( 970 ))

new_x=$(( (monitor_w - new_w) / 2 ))
new_y=$(( (monitor_h - new_h) / 2 ))

hyprctl dispatch resizeactive exact $new_w $new_h
hyprctl dispatch moveactive exact $new_x $new_y
