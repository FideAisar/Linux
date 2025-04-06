#!/bin/sh

pamixer --toggle-mute && ( pamixer --get-mute && echo 0 )
