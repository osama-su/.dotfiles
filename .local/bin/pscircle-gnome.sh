#!/bin/bash

# This script updates the wallpaper in GNOME based DE.
# Add the line: sh <file-path-of-this-file> &
# in the ~/.profile to start the script after login.
# Placing this in crontab or init.d doesn't work as they doesn't
# have necessary environment variables.

TIME_INTERVAL=30 # Seconds

gsettings set org.gnome.desktop.background picture-uri file:///tmp/output.png

while [ 1 ]; do
    # Replace the next line with any parameters given in the examples.
    # set -e

    pscircle --output=/tmp/output.png
    # --root-pid=1 \
    # --max-children=35 \
    # --tree-sector-angle=3.1415 \
    # --tree-rotate=true \
    # --tree-rotation-angle=1.5708 \
    # --tree-center=-1580:0 \
    # --cpulist-center=300:0 \
    # --memlist-center=800:0 \
    sleep $TIME_INTERVAL
done &

