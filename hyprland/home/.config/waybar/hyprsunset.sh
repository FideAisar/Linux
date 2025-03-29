#!/bin/bash

STATE_FILE="/tmp/hyprsunset_state"

if [ -f "$STATE_FILE" ]; then
    CURRENT_STATE=$(cat "$STATE_FILE")
else
    CURRENT_STATE="off"
fi

if [ "$CURRENT_STATE" == "off" ]; then
    hyprsunset -t 3000
    echo "on" > "$STATE_FILE"
else
    pkill hyprsunset
    echo "off" > "$STATE_FILE"
fi
