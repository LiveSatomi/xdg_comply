#!/bin/bash

# This script invokes ftu.sh (first time use) in all immediate subdirectories of $XDG_DATA_HOME/xdg_convert
# Invoked ftu.sh files should set up as much as possible so that the respective env file that must be run for each
# shell has little work to do.
# However, ftu.sh files should be idempotent so that this script can be run if any ftu script is changed.

dirs=$(find $XDG_DATA_HOME/xdg_convert/* -maxdepth 0 -type d)

if [ ! -z "$dirs" ]; then
    for app_dir in ${dirs}; do
        if [ -f "$app_dir/ftu.sh" ]; then
            $app_dir/ftu.sh
        fi
    done
fi

